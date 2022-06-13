package com.google.android.exoplayer2.source.hls.playlist;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import com.github.florent37.assets_audio_player.notification.NotificationAction;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.audio.Ac3Util;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.extractor.mp4.PsshAtomUtil;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.source.hls.HlsTrackMetadataEntry;
import com.google.android.exoplayer2.source.hls.playlist.HlsMasterPlaylist;
import com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist;
import com.google.android.exoplayer2.upstream.ParsingLoadable;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.UriUtil;
import com.google.android.exoplayer2.util.Util;
import com.google.common.collect.Iterables;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Queue;
import java.util.TreeMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;

/* loaded from: classes2.dex */
public final class HlsPlaylistParser implements ParsingLoadable.Parser<HlsPlaylist> {
    private static final String ATTR_CLOSED_CAPTIONS_NONE = "CLOSED-CAPTIONS=NONE";
    private static final String BOOLEAN_FALSE = "NO";
    private static final String BOOLEAN_TRUE = "YES";
    private static final String KEYFORMAT_IDENTITY = "identity";
    private static final String KEYFORMAT_PLAYREADY = "com.microsoft.playready";
    private static final String KEYFORMAT_WIDEVINE_PSSH_BINARY = "urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed";
    private static final String KEYFORMAT_WIDEVINE_PSSH_JSON = "com.widevine";
    private static final String LOG_TAG = "HlsPlaylistParser";
    private static final String METHOD_AES_128 = "AES-128";
    private static final String METHOD_NONE = "NONE";
    private static final String METHOD_SAMPLE_AES = "SAMPLE-AES";
    private static final String METHOD_SAMPLE_AES_CENC = "SAMPLE-AES-CENC";
    private static final String METHOD_SAMPLE_AES_CTR = "SAMPLE-AES-CTR";
    private static final String PLAYLIST_HEADER = "#EXTM3U";
    private static final String TAG_BYTERANGE = "#EXT-X-BYTERANGE";
    private static final String TAG_DEFINE = "#EXT-X-DEFINE";
    private static final String TAG_DISCONTINUITY = "#EXT-X-DISCONTINUITY";
    private static final String TAG_DISCONTINUITY_SEQUENCE = "#EXT-X-DISCONTINUITY-SEQUENCE";
    private static final String TAG_ENDLIST = "#EXT-X-ENDLIST";
    private static final String TAG_GAP = "#EXT-X-GAP";
    private static final String TAG_IFRAME = "#EXT-X-I-FRAMES-ONLY";
    private static final String TAG_INDEPENDENT_SEGMENTS = "#EXT-X-INDEPENDENT-SEGMENTS";
    private static final String TAG_INIT_SEGMENT = "#EXT-X-MAP";
    private static final String TAG_I_FRAME_STREAM_INF = "#EXT-X-I-FRAME-STREAM-INF";
    private static final String TAG_KEY = "#EXT-X-KEY";
    private static final String TAG_MEDIA = "#EXT-X-MEDIA";
    private static final String TAG_MEDIA_DURATION = "#EXTINF";
    private static final String TAG_MEDIA_SEQUENCE = "#EXT-X-MEDIA-SEQUENCE";
    private static final String TAG_PART = "#EXT-X-PART";
    private static final String TAG_PART_INF = "#EXT-X-PART-INF";
    private static final String TAG_PLAYLIST_TYPE = "#EXT-X-PLAYLIST-TYPE";
    private static final String TAG_PREFIX = "#EXT";
    private static final String TAG_PRELOAD_HINT = "#EXT-X-PRELOAD-HINT";
    private static final String TAG_PROGRAM_DATE_TIME = "#EXT-X-PROGRAM-DATE-TIME";
    private static final String TAG_RENDITION_REPORT = "#EXT-X-RENDITION-REPORT";
    private static final String TAG_SERVER_CONTROL = "#EXT-X-SERVER-CONTROL";
    private static final String TAG_SESSION_KEY = "#EXT-X-SESSION-KEY";
    private static final String TAG_SKIP = "#EXT-X-SKIP";
    private static final String TAG_START = "#EXT-X-START";
    private static final String TAG_STREAM_INF = "#EXT-X-STREAM-INF";
    private static final String TAG_TARGET_DURATION = "#EXT-X-TARGETDURATION";
    private static final String TAG_VERSION = "#EXT-X-VERSION";
    private static final String TYPE_AUDIO = "AUDIO";
    private static final String TYPE_CLOSED_CAPTIONS = "CLOSED-CAPTIONS";
    private static final String TYPE_MAP = "MAP";
    private static final String TYPE_PART = "PART";
    private static final String TYPE_SUBTITLES = "SUBTITLES";
    private static final String TYPE_VIDEO = "VIDEO";
    private final HlsMasterPlaylist masterPlaylist;
    private final HlsMediaPlaylist previousMediaPlaylist;
    private static final Pattern REGEX_AVERAGE_BANDWIDTH = Pattern.compile("AVERAGE-BANDWIDTH=(\\d+)\\b");
    private static final Pattern REGEX_VIDEO = Pattern.compile("VIDEO=\"(.+?)\"");
    private static final Pattern REGEX_AUDIO = Pattern.compile("AUDIO=\"(.+?)\"");
    private static final Pattern REGEX_SUBTITLES = Pattern.compile("SUBTITLES=\"(.+?)\"");
    private static final Pattern REGEX_CLOSED_CAPTIONS = Pattern.compile("CLOSED-CAPTIONS=\"(.+?)\"");
    private static final Pattern REGEX_BANDWIDTH = Pattern.compile("[^-]BANDWIDTH=(\\d+)\\b");
    private static final Pattern REGEX_CHANNELS = Pattern.compile("CHANNELS=\"(.+?)\"");
    private static final Pattern REGEX_CODECS = Pattern.compile("CODECS=\"(.+?)\"");
    private static final Pattern REGEX_RESOLUTION = Pattern.compile("RESOLUTION=(\\d+x\\d+)");
    private static final Pattern REGEX_FRAME_RATE = Pattern.compile("FRAME-RATE=([\\d\\.]+)\\b");
    private static final Pattern REGEX_TARGET_DURATION = Pattern.compile("#EXT-X-TARGETDURATION:(\\d+)\\b");
    private static final Pattern REGEX_ATTR_DURATION = Pattern.compile("DURATION=([\\d\\.]+)\\b");
    private static final Pattern REGEX_PART_TARGET_DURATION = Pattern.compile("PART-TARGET=([\\d\\.]+)\\b");
    private static final Pattern REGEX_VERSION = Pattern.compile("#EXT-X-VERSION:(\\d+)\\b");
    private static final Pattern REGEX_PLAYLIST_TYPE = Pattern.compile("#EXT-X-PLAYLIST-TYPE:(.+)\\b");
    private static final Pattern REGEX_CAN_SKIP_UNTIL = Pattern.compile("CAN-SKIP-UNTIL=([\\d\\.]+)\\b");
    private static final Pattern REGEX_CAN_SKIP_DATE_RANGES = compileBooleanAttrPattern("CAN-SKIP-DATERANGES");
    private static final Pattern REGEX_SKIPPED_SEGMENTS = Pattern.compile("SKIPPED-SEGMENTS=(\\d+)\\b");
    private static final Pattern REGEX_HOLD_BACK = Pattern.compile("[:|,]HOLD-BACK=([\\d\\.]+)\\b");
    private static final Pattern REGEX_PART_HOLD_BACK = Pattern.compile("PART-HOLD-BACK=([\\d\\.]+)\\b");
    private static final Pattern REGEX_CAN_BLOCK_RELOAD = compileBooleanAttrPattern("CAN-BLOCK-RELOAD");
    private static final Pattern REGEX_MEDIA_SEQUENCE = Pattern.compile("#EXT-X-MEDIA-SEQUENCE:(\\d+)\\b");
    private static final Pattern REGEX_MEDIA_DURATION = Pattern.compile("#EXTINF:([\\d\\.]+)\\b");
    private static final Pattern REGEX_MEDIA_TITLE = Pattern.compile("#EXTINF:[\\d\\.]+\\b,(.+)");
    private static final Pattern REGEX_LAST_MSN = Pattern.compile("LAST-MSN=(\\d+)\\b");
    private static final Pattern REGEX_LAST_PART = Pattern.compile("LAST-PART=(\\d+)\\b");
    private static final Pattern REGEX_TIME_OFFSET = Pattern.compile("TIME-OFFSET=(-?[\\d\\.]+)\\b");
    private static final Pattern REGEX_BYTERANGE = Pattern.compile("#EXT-X-BYTERANGE:(\\d+(?:@\\d+)?)\\b");
    private static final Pattern REGEX_ATTR_BYTERANGE = Pattern.compile("BYTERANGE=\"(\\d+(?:@\\d+)?)\\b\"");
    private static final Pattern REGEX_BYTERANGE_START = Pattern.compile("BYTERANGE-START=(\\d+)\\b");
    private static final Pattern REGEX_BYTERANGE_LENGTH = Pattern.compile("BYTERANGE-LENGTH=(\\d+)\\b");
    private static final Pattern REGEX_METHOD = Pattern.compile("METHOD=(NONE|AES-128|SAMPLE-AES|SAMPLE-AES-CENC|SAMPLE-AES-CTR)\\s*(?:,|$)");
    private static final Pattern REGEX_KEYFORMAT = Pattern.compile("KEYFORMAT=\"(.+?)\"");
    private static final Pattern REGEX_KEYFORMATVERSIONS = Pattern.compile("KEYFORMATVERSIONS=\"(.+?)\"");
    private static final Pattern REGEX_URI = Pattern.compile("URI=\"(.+?)\"");
    private static final Pattern REGEX_IV = Pattern.compile("IV=([^,.*]+)");
    private static final Pattern REGEX_TYPE = Pattern.compile("TYPE=(AUDIO|VIDEO|SUBTITLES|CLOSED-CAPTIONS)");
    private static final Pattern REGEX_PRELOAD_HINT_TYPE = Pattern.compile("TYPE=(PART|MAP)");
    private static final Pattern REGEX_LANGUAGE = Pattern.compile("LANGUAGE=\"(.+?)\"");
    private static final Pattern REGEX_NAME = Pattern.compile("NAME=\"(.+?)\"");
    private static final Pattern REGEX_GROUP_ID = Pattern.compile("GROUP-ID=\"(.+?)\"");
    private static final Pattern REGEX_CHARACTERISTICS = Pattern.compile("CHARACTERISTICS=\"(.+?)\"");
    private static final Pattern REGEX_INSTREAM_ID = Pattern.compile("INSTREAM-ID=\"((?:CC|SERVICE)\\d+)\"");
    private static final Pattern REGEX_AUTOSELECT = compileBooleanAttrPattern("AUTOSELECT");
    private static final Pattern REGEX_DEFAULT = compileBooleanAttrPattern("DEFAULT");
    private static final Pattern REGEX_FORCED = compileBooleanAttrPattern("FORCED");
    private static final Pattern REGEX_INDEPENDENT = compileBooleanAttrPattern("INDEPENDENT");
    private static final Pattern REGEX_GAP = compileBooleanAttrPattern("GAP");
    private static final Pattern REGEX_PRECISE = compileBooleanAttrPattern("PRECISE");
    private static final Pattern REGEX_VALUE = Pattern.compile("VALUE=\"(.+?)\"");
    private static final Pattern REGEX_IMPORT = Pattern.compile("IMPORT=\"(.+?)\"");
    private static final Pattern REGEX_VARIABLE_REFERENCE = Pattern.compile("\\{\\$([a-zA-Z0-9\\-_]+)\\}");

