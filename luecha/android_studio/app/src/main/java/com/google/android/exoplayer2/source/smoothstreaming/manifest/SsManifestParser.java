package com.google.android.exoplayer2.source.smoothstreaming.manifest;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Pair;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.audio.AacUtil;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.extractor.mp4.PsshAtomUtil;
import com.google.android.exoplayer2.extractor.mp4.TrackEncryptionBox;
import com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifest;
import com.google.android.exoplayer2.upstream.ParsingLoadable;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.CodecSpecificDataUtil;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.Util;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import java.util.UUID;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* loaded from: classes2.dex */
public class SsManifestParser implements ParsingLoadable.Parser<SsManifest> {
    private final XmlPullParserFactory xmlParserFactory;

    public SsManifestParser() {
        try {
            this.xmlParserFactory = XmlPullParserFactory.newInstance();
        } catch (XmlPullParserException e) {
            throw new RuntimeException("Couldn't create XmlPullParserFactory instance", e);
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.exoplayer2.upstream.ParsingLoadable.Parser
    public SsManifest parse(Uri uri, InputStream inputStream) throws IOException {
        try {
            XmlPullParser newPullParser = this.xmlParserFactory.newPullParser();
            newPullParser.setInput(inputStream, null);
            return (SsManifest) new SmoothStreamingMediaParser(null, uri.toString()).parse(newPullParser);
        } catch (XmlPullParserException e) {
            throw ParserException.createForMalformedManifest(null, e);
        }
    }

    /* loaded from: classes2.dex */
    public static class MissingFieldException extends ParserException {
        /* JADX WARN: Illegal instructions before constructor call */
        /* Code decompiled incorrectly, please refer to instructions dump */
        public MissingFieldException(java.lang.String r4) {
            /*
                r3 = this;
                java.lang.String r4 = java.lang.String.valueOf(r4)
                int r0 = r4.length()
                java.lang.String r1 = "Missing required field: "
                if (r0 == 0) goto L_0x0011
                java.lang.String r4 = r1.concat(r4)
                goto L_0x0016
            L_0x0011:
                java.lang.String r4 = new java.lang.String
                r4.<init>(r1)
            L_0x0016:
                r0 = 0
                r1 = 1
                r2 = 4
                r3.<init>(r4, r0, r1, r2)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.MissingFieldException.<init>(java.lang.String):void");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static abstract class ElementParser {
        private final String baseUri;
        private final List<Pair<String, Object>> normalizedAttributes = new LinkedList();
        private final ElementParser parent;
        private final String tag;

        protected void addChild(Object obj) {
        }

        protected abstract Object build();

        protected boolean handleChildInline(String str) {
            return false;
        }

        protected void parseEndTag(XmlPullParser xmlPullParser) {
        }

        protected void parseStartTag(XmlPullParser xmlPullParser) throws ParserException {
        }

        protected void parseText(XmlPullParser xmlPullParser) {
        }

        public ElementParser(ElementParser elementParser, String str, String str2) {
            this.parent = elementParser;
            this.baseUri = str;
            this.tag = str2;
        }

        public final Object parse(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
            boolean z = false;
            int i = 0;
            while (true) {
                int eventType = xmlPullParser.getEventType();
                if (eventType == 1) {
                    return null;
                }
                if (eventType == 2) {
                    String name = xmlPullParser.getName();
                    if (this.tag.equals(name)) {
                        parseStartTag(xmlPullParser);
                        z = true;
                    } else if (z) {
                        if (i > 0) {
                            i++;
                        } else if (handleChildInline(name)) {
                            parseStartTag(xmlPullParser);
                        } else {
                            ElementParser newChildParser = newChildParser(this, name, this.baseUri);
                            if (newChildParser == null) {
                                i = 1;
                            } else {
                                addChild(newChildParser.parse(xmlPullParser));
                            }
                        }
                    }
                } else if (eventType != 3) {
                    if (eventType == 4 && z && i == 0) {
                        parseText(xmlPullParser);
                    }
                } else if (!z) {
                    continue;
                } else if (i > 0) {
                    i--;
                } else {
                    String name2 = xmlPullParser.getName();
                    parseEndTag(xmlPullParser);
                    if (!handleChildInline(name2)) {
                        return build();
                    }
                }
                xmlPullParser.next();
            }
        }

        private ElementParser newChildParser(ElementParser elementParser, String str, String str2) {
            if (QualityLevelParser.TAG.equals(str)) {
                return new QualityLevelParser(elementParser, str2);
            }
            if (ProtectionParser.TAG.equals(str)) {
                return new ProtectionParser(elementParser, str2);
            }
            if (StreamIndexParser.TAG.equals(str)) {
                return new StreamIndexParser(elementParser, str2);
            }
            return null;
        }

        protected final void putNormalizedAttribute(String str, Object obj) {
            this.normalizedAttributes.add(Pair.create(str, obj));
        }

        protected final Object getNormalizedAttribute(String str) {
            for (int i = 0; i < this.normalizedAttributes.size(); i++) {
                Pair<String, Object> pair = this.normalizedAttributes.get(i);
                if (((String) pair.first).equals(str)) {
                    return pair.second;
                }
            }
            ElementParser elementParser = this.parent;
            if (elementParser == null) {
                return null;
            }
            return elementParser.getNormalizedAttribute(str);
        }

        protected final String parseRequiredString(XmlPullParser xmlPullParser, String str) throws MissingFieldException {
            String attributeValue = xmlPullParser.getAttributeValue(null, str);
            if (attributeValue != null) {
                return attributeValue;
            }
            throw new MissingFieldException(str);
        }

        protected final int parseInt(XmlPullParser xmlPullParser, String str, int i) throws ParserException {
            String attributeValue = xmlPullParser.getAttributeValue(null, str);
            if (attributeValue == null) {
                return i;
            }
            try {
                return Integer.parseInt(attributeValue);
            } catch (NumberFormatException e) {
                throw ParserException.createForMalformedManifest(null, e);
            }
        }

        protected final int parseRequiredInt(XmlPullParser xmlPullParser, String str) throws ParserException {
            String attributeValue = xmlPullParser.getAttributeValue(null, str);
            if (attributeValue != null) {
                try {
                    return Integer.parseInt(attributeValue);
                } catch (NumberFormatException e) {
                    throw ParserException.createForMalformedManifest(null, e);
                }
            } else {
                throw new MissingFieldException(str);
            }
        }

        protected final long parseLong(XmlPullParser xmlPullParser, String str, long j) throws ParserException {
            String attributeValue = xmlPullParser.getAttributeValue(null, str);
            if (attributeValue == null) {
                return j;
            }
            try {
                return Long.parseLong(attributeValue);
            } catch (NumberFormatException e) {
                throw ParserException.createForMalformedManifest(null, e);
            }
        }

        protected final long parseRequiredLong(XmlPullParser xmlPullParser, String str) throws ParserException {
            String attributeValue = xmlPullParser.getAttributeValue(null, str);
            if (attributeValue != null) {
                try {
                    return Long.parseLong(attributeValue);
                } catch (NumberFormatException e) {
                    throw ParserException.createForMalformedManifest(null, e);
                }
            } else {
                throw new MissingFieldException(str);
            }
        }

        protected final boolean parseBoolean(XmlPullParser xmlPullParser, String str, boolean z) {
            String attributeValue = xmlPullParser.getAttributeValue(null, str);
            return attributeValue != null ? Boolean.parseBoolean(attributeValue) : z;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class SmoothStreamingMediaParser extends ElementParser {
        private static final String KEY_DURATION = "Duration";
        private static final String KEY_DVR_WINDOW_LENGTH = "DVRWindowLength";
        private static final String KEY_IS_LIVE = "IsLive";
        private static final String KEY_LOOKAHEAD_COUNT = "LookaheadCount";
        private static final String KEY_MAJOR_VERSION = "MajorVersion";
        private static final String KEY_MINOR_VERSION = "MinorVersion";
        private static final String KEY_TIME_SCALE = "TimeScale";
        public static final String TAG = "SmoothStreamingMedia";
        private long duration;
        private long dvrWindowLength;
        private boolean isLive;
        private int majorVersion;
        private int minorVersion;
        private long timescale;
        private int lookAheadCount = -1;
        private SsManifest.ProtectionElement protectionElement = null;
        private final List<SsManifest.StreamElement> streamElements = new LinkedList();

        public SmoothStreamingMediaParser(ElementParser elementParser, String str) {
            super(elementParser, str, TAG);
        }

        @Override // com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.ElementParser
        public void parseStartTag(XmlPullParser xmlPullParser) throws ParserException {
            this.majorVersion = parseRequiredInt(xmlPullParser, KEY_MAJOR_VERSION);
            this.minorVersion = parseRequiredInt(xmlPullParser, KEY_MINOR_VERSION);
            this.timescale = parseLong(xmlPullParser, KEY_TIME_SCALE, 10000000);
            this.duration = parseRequiredLong(xmlPullParser, KEY_DURATION);
            this.dvrWindowLength = parseLong(xmlPullParser, KEY_DVR_WINDOW_LENGTH, 0);
            this.lookAheadCount = parseInt(xmlPullParser, KEY_LOOKAHEAD_COUNT, -1);
            this.isLive = parseBoolean(xmlPullParser, KEY_IS_LIVE, false);
            putNormalizedAttribute(KEY_TIME_SCALE, Long.valueOf(this.timescale));
        }

        @Override // com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.ElementParser
        public void addChild(Object obj) {
            if (obj instanceof SsManifest.StreamElement) {
                this.streamElements.add((SsManifest.StreamElement) obj);
            } else if (obj instanceof SsManifest.ProtectionElement) {
                Assertions.checkState(this.protectionElement == null);
                this.protectionElement = (SsManifest.ProtectionElement) obj;
            }
        }

        @Override // com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.ElementParser
        public Object build() {
            SsManifest.StreamElement[] streamElementArr = new SsManifest.StreamElement[this.streamElements.size()];
            this.streamElements.toArray(streamElementArr);
            SsManifest.ProtectionElement protectionElement = this.protectionElement;
            if (protectionElement != null) {
                DrmInitData drmInitData = new DrmInitData(new DrmInitData.SchemeData(protectionElement.uuid, MimeTypes.VIDEO_MP4, this.protectionElement.data));
                for (SsManifest.StreamElement streamElement : streamElementArr) {
                    int i = streamElement.type;
                    if (i == 2 || i == 1) {
                        Format[] formatArr = streamElement.formats;
                        for (int i2 = 0; i2 < formatArr.length; i2++) {
                            formatArr[i2] = formatArr[i2].buildUpon().setDrmInitData(drmInitData).build();
                        }
                    }
                }
            }
            return new SsManifest(this.majorVersion, this.minorVersion, this.timescale, this.duration, this.dvrWindowLength, this.lookAheadCount, this.isLive, this.protectionElement, streamElementArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class ProtectionParser extends ElementParser {
        private static final int INITIALIZATION_VECTOR_SIZE = 8;
        public static final String KEY_SYSTEM_ID = "SystemID";
        public static final String TAG = "Protection";
        public static final String TAG_PROTECTION_HEADER = "ProtectionHeader";
        private boolean inProtectionHeader;
        private byte[] initData;
        private UUID uuid;

        public ProtectionParser(ElementParser elementParser, String str) {
            super(elementParser, str, TAG);
        }

        @Override // com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.ElementParser
        public boolean handleChildInline(String str) {
            return TAG_PROTECTION_HEADER.equals(str);
        }

        @Override // com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.ElementParser
        public void parseStartTag(XmlPullParser xmlPullParser) {
            if (TAG_PROTECTION_HEADER.equals(xmlPullParser.getName())) {
                this.inProtectionHeader = true;
                this.uuid = UUID.fromString(stripCurlyBraces(xmlPullParser.getAttributeValue(null, KEY_SYSTEM_ID)));
            }
        }

        @Override // com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.ElementParser
        public void parseText(XmlPullParser xmlPullParser) {
            if (this.inProtectionHeader) {
                this.initData = Base64.decode(xmlPullParser.getText(), 0);
            }
        }

        @Override // com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.ElementParser
        public void parseEndTag(XmlPullParser xmlPullParser) {
            if (TAG_PROTECTION_HEADER.equals(xmlPullParser.getName())) {
                this.inProtectionHeader = false;
            }
        }

        @Override // com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.ElementParser
        public Object build() {
            UUID uuid = this.uuid;
            return new SsManifest.ProtectionElement(uuid, PsshAtomUtil.buildPsshAtom(uuid, this.initData), buildTrackEncryptionBoxes(this.initData));
        }

        private static TrackEncryptionBox[] buildTrackEncryptionBoxes(byte[] bArr) {
            return new TrackEncryptionBox[]{new TrackEncryptionBox(true, null, 8, getProtectionElementKeyId(bArr), 0, 0, null)};
        }

        private static byte[] getProtectionElementKeyId(byte[] bArr) {
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < bArr.length; i += 2) {
                sb.append((char) bArr[i]);
            }
            String sb2 = sb.toString();
            byte[] decode = Base64.decode(sb2.substring(sb2.indexOf("<KID>") + 5, sb2.indexOf("</KID>")), 0);
            swap(decode, 0, 3);
            swap(decode, 1, 2);
            swap(decode, 4, 5);
            swap(decode, 6, 7);
            return decode;
        }

        private static void swap(byte[] bArr, int i, int i2) {
            byte b = bArr[i];
            bArr[i] = bArr[i2];
            bArr[i2] = b;
        }

        private static String stripCurlyBraces(String str) {
            return (str.charAt(0) == '{' && str.charAt(str.length() - 1) == '}') ? str.substring(1, str.length() - 1) : str;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class StreamIndexParser extends ElementParser {
        private static final String KEY_DISPLAY_HEIGHT = "DisplayHeight";
        private static final String KEY_DISPLAY_WIDTH = "DisplayWidth";
        private static final String KEY_FRAGMENT_DURATION = "d";
        private static final String KEY_FRAGMENT_REPEAT_COUNT = "r";
        private static final String KEY_FRAGMENT_START_TIME = "t";
        private static final String KEY_LANGUAGE = "Language";
        private static final String KEY_MAX_HEIGHT = "MaxHeight";
        private static final String KEY_MAX_WIDTH = "MaxWidth";
        private static final String KEY_NAME = "Name";
        private static final String KEY_SUB_TYPE = "Subtype";
        private static final String KEY_TIME_SCALE = "TimeScale";
        private static final String KEY_TYPE = "Type";
        private static final String KEY_TYPE_AUDIO = "audio";
        private static final String KEY_TYPE_TEXT = "text";
        private static final String KEY_TYPE_VIDEO = "video";
        private static final String KEY_URL = "Url";
        public static final String TAG = "StreamIndex";
        private static final String TAG_STREAM_FRAGMENT = "c";
        private final String baseUri;
        private int displayHeight;
        private int displayWidth;
        private final List<Format> formats = new LinkedList();
        private String language;
        private long lastChunkDuration;
        private int maxHeight;
        private int maxWidth;
        private String name;
        private ArrayList<Long> startTimes;
        private String subType;
        private long timescale;
        private int type;
        private String url;

        public StreamIndexParser(ElementParser elementParser, String str) {
            super(elementParser, str, TAG);
            this.baseUri = str;
        }

        @Override // com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.ElementParser
        public boolean handleChildInline(String str) {
            return "c".equals(str);
        }

        @Override // com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.ElementParser
        public void parseStartTag(XmlPullParser xmlPullParser) throws ParserException {
            if ("c".equals(xmlPullParser.getName())) {
                parseStreamFragmentStartTag(xmlPullParser);
            } else {
                parseStreamElementStartTag(xmlPullParser);
            }
        }

        private void parseStreamFragmentStartTag(XmlPullParser xmlPullParser) throws ParserException {
            int size = this.startTimes.size();
            long parseLong = parseLong(xmlPullParser, "t", C.TIME_UNSET);
            int i = 1;
            if (parseLong == C.TIME_UNSET) {
                if (size == 0) {
                    parseLong = 0;
                } else if (this.lastChunkDuration != -1) {
                    parseLong = this.startTimes.get(size - 1).longValue() + this.lastChunkDuration;
                } else {
                    throw ParserException.createForMalformedManifest("Unable to infer start time", null);
                }
            }
            this.startTimes.add(Long.valueOf(parseLong));
            this.lastChunkDuration = parseLong(xmlPullParser, KEY_FRAGMENT_DURATION, C.TIME_UNSET);
            long parseLong2 = parseLong(xmlPullParser, KEY_FRAGMENT_REPEAT_COUNT, 1);
            if (parseLong2 <= 1 || this.lastChunkDuration != C.TIME_UNSET) {
                while (true) {
                    long j = (long) i;
                    if (j < parseLong2) {
                        this.startTimes.add(Long.valueOf((this.lastChunkDuration * j) + parseLong));
                        i++;
                    } else {
                        return;
                    }
                }
            } else {
                throw ParserException.createForMalformedManifest("Repeated chunk with unspecified duration", null);
            }
        }

        private void parseStreamElementStartTag(XmlPullParser xmlPullParser) throws ParserException {
            this.type = parseType(xmlPullParser);
            putNormalizedAttribute(KEY_TYPE, Integer.valueOf(this.type));
            if (this.type == 3) {
                this.subType = parseRequiredString(xmlPullParser, KEY_SUB_TYPE);
            } else {
                this.subType = xmlPullParser.getAttributeValue(null, KEY_SUB_TYPE);
            }
            putNormalizedAttribute(KEY_SUB_TYPE, this.subType);
            this.name = xmlPullParser.getAttributeValue(null, KEY_NAME);
            putNormalizedAttribute(KEY_NAME, this.name);
            this.url = parseRequiredString(xmlPullParser, KEY_URL);
            this.maxWidth = parseInt(xmlPullParser, KEY_MAX_WIDTH, -1);
            this.maxHeight = parseInt(xmlPullParser, KEY_MAX_HEIGHT, -1);
            this.displayWidth = parseInt(xmlPullParser, KEY_DISPLAY_WIDTH, -1);
            this.displayHeight = parseInt(xmlPullParser, KEY_DISPLAY_HEIGHT, -1);
            this.language = xmlPullParser.getAttributeValue(null, KEY_LANGUAGE);
            putNormalizedAttribute(KEY_LANGUAGE, this.language);
            this.timescale = (long) parseInt(xmlPullParser, KEY_TIME_SCALE, -1);
            if (this.timescale == -1) {
                this.timescale = ((Long) getNormalizedAttribute(KEY_TIME_SCALE)).longValue();
            }
            this.startTimes = new ArrayList<>();
        }

        private int parseType(XmlPullParser xmlPullParser) throws ParserException {
            String attributeValue = xmlPullParser.getAttributeValue(null, KEY_TYPE);
            if (attributeValue == null) {
                throw new MissingFieldException(KEY_TYPE);
            } else if ("audio".equalsIgnoreCase(attributeValue)) {
                return 1;
            } else {
                if ("video".equalsIgnoreCase(attributeValue)) {
                    return 2;
                }
                if ("text".equalsIgnoreCase(attributeValue)) {
                    return 3;
                }
                StringBuilder sb = new StringBuilder(String.valueOf(attributeValue).length() + 19);
                sb.append("Invalid key value[");
                sb.append(attributeValue);
                sb.append("]");
                throw ParserException.createForMalformedManifest(sb.toString(), null);
            }
        }

        @Override // com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.ElementParser
        public void addChild(Object obj) {
            if (obj instanceof Format) {
                this.formats.add((Format) obj);
            }
        }

        @Override // com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.ElementParser
        public Object build() {
            Format[] formatArr = new Format[this.formats.size()];
            this.formats.toArray(formatArr);
            return new SsManifest.StreamElement(this.baseUri, this.url, this.type, this.subType, this.timescale, this.name, this.maxWidth, this.maxHeight, this.displayWidth, this.displayHeight, this.language, formatArr, this.startTimes, this.lastChunkDuration);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class QualityLevelParser extends ElementParser {
        private static final String KEY_BITRATE = "Bitrate";
        private static final String KEY_CHANNELS = "Channels";
        private static final String KEY_CODEC_PRIVATE_DATA = "CodecPrivateData";
        private static final String KEY_FOUR_CC = "FourCC";
        private static final String KEY_INDEX = "Index";
        private static final String KEY_LANGUAGE = "Language";
        private static final String KEY_MAX_HEIGHT = "MaxHeight";
        private static final String KEY_MAX_WIDTH = "MaxWidth";
        private static final String KEY_NAME = "Name";
        private static final String KEY_SAMPLING_RATE = "SamplingRate";
        private static final String KEY_SUB_TYPE = "Subtype";
        private static final String KEY_TYPE = "Type";
        public static final String TAG = "QualityLevel";
        private Format format;

        public QualityLevelParser(ElementParser elementParser, String str) {
            super(elementParser, str, TAG);
        }

        @Override // com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.ElementParser
        public void parseStartTag(XmlPullParser xmlPullParser) throws ParserException {
            Format.Builder builder = new Format.Builder();
            String fourCCToMimeType = fourCCToMimeType(parseRequiredString(xmlPullParser, KEY_FOUR_CC));
            int intValue = ((Integer) getNormalizedAttribute(KEY_TYPE)).intValue();
            if (intValue == 2) {
                builder.setContainerMimeType(MimeTypes.VIDEO_MP4).setWidth(parseRequiredInt(xmlPullParser, KEY_MAX_WIDTH)).setHeight(parseRequiredInt(xmlPullParser, KEY_MAX_HEIGHT)).setInitializationData(buildCodecSpecificData(xmlPullParser.getAttributeValue(null, KEY_CODEC_PRIVATE_DATA)));
            } else if (intValue == 1) {
                if (fourCCToMimeType == null) {
                    fourCCToMimeType = MimeTypes.AUDIO_AAC;
                }
                int parseRequiredInt = parseRequiredInt(xmlPullParser, KEY_CHANNELS);
                int parseRequiredInt2 = parseRequiredInt(xmlPullParser, KEY_SAMPLING_RATE);
                List<byte[]> buildCodecSpecificData = buildCodecSpecificData(xmlPullParser.getAttributeValue(null, KEY_CODEC_PRIVATE_DATA));
                if (buildCodecSpecificData.isEmpty() && MimeTypes.AUDIO_AAC.equals(fourCCToMimeType)) {
                    buildCodecSpecificData = Collections.singletonList(AacUtil.buildAacLcAudioSpecificConfig(parseRequiredInt2, parseRequiredInt));
                }
                builder.setContainerMimeType(MimeTypes.AUDIO_MP4).setChannelCount(parseRequiredInt).setSampleRate(parseRequiredInt2).setInitializationData(buildCodecSpecificData);
            } else if (intValue == 3) {
                String str = (String) getNormalizedAttribute(KEY_SUB_TYPE);
                int i = 0;
                if (str != null) {
                    char c = 65535;
                    int hashCode = str.hashCode();
                    if (hashCode != 2061026) {
                        if (hashCode == 2094737 && str.equals("DESC")) {
                            c = 1;
                        }
                    } else if (str.equals("CAPT")) {
                        c = 0;
                    }
                    if (c == 0) {
                        i = 64;
                    } else if (c == 1) {
                        i = 1024;
                    }
                }
                builder.setContainerMimeType(MimeTypes.APPLICATION_MP4).setRoleFlags(i);
            } else {
                builder.setContainerMimeType(MimeTypes.APPLICATION_MP4);
            }
            this.format = builder.setId(xmlPullParser.getAttributeValue(null, KEY_INDEX)).setLabel((String) getNormalizedAttribute(KEY_NAME)).setSampleMimeType(fourCCToMimeType).setAverageBitrate(parseRequiredInt(xmlPullParser, KEY_BITRATE)).setLanguage((String) getNormalizedAttribute(KEY_LANGUAGE)).build();
        }

        @Override // com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.ElementParser
        public Object build() {
            return this.format;
        }

        private static List<byte[]> buildCodecSpecificData(String str) {
            ArrayList arrayList = new ArrayList();
            if (!TextUtils.isEmpty(str)) {
                byte[] bytesFromHexString = Util.getBytesFromHexString(str);
                byte[][] splitNalUnits = CodecSpecificDataUtil.splitNalUnits(bytesFromHexString);
                if (splitNalUnits == null) {
                    arrayList.add(bytesFromHexString);
                } else {
                    Collections.addAll(arrayList, splitNalUnits);
                }
            }
            return arrayList;
        }

        private static String fourCCToMimeType(String str) {
            if (str.equalsIgnoreCase("H264") || str.equalsIgnoreCase("X264") || str.equalsIgnoreCase("AVC1") || str.equalsIgnoreCase("DAVC")) {
                return "video/avc";
            }
            if (str.equalsIgnoreCase("AAC") || str.equalsIgnoreCase("AACL") || str.equalsIgnoreCase("AACH") || str.equalsIgnoreCase("AACP")) {
                return MimeTypes.AUDIO_AAC;
            }
            if (str.equalsIgnoreCase("TTML") || str.equalsIgnoreCase("DFXP")) {
                return MimeTypes.APPLICATION_TTML;
            }
            if (str.equalsIgnoreCase("ac-3") || str.equalsIgnoreCase("dac3")) {
                return MimeTypes.AUDIO_AC3;
            }
            if (str.equalsIgnoreCase("ec-3") || str.equalsIgnoreCase("dec3")) {
                return MimeTypes.AUDIO_E_AC3;
            }
            if (str.equalsIgnoreCase("dtsc")) {
                return MimeTypes.AUDIO_DTS;
            }
            if (str.equalsIgnoreCase("dtsh") || str.equalsIgnoreCase("dtsl")) {
                return MimeTypes.AUDIO_DTS_HD;
            }
            if (str.equalsIgnoreCase("dtse")) {
                return MimeTypes.AUDIO_DTS_EXPRESS;
            }
            if (str.equalsIgnoreCase("opus")) {
                return MimeTypes.AUDIO_OPUS;
            }
            return null;
        }
    }
}
