package com.google.android.exoplayer2.source.dash.manifest;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Pair;
import android.util.Xml;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.audio.Ac3Util;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.metadata.emsg.EventMessage;
import com.google.android.exoplayer2.source.dash.manifest.SegmentBase;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.exoplayer2.upstream.ParsingLoadable;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.UriUtil;
import com.google.android.exoplayer2.util.Util;
import com.google.android.exoplayer2.util.XmlPullParserUtil;
import com.google.common.base.Ascii;
import com.google.common.base.Charsets;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Lists;
import com.umeng.analytics.pro.ai;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.xml.sax.helpers.DefaultHandler;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes2.dex */
public class DashManifestParser extends DefaultHandler implements ParsingLoadable.Parser<DashManifest> {
    private static final String TAG = "MpdParser";
    private final XmlPullParserFactory xmlParserFactory;
    private static final Pattern FRAME_RATE_PATTERN = Pattern.compile("(\\d+)(?:/(\\d+))?");
    private static final Pattern CEA_608_ACCESSIBILITY_PATTERN = Pattern.compile("CC([1-4])=.*");
    private static final Pattern CEA_708_ACCESSIBILITY_PATTERN = Pattern.compile("([1-9]|[1-5][0-9]|6[0-3])=.*");
    private static final int[] MPEG_CHANNEL_CONFIGURATION_MAPPING = {-1, 1, 2, 3, 4, 5, 6, 8, 2, 3, 4, 7, 8, 24, 8, 12, 10, 12, 14, 12, 14};

    private static long getFinalAvailabilityTimeOffset(long j, long j2) {
        if (j2 != C.TIME_UNSET) {
            j = j2;
        }
        return j == Long.MAX_VALUE ? C.TIME_UNSET : j;
    }