    /* loaded from: classes2.dex */
    public static final class DeltaUpdateException extends IOException {
    }

    public HlsPlaylistParser() {
        this(HlsMasterPlaylist.EMPTY, null);
    }

    public HlsPlaylistParser(HlsMasterPlaylist hlsMasterPlaylist, HlsMediaPlaylist hlsMediaPlaylist) {
        this.masterPlaylist = hlsMasterPlaylist;
        this.previousMediaPlaylist = hlsMediaPlaylist;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.exoplayer2.upstream.ParsingLoadable.Parser
    public HlsPlaylist parse(Uri uri, InputStream inputStream) throws IOException {
        String trim;
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
        ArrayDeque arrayDeque = new ArrayDeque();
        try {
            if (checkPlaylistHeader(bufferedReader)) {
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine != null) {
                        trim = readLine.trim();
                        if (!trim.isEmpty()) {
                            if (!trim.startsWith(TAG_STREAM_INF)) {
                                if (trim.startsWith(TAG_TARGET_DURATION) || trim.startsWith(TAG_MEDIA_SEQUENCE) || trim.startsWith(TAG_MEDIA_DURATION) || trim.startsWith(TAG_KEY) || trim.startsWith(TAG_BYTERANGE) || trim.equals(TAG_DISCONTINUITY) || trim.equals(TAG_DISCONTINUITY_SEQUENCE) || trim.equals(TAG_ENDLIST)) {
                                    break;
                                }
                                arrayDeque.add(trim);
                            } else {
                                arrayDeque.add(trim);
                                return parseMasterPlaylist(new LineIterator(arrayDeque, bufferedReader), uri.toString());
                            }
                        }
                    } else {
                        Util.closeQuietly(bufferedReader);
                        throw ParserException.createForMalformedManifest("Failed to parse the playlist, could not identify any tags.", null);
                    }
                }
                arrayDeque.add(trim);
                return parseMediaPlaylist(this.masterPlaylist, this.previousMediaPlaylist, new LineIterator(arrayDeque, bufferedReader), uri.toString());
            }
            throw ParserException.createForMalformedManifest("Input does not start with the #EXTM3U header.", null);
        } finally {
            Util.closeQuietly(bufferedReader);
        }
    }

    private static boolean checkPlaylistHeader(BufferedReader bufferedReader) throws IOException {
        int read = bufferedReader.read();
        if (read == 239) {
            if (!(bufferedReader.read() == 187 && bufferedReader.read() == 191)) {
                return false;
            }
            read = bufferedReader.read();
        }
        int skipIgnorableWhitespace = skipIgnorableWhitespace(bufferedReader, true, read);
        for (int i = 0; i < 7; i++) {
            if (skipIgnorableWhitespace != PLAYLIST_HEADER.charAt(i)) {
                return false;
            }
            skipIgnorableWhitespace = bufferedReader.read();
        }
        return Util.isLinebreak(skipIgnorableWhitespace(bufferedReader, false, skipIgnorableWhitespace));
    }

    private static int skipIgnorableWhitespace(BufferedReader bufferedReader, boolean z, int i) throws IOException {
        while (i != -1 && Character.isWhitespace(i) && (z || !Util.isLinebreak(i))) {
            i = bufferedReader.read();
        }
        return i;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static HlsMasterPlaylist parseMasterPlaylist(LineIterator lineIterator, String str) throws IOException {
        Uri uri;
        char c;
        ArrayList arrayList;
        ArrayList arrayList2;
        ArrayList arrayList3;
        ArrayList arrayList4;
        String str2;
        String str3;
        String str4;
        int i;
        ArrayList arrayList5;
        ArrayList arrayList6;
        ArrayList arrayList7;
        ArrayList arrayList8;
        ArrayList arrayList9;
        ArrayList arrayList10;
        ArrayList arrayList11;
        HashMap hashMap;
        boolean z;
        int i2;
        int i3;
        int i4;
        Uri uri2;
        int i5;
        String str5 = str;
        HashMap hashMap2 = new HashMap();
        HashMap hashMap3 = new HashMap();
        ArrayList arrayList12 = new ArrayList();
        ArrayList arrayList13 = new ArrayList();
        ArrayList arrayList14 = new ArrayList();
        ArrayList arrayList15 = new ArrayList();
        ArrayList arrayList16 = new ArrayList();
        ArrayList arrayList17 = new ArrayList();
        ArrayList arrayList18 = new ArrayList();
        ArrayList arrayList19 = new ArrayList();
        boolean z2 = false;
        boolean z3 = false;
        while (true) {
            boolean hasNext = lineIterator.hasNext();
            String str6 = MimeTypes.APPLICATION_M3U8;
            if (hasNext) {
                String next = lineIterator.next();
                if (next.startsWith(TAG_PREFIX)) {
                    arrayList19.add(next);
                }
                boolean startsWith = next.startsWith(TAG_I_FRAME_STREAM_INF);
                if (next.startsWith(TAG_DEFINE)) {
                    hashMap3.put(parseStringAttr(next, REGEX_NAME, hashMap3), parseStringAttr(next, REGEX_VALUE, hashMap3));
                } else {
                    if (next.equals(TAG_INDEPENDENT_SEGMENTS)) {
                        hashMap = hashMap2;
                        arrayList5 = arrayList17;
                        arrayList8 = arrayList13;
                        arrayList7 = arrayList14;
                        arrayList6 = arrayList15;
                        arrayList10 = arrayList16;
                        arrayList9 = arrayList19;
                        arrayList11 = arrayList18;
                        z3 = true;
                    } else if (next.startsWith(TAG_MEDIA)) {
                        arrayList17.add(next);
                    } else if (next.startsWith(TAG_SESSION_KEY)) {
                        DrmInitData.SchemeData parseDrmSchemeData = parseDrmSchemeData(next, parseOptionalStringAttr(next, REGEX_KEYFORMAT, KEYFORMAT_IDENTITY, hashMap3), hashMap3);
                        if (parseDrmSchemeData != null) {
                            arrayList18.add(new DrmInitData(parseEncryptionScheme(parseStringAttr(next, REGEX_METHOD, hashMap3)), parseDrmSchemeData));
                        }
                    } else if (next.startsWith(TAG_STREAM_INF) || startsWith) {
                        boolean contains = z2 | next.contains(ATTR_CLOSED_CAPTIONS_NONE);
                        if (startsWith) {
                            i2 = 16384;
                            z = contains;
                        } else {
                            z = contains;
                            i2 = 0;
                        }
                        int parseIntAttr = parseIntAttr(next, REGEX_BANDWIDTH);
                        arrayList11 = arrayList18;
                        arrayList10 = arrayList16;
                        int parseOptionalIntAttr = parseOptionalIntAttr(next, REGEX_AVERAGE_BANDWIDTH, -1);
                        String parseOptionalStringAttr = parseOptionalStringAttr(next, REGEX_CODECS, hashMap3);
                        arrayList9 = arrayList19;
                        String parseOptionalStringAttr2 = parseOptionalStringAttr(next, REGEX_RESOLUTION, hashMap3);
                        if (parseOptionalStringAttr2 != null) {
                            arrayList8 = arrayList13;
                            String[] split = Util.split(parseOptionalStringAttr2, "x");
                            int parseInt = Integer.parseInt(split[0]);
                            int parseInt2 = Integer.parseInt(split[1]);
                            if (parseInt <= 0 || parseInt2 <= 0) {
                                parseInt2 = -1;
                                i5 = -1;
                            } else {
                                i5 = parseInt;
                            }
                            i3 = parseInt2;
                            i4 = i5;
                        } else {
                            arrayList8 = arrayList13;
                            i4 = -1;
                            i3 = -1;
                        }
                        float f = -1.0f;
                        arrayList7 = arrayList14;
                        String parseOptionalStringAttr3 = parseOptionalStringAttr(next, REGEX_FRAME_RATE, hashMap3);
                        if (parseOptionalStringAttr3 != null) {
                            f = Float.parseFloat(parseOptionalStringAttr3);
                        }
                        arrayList6 = arrayList15;
                        String parseOptionalStringAttr4 = parseOptionalStringAttr(next, REGEX_VIDEO, hashMap3);
                        arrayList5 = arrayList17;
                        String parseOptionalStringAttr5 = parseOptionalStringAttr(next, REGEX_AUDIO, hashMap3);
                        String parseOptionalStringAttr6 = parseOptionalStringAttr(next, REGEX_SUBTITLES, hashMap3);
                        String parseOptionalStringAttr7 = parseOptionalStringAttr(next, REGEX_CLOSED_CAPTIONS, hashMap3);
                        if (startsWith) {
                            uri2 = UriUtil.resolveToUri(str5, parseStringAttr(next, REGEX_URI, hashMap3));
                        } else if (lineIterator.hasNext()) {
                            uri2 = UriUtil.resolveToUri(str5, replaceVariableReferences(lineIterator.next(), hashMap3));
                        } else {
                            throw ParserException.createForMalformedManifest("#EXT-X-STREAM-INF must be followed by another line", null);
                        }
                        arrayList12.add(new HlsMasterPlaylist.Variant(uri2, new Format.Builder().setId(arrayList12.size()).setContainerMimeType(str6).setCodecs(parseOptionalStringAttr).setAverageBitrate(parseOptionalIntAttr).setPeakBitrate(parseIntAttr).setWidth(i4).setHeight(i3).setFrameRate(f).setRoleFlags(i2).build(), parseOptionalStringAttr4, parseOptionalStringAttr5, parseOptionalStringAttr6, parseOptionalStringAttr7));
                        hashMap = hashMap2;
                        ArrayList arrayList20 = (ArrayList) hashMap.get(uri2);
                        if (arrayList20 == null) {
                            arrayList20 = new ArrayList();
                            hashMap.put(uri2, arrayList20);
                        }
                        arrayList20.add(new HlsTrackMetadataEntry.VariantInfo(parseOptionalIntAttr, parseIntAttr, parseOptionalStringAttr4, parseOptionalStringAttr5, parseOptionalStringAttr6, parseOptionalStringAttr7));
                        z3 = z3;
                        z2 = z;
                    }
                    hashMap2 = hashMap;
                    arrayList18 = arrayList11;
                    arrayList16 = arrayList10;
                    arrayList19 = arrayList9;
                    arrayList13 = arrayList8;
                    arrayList14 = arrayList7;
                    arrayList15 = arrayList6;
                    arrayList17 = arrayList5;
                    str5 = str;
                }
                hashMap = hashMap2;
                arrayList5 = arrayList17;
                arrayList8 = arrayList13;
                arrayList7 = arrayList14;
                arrayList6 = arrayList15;
                arrayList10 = arrayList16;
                arrayList9 = arrayList19;
                arrayList11 = arrayList18;
                z3 = z3;
                hashMap2 = hashMap;
                arrayList18 = arrayList11;
                arrayList16 = arrayList10;
                arrayList19 = arrayList9;
                arrayList13 = arrayList8;
                arrayList14 = arrayList7;
                arrayList15 = arrayList6;
                arrayList17 = arrayList5;
                str5 = str;
            } else {
                ArrayList arrayList21 = arrayList17;
                ArrayList arrayList22 = arrayList13;
                ArrayList arrayList23 = arrayList14;
                ArrayList arrayList24 = arrayList15;
                ArrayList arrayList25 = new ArrayList();
                HashSet hashSet = new HashSet();
                for (int i6 = 0; i6 < arrayList12.size(); i6++) {
                    HlsMasterPlaylist.Variant variant = (HlsMasterPlaylist.Variant) arrayList12.get(i6);
                    if (hashSet.add(variant.url)) {
                        Assertions.checkState(variant.format.metadata == null);
                        arrayList25.add(variant.copyWithFormat(variant.format.buildUpon().setMetadata(new Metadata(new HlsTrackMetadataEntry(null, null, (List) Assertions.checkNotNull((ArrayList) hashMap2.get(variant.url))))).build()));
                    }
                }
                Uri uri3 = null;
                ArrayList arrayList26 = null;
                Format format = null;
                int i7 = 0;
                while (i7 < arrayList21.size()) {
                    String str7 = (String) arrayList21.get(i7);
                    String parseStringAttr = parseStringAttr(str7, REGEX_GROUP_ID, hashMap3);
                    String parseStringAttr2 = parseStringAttr(str7, REGEX_NAME, hashMap3);
                    Format.Builder builder = new Format.Builder();
                    StringBuilder sb = new StringBuilder(String.valueOf(parseStringAttr).length() + 1 + String.valueOf(parseStringAttr2).length());
                    sb.append(parseStringAttr);
                    sb.append(":");
                    sb.append(parseStringAttr2);
                    Format.Builder language = builder.setId(sb.toString()).setLabel(parseStringAttr2).setContainerMimeType(str6).setSelectionFlags(parseSelectionFlags(str7)).setRoleFlags(parseRoleFlags(str7, hashMap3)).setLanguage(parseOptionalStringAttr(str7, REGEX_LANGUAGE, hashMap3));
                    String parseOptionalStringAttr8 = parseOptionalStringAttr(str7, REGEX_URI, hashMap3);
                    if (parseOptionalStringAttr8 == null) {
                        uri = uri3;
                    } else {
                        uri = UriUtil.resolveToUri(str, parseOptionalStringAttr8);
                    }
                    arrayList21 = arrayList21;
                    Metadata metadata = new Metadata(new HlsTrackMetadataEntry(parseStringAttr, parseStringAttr2, Collections.emptyList()));
                    String parseStringAttr3 = parseStringAttr(str7, REGEX_TYPE, hashMap3);
                    switch (parseStringAttr3.hashCode()) {
                        case -959297733:
                            if (parseStringAttr3.equals(TYPE_SUBTITLES)) {
                                c = 2;
                                break;
                            }
                            c = 65535;
                            break;
                        case -333210994:
                            if (parseStringAttr3.equals(TYPE_CLOSED_CAPTIONS)) {
                                c = 3;
                                break;
                            }
                            c = 65535;
                            break;
                        case 62628790:
                            if (parseStringAttr3.equals(TYPE_AUDIO)) {
                                c = 1;
                                break;
                            }
                            c = 65535;
                            break;
                        case 81665115:
                            if (parseStringAttr3.equals(TYPE_VIDEO)) {
                                c = 0;
                                break;
                            }
                            c = 65535;
                            break;
                        default:
                            c = 65535;
                            break;
                    }
                    if (c == 0) {
                        arrayList4 = arrayList26;
                        arrayList2 = arrayList23;
                        arrayList = arrayList24;
                        HlsMasterPlaylist.Variant variantWithVideoGroup = getVariantWithVideoGroup(arrayList12, parseStringAttr);
                        if (variantWithVideoGroup != null) {
                            Format format2 = variantWithVideoGroup.format;
                            String codecsOfType = Util.getCodecsOfType(format2.codecs, 2);
                            language.setCodecs(codecsOfType).setSampleMimeType(MimeTypes.getMediaMimeType(codecsOfType)).setWidth(format2.width).setHeight(format2.height).setFrameRate(format2.frameRate);
                        }
                        if (uri != null) {
                            language.setMetadata(metadata);
                            arrayList3 = arrayList22;
                            arrayList3.add(new HlsMasterPlaylist.Rendition(uri, language.build(), parseStringAttr, parseStringAttr2));
                            arrayList26 = arrayList4;
                        }
                        arrayList3 = arrayList22;
                        arrayList26 = arrayList4;
                    } else if (c != 1) {
                        if (c == 2) {
                            HlsMasterPlaylist.Variant variantWithSubtitleGroup = getVariantWithSubtitleGroup(arrayList12, parseStringAttr);
                            if (variantWithSubtitleGroup != null) {
                                String codecsOfType2 = Util.getCodecsOfType(variantWithSubtitleGroup.format.codecs, 3);
                                language.setCodecs(codecsOfType2);
                                str3 = MimeTypes.getMediaMimeType(codecsOfType2);
                            } else {
                                str3 = null;
                            }
                            if (str3 == null) {
                                str3 = "text/vtt";
                            }
                            language.setSampleMimeType(str3).setMetadata(metadata);
                            if (uri != null) {
                                arrayList = arrayList24;
                                arrayList.add(new HlsMasterPlaylist.Rendition(uri, language.build(), parseStringAttr, parseStringAttr2));
                            } else {
                                arrayList = arrayList24;
                                Log.w(LOG_TAG, "EXT-X-MEDIA tag with missing mandatory URI attribute: skipping");
                            }
                            arrayList4 = arrayList26;
                            arrayList3 = arrayList22;
                            arrayList2 = arrayList23;
                        } else if (c != 3) {
                            arrayList4 = arrayList26;
                            arrayList3 = arrayList22;
                            arrayList2 = arrayList23;
                            arrayList = arrayList24;
                        } else {
                            String parseStringAttr4 = parseStringAttr(str7, REGEX_INSTREAM_ID, hashMap3);
                            if (parseStringAttr4.startsWith("CC")) {
                                i = Integer.parseInt(parseStringAttr4.substring(2));
                                str4 = MimeTypes.APPLICATION_CEA608;
                            } else {
                                i = Integer.parseInt(parseStringAttr4.substring(7));
                                str4 = MimeTypes.APPLICATION_CEA708;
                            }
                            if (arrayList26 == null) {
                                arrayList26 = new ArrayList();
                            }
                            language.setSampleMimeType(str4).setAccessibilityChannel(i);
                            arrayList26.add(language.build());
                            arrayList3 = arrayList22;
                            arrayList2 = arrayList23;
                            arrayList = arrayList24;
                        }
                        arrayList26 = arrayList4;
                    } else {
                        arrayList = arrayList24;
                        HlsMasterPlaylist.Variant variantWithAudioGroup = getVariantWithAudioGroup(arrayList12, parseStringAttr);
                        if (variantWithAudioGroup != null) {
                            arrayList4 = arrayList26;
                            String codecsOfType3 = Util.getCodecsOfType(variantWithAudioGroup.format.codecs, 1);
                            language.setCodecs(codecsOfType3);
                            str2 = MimeTypes.getMediaMimeType(codecsOfType3);
                        } else {
                            arrayList4 = arrayList26;
                            str2 = null;
                        }
                        String parseOptionalStringAttr9 = parseOptionalStringAttr(str7, REGEX_CHANNELS, hashMap3);
                        if (parseOptionalStringAttr9 != null) {
                            language.setChannelCount(Integer.parseInt(Util.splitAtFirst(parseOptionalStringAttr9, "/")[0]));
                            if (MimeTypes.AUDIO_E_AC3.equals(str2) && parseOptionalStringAttr9.endsWith("/JOC")) {
                                language.setCodecs(Ac3Util.E_AC3_JOC_CODEC_STRING);
                                str2 = MimeTypes.AUDIO_E_AC3_JOC;
                            }
                        }
                        language.setSampleMimeType(str2);
                        if (uri != null) {
                            language.setMetadata(metadata);
                            arrayList2 = arrayList23;
                            arrayList2.add(new HlsMasterPlaylist.Rendition(uri, language.build(), parseStringAttr, parseStringAttr2));
                        } else {
                            arrayList2 = arrayList23;
                            if (variantWithAudioGroup != null) {
                                format = language.build();
                                arrayList26 = arrayList4;
                                arrayList3 = arrayList22;
                            }
                        }
                        arrayList3 = arrayList22;
                        arrayList26 = arrayList4;
                    }
                    i7++;
                    arrayList22 = arrayList3;
                    arrayList23 = arrayList2;
                    arrayList24 = arrayList;
                    str6 = str6;
                    uri3 = null;
                }
                return new HlsMasterPlaylist(str, arrayList19, arrayList25, arrayList22, arrayList23, arrayList24, arrayList16, format, z2 ? Collections.emptyList() : arrayList26, z3, hashMap3, arrayList18);
            }
        }
    }

    private static HlsMasterPlaylist.Variant getVariantWithAudioGroup(ArrayList<HlsMasterPlaylist.Variant> arrayList, String str) {
        for (int i = 0; i < arrayList.size(); i++) {
            HlsMasterPlaylist.Variant variant = arrayList.get(i);
            if (str.equals(variant.audioGroupId)) {
                return variant;
            }
        }
        return null;
    }

    private static HlsMasterPlaylist.Variant getVariantWithVideoGroup(ArrayList<HlsMasterPlaylist.Variant> arrayList, String str) {
        for (int i = 0; i < arrayList.size(); i++) {
            HlsMasterPlaylist.Variant variant = arrayList.get(i);
            if (str.equals(variant.videoGroupId)) {
                return variant;
            }
        }
        return null;
    }

    private static HlsMasterPlaylist.Variant getVariantWithSubtitleGroup(ArrayList<HlsMasterPlaylist.Variant> arrayList, String str) {
        for (int i = 0; i < arrayList.size(); i++) {
            HlsMasterPlaylist.Variant variant = arrayList.get(i);
            if (str.equals(variant.subtitleGroupId)) {
                return variant;
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r23v0 */
    /* JADX WARN: Type inference failed for: r23v15 */
    private static HlsMediaPlaylist parseMediaPlaylist(HlsMasterPlaylist hlsMasterPlaylist, HlsMediaPlaylist hlsMediaPlaylist, LineIterator lineIterator, String str) throws IOException {
        HashMap hashMap;
        HashMap hashMap2;
        ArrayList arrayList;
        String str2;
        String str3;
        long j;
        HashMap hashMap3;
        long j2;
        long j3;
        long j4;
        HashMap hashMap4;
        DrmInitData drmInitData;
        String str4;
        HlsMasterPlaylist hlsMasterPlaylist2 = hlsMasterPlaylist;
        HlsMediaPlaylist hlsMediaPlaylist2 = hlsMediaPlaylist;
        boolean z = hlsMasterPlaylist2.hasIndependentSegments;
        HashMap hashMap5 = new HashMap();
        HashMap hashMap6 = new HashMap();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        HashMap hashMap7 = new HashMap();
        ArrayList arrayList4 = new ArrayList();
        HlsMediaPlaylist.ServerControl serverControl = new HlsMediaPlaylist.ServerControl(C.TIME_UNSET, false, C.TIME_UNSET, C.TIME_UNSET, false);
        TreeMap treeMap = new TreeMap();
        String str5 = "";
        boolean z2 = z;
        String str6 = str5;
        long j5 = 0;
        long j6 = 0;
        long j7 = 0;
        long j8 = 0;
        long j9 = 0;
        long j10 = 0;
        long j11 = 0;
        long j12 = 0;
        HlsMediaPlaylist.Part part = null;
        DrmInitData drmInitData2 = 0;
        DrmInitData drmInitData3 = null;
        boolean z3 = false;
        boolean z4 = false;
        int i = 0;
        long j13 = C.TIME_UNSET;
        int i2 = 1;
        long j14 = C.TIME_UNSET;
        long j15 = C.TIME_UNSET;
        boolean z5 = false;
        boolean z6 = false;
        int i3 = 0;
        long j16 = -1;
        String str7 = null;
        String str8 = null;
        int i4 = 0;
        boolean z7 = false;
        HlsMediaPlaylist.Segment segment = null;
        ArrayList arrayList5 = arrayList3;
        String str9 = null;
        while (lineIterator.hasNext()) {
            String next = lineIterator.next();
            if (next.startsWith(TAG_PREFIX)) {
                arrayList4.add(next);
            }
            if (next.startsWith(TAG_PLAYLIST_TYPE)) {
                String parseStringAttr = parseStringAttr(next, REGEX_PLAYLIST_TYPE, hashMap5);
                if ("VOD".equals(parseStringAttr)) {
                    i = 1;
                } else if ("EVENT".equals(parseStringAttr)) {
                    i = 2;
                }
            } else if (next.equals(TAG_IFRAME)) {
                z7 = true;
            } else if (next.startsWith(TAG_START)) {
                z4 = parseOptionalBooleanAttribute(next, REGEX_PRECISE, false);
                j13 = (long) (parseDoubleAttr(next, REGEX_TIME_OFFSET) * 1000000.0d);
            } else if (next.startsWith(TAG_SERVER_CONTROL)) {
                serverControl = parseServerControl(next);
            } else if (next.startsWith(TAG_PART_INF)) {
                j15 = (long) (parseDoubleAttr(next, REGEX_PART_TARGET_DURATION) * 1000000.0d);
            } else if (next.startsWith(TAG_INIT_SEGMENT)) {
                String parseStringAttr2 = parseStringAttr(next, REGEX_URI, hashMap5);
                String parseOptionalStringAttr = parseOptionalStringAttr(next, REGEX_ATTR_BYTERANGE, hashMap5);
                if (parseOptionalStringAttr != null) {
                    String[] split = Util.split(parseOptionalStringAttr, "@");
                    long parseLong = Long.parseLong(split[0]);
                    if (split.length > 1) {
                        j5 = Long.parseLong(split[1]);
                    }
                    j16 = parseLong;
                }
                int i5 = (j16 > -1 ? 1 : (j16 == -1 ? 0 : -1));
                if (i5 == 0) {
                    j5 = 0;
                }
                if (str9 == null || str7 != null) {
                    segment = new HlsMediaPlaylist.Segment(parseStringAttr2, j5, j16, str9, str7);
                    if (i5 != 0) {
                        j5 += j16;
                    }
                    str7 = str7;
                    j16 = -1;
                } else {
                    throw ParserException.createForMalformedManifest("The encryption IV attribute must be present when an initialization segment is encrypted with METHOD=AES-128.", null);
                }
            } else {
                if (next.startsWith(TAG_TARGET_DURATION)) {
                    j14 = ((long) parseIntAttr(next, REGEX_TARGET_DURATION)) * 1000000;
                } else if (next.startsWith(TAG_MEDIA_SEQUENCE)) {
                    j10 = parseLongAttr(next, REGEX_MEDIA_SEQUENCE);
                    str7 = str7;
                    j8 = j10;
                } else if (next.startsWith(TAG_VERSION)) {
                    i2 = parseIntAttr(next, REGEX_VERSION);
                } else {
                    if (next.startsWith(TAG_DEFINE)) {
                        String parseOptionalStringAttr2 = parseOptionalStringAttr(next, REGEX_IMPORT, hashMap5);
                        if (parseOptionalStringAttr2 != null) {
                            String str10 = hlsMasterPlaylist2.variableDefinitions.get(parseOptionalStringAttr2);
                            if (str10 != null) {
                                hashMap5.put(parseOptionalStringAttr2, str10);
                            }
                        } else {
                            hashMap5.put(parseStringAttr(next, REGEX_NAME, hashMap5), parseStringAttr(next, REGEX_VALUE, hashMap5));
                        }
                        hashMap = hashMap5;
                        hashMap2 = hashMap6;
                        arrayList = arrayList4;
                        str2 = str5;
                        str3 = str8;
                        j = j10;
                        hashMap3 = hashMap7;
                    } else if (next.startsWith(TAG_MEDIA_DURATION)) {
                        str6 = parseOptionalStringAttr(next, REGEX_MEDIA_TITLE, str5, hashMap5);
                        j11 = (long) (parseDoubleAttr(next, REGEX_MEDIA_DURATION) * 1000000.0d);
                        hashMap6 = hashMap6;
                        str9 = str9;
                    } else {
                        String str11 = str9;
                        if (next.startsWith(TAG_SKIP)) {
                            int parseIntAttr = parseIntAttr(next, REGEX_SKIPPED_SEGMENTS);
                            Assertions.checkState(hlsMediaPlaylist2 != null && arrayList2.isEmpty());
                            int i6 = (int) (j8 - ((HlsMediaPlaylist) Util.castNonNull(hlsMediaPlaylist)).mediaSequence);
                            int i7 = parseIntAttr + i6;
                            if (i6 < 0 || i7 > hlsMediaPlaylist2.segments.size()) {
                                throw new DeltaUpdateException();
                            }
                            String str12 = str7;
                            long j17 = j9;
                            while (i6 < i7) {
                                HlsMediaPlaylist.Segment segment2 = hlsMediaPlaylist2.segments.get(i6);
                                if (j8 != hlsMediaPlaylist2.mediaSequence) {
                                    segment2 = segment2.copyWith(j17, (hlsMediaPlaylist2.discontinuitySequence - i3) + segment2.relativeDiscontinuitySequence);
                                }
                                arrayList2.add(segment2);
                                j6 = j17 + segment2.durationUs;
                                if (segment2.byteRangeLength != -1) {
                                    j5 = segment2.byteRangeOffset + segment2.byteRangeLength;
                                }
                                int i8 = segment2.relativeDiscontinuitySequence;
                                HlsMediaPlaylist.Segment segment3 = segment2.initializationSegment;
                                DrmInitData drmInitData4 = segment2.drmInitData;
                                String str13 = segment2.fullSegmentEncryptionKeyUri;
                                if (segment2.encryptionIV == null || !segment2.encryptionIV.equals(Long.toHexString(j10))) {
                                    str12 = segment2.encryptionIV;
                                }
                                j10++;
                                i6++;
                                hlsMediaPlaylist2 = hlsMediaPlaylist;
                                i4 = i8;
                                segment = segment3;
                                drmInitData2 = drmInitData4;
                                str11 = str13;
                                j17 = j6;
                                arrayList4 = arrayList4;
                                str5 = str5;
                            }
                            hlsMasterPlaylist2 = hlsMasterPlaylist;
                            hlsMediaPlaylist2 = hlsMediaPlaylist;
                            j9 = j17;
                            hashMap6 = hashMap6;
                            str9 = str11;
                            str7 = str12;
                        } else {
                            arrayList = arrayList4;
                            str2 = str5;
                            if (next.startsWith(TAG_KEY)) {
                                String parseStringAttr3 = parseStringAttr(next, REGEX_METHOD, hashMap5);
                                String parseOptionalStringAttr3 = parseOptionalStringAttr(next, REGEX_KEYFORMAT, KEYFORMAT_IDENTITY, hashMap5);
                                if (METHOD_NONE.equals(parseStringAttr3)) {
                                    treeMap.clear();
                                    str4 = null;
                                    str9 = null;
                                } else {
                                    String parseOptionalStringAttr4 = parseOptionalStringAttr(next, REGEX_IV, hashMap5);
                                    if (!KEYFORMAT_IDENTITY.equals(parseOptionalStringAttr3)) {
                                        str8 = str8 == null ? parseEncryptionScheme(parseStringAttr3) : str8;
                                        DrmInitData.SchemeData parseDrmSchemeData = parseDrmSchemeData(next, parseOptionalStringAttr3, hashMap5);
                                        if (parseDrmSchemeData != null) {
                                            treeMap.put(parseOptionalStringAttr3, parseDrmSchemeData);
                                            str4 = parseOptionalStringAttr4;
                                            str9 = null;
                                        }
                                    } else if (METHOD_AES_128.equals(parseStringAttr3)) {
                                        str9 = parseStringAttr(next, REGEX_URI, hashMap5);
                                        str4 = parseOptionalStringAttr4;
                                        drmInitData2 = drmInitData2;
                                        hlsMediaPlaylist2 = hlsMediaPlaylist;
                                        hashMap6 = hashMap6;
                                        arrayList4 = arrayList;
                                        str5 = str2;
                                        str7 = str4;
                                        hlsMasterPlaylist2 = hlsMasterPlaylist;
                                    }
                                    str4 = parseOptionalStringAttr4;
                                    str9 = null;
                                    drmInitData2 = drmInitData2;
                                    hlsMediaPlaylist2 = hlsMediaPlaylist;
                                    hashMap6 = hashMap6;
                                    arrayList4 = arrayList;
                                    str5 = str2;
                                    str7 = str4;
                                    hlsMasterPlaylist2 = hlsMasterPlaylist;
                                }
                                drmInitData2 = str9;
                                hlsMediaPlaylist2 = hlsMediaPlaylist;
                                hashMap6 = hashMap6;
                                arrayList4 = arrayList;
                                str5 = str2;
                                str7 = str4;
                                hlsMasterPlaylist2 = hlsMasterPlaylist;
                            } else {
                                str3 = str8;
                                if (next.startsWith(TAG_BYTERANGE)) {
                                    String[] split2 = Util.split(parseStringAttr(next, REGEX_BYTERANGE, hashMap5), "@");
                                    j16 = Long.parseLong(split2[0]);
                                    if (split2.length > 1) {
                                        j5 = Long.parseLong(split2[1]);
                                    }
                                } else if (next.startsWith(TAG_DISCONTINUITY_SEQUENCE)) {
                                    i3 = Integer.parseInt(next.substring(next.indexOf(58) + 1));
                                    hlsMasterPlaylist2 = hlsMasterPlaylist;
                                    hlsMediaPlaylist2 = hlsMediaPlaylist;
                                    str8 = str3;
                                    hashMap6 = hashMap6;
                                    str9 = str11;
                                    arrayList4 = arrayList;
                                    str5 = str2;
                                    z6 = true;
                                } else if (next.equals(TAG_DISCONTINUITY)) {
                                    i4++;
                                } else {
                                    if (next.startsWith(TAG_PROGRAM_DATE_TIME)) {
                                        if (j7 == 0) {
                                            j7 = C.msToUs(Util.parseXsDateTime(next.substring(next.indexOf(58) + 1))) - j9;
                                        }
                                    } else if (next.equals(TAG_GAP)) {
                                        hlsMasterPlaylist2 = hlsMasterPlaylist;
                                        hlsMediaPlaylist2 = hlsMediaPlaylist;
                                        str8 = str3;
                                        hashMap6 = hashMap6;
                                        str9 = str11;
                                        arrayList4 = arrayList;
                                        str5 = str2;
                                        z3 = true;
                                    } else if (next.equals(TAG_INDEPENDENT_SEGMENTS)) {
                                        hlsMasterPlaylist2 = hlsMasterPlaylist;
                                        hlsMediaPlaylist2 = hlsMediaPlaylist;
                                        str8 = str3;
                                        hashMap6 = hashMap6;
                                        str9 = str11;
                                        arrayList4 = arrayList;
                                        str5 = str2;
                                        z2 = true;
                                    } else if (next.equals(TAG_ENDLIST)) {
                                        hlsMasterPlaylist2 = hlsMasterPlaylist;
                                        hlsMediaPlaylist2 = hlsMediaPlaylist;
                                        str8 = str3;
                                        hashMap6 = hashMap6;
                                        str9 = str11;
                                        arrayList4 = arrayList;
                                        str5 = str2;
                                        z5 = true;
                                    } else if (next.startsWith(TAG_RENDITION_REPORT)) {
                                        long parseOptionalLongAttr = parseOptionalLongAttr(next, REGEX_LAST_MSN, (j8 + ((long) arrayList2.size())) - (arrayList5.isEmpty() ? 1 : 0));
                                        int parseOptionalIntAttr = parseOptionalIntAttr(next, REGEX_LAST_PART, j15 != C.TIME_UNSET ? (arrayList5.isEmpty() ? ((HlsMediaPlaylist.Segment) Iterables.getLast(arrayList2)).parts : arrayList5).size() - 1 : -1);
                                        Uri parse = Uri.parse(UriUtil.resolve(str, parseStringAttr(next, REGEX_URI, hashMap5)));
                                        hashMap7.put(parse, new HlsMediaPlaylist.RenditionReport(parse, parseOptionalLongAttr, parseOptionalIntAttr));
                                    } else if (!next.startsWith(TAG_PRELOAD_HINT)) {
                                        j = j10;
                                        str9 = str11;
                                        if (next.startsWith(TAG_PART)) {
                                            String segmentEncryptionIV = getSegmentEncryptionIV(j, str9, str7);
                                            String parseStringAttr4 = parseStringAttr(next, REGEX_URI, hashMap5);
                                            long parseDoubleAttr = (long) (parseDoubleAttr(next, REGEX_ATTR_DURATION) * 1000000.0d);
                                            boolean parseOptionalBooleanAttribute = parseOptionalBooleanAttribute(next, REGEX_INDEPENDENT, false) | (z2 && arrayList5.isEmpty());
                                            boolean parseOptionalBooleanAttribute2 = parseOptionalBooleanAttribute(next, REGEX_GAP, false);
                                            String parseOptionalStringAttr5 = parseOptionalStringAttr(next, REGEX_ATTR_BYTERANGE, hashMap5);
                                            if (parseOptionalStringAttr5 != null) {
                                                String[] split3 = Util.split(parseOptionalStringAttr5, "@");
                                                j2 = Long.parseLong(split3[0]);
                                                if (split3.length > 1) {
                                                    j12 = Long.parseLong(split3[1]);
                                                }
                                                j3 = -1;
                                            } else {
                                                j3 = -1;
                                                j2 = -1;
                                            }
                                            int i9 = (j2 > j3 ? 1 : (j2 == j3 ? 0 : -1));
                                            if (i9 == 0) {
                                                j12 = 0;
                                            }
                                            if (drmInitData2 == null && !treeMap.isEmpty()) {
                                                DrmInitData.SchemeData[] schemeDataArr = (DrmInitData.SchemeData[]) treeMap.values().toArray(new DrmInitData.SchemeData[0]);
                                                DrmInitData drmInitData5 = new DrmInitData(str3, schemeDataArr);
                                                if (drmInitData3 == null) {
                                                    drmInitData3 = getPlaylistProtectionSchemes(str3, schemeDataArr);
                                                }
                                                drmInitData2 = drmInitData5;
                                            }
                                            arrayList5.add(new HlsMediaPlaylist.Part(parseStringAttr4, segment, parseDoubleAttr, i4, j6, drmInitData2, str9, segmentEncryptionIV, j12, j2, parseOptionalBooleanAttribute2, parseOptionalBooleanAttribute, false));
                                            j6 += parseDoubleAttr;
                                            if (i9 != 0) {
                                                j12 += j2;
                                            }
                                            hlsMasterPlaylist2 = hlsMasterPlaylist;
                                            hlsMediaPlaylist2 = hlsMediaPlaylist;
                                            j10 = j;
                                            hashMap7 = hashMap7;
                                            arrayList4 = arrayList;
                                            str5 = str2;
                                            str8 = str3;
                                            hashMap6 = hashMap6;
                                        } else {
                                            hashMap3 = hashMap7;
                                            if (!next.startsWith("#")) {
                                                String segmentEncryptionIV2 = getSegmentEncryptionIV(j, str9, str7);
                                                long j18 = j + 1;
                                                String replaceVariableReferences = replaceVariableReferences(next, hashMap5);
                                                hashMap2 = hashMap6;
                                                HlsMediaPlaylist.Segment segment4 = (HlsMediaPlaylist.Segment) hashMap2.get(replaceVariableReferences);
                                                int i10 = (j16 > -1 ? 1 : (j16 == -1 ? 0 : -1));
                                                if (i10 == 0) {
                                                    j4 = 0;
                                                } else {
                                                    if (z7 && segment == null && segment4 == null) {
                                                        segment4 = new HlsMediaPlaylist.Segment(replaceVariableReferences, 0, j5, null, null);
                                                        hashMap2.put(replaceVariableReferences, segment4);
                                                    }
                                                    j4 = j5;
                                                }
                                                if (drmInitData2 != null || treeMap.isEmpty()) {
                                                    hashMap4 = hashMap5;
                                                    drmInitData = drmInitData2;
                                                } else {
                                                    hashMap4 = hashMap5;
                                                    DrmInitData.SchemeData[] schemeDataArr2 = (DrmInitData.SchemeData[]) treeMap.values().toArray(new DrmInitData.SchemeData[0]);
                                                    drmInitData = new DrmInitData(str3, schemeDataArr2);
                                                    if (drmInitData3 == null) {
                                                        drmInitData3 = getPlaylistProtectionSchemes(str3, schemeDataArr2);
                                                    }
                                                }
                                                arrayList2.add(new HlsMediaPlaylist.Segment(replaceVariableReferences, segment != null ? segment : segment4, str6, j11, i4, j9, drmInitData, str9, segmentEncryptionIV2, j4, j16, z3, arrayList5));
                                                j6 = j9 + j11;
                                                arrayList5 = new ArrayList();
                                                if (i10 != 0) {
                                                    j4 += j16;
                                                }
                                                j5 = j4;
                                                hlsMasterPlaylist2 = hlsMasterPlaylist;
                                                hlsMediaPlaylist2 = hlsMediaPlaylist;
                                                drmInitData3 = drmInitData3;
                                                j10 = j18;
                                                str7 = str7;
                                                drmInitData2 = drmInitData;
                                                j11 = 0;
                                                j9 = j6;
                                                hashMap5 = hashMap4;
                                                hashMap7 = hashMap3;
                                                arrayList4 = arrayList;
                                                str5 = str2;
                                                str6 = str5;
                                                z3 = false;
                                                j16 = -1;
                                                str8 = str3;
                                                hashMap6 = hashMap2;
                                            } else {
                                                hashMap = hashMap5;
                                                hashMap2 = hashMap6;
                                            }
                                        }
                                    } else if (part == null && TYPE_PART.equals(parseStringAttr(next, REGEX_PRELOAD_HINT_TYPE, hashMap5))) {
                                        String parseStringAttr5 = parseStringAttr(next, REGEX_URI, hashMap5);
                                        long parseOptionalLongAttr2 = parseOptionalLongAttr(next, REGEX_BYTERANGE_START, -1);
                                        long parseOptionalLongAttr3 = parseOptionalLongAttr(next, REGEX_BYTERANGE_LENGTH, -1);
                                        str9 = str11;
                                        String segmentEncryptionIV3 = getSegmentEncryptionIV(j10, str9, str7);
                                        if (drmInitData2 == null && !treeMap.isEmpty()) {
                                            DrmInitData.SchemeData[] schemeDataArr3 = (DrmInitData.SchemeData[]) treeMap.values().toArray(new DrmInitData.SchemeData[0]);
                                            DrmInitData drmInitData6 = new DrmInitData(str3, schemeDataArr3);
                                            if (drmInitData3 == null) {
                                                drmInitData3 = getPlaylistProtectionSchemes(str3, schemeDataArr3);
                                            }
                                            drmInitData2 = drmInitData6;
                                        }
                                        int i11 = (parseOptionalLongAttr2 > -1 ? 1 : (parseOptionalLongAttr2 == -1 ? 0 : -1));
                                        if (i11 == 0 || parseOptionalLongAttr3 != -1) {
                                            part = new HlsMediaPlaylist.Part(parseStringAttr5, segment, 0, i4, j6, drmInitData2, str9, segmentEncryptionIV3, i11 != 0 ? parseOptionalLongAttr2 : 0, parseOptionalLongAttr3, false, false, true);
                                        }
                                        hlsMasterPlaylist2 = hlsMasterPlaylist;
                                        hlsMediaPlaylist2 = hlsMediaPlaylist;
                                        str8 = str3;
                                        j10 = j10;
                                        hashMap6 = hashMap6;
                                        arrayList4 = arrayList;
                                        str5 = str2;
                                    }
                                    hashMap = hashMap5;
                                    hashMap3 = hashMap7;
                                    hashMap2 = hashMap6;
                                    j = j10;
                                    str9 = str11;
                                }
                                hlsMasterPlaylist2 = hlsMasterPlaylist;
                                hlsMediaPlaylist2 = hlsMediaPlaylist;
                                str8 = str3;
                                hashMap6 = hashMap6;
                                str9 = str11;
                                arrayList4 = arrayList;
                                str5 = str2;
                            }
                        }
                    }
                    hlsMasterPlaylist2 = hlsMasterPlaylist;
                    hlsMediaPlaylist2 = hlsMediaPlaylist;
                    j10 = j;
                    str7 = str7;
                    hashMap5 = hashMap;
                    hashMap7 = hashMap3;
                    arrayList4 = arrayList;
                    str5 = str2;
                    str8 = str3;
                    hashMap6 = hashMap2;
                }
                str7 = str7;
            }
        }
        if (part != null) {
            arrayList5.add(part);
        }
        return new HlsMediaPlaylist(i, str, arrayList4, j13, z4, j7, z6, i3, j8, i2, j14, j15, z2, z5, j7 != 0, drmInitData3, arrayList2, arrayList5, serverControl, hashMap7);
    }

    private static DrmInitData getPlaylistProtectionSchemes(String str, DrmInitData.SchemeData[] schemeDataArr) {
        DrmInitData.SchemeData[] schemeDataArr2 = new DrmInitData.SchemeData[schemeDataArr.length];
        for (int i = 0; i < schemeDataArr.length; i++) {
            schemeDataArr2[i] = schemeDataArr[i].copyWithData(null);
        }
        return new DrmInitData(str, schemeDataArr2);
    }

    private static String getSegmentEncryptionIV(long j, String str, String str2) {
        if (str == null) {
            return null;
        }
        return str2 != null ? str2 : Long.toHexString(j);
    }

    private static int parseSelectionFlags(String str) {
        int i = parseOptionalBooleanAttribute(str, REGEX_DEFAULT, false) ? 1 : 0;
        if (parseOptionalBooleanAttribute(str, REGEX_FORCED, false)) {
            i |= 2;
        }
        return parseOptionalBooleanAttribute(str, REGEX_AUTOSELECT, false) ? i | 4 : i;
    }

    private static int parseRoleFlags(String str, Map<String, String> map) {
        String parseOptionalStringAttr = parseOptionalStringAttr(str, REGEX_CHARACTERISTICS, map);
        int i = 0;
        if (TextUtils.isEmpty(parseOptionalStringAttr)) {
            return 0;
        }
        String[] split = Util.split(parseOptionalStringAttr, ",");
        if (Util.contains(split, "public.accessibility.describes-video")) {
            i = 512;
        }
        if (Util.contains(split, "public.accessibility.transcribes-spoken-dialog")) {
            i |= 4096;
        }
        if (Util.contains(split, "public.accessibility.describes-music-and-sound")) {
            i |= 1024;
        }
        return Util.contains(split, "public.easy-to-read") ? i | 8192 : i;
    }

    private static DrmInitData.SchemeData parseDrmSchemeData(String str, String str2, Map<String, String> map) throws ParserException {
        String parseOptionalStringAttr = parseOptionalStringAttr(str, REGEX_KEYFORMATVERSIONS, "1", map);
        if (KEYFORMAT_WIDEVINE_PSSH_BINARY.equals(str2)) {
            String parseStringAttr = parseStringAttr(str, REGEX_URI, map);
            return new DrmInitData.SchemeData(C.WIDEVINE_UUID, MimeTypes.VIDEO_MP4, Base64.decode(parseStringAttr.substring(parseStringAttr.indexOf(44)), 0));
        } else if (KEYFORMAT_WIDEVINE_PSSH_JSON.equals(str2)) {
            return new DrmInitData.SchemeData(C.WIDEVINE_UUID, "hls", Util.getUtf8Bytes(str));
        } else {
            if (!KEYFORMAT_PLAYREADY.equals(str2) || !"1".equals(parseOptionalStringAttr)) {
                return null;
            }
            String parseStringAttr2 = parseStringAttr(str, REGEX_URI, map);
            return new DrmInitData.SchemeData(C.PLAYREADY_UUID, MimeTypes.VIDEO_MP4, PsshAtomUtil.buildPsshAtom(C.PLAYREADY_UUID, Base64.decode(parseStringAttr2.substring(parseStringAttr2.indexOf(44)), 0)));
        }
    }

    private static HlsMediaPlaylist.ServerControl parseServerControl(String str) {
        double parseOptionalDoubleAttr = parseOptionalDoubleAttr(str, REGEX_CAN_SKIP_UNTIL, -9.223372036854776E18d);
        int i = (parseOptionalDoubleAttr > -9.223372036854776E18d ? 1 : (parseOptionalDoubleAttr == -9.223372036854776E18d ? 0 : -1));
        long j = C.TIME_UNSET;
        long j2 = i == 0 ? -9223372036854775807L : (long) (parseOptionalDoubleAttr * 1000000.0d);
        boolean parseOptionalBooleanAttribute = parseOptionalBooleanAttribute(str, REGEX_CAN_SKIP_DATE_RANGES, false);
        double parseOptionalDoubleAttr2 = parseOptionalDoubleAttr(str, REGEX_HOLD_BACK, -9.223372036854776E18d);
        long j3 = parseOptionalDoubleAttr2 == -9.223372036854776E18d ? -9223372036854775807L : (long) (parseOptionalDoubleAttr2 * 1000000.0d);
        double parseOptionalDoubleAttr3 = parseOptionalDoubleAttr(str, REGEX_PART_HOLD_BACK, -9.223372036854776E18d);
        if (parseOptionalDoubleAttr3 != -9.223372036854776E18d) {
            j = (long) (parseOptionalDoubleAttr3 * 1000000.0d);
        }
        return new HlsMediaPlaylist.ServerControl(j2, parseOptionalBooleanAttribute, j3, j, parseOptionalBooleanAttribute(str, REGEX_CAN_BLOCK_RELOAD, false));
    }

    private static String parseEncryptionScheme(String str) {
        return (METHOD_SAMPLE_AES_CENC.equals(str) || METHOD_SAMPLE_AES_CTR.equals(str)) ? C.CENC_TYPE_cenc : C.CENC_TYPE_cbcs;
    }

    private static int parseIntAttr(String str, Pattern pattern) throws ParserException {
        return Integer.parseInt(parseStringAttr(str, pattern, Collections.emptyMap()));
    }

    private static int parseOptionalIntAttr(String str, Pattern pattern, int i) {
        Matcher matcher = pattern.matcher(str);
        return matcher.find() ? Integer.parseInt((String) Assertions.checkNotNull(matcher.group(1))) : i;
    }

    private static long parseLongAttr(String str, Pattern pattern) throws ParserException {
        return Long.parseLong(parseStringAttr(str, pattern, Collections.emptyMap()));
    }

    private static long parseOptionalLongAttr(String str, Pattern pattern, long j) {
        Matcher matcher = pattern.matcher(str);
        return matcher.find() ? Long.parseLong((String) Assertions.checkNotNull(matcher.group(1))) : j;
    }

    private static double parseDoubleAttr(String str, Pattern pattern) throws ParserException {
        return Double.parseDouble(parseStringAttr(str, pattern, Collections.emptyMap()));
    }

    private static String parseStringAttr(String str, Pattern pattern, Map<String, String> map) throws ParserException {
        String parseOptionalStringAttr = parseOptionalStringAttr(str, pattern, map);
        if (parseOptionalStringAttr != null) {
            return parseOptionalStringAttr;
        }
        String pattern2 = pattern.pattern();
        StringBuilder sb = new StringBuilder(String.valueOf(pattern2).length() + 19 + String.valueOf(str).length());
        sb.append("Couldn't match ");
        sb.append(pattern2);
        sb.append(" in ");
        sb.append(str);
        throw ParserException.createForMalformedManifest(sb.toString(), null);
    }

    private static String parseOptionalStringAttr(String str, Pattern pattern, Map<String, String> map) {
        return parseOptionalStringAttr(str, pattern, null, map);
    }

    private static String parseOptionalStringAttr(String str, Pattern pattern, String str2, Map<String, String> map) {
        Matcher matcher = pattern.matcher(str);
        if (matcher.find()) {
            str2 = (String) Assertions.checkNotNull(matcher.group(1));
        }
        return (map.isEmpty() || str2 == null) ? str2 : replaceVariableReferences(str2, map);
    }

    private static double parseOptionalDoubleAttr(String str, Pattern pattern, double d) {
        Matcher matcher = pattern.matcher(str);
        return matcher.find() ? Double.parseDouble((String) Assertions.checkNotNull(matcher.group(1))) : d;
    }

    private static String replaceVariableReferences(String str, Map<String, String> map) {
        Matcher matcher = REGEX_VARIABLE_REFERENCE.matcher(str);
        StringBuffer stringBuffer = new StringBuffer();
        while (matcher.find()) {
            String group = matcher.group(1);
            if (map.containsKey(group)) {
                matcher.appendReplacement(stringBuffer, Matcher.quoteReplacement(map.get(group)));
            }
        }
        matcher.appendTail(stringBuffer);
        return stringBuffer.toString();
    }

    private static boolean parseOptionalBooleanAttribute(String str, Pattern pattern, boolean z) {
        Matcher matcher = pattern.matcher(str);
        return matcher.find() ? BOOLEAN_TRUE.equals(matcher.group(1)) : z;
    }

    private static Pattern compileBooleanAttrPattern(String str) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 9);
        sb.append(str);
        sb.append("=(");
        sb.append(BOOLEAN_FALSE);
        sb.append("|");
        sb.append(BOOLEAN_TRUE);
        sb.append(")");
        return Pattern.compile(sb.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class LineIterator {
        private final Queue<String> extraLines;
        private String next;
        private final BufferedReader reader;

        public LineIterator(Queue<String> queue, BufferedReader bufferedReader) {
            this.extraLines = queue;
            this.reader = bufferedReader;
        }

        @EnsuresNonNullIf(expression = {NotificationAction.ACTION_NEXT}, result = true)
        public boolean hasNext() throws IOException {
            if (this.next != null) {
                return true;
            }
            if (!this.extraLines.isEmpty()) {
                this.next = (String) Assertions.checkNotNull(this.extraLines.poll());
                return true;
            }
            do {
                String readLine = this.reader.readLine();
                this.next = readLine;
                if (readLine == null) {
                    return false;
                }
                this.next = this.next.trim();
            } while (this.next.isEmpty());
            return true;
        }

        public String next() throws IOException {
            if (hasNext()) {
                String str = this.next;
                this.next = null;
                return str;
            }
            throw new NoSuchElementException();
        }
    }
}