    public DashManifestParser() {
        try {
            this.xmlParserFactory = XmlPullParserFactory.newInstance();
        } catch (XmlPullParserException e) {
            throw new RuntimeException("Couldn't create XmlPullParserFactory instance", e);
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.exoplayer2.upstream.ParsingLoadable.Parser
    public DashManifest parse(Uri uri, InputStream inputStream) throws IOException {
        try {
            XmlPullParser newPullParser = this.xmlParserFactory.newPullParser();
            newPullParser.setInput(inputStream, null);
            if (newPullParser.next() == 2 && "MPD".equals(newPullParser.getName())) {
                return parseMediaPresentationDescription(newPullParser, new BaseUrl(uri.toString()));
            }
            throw ParserException.createForMalformedManifest("inputStream does not contain a valid media presentation description", null);
        } catch (XmlPullParserException e) {
            throw ParserException.createForMalformedManifest(null, e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:71:0x0194  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01b4  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01bb A[LOOP:0: B:20:0x0084->B:75:0x01bb, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0177 A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump */
    protected com.google.android.exoplayer2.source.dash.manifest.DashManifest parseMediaPresentationDescription(org.xmlpull.v1.XmlPullParser r44, com.google.android.exoplayer2.source.dash.manifest.BaseUrl r45) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
        // Method dump skipped, instructions count: 455
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.dash.manifest.DashManifestParser.parseMediaPresentationDescription(org.xmlpull.v1.XmlPullParser, com.google.android.exoplayer2.source.dash.manifest.BaseUrl):com.google.android.exoplayer2.source.dash.manifest.DashManifest");
    }

    protected DashManifest buildMediaPresentationDescription(long j, long j2, long j3, boolean z, long j4, long j5, long j6, long j7, ProgramInformation programInformation, UtcTimingElement utcTimingElement, ServiceDescriptionElement serviceDescriptionElement, Uri uri, List<Period> list) {
        return new DashManifest(j, j2, j3, z, j4, j5, j6, j7, programInformation, utcTimingElement, serviceDescriptionElement, uri, list);
    }

    protected UtcTimingElement parseUtcTiming(XmlPullParser xmlPullParser) {
        return buildUtcTimingElement(xmlPullParser.getAttributeValue(null, "schemeIdUri"), xmlPullParser.getAttributeValue(null, "value"));
    }

    protected UtcTimingElement buildUtcTimingElement(String str, String str2) {
        return new UtcTimingElement(str, str2);
    }

    protected ServiceDescriptionElement parseServiceDescription(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        float f = -3.4028235E38f;
        float f2 = -3.4028235E38f;
        long j = -9223372036854775807L;
        long j2 = -9223372036854775807L;
        long j3 = -9223372036854775807L;
        while (true) {
            xmlPullParser.next();
            if (XmlPullParserUtil.isStartTag(xmlPullParser, "Latency")) {
                j = parseLong(xmlPullParser, "target", C.TIME_UNSET);
                j2 = parseLong(xmlPullParser, "min", C.TIME_UNSET);
                j3 = parseLong(xmlPullParser, "max", C.TIME_UNSET);
            } else if (XmlPullParserUtil.isStartTag(xmlPullParser, "PlaybackRate")) {
                f = parseFloat(xmlPullParser, "min", -3.4028235E38f);
                f2 = parseFloat(xmlPullParser, "max", -3.4028235E38f);
            }
            if (XmlPullParserUtil.isEndTag(xmlPullParser, "ServiceDescription")) {
                return new ServiceDescriptionElement(j, j2, j3, f, f2);
            }
            j = j;
            j2 = j2;
            j3 = j3;
            f = f;
            f2 = f2;
        }
    }

    protected Pair<Period, Long> parsePeriod(XmlPullParser xmlPullParser, List<BaseUrl> list, long j, long j2, long j3, long j4) throws XmlPullParserException, IOException {
        long j5;
        ArrayList arrayList;
        Object obj;
        ArrayList arrayList2;
        ArrayList arrayList3;
        long j6;
        SegmentBase parseSegmentTemplate;
        DashManifestParser dashManifestParser = this;
        Object obj2 = null;
        String attributeValue = xmlPullParser.getAttributeValue(null, "id");
        long parseDuration = parseDuration(xmlPullParser, TtmlNode.START, j);
        long j7 = C.TIME_UNSET;
        long j8 = j3 != C.TIME_UNSET ? j3 + parseDuration : -9223372036854775807L;
        long parseDuration2 = parseDuration(xmlPullParser, "duration", C.TIME_UNSET);
        ArrayList arrayList4 = new ArrayList();
        ArrayList arrayList5 = new ArrayList();
        ArrayList arrayList6 = new ArrayList();
        boolean z = false;
        long j9 = j2;
        long j10 = -9223372036854775807L;
        SegmentBase segmentBase = null;
        Descriptor descriptor = null;
        while (true) {
            xmlPullParser.next();
            if (XmlPullParserUtil.isStartTag(xmlPullParser, "BaseURL")) {
                if (!z) {
                    j9 = dashManifestParser.parseAvailabilityTimeOffsetUs(xmlPullParser, j9);
                    z = true;
                }
                arrayList6.addAll(parseBaseUrl(xmlPullParser, list));
                arrayList = arrayList5;
                arrayList2 = arrayList6;
                j5 = j7;
                obj = obj2;
                arrayList3 = arrayList4;
            } else {
                if (XmlPullParserUtil.isStartTag(xmlPullParser, "AdaptationSet")) {
                    j6 = j9;
                    arrayList2 = arrayList6;
                    arrayList3 = arrayList4;
                    arrayList3.add(parseAdaptationSet(xmlPullParser, !arrayList6.isEmpty() ? arrayList6 : list, segmentBase, parseDuration2, j9, j10, j8, j4));
                    arrayList = arrayList5;
                } else {
                    j6 = j9;
                    arrayList2 = arrayList6;
                    arrayList3 = arrayList4;
                    if (XmlPullParserUtil.isStartTag(xmlPullParser, "EventStream")) {
                        arrayList5.add(parseEventStream(xmlPullParser));
                        arrayList = arrayList5;
                    } else if (XmlPullParserUtil.isStartTag(xmlPullParser, "SegmentBase")) {
                        arrayList = arrayList5;
                        segmentBase = parseSegmentBase(xmlPullParser, null);
                        obj = null;
                        j9 = j6;
                        j5 = C.TIME_UNSET;
                    } else {
                        arrayList = arrayList5;
                        if (XmlPullParserUtil.isStartTag(xmlPullParser, "SegmentList")) {
                            long parseAvailabilityTimeOffsetUs = parseAvailabilityTimeOffsetUs(xmlPullParser, C.TIME_UNSET);
                            obj = null;
                            parseSegmentTemplate = parseSegmentList(xmlPullParser, null, j8, parseDuration2, j6, parseAvailabilityTimeOffsetUs, j4);
                            j10 = parseAvailabilityTimeOffsetUs;
                            j9 = j6;
                            j5 = C.TIME_UNSET;
                        } else {
                            obj = null;
                            if (XmlPullParserUtil.isStartTag(xmlPullParser, "SegmentTemplate")) {
                                long parseAvailabilityTimeOffsetUs2 = parseAvailabilityTimeOffsetUs(xmlPullParser, C.TIME_UNSET);
                                j5 = -9223372036854775807L;
                                parseSegmentTemplate = parseSegmentTemplate(xmlPullParser, null, ImmutableList.of(), j8, parseDuration2, j6, parseAvailabilityTimeOffsetUs2, j4);
                                j10 = parseAvailabilityTimeOffsetUs2;
                                j9 = j6;
                            } else {
                                j5 = C.TIME_UNSET;
                                if (XmlPullParserUtil.isStartTag(xmlPullParser, "AssetIdentifier")) {
                                    descriptor = parseDescriptor(xmlPullParser, "AssetIdentifier");
                                } else {
                                    maybeSkipTag(xmlPullParser);
                                }
                                j9 = j6;
                            }
                        }
                        segmentBase = parseSegmentTemplate;
                    }
                }
                obj = null;
                j5 = C.TIME_UNSET;
                j9 = j6;
            }
            if (XmlPullParserUtil.isEndTag(xmlPullParser, "Period")) {
                return Pair.create(buildPeriod(attributeValue, parseDuration, arrayList3, arrayList, descriptor), Long.valueOf(parseDuration2));
            }
            arrayList4 = arrayList3;
            arrayList6 = arrayList2;
            obj2 = obj;
            arrayList5 = arrayList;
            j7 = j5;
            dashManifestParser = this;
        }
    }

    protected Period buildPeriod(String str, long j, List<AdaptationSet> list, List<EventStream> list2, Descriptor descriptor) {
        return new Period(str, j, list, list2, descriptor);
    }

    protected AdaptationSet parseAdaptationSet(XmlPullParser xmlPullParser, List<BaseUrl> list, SegmentBase segmentBase, long j, long j2, long j3, long j4, long j5) throws XmlPullParserException, IOException {
        Object obj;
        String str;
        ArrayList<DrmInitData.SchemeData> arrayList;
        ArrayList arrayList2;
        ArrayList arrayList3;
        ArrayList arrayList4;
        ArrayList arrayList5;
        ArrayList arrayList6;
        long j6;
        long j7;
        ArrayList arrayList7;
        ArrayList<Descriptor> arrayList8;
        Object obj2;
        int i;
        String str2;
        long j8;
        ArrayList<Descriptor> arrayList9;
        int i2;
        ArrayList arrayList10;
        DashManifestParser dashManifestParser = this;
        XmlPullParser xmlPullParser2 = xmlPullParser;
        int parseInt = parseInt(xmlPullParser2, "id", -1);
        int parseContentType = parseContentType(xmlPullParser);
        String attributeValue = xmlPullParser2.getAttributeValue(null, "mimeType");
        String attributeValue2 = xmlPullParser2.getAttributeValue(null, "codecs");
        int parseInt2 = parseInt(xmlPullParser2, "width", -1);
        int parseInt3 = parseInt(xmlPullParser2, "height", -1);
        float parseFrameRate = parseFrameRate(xmlPullParser2, -1.0f);
        int parseInt4 = parseInt(xmlPullParser2, "audioSamplingRate", -1);
        String str3 = "lang";
        String attributeValue3 = xmlPullParser2.getAttributeValue(null, str3);
        String attributeValue4 = xmlPullParser2.getAttributeValue(null, "label");
        ArrayList<DrmInitData.SchemeData> arrayList11 = new ArrayList<>();
        ArrayList<Descriptor> arrayList12 = new ArrayList<>();
        ArrayList arrayList13 = new ArrayList();
        ArrayList arrayList14 = new ArrayList();
        ArrayList arrayList15 = new ArrayList();
        ArrayList arrayList16 = new ArrayList();
        ArrayList arrayList17 = new ArrayList();
        ArrayList arrayList18 = new ArrayList();
        SegmentBase segmentBase2 = segmentBase;
        int i3 = -1;
        int i4 = parseContentType;
        String str4 = attributeValue3;
        String str5 = attributeValue4;
        String str6 = null;
        boolean z = false;
        long j9 = j2;
        long j10 = j3;
        while (true) {
            xmlPullParser.next();
            if (XmlPullParserUtil.isStartTag(xmlPullParser2, "BaseURL")) {
                if (!z) {
                    j9 = dashManifestParser.parseAvailabilityTimeOffsetUs(xmlPullParser2, j9);
                    z = true;
                }
                arrayList18.addAll(parseBaseUrl(xmlPullParser, list));
                j7 = j10;
                j6 = j9;
                arrayList6 = arrayList18;
                arrayList7 = arrayList17;
                arrayList5 = arrayList16;
                arrayList4 = arrayList15;
                arrayList3 = arrayList14;
                arrayList2 = arrayList13;
                arrayList8 = arrayList12;
                arrayList = arrayList11;
                str = str3;
                obj = null;
            } else {
                if (XmlPullParserUtil.isStartTag(xmlPullParser2, "ContentProtection")) {
                    Pair<String, DrmInitData.SchemeData> parseContentProtection = parseContentProtection(xmlPullParser);
                    if (parseContentProtection.first != null) {
                        str6 = (String) parseContentProtection.first;
                    }
                    if (parseContentProtection.second != null) {
                        arrayList11.add((DrmInitData.SchemeData) parseContentProtection.second);
                    }
                    arrayList6 = arrayList18;
                    arrayList7 = arrayList17;
                    arrayList5 = arrayList16;
                    arrayList4 = arrayList15;
                    arrayList3 = arrayList14;
                    arrayList2 = arrayList13;
                    arrayList8 = arrayList12;
                    arrayList = arrayList11;
                    str = str3;
                    j6 = j9;
                    obj = null;
                } else {
                    if (XmlPullParserUtil.isStartTag(xmlPullParser2, "ContentComponent")) {
                        obj2 = null;
                        str4 = checkLanguageConsistency(str4, xmlPullParser2.getAttributeValue(null, str3));
                        i4 = checkContentTypeConsistency(i4, parseContentType(xmlPullParser));
                    } else {
                        obj2 = null;
                        if (XmlPullParserUtil.isStartTag(xmlPullParser2, "Role")) {
                            arrayList14.add(parseDescriptor(xmlPullParser2, "Role"));
                        } else if (XmlPullParserUtil.isStartTag(xmlPullParser2, "AudioChannelConfiguration")) {
                            i3 = parseAudioChannelConfiguration(xmlPullParser);
                        } else if (XmlPullParserUtil.isStartTag(xmlPullParser2, "Accessibility")) {
                            arrayList13.add(parseDescriptor(xmlPullParser2, "Accessibility"));
                        } else if (XmlPullParserUtil.isStartTag(xmlPullParser2, "EssentialProperty")) {
                            arrayList15.add(parseDescriptor(xmlPullParser2, "EssentialProperty"));
                        } else if (XmlPullParserUtil.isStartTag(xmlPullParser2, "SupplementalProperty")) {
                            arrayList16.add(parseDescriptor(xmlPullParser2, "SupplementalProperty"));
                        } else {
                            if (XmlPullParserUtil.isStartTag(xmlPullParser2, "Representation")) {
                                if (!arrayList18.isEmpty()) {
                                    i2 = i4;
                                    arrayList10 = arrayList18;
                                } else {
                                    arrayList10 = list;
                                    i2 = i4;
                                }
                                j6 = j9;
                                arrayList6 = arrayList18;
                                arrayList5 = arrayList16;
                                arrayList4 = arrayList15;
                                arrayList3 = arrayList14;
                                arrayList2 = arrayList13;
                                arrayList9 = arrayList12;
                                arrayList = arrayList11;
                                str = str3;
                                obj = null;
                                RepresentationInfo parseRepresentation = parseRepresentation(xmlPullParser, arrayList10, attributeValue, attributeValue2, parseInt2, parseInt3, parseFrameRate, i3, parseInt4, str4, arrayList3, arrayList2, arrayList4, arrayList5, segmentBase2, j4, j, j6, j10, j5);
                                int checkContentTypeConsistency = checkContentTypeConsistency(i2, MimeTypes.getTrackType(parseRepresentation.format.sampleMimeType));
                                arrayList7 = arrayList17;
                                arrayList7.add(parseRepresentation);
                                xmlPullParser2 = xmlPullParser;
                                j7 = j10;
                                i4 = checkContentTypeConsistency;
                                str4 = str4;
                            } else {
                                str2 = str4;
                                arrayList6 = arrayList18;
                                arrayList7 = arrayList17;
                                arrayList5 = arrayList16;
                                arrayList4 = arrayList15;
                                arrayList3 = arrayList14;
                                arrayList2 = arrayList13;
                                arrayList9 = arrayList12;
                                arrayList = arrayList11;
                                str = str3;
                                obj = null;
                                j6 = j9;
                                if (XmlPullParserUtil.isStartTag(xmlPullParser, "SegmentBase")) {
                                    segmentBase2 = parseSegmentBase(xmlPullParser, (SegmentBase.SingleSegmentBase) segmentBase2);
                                    j7 = j10;
                                    i4 = i4;
                                    str4 = str2;
                                    arrayList8 = arrayList9;
                                    xmlPullParser2 = xmlPullParser;
                                } else {
                                    if (XmlPullParserUtil.isStartTag(xmlPullParser, "SegmentList")) {
                                        j7 = parseAvailabilityTimeOffsetUs(xmlPullParser, j10);
                                        i = i4;
                                        segmentBase2 = parseSegmentList(xmlPullParser, (SegmentBase.SegmentList) segmentBase2, j4, j, j6, j7, j5);
                                        xmlPullParser2 = xmlPullParser;
                                    } else {
                                        j8 = j10;
                                        i = i4;
                                        if (XmlPullParserUtil.isStartTag(xmlPullParser, "SegmentTemplate")) {
                                            j7 = parseAvailabilityTimeOffsetUs(xmlPullParser, j8);
                                            xmlPullParser2 = xmlPullParser;
                                            segmentBase2 = parseSegmentTemplate(xmlPullParser, (SegmentBase.SegmentTemplate) segmentBase2, arrayList5, j4, j, j6, j7, j5);
                                        } else {
                                            xmlPullParser2 = xmlPullParser;
                                            if (XmlPullParserUtil.isStartTag(xmlPullParser2, "InbandEventStream")) {
                                                arrayList8 = arrayList9;
                                                arrayList8.add(parseDescriptor(xmlPullParser2, "InbandEventStream"));
                                            } else {
                                                arrayList8 = arrayList9;
                                                if (XmlPullParserUtil.isStartTag(xmlPullParser2, "Label")) {
                                                    str5 = parseLabel(xmlPullParser);
                                                    j7 = j8;
                                                    str4 = str2;
                                                    i4 = i;
                                                } else if (XmlPullParserUtil.isStartTag(xmlPullParser)) {
                                                    parseAdaptationSetChild(xmlPullParser);
                                                }
                                            }
                                            j7 = j8;
                                            str4 = str2;
                                            i4 = i;
                                        }
                                    }
                                    str4 = str2;
                                    i4 = i;
                                }
                            }
                            arrayList8 = arrayList9;
                        }
                        i = i4;
                        str2 = str4;
                        arrayList6 = arrayList18;
                        arrayList7 = arrayList17;
                        arrayList5 = arrayList16;
                        arrayList4 = arrayList15;
                        arrayList3 = arrayList14;
                        arrayList2 = arrayList13;
                        arrayList8 = arrayList12;
                        arrayList = arrayList11;
                        str = str3;
                        obj = null;
                        j6 = j9;
                        j8 = j10;
                        j7 = j8;
                        str4 = str2;
                        i4 = i;
                    }
                    arrayList6 = arrayList18;
                    arrayList7 = arrayList17;
                    arrayList5 = arrayList16;
                    arrayList4 = arrayList15;
                    arrayList3 = arrayList14;
                    arrayList2 = arrayList13;
                    arrayList8 = arrayList12;
                    arrayList = arrayList11;
                    str = str3;
                    obj = obj2;
                    j6 = j9;
                }
                j7 = j10;
            }
            if (XmlPullParserUtil.isEndTag(xmlPullParser2, "AdaptationSet")) {
                break;
            }
            arrayList12 = arrayList8;
            arrayList17 = arrayList7;
            j10 = j7;
            j9 = j6;
            arrayList18 = arrayList6;
            arrayList16 = arrayList5;
            arrayList15 = arrayList4;
            arrayList14 = arrayList3;
            arrayList13 = arrayList2;
            arrayList11 = arrayList;
            str3 = str;
            dashManifestParser = this;
        }
        ArrayList arrayList19 = new ArrayList(arrayList7.size());
        for (int i5 = 0; i5 < arrayList7.size(); i5++) {
            arrayList19.add(buildRepresentation((RepresentationInfo) arrayList7.get(i5), str5, str6, arrayList, arrayList8));
        }
        return buildAdaptationSet(parseInt, i4, arrayList19, arrayList2, arrayList4, arrayList5);
    }

    protected AdaptationSet buildAdaptationSet(int i, int i2, List<Representation> list, List<Descriptor> list2, List<Descriptor> list3, List<Descriptor> list4) {
        return new AdaptationSet(i, i2, list, list2, list3, list4);
    }

    protected int parseContentType(XmlPullParser xmlPullParser) {
        String attributeValue = xmlPullParser.getAttributeValue(null, "contentType");
        if (TextUtils.isEmpty(attributeValue)) {
            return -1;
        }
        if ("audio".equals(attributeValue)) {
            return 1;
        }
        if ("video".equals(attributeValue)) {
            return 2;
        }
        if ("text".equals(attributeValue)) {
            return 3;
        }
        return -1;
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x010f  */
    /* Code decompiled incorrectly, please refer to instructions dump */
    protected android.util.Pair<java.lang.String, com.google.android.exoplayer2.drm.DrmInitData.SchemeData> parseContentProtection(org.xmlpull.v1.XmlPullParser r10) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
        // Method dump skipped, instructions count: 284
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.dash.manifest.DashManifestParser.parseContentProtection(org.xmlpull.v1.XmlPullParser):android.util.Pair");
    }

    protected void parseAdaptationSetChild(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        maybeSkipTag(xmlPullParser);
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x01e7 A[LOOP:0: B:3:0x006b->B:55:0x01e7, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0195 A[EDGE_INSN: B:56:0x0195->B:47:0x0195 ?: BREAK  , SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump */
    protected com.google.android.exoplayer2.source.dash.manifest.DashManifestParser.RepresentationInfo parseRepresentation(org.xmlpull.v1.XmlPullParser r36, java.util.List<com.google.android.exoplayer2.source.dash.manifest.BaseUrl> r37, java.lang.String r38, java.lang.String r39, int r40, int r41, float r42, int r43, int r44, java.lang.String r45, java.util.List<com.google.android.exoplayer2.source.dash.manifest.Descriptor> r46, java.util.List<com.google.android.exoplayer2.source.dash.manifest.Descriptor> r47, java.util.List<com.google.android.exoplayer2.source.dash.manifest.Descriptor> r48, java.util.List<com.google.android.exoplayer2.source.dash.manifest.Descriptor> r49, com.google.android.exoplayer2.source.dash.manifest.SegmentBase r50, long r51, long r53, long r55, long r57, long r59) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
        // Method dump skipped, instructions count: 502
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.dash.manifest.DashManifestParser.parseRepresentation(org.xmlpull.v1.XmlPullParser, java.util.List, java.lang.String, java.lang.String, int, int, float, int, int, java.lang.String, java.util.List, java.util.List, java.util.List, java.util.List, com.google.android.exoplayer2.source.dash.manifest.SegmentBase, long, long, long, long, long):com.google.android.exoplayer2.source.dash.manifest.DashManifestParser$RepresentationInfo");
    }

    protected Format buildFormat(String str, String str2, int i, int i2, float f, int i3, int i4, int i5, String str3, List<Descriptor> list, List<Descriptor> list2, String str4, List<Descriptor> list3, List<Descriptor> list4) {
        String str5 = str4;
        String sampleMimeType = getSampleMimeType(str2, str5);
        if (MimeTypes.AUDIO_E_AC3.equals(sampleMimeType)) {
            sampleMimeType = parseEac3SupplementalProperties(list4);
            if (MimeTypes.AUDIO_E_AC3_JOC.equals(sampleMimeType)) {
                str5 = Ac3Util.E_AC3_JOC_CODEC_STRING;
            }
        }
        int parseSelectionFlagsFromRoleDescriptors = parseSelectionFlagsFromRoleDescriptors(list);
        Format.Builder language = new Format.Builder().setId(str).setContainerMimeType(str2).setSampleMimeType(sampleMimeType).setCodecs(str5).setPeakBitrate(i5).setSelectionFlags(parseSelectionFlagsFromRoleDescriptors).setRoleFlags(parseRoleFlagsFromRoleDescriptors(list) | parseRoleFlagsFromAccessibilityDescriptors(list2) | parseRoleFlagsFromProperties(list3) | parseRoleFlagsFromProperties(list4)).setLanguage(str3);
        if (MimeTypes.isVideo(sampleMimeType)) {
            language.setWidth(i).setHeight(i2).setFrameRate(f);
        } else if (MimeTypes.isAudio(sampleMimeType)) {
            language.setChannelCount(i3).setSampleRate(i4);
        } else if (MimeTypes.isText(sampleMimeType)) {
            int i6 = -1;
            if (MimeTypes.APPLICATION_CEA608.equals(sampleMimeType)) {
                i6 = parseCea608AccessibilityChannel(list2);
            } else if (MimeTypes.APPLICATION_CEA708.equals(sampleMimeType)) {
                i6 = parseCea708AccessibilityChannel(list2);
            }
            language.setAccessibilityChannel(i6);
        }
        return language.build();
    }

    protected Representation buildRepresentation(RepresentationInfo representationInfo, String str, String str2, ArrayList<DrmInitData.SchemeData> arrayList, ArrayList<Descriptor> arrayList2) {
        Format.Builder buildUpon = representationInfo.format.buildUpon();
        if (str != null) {
            buildUpon.setLabel(str);
        }
        String str3 = representationInfo.drmSchemeType;
        if (str3 == null) {
            str3 = str2;
        }
        ArrayList<DrmInitData.SchemeData> arrayList3 = representationInfo.drmSchemeDatas;
        arrayList3.addAll(arrayList);
        if (!arrayList3.isEmpty()) {
            filterRedundantIncompleteSchemeDatas(arrayList3);
            buildUpon.setDrmInitData(new DrmInitData(str3, arrayList3));
        }
        ArrayList<Descriptor> arrayList4 = representationInfo.inbandEventStreams;
        arrayList4.addAll(arrayList2);
        return Representation.newInstance(representationInfo.revisionId, buildUpon.build(), representationInfo.baseUrls, representationInfo.segmentBase, arrayList4);
    }

    protected SegmentBase.SingleSegmentBase parseSegmentBase(XmlPullParser xmlPullParser, SegmentBase.SingleSegmentBase singleSegmentBase) throws XmlPullParserException, IOException {
        long j;
        long j2;
        long parseLong = parseLong(xmlPullParser, "timescale", singleSegmentBase != null ? singleSegmentBase.timescale : 1);
        long j3 = 0;
        long parseLong2 = parseLong(xmlPullParser, "presentationTimeOffset", singleSegmentBase != null ? singleSegmentBase.presentationTimeOffset : 0);
        long j4 = singleSegmentBase != null ? singleSegmentBase.indexStart : 0;
        if (singleSegmentBase != null) {
            j3 = singleSegmentBase.indexLength;
        }
        RangedUri rangedUri = null;
        String attributeValue = xmlPullParser.getAttributeValue(null, "indexRange");
        if (attributeValue != null) {
            String[] split = attributeValue.split("-");
            long parseLong3 = Long.parseLong(split[0]);
            j = (Long.parseLong(split[1]) - parseLong3) + 1;
            j2 = parseLong3;
        } else {
            j = j3;
            j2 = j4;
        }
        if (singleSegmentBase != null) {
            rangedUri = singleSegmentBase.initialization;
        }
        do {
            xmlPullParser.next();
            if (XmlPullParserUtil.isStartTag(xmlPullParser, "Initialization")) {
                rangedUri = parseInitialization(xmlPullParser);
            } else {
                maybeSkipTag(xmlPullParser);
            }
        } while (!XmlPullParserUtil.isEndTag(xmlPullParser, "SegmentBase"));
        return buildSingleSegmentBase(rangedUri, parseLong, parseLong2, j2, j);
    }

    protected SegmentBase.SingleSegmentBase buildSingleSegmentBase(RangedUri rangedUri, long j, long j2, long j3, long j4) {
        return new SegmentBase.SingleSegmentBase(rangedUri, j, j2, j3, j4);
    }

    protected SegmentBase.SegmentList parseSegmentList(XmlPullParser xmlPullParser, SegmentBase.SegmentList segmentList, long j, long j2, long j3, long j4, long j5) throws XmlPullParserException, IOException {
        long j6 = 1;
        long parseLong = parseLong(xmlPullParser, "timescale", segmentList != null ? segmentList.timescale : 1);
        long parseLong2 = parseLong(xmlPullParser, "presentationTimeOffset", segmentList != null ? segmentList.presentationTimeOffset : 0);
        long parseLong3 = parseLong(xmlPullParser, "duration", segmentList != null ? segmentList.duration : C.TIME_UNSET);
        if (segmentList != null) {
            j6 = segmentList.startNumber;
        }
        long parseLong4 = parseLong(xmlPullParser, "startNumber", j6);
        long finalAvailabilityTimeOffset = getFinalAvailabilityTimeOffset(j3, j4);
        List<SegmentBase.SegmentTimelineElement> list = null;
        List<RangedUri> list2 = null;
        RangedUri rangedUri = null;
        do {
            xmlPullParser.next();
            if (XmlPullParserUtil.isStartTag(xmlPullParser, "Initialization")) {
                rangedUri = parseInitialization(xmlPullParser);
            } else if (XmlPullParserUtil.isStartTag(xmlPullParser, "SegmentTimeline")) {
                list = parseSegmentTimeline(xmlPullParser, parseLong, j2);
            } else if (XmlPullParserUtil.isStartTag(xmlPullParser, "SegmentURL")) {
                if (list2 == null) {
                    list2 = new ArrayList<>();
                }
                list2.add(parseSegmentUrl(xmlPullParser));
            } else {
                maybeSkipTag(xmlPullParser);
            }
        } while (!XmlPullParserUtil.isEndTag(xmlPullParser, "SegmentList"));
        if (segmentList != null) {
            if (rangedUri == null) {
                rangedUri = segmentList.initialization;
            }
            if (list == null) {
                list = segmentList.segmentTimeline;
            }
            if (list2 == null) {
                list2 = segmentList.mediaSegments;
            }
        }
        return buildSegmentList(rangedUri, parseLong, parseLong2, parseLong4, parseLong3, list, finalAvailabilityTimeOffset, list2, j5, j);
    }

    protected SegmentBase.SegmentList buildSegmentList(RangedUri rangedUri, long j, long j2, long j3, long j4, List<SegmentBase.SegmentTimelineElement> list, long j5, List<RangedUri> list2, long j6, long j7) {
        return new SegmentBase.SegmentList(rangedUri, j, j2, j3, j4, list, j5, list2, C.msToUs(j6), C.msToUs(j7));
    }

    protected SegmentBase.SegmentTemplate parseSegmentTemplate(XmlPullParser xmlPullParser, SegmentBase.SegmentTemplate segmentTemplate, List<Descriptor> list, long j, long j2, long j3, long j4, long j5) throws XmlPullParserException, IOException {
        long j6 = 1;
        long parseLong = parseLong(xmlPullParser, "timescale", segmentTemplate != null ? segmentTemplate.timescale : 1);
        long parseLong2 = parseLong(xmlPullParser, "presentationTimeOffset", segmentTemplate != null ? segmentTemplate.presentationTimeOffset : 0);
        long parseLong3 = parseLong(xmlPullParser, "duration", segmentTemplate != null ? segmentTemplate.duration : C.TIME_UNSET);
        if (segmentTemplate != null) {
            j6 = segmentTemplate.startNumber;
        }
        long parseLong4 = parseLong(xmlPullParser, "startNumber", j6);
        long parseLastSegmentNumberSupplementalProperty = parseLastSegmentNumberSupplementalProperty(list);
        long finalAvailabilityTimeOffset = getFinalAvailabilityTimeOffset(j3, j4);
        List<SegmentBase.SegmentTimelineElement> list2 = null;
        UrlTemplate parseUrlTemplate = parseUrlTemplate(xmlPullParser, "media", segmentTemplate != null ? segmentTemplate.mediaTemplate : null);
        UrlTemplate parseUrlTemplate2 = parseUrlTemplate(xmlPullParser, "initialization", segmentTemplate != null ? segmentTemplate.initializationTemplate : null);
        RangedUri rangedUri = null;
        while (true) {
            xmlPullParser.next();
            if (XmlPullParserUtil.isStartTag(xmlPullParser, "Initialization")) {
                rangedUri = parseInitialization(xmlPullParser);
            } else if (XmlPullParserUtil.isStartTag(xmlPullParser, "SegmentTimeline")) {
                list2 = parseSegmentTimeline(xmlPullParser, parseLong, j2);
            } else {
                maybeSkipTag(xmlPullParser);
            }
            if (XmlPullParserUtil.isEndTag(xmlPullParser, "SegmentTemplate")) {
                break;
            }
        }
        if (segmentTemplate != null) {
            if (rangedUri == null) {
                rangedUri = segmentTemplate.initialization;
            }
            if (list2 == null) {
                list2 = segmentTemplate.segmentTimeline;
            }
        }
        return buildSegmentTemplate(rangedUri, parseLong, parseLong2, parseLong4, parseLastSegmentNumberSupplementalProperty, parseLong3, list2, finalAvailabilityTimeOffset, parseUrlTemplate2, parseUrlTemplate, j5, j);
    }

    protected SegmentBase.SegmentTemplate buildSegmentTemplate(RangedUri rangedUri, long j, long j2, long j3, long j4, long j5, List<SegmentBase.SegmentTimelineElement> list, long j6, UrlTemplate urlTemplate, UrlTemplate urlTemplate2, long j7, long j8) {
        return new SegmentBase.SegmentTemplate(rangedUri, j, j2, j3, j4, j5, list, j6, urlTemplate, urlTemplate2, C.msToUs(j7), C.msToUs(j8));
    }

    protected EventStream parseEventStream(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        String parseString = parseString(xmlPullParser, "schemeIdUri", "");
        String parseString2 = parseString(xmlPullParser, "value", "");
        long parseLong = parseLong(xmlPullParser, "timescale", 1);
        ArrayList arrayList = new ArrayList();
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(512);
        do {
            xmlPullParser.next();
            if (XmlPullParserUtil.isStartTag(xmlPullParser, "Event")) {
                arrayList.add(parseEvent(xmlPullParser, parseString, parseString2, parseLong, byteArrayOutputStream));
            } else {
                maybeSkipTag(xmlPullParser);
            }
        } while (!XmlPullParserUtil.isEndTag(xmlPullParser, "EventStream"));
        long[] jArr = new long[arrayList.size()];
        EventMessage[] eventMessageArr = new EventMessage[arrayList.size()];
        for (int i = 0; i < arrayList.size(); i++) {
            Pair pair = (Pair) arrayList.get(i);
            jArr[i] = ((Long) pair.first).longValue();
            eventMessageArr[i] = (EventMessage) pair.second;
        }
        return buildEventStream(parseString, parseString2, parseLong, jArr, eventMessageArr);
    }

    protected EventStream buildEventStream(String str, String str2, long j, long[] jArr, EventMessage[] eventMessageArr) {
        return new EventStream(str, str2, j, jArr, eventMessageArr);
    }

    protected Pair<Long, EventMessage> parseEvent(XmlPullParser xmlPullParser, String str, String str2, long j, ByteArrayOutputStream byteArrayOutputStream) throws IOException, XmlPullParserException {
        long parseLong = parseLong(xmlPullParser, "id", 0);
        long parseLong2 = parseLong(xmlPullParser, "duration", C.TIME_UNSET);
        long parseLong3 = parseLong(xmlPullParser, "presentationTime", 0);
        long scaleLargeTimestamp = Util.scaleLargeTimestamp(parseLong2, 1000, j);
        long scaleLargeTimestamp2 = Util.scaleLargeTimestamp(parseLong3, 1000000, j);
        String parseString = parseString(xmlPullParser, "messageData", null);
        byte[] parseEventObject = parseEventObject(xmlPullParser, byteArrayOutputStream);
        Long valueOf = Long.valueOf(scaleLargeTimestamp2);
        if (parseString != null) {
            parseEventObject = Util.getUtf8Bytes(parseString);
        }
        return Pair.create(valueOf, buildEvent(str, str2, parseLong, scaleLargeTimestamp, parseEventObject));
    }

    protected byte[] parseEventObject(XmlPullParser xmlPullParser, ByteArrayOutputStream byteArrayOutputStream) throws XmlPullParserException, IOException {
        byteArrayOutputStream.reset();
        XmlSerializer newSerializer = Xml.newSerializer();
        newSerializer.setOutput(byteArrayOutputStream, Charsets.UTF_8.name());
        xmlPullParser.nextToken();
        while (!XmlPullParserUtil.isEndTag(xmlPullParser, "Event")) {
            switch (xmlPullParser.getEventType()) {
                case 0:
                    newSerializer.startDocument(null, false);
                    break;
                case 1:
                    newSerializer.endDocument();
                    break;
                case 2:
                    newSerializer.startTag(xmlPullParser.getNamespace(), xmlPullParser.getName());
                    for (int i = 0; i < xmlPullParser.getAttributeCount(); i++) {
                        newSerializer.attribute(xmlPullParser.getAttributeNamespace(i), xmlPullParser.getAttributeName(i), xmlPullParser.getAttributeValue(i));
                    }
                    break;
                case 3:
                    newSerializer.endTag(xmlPullParser.getNamespace(), xmlPullParser.getName());
                    break;
                case 4:
                    newSerializer.text(xmlPullParser.getText());
                    break;
                case 5:
                    newSerializer.cdsect(xmlPullParser.getText());
                    break;
                case 6:
                    newSerializer.entityRef(xmlPullParser.getText());
                    break;
                case 7:
                    newSerializer.ignorableWhitespace(xmlPullParser.getText());
                    break;
                case 8:
                    newSerializer.processingInstruction(xmlPullParser.getText());
                    break;
                case 9:
                    newSerializer.comment(xmlPullParser.getText());
                    break;
                case 10:
                    newSerializer.docdecl(xmlPullParser.getText());
                    break;
            }
            xmlPullParser.nextToken();
        }
        newSerializer.flush();
        return byteArrayOutputStream.toByteArray();
    }

    protected EventMessage buildEvent(String str, String str2, long j, long j2, byte[] bArr) {
        return new EventMessage(str, str2, j2, j, bArr);
    }

    protected List<SegmentBase.SegmentTimelineElement> parseSegmentTimeline(XmlPullParser xmlPullParser, long j, long j2) throws XmlPullParserException, IOException {
        ArrayList arrayList = new ArrayList();
        long j3 = 0;
        boolean z = false;
        int i = 0;
        long j4 = -9223372036854775807L;
        do {
            xmlPullParser.next();
            if (XmlPullParserUtil.isStartTag(xmlPullParser, ExifInterface.LATITUDE_SOUTH)) {
                long parseLong = parseLong(xmlPullParser, ai.aF, C.TIME_UNSET);
                if (z) {
                    j3 = addSegmentTimelineElementsToList(arrayList, j3, j4, i, parseLong);
                }
                if (parseLong == C.TIME_UNSET) {
                    parseLong = j3;
                }
                long parseLong2 = parseLong(xmlPullParser, "d", C.TIME_UNSET);
                i = parseInt(xmlPullParser, "r", 0);
                z = true;
                j4 = parseLong2;
                j3 = parseLong;
            } else {
                maybeSkipTag(xmlPullParser);
            }
        } while (!XmlPullParserUtil.isEndTag(xmlPullParser, "SegmentTimeline"));
        if (z) {
            addSegmentTimelineElementsToList(arrayList, j3, j4, i, Util.scaleLargeTimestamp(j2, j, 1000));
        }
        return arrayList;
    }

    private long addSegmentTimelineElementsToList(List<SegmentBase.SegmentTimelineElement> list, long j, long j2, int i, long j3) {
        int ceilDivide = i >= 0 ? i + 1 : (int) Util.ceilDivide(j3 - j, j2);
        for (int i2 = 0; i2 < ceilDivide; i2++) {
            list.add(buildSegmentTimelineElement(j, j2));
            j += j2;
        }
        return j;
    }

    protected SegmentBase.SegmentTimelineElement buildSegmentTimelineElement(long j, long j2) {
        return new SegmentBase.SegmentTimelineElement(j, j2);
    }

    protected UrlTemplate parseUrlTemplate(XmlPullParser xmlPullParser, String str, UrlTemplate urlTemplate) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue != null ? UrlTemplate.compile(attributeValue) : urlTemplate;
    }

    protected RangedUri parseInitialization(XmlPullParser xmlPullParser) {
        return parseRangedUrl(xmlPullParser, "sourceURL", SessionDescription.ATTR_RANGE);
    }

    protected RangedUri parseSegmentUrl(XmlPullParser xmlPullParser) {
        return parseRangedUrl(xmlPullParser, "media", "mediaRange");
    }

    protected RangedUri parseRangedUrl(XmlPullParser xmlPullParser, String str, String str2) {
        long j;
        long j2;
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        String attributeValue2 = xmlPullParser.getAttributeValue(null, str2);
        if (attributeValue2 != null) {
            String[] split = attributeValue2.split("-");
            j2 = Long.parseLong(split[0]);
            if (split.length == 2) {
                j = (Long.parseLong(split[1]) - j2) + 1;
                return buildRangedUri(attributeValue, j2, j);
            }
        } else {
            j2 = 0;
        }
        j = -1;
        return buildRangedUri(attributeValue, j2, j);
    }

    protected RangedUri buildRangedUri(String str, long j, long j2) {
        return new RangedUri(str, j, j2);
    }

    protected ProgramInformation parseProgramInformation(XmlPullParser xmlPullParser) throws IOException, XmlPullParserException {
        String str = null;
        String parseString = parseString(xmlPullParser, "moreInformationURL", null);
        String parseString2 = parseString(xmlPullParser, "lang", null);
        String str2 = null;
        String str3 = null;
        while (true) {
            xmlPullParser.next();
            if (XmlPullParserUtil.isStartTag(xmlPullParser, "Title")) {
                str = xmlPullParser.nextText();
            } else if (XmlPullParserUtil.isStartTag(xmlPullParser, "Source")) {
                str2 = xmlPullParser.nextText();
            } else if (XmlPullParserUtil.isStartTag(xmlPullParser, ExifInterface.TAG_COPYRIGHT)) {
                str3 = xmlPullParser.nextText();
            } else {
                maybeSkipTag(xmlPullParser);
            }
            if (XmlPullParserUtil.isEndTag(xmlPullParser, "ProgramInformation")) {
                return new ProgramInformation(str, str2, str3, parseString, parseString2);
            }
            str3 = str3;
        }
    }

    protected String parseLabel(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        return parseText(xmlPullParser, "Label");
    }

    protected List<BaseUrl> parseBaseUrl(XmlPullParser xmlPullParser, List<BaseUrl> list) throws XmlPullParserException, IOException {
        String attributeValue = xmlPullParser.getAttributeValue(null, "dvb:priority");
        int parseInt = attributeValue != null ? Integer.parseInt(attributeValue) : 1;
        String attributeValue2 = xmlPullParser.getAttributeValue(null, "dvb:weight");
        int parseInt2 = attributeValue2 != null ? Integer.parseInt(attributeValue2) : 1;
        String attributeValue3 = xmlPullParser.getAttributeValue(null, "serviceLocation");
        String parseText = parseText(xmlPullParser, "BaseURL");
        if (attributeValue3 == null) {
            attributeValue3 = parseText;
        }
        if (UriUtil.isAbsolute(parseText)) {
            return Lists.newArrayList(new BaseUrl(parseText, attributeValue3, parseInt, parseInt2));
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            BaseUrl baseUrl = list.get(i);
            arrayList.add(new BaseUrl(UriUtil.resolve(baseUrl.url, parseText), baseUrl.serviceLocation, baseUrl.priority, baseUrl.weight));
        }
        return arrayList;
    }

    protected long parseAvailabilityTimeOffsetUs(XmlPullParser xmlPullParser, long j) {
        String attributeValue = xmlPullParser.getAttributeValue(null, "availabilityTimeOffset");
        if (attributeValue == null) {
            return j;
        }
        if ("INF".equals(attributeValue)) {
            return Long.MAX_VALUE;
        }
        return (long) (Float.parseFloat(attributeValue) * 1000000.0f);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    protected int parseAudioChannelConfiguration(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        boolean z;
        String parseString = parseString(xmlPullParser, "schemeIdUri", null);
        int i = -1;
        switch (parseString.hashCode()) {
            case -1352850286:
                if (parseString.equals("urn:mpeg:dash:23003:3:audio_channel_configuration:2011")) {
                    z = false;
                    break;
                }
                z = true;
                break;
            case -1138141449:
                if (parseString.equals("tag:dolby.com,2014:dash:audio_channel_configuration:2011")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -986633423:
                if (parseString.equals("urn:mpeg:mpegB:cicp:ChannelConfiguration")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 2036691300:
                if (parseString.equals("urn:dolby:dash:audio_channel_configuration:2011")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            default:
                z = true;
                break;
        }
        if (!z) {
            i = parseInt(xmlPullParser, "value", -1);
        } else if (z) {
            i = parseMpegChannelConfiguration(xmlPullParser);
        } else if (z || z) {
            i = parseDolbyChannelConfiguration(xmlPullParser);
        }
        do {
            xmlPullParser.next();
        } while (!XmlPullParserUtil.isEndTag(xmlPullParser, "AudioChannelConfiguration"));
        return i;
    }

    protected int parseSelectionFlagsFromRoleDescriptors(List<Descriptor> list) {
        int i = 0;
        for (int i2 = 0; i2 < list.size(); i2++) {
            Descriptor descriptor = list.get(i2);
            if (Ascii.equalsIgnoreCase("urn:mpeg:dash:role:2011", descriptor.schemeIdUri)) {
                i |= parseSelectionFlagsFromDashRoleScheme(descriptor.value);
            }
        }
        return i;
    }

    protected int parseSelectionFlagsFromDashRoleScheme(String str) {
        if (str == null) {
            return 0;
        }
        char c = 65535;
        int hashCode = str.hashCode();
        if (hashCode != -1574842690) {
            if (hashCode == 3343801 && str.equals("main")) {
                c = 0;
            }
        } else if (str.equals("forced_subtitle")) {
            c = 1;
        }
        if (c != 0) {
            return c != 1 ? 0 : 2;
        }
        return 1;
    }

    protected int parseRoleFlagsFromRoleDescriptors(List<Descriptor> list) {
        int i = 0;
        for (int i2 = 0; i2 < list.size(); i2++) {
            Descriptor descriptor = list.get(i2);
            if (Ascii.equalsIgnoreCase("urn:mpeg:dash:role:2011", descriptor.schemeIdUri)) {
                i |= parseRoleFlagsFromDashRoleScheme(descriptor.value);
            }
        }
        return i;
    }

    protected int parseRoleFlagsFromAccessibilityDescriptors(List<Descriptor> list) {
        int parseTvaAudioPurposeCsValue;
        int i = 0;
        for (int i2 = 0; i2 < list.size(); i2++) {
            Descriptor descriptor = list.get(i2);
            if (Ascii.equalsIgnoreCase("urn:mpeg:dash:role:2011", descriptor.schemeIdUri)) {
                parseTvaAudioPurposeCsValue = parseRoleFlagsFromDashRoleScheme(descriptor.value);
            } else if (Ascii.equalsIgnoreCase("urn:tva:metadata:cs:AudioPurposeCS:2007", descriptor.schemeIdUri)) {
                parseTvaAudioPurposeCsValue = parseTvaAudioPurposeCsValue(descriptor.value);
            }
            i |= parseTvaAudioPurposeCsValue;
        }
        return i;
    }

    protected int parseRoleFlagsFromProperties(List<Descriptor> list) {
        int i = 0;
        for (int i2 = 0; i2 < list.size(); i2++) {
            if (Ascii.equalsIgnoreCase("http://dashif.org/guidelines/trickmode", list.get(i2).schemeIdUri)) {
                i |= 16384;
            }
        }
        return i;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    protected int parseRoleFlagsFromDashRoleScheme(String str) {
        if (str == null) {
            return 0;
        }
        char c = 65535;
        switch (str.hashCode()) {
            case -2060497896:
                if (str.equals("subtitle")) {
                    c = '\b';
                    break;
                }
                break;
            case -1724546052:
                if (str.equals("description")) {
                    c = '\n';
                    break;
                }
                break;
            case -1580883024:
                if (str.equals("enhanced-audio-intelligibility")) {
                    c = 11;
                    break;
                }
                break;
            case -1574842690:
                if (str.equals("forced_subtitle")) {
                    c = 7;
                    break;
                }
                break;
            case -1408024454:
                if (str.equals("alternate")) {
                    c = 1;
                    break;
                }
                break;
            case 99825:
                if (str.equals("dub")) {
                    c = 4;
                    break;
                }
                break;
            case 3343801:
                if (str.equals("main")) {
                    c = 0;
                    break;
                }
                break;
            case 3530173:
                if (str.equals("sign")) {
                    c = '\t';
                    break;
                }
                break;
            case 552573414:
                if (str.equals("caption")) {
                    c = 6;
                    break;
                }
                break;
            case 899152809:
                if (str.equals("commentary")) {
                    c = 3;
                    break;
                }
                break;
            case 1629013393:
                if (str.equals("emergency")) {
                    c = 5;
                    break;
                }
                break;
            case 1855372047:
                if (str.equals("supplementary")) {
                    c = 2;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return 1;
            case 1:
                return 2;
            case 2:
                return 4;
            case 3:
                return 8;
            case 4:
                return 16;
            case 5:
                return 32;
            case 6:
                return 64;
            case 7:
            case '\b':
                return 128;
            case '\t':
                return 256;
            case '\n':
                return 512;
            case 11:
                return 2048;
            default:
                return 0;
        }
    }

    protected int parseTvaAudioPurposeCsValue(String str) {
        if (str == null) {
            return 0;
        }
        char c = 65535;
        switch (str.hashCode()) {
            case 49:
                if (str.equals("1")) {
                    c = 0;
                    break;
                }
                break;
            case 50:
                if (str.equals(ExifInterface.GPS_MEASUREMENT_2D)) {
                    c = 1;
                    break;
                }
                break;
            case 51:
                if (str.equals(ExifInterface.GPS_MEASUREMENT_3D)) {
                    c = 2;
                    break;
                }
                break;
            case 52:
                if (str.equals("4")) {
                    c = 3;
                    break;
                }
                break;
            case 54:
                if (str.equals("6")) {
                    c = 4;
                    break;
                }
                break;
        }
        if (c == 0) {
            return 512;
        }
        if (c == 1) {
            return 2048;
        }
        if (c == 2) {
            return 4;
        }
        if (c != 3) {
            return c != 4 ? 0 : 1;
        }
        return 8;
    }

    public static void maybeSkipTag(XmlPullParser xmlPullParser) throws IOException, XmlPullParserException {
        if (XmlPullParserUtil.isStartTag(xmlPullParser)) {
            int i = 1;
            while (i != 0) {
                xmlPullParser.next();
                if (XmlPullParserUtil.isStartTag(xmlPullParser)) {
                    i++;
                } else if (XmlPullParserUtil.isEndTag(xmlPullParser)) {
                    i--;
                }
            }
        }
    }

    private static void filterRedundantIncompleteSchemeDatas(ArrayList<DrmInitData.SchemeData> arrayList) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            DrmInitData.SchemeData schemeData = arrayList.get(size);
            if (!schemeData.hasData()) {
                int i = 0;
                while (true) {
                    if (i >= arrayList.size()) {
                        break;
                    } else if (arrayList.get(i).canReplace(schemeData)) {
                        arrayList.remove(size);
                        break;
                    } else {
                        i++;
                    }
                }
            }
        }
    }

    private static String getSampleMimeType(String str, String str2) {
        if (MimeTypes.isAudio(str)) {
            return MimeTypes.getAudioMediaMimeType(str2);
        }
        if (MimeTypes.isVideo(str)) {
            return MimeTypes.getVideoMediaMimeType(str2);
        }
        if (MimeTypes.isText(str)) {
            return MimeTypes.APPLICATION_RAWCC.equals(str) ? MimeTypes.getTextMediaMimeType(str2) : str;
        }
        if (!MimeTypes.APPLICATION_MP4.equals(str)) {
            return null;
        }
        String mediaMimeType = MimeTypes.getMediaMimeType(str2);
        return "text/vtt".equals(mediaMimeType) ? MimeTypes.APPLICATION_MP4VTT : mediaMimeType;
    }

    private static String checkLanguageConsistency(String str, String str2) {
        if (str == null) {
            return str2;
        }
        if (str2 == null) {
            return str;
        }
        Assertions.checkState(str.equals(str2));
        return str;
    }

    private static int checkContentTypeConsistency(int i, int i2) {
        if (i == -1) {
            return i2;
        }
        if (i2 == -1) {
            return i;
        }
        Assertions.checkState(i == i2);
        return i;
    }

    protected static Descriptor parseDescriptor(XmlPullParser xmlPullParser, String str) throws XmlPullParserException, IOException {
        String parseString = parseString(xmlPullParser, "schemeIdUri", "");
        String parseString2 = parseString(xmlPullParser, "value", null);
        String parseString3 = parseString(xmlPullParser, "id", null);
        do {
            xmlPullParser.next();
        } while (!XmlPullParserUtil.isEndTag(xmlPullParser, str));
        return new Descriptor(parseString, parseString2, parseString3);
    }

    protected static int parseCea608AccessibilityChannel(List<Descriptor> list) {
        for (int i = 0; i < list.size(); i++) {
            Descriptor descriptor = list.get(i);
            if ("urn:scte:dash:cc:cea-608:2015".equals(descriptor.schemeIdUri) && descriptor.value != null) {
                Matcher matcher = CEA_608_ACCESSIBILITY_PATTERN.matcher(descriptor.value);
                if (matcher.matches()) {
                    return Integer.parseInt(matcher.group(1));
                }
                String valueOf = String.valueOf(descriptor.value);
                Log.w(TAG, valueOf.length() != 0 ? "Unable to parse CEA-608 channel number from: ".concat(valueOf) : new String("Unable to parse CEA-608 channel number from: "));
            }
        }
        return -1;
    }

    protected static int parseCea708AccessibilityChannel(List<Descriptor> list) {
        for (int i = 0; i < list.size(); i++) {
            Descriptor descriptor = list.get(i);
            if ("urn:scte:dash:cc:cea-708:2015".equals(descriptor.schemeIdUri) && descriptor.value != null) {
                Matcher matcher = CEA_708_ACCESSIBILITY_PATTERN.matcher(descriptor.value);
                if (matcher.matches()) {
                    return Integer.parseInt(matcher.group(1));
                }
                String valueOf = String.valueOf(descriptor.value);
                Log.w(TAG, valueOf.length() != 0 ? "Unable to parse CEA-708 service block number from: ".concat(valueOf) : new String("Unable to parse CEA-708 service block number from: "));
            }
        }
        return -1;
    }

    protected static String parseEac3SupplementalProperties(List<Descriptor> list) {
        for (int i = 0; i < list.size(); i++) {
            Descriptor descriptor = list.get(i);
            String str = descriptor.schemeIdUri;
            if ("tag:dolby.com,2018:dash:EC3_ExtensionType:2018".equals(str) && "JOC".equals(descriptor.value)) {
                return MimeTypes.AUDIO_E_AC3_JOC;
            }
            if ("tag:dolby.com,2014:dash:DolbyDigitalPlusExtensionType:2014".equals(str) && Ac3Util.E_AC3_JOC_CODEC_STRING.equals(descriptor.value)) {
                return MimeTypes.AUDIO_E_AC3_JOC;
            }
        }
        return MimeTypes.AUDIO_E_AC3;
    }

    protected static float parseFrameRate(XmlPullParser xmlPullParser, float f) {
        String attributeValue = xmlPullParser.getAttributeValue(null, "frameRate");
        if (attributeValue == null) {
            return f;
        }
        Matcher matcher = FRAME_RATE_PATTERN.matcher(attributeValue);
        if (!matcher.matches()) {
            return f;
        }
        int parseInt = Integer.parseInt(matcher.group(1));
        String group = matcher.group(2);
        return !TextUtils.isEmpty(group) ? ((float) parseInt) / ((float) Integer.parseInt(group)) : (float) parseInt;
    }

    protected static long parseDuration(XmlPullParser xmlPullParser, String str, long j) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        if (attributeValue == null) {
            return j;
        }
        return Util.parseXsDuration(attributeValue);
    }

    protected static long parseDateTime(XmlPullParser xmlPullParser, String str, long j) throws ParserException {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        if (attributeValue == null) {
            return j;
        }
        return Util.parseXsDateTime(attributeValue);
    }

    protected static String parseText(XmlPullParser xmlPullParser, String str) throws XmlPullParserException, IOException {
        String str2 = "";
        do {
            xmlPullParser.next();
            if (xmlPullParser.getEventType() == 4) {
                str2 = xmlPullParser.getText();
            } else {
                maybeSkipTag(xmlPullParser);
            }
        } while (!XmlPullParserUtil.isEndTag(xmlPullParser, str));
        return str2;
    }

    protected static int parseInt(XmlPullParser xmlPullParser, String str, int i) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue == null ? i : Integer.parseInt(attributeValue);
    }

    protected static long parseLong(XmlPullParser xmlPullParser, String str, long j) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue == null ? j : Long.parseLong(attributeValue);
    }

    protected static float parseFloat(XmlPullParser xmlPullParser, String str, float f) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue == null ? f : Float.parseFloat(attributeValue);
    }

    protected static String parseString(XmlPullParser xmlPullParser, String str, String str2) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue == null ? str2 : attributeValue;
    }

    protected static int parseMpegChannelConfiguration(XmlPullParser xmlPullParser) {
        int parseInt = parseInt(xmlPullParser, "value", -1);
        if (parseInt < 0) {
            return -1;
        }
        int[] iArr = MPEG_CHANNEL_CONFIGURATION_MAPPING;
        if (parseInt < iArr.length) {
            return iArr[parseInt];
        }
        return -1;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    protected static int parseDolbyChannelConfiguration(XmlPullParser xmlPullParser) {
        boolean z;
        String attributeValue = xmlPullParser.getAttributeValue(null, "value");
        if (attributeValue == null) {
            return -1;
        }
        String lowerCase = Ascii.toLowerCase(attributeValue);
        switch (lowerCase.hashCode()) {
            case 1596796:
                if (lowerCase.equals("4000")) {
                    z = false;
                    break;
                }
                z = true;
                break;
            case 2937391:
                if (lowerCase.equals("a000")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 3094035:
                if (lowerCase.equals("f801")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 3133436:
                if (lowerCase.equals("fa01")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            default:
                z = true;
                break;
        }
        if (!z) {
            return 1;
        }
        if (z) {
            return 2;
        }
        if (z) {
            return 6;
        }
        if (!z) {
            return -1;
        }
        return 8;
    }

    protected static long parseLastSegmentNumberSupplementalProperty(List<Descriptor> list) {
        for (int i = 0; i < list.size(); i++) {
            Descriptor descriptor = list.get(i);
            if (Ascii.equalsIgnoreCase("http://dashif.org/guidelines/last-segment-number", descriptor.schemeIdUri)) {
                return Long.parseLong(descriptor.value);
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes2.dex */
    public static final class RepresentationInfo {
        public final ImmutableList<BaseUrl> baseUrls;
        public final ArrayList<DrmInitData.SchemeData> drmSchemeDatas;
        public final String drmSchemeType;
        public final Format format;
        public final ArrayList<Descriptor> inbandEventStreams;
        public final long revisionId;
        public final SegmentBase segmentBase;

        public RepresentationInfo(Format format, List<BaseUrl> list, SegmentBase segmentBase, String str, ArrayList<DrmInitData.SchemeData> arrayList, ArrayList<Descriptor> arrayList2, long j) {
            this.format = format;
            this.baseUrls = ImmutableList.copyOf((Collection) list);
            this.segmentBase = segmentBase;
            this.drmSchemeType = str;
            this.drmSchemeDatas = arrayList;
            this.inbandEventStreams = arrayList2;
            this.revisionId = j;
        }
    }
}
