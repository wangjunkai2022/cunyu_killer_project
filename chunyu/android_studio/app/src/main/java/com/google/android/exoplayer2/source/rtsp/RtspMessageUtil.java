package com.google.android.exoplayer2.source.rtsp;

import android.net.Uri;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.source.rtsp.RtspHeaders;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import com.google.common.base.Joiner;
import com.google.common.base.Strings;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableListMultimap;
import com.google.common.collect.UnmodifiableIterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes4.dex */
public final class RtspMessageUtil {
    public static final long DEFAULT_RTSP_TIMEOUT_MS = 60000;
    private static final String RTSP_VERSION = "RTSP/1.0";
    private static final Pattern REQUEST_LINE_PATTERN = Pattern.compile("([A-Z_]+) (.*) RTSP/1\\.0");
    private static final Pattern STATUS_LINE_PATTERN = Pattern.compile("RTSP/1\\.0 (\\d+) (.+)");
    private static final Pattern CONTENT_LENGTH_HEADER_PATTERN = Pattern.compile("Content-Length:\\s?(\\d+)", 2);
    private static final Pattern SESSION_HEADER_PATTERN = Pattern.compile("([\\w$-_.+]+)(?:;\\s?timeout=(\\d+))?");
    private static final Pattern WWW_AUTHENTICATION_HEADER_DIGEST_PATTERN = Pattern.compile("Digest realm=\"([\\w\\s@.]+)\",\\s?(?:domain=\"(.+)\",\\s?)?nonce=\"(\\w+)\"(?:,\\s?opaque=\"(\\w+)\")?");
    private static final Pattern WWW_AUTHENTICATION_HEADER_BASIC_PATTERN = Pattern.compile("Basic realm=\"([\\w\\s@.]+)\"");
    private static final String LF = new String(new byte[]{10});
    private static final String CRLF = new String(new byte[]{13, 10});

    /* loaded from: classes4.dex */
    public static final class RtspSessionHeader {
        public final String sessionId;
        public final long timeoutMs;

        public RtspSessionHeader(String str, long j) {
            this.sessionId = str;
            this.timeoutMs = j;
        }
    }

    /* loaded from: classes4.dex */
    public static final class RtspAuthUserInfo {
        public final String password;
        public final String username;

        public RtspAuthUserInfo(String str, String str2) {
            this.username = str;
            this.password = str2;
        }
    }

    public static ImmutableList<String> serializeRequest(RtspRequest rtspRequest) {
        ImmutableList.Builder builder = new ImmutableList.Builder();
        builder.add((ImmutableList.Builder) Util.formatInvariant("%s %s %s", toMethodString(rtspRequest.method), rtspRequest.uri, RTSP_VERSION));
        ImmutableListMultimap<String, String> asMultiMap = rtspRequest.headers.asMultiMap();
        UnmodifiableIterator<String> it = asMultiMap.keySet().iterator();
        while (it.hasNext()) {
            String next = it.next();
            ImmutableList<String> immutableList = asMultiMap.get((ImmutableListMultimap<String, String>) next);
            for (int i = 0; i < immutableList.size(); i++) {
                builder.add((ImmutableList.Builder) Util.formatInvariant("%s: %s", next, immutableList.get(i)));
            }
        }
        builder.add((ImmutableList.Builder) "");
        builder.add((ImmutableList.Builder) rtspRequest.messageBody);
        return builder.build();
    }

    public static ImmutableList<String> serializeResponse(RtspResponse rtspResponse) {
        ImmutableList.Builder builder = new ImmutableList.Builder();
        builder.add((ImmutableList.Builder) Util.formatInvariant("%s %s %s", RTSP_VERSION, Integer.valueOf(rtspResponse.status), getRtspStatusReasonPhrase(rtspResponse.status)));
        ImmutableListMultimap<String, String> asMultiMap = rtspResponse.headers.asMultiMap();
        UnmodifiableIterator<String> it = asMultiMap.keySet().iterator();
        while (it.hasNext()) {
            String next = it.next();
            ImmutableList<String> immutableList = asMultiMap.get((ImmutableListMultimap<String, String>) next);
            for (int i = 0; i < immutableList.size(); i++) {
                builder.add((ImmutableList.Builder) Util.formatInvariant("%s: %s", next, immutableList.get(i)));
            }
        }
        builder.add((ImmutableList.Builder) "");
        builder.add((ImmutableList.Builder) rtspResponse.messageBody);
        return builder.build();
    }

    public static byte[] convertMessageToByteArray(List<String> list) {
        return Joiner.on(CRLF).join(list).getBytes(RtspMessageChannel.CHARSET);
    }

    public static Uri removeUserInfo(Uri uri) {
        if (uri.getUserInfo() == null) {
            return uri;
        }
        String str = (String) Assertions.checkNotNull(uri.getAuthority());
        Assertions.checkArgument(str.contains("@"));
        return uri.buildUpon().encodedAuthority(Util.split(str, "@")[1]).build();
    }

    public static RtspAuthUserInfo parseUserInfo(Uri uri) {
        String userInfo = uri.getUserInfo();
        if (userInfo == null || !userInfo.contains(":")) {
            return null;
        }
        String[] splitAtFirst = Util.splitAtFirst(userInfo, ":");
        return new RtspAuthUserInfo(splitAtFirst[0], splitAtFirst[1]);
    }

    public static byte[] getStringBytes(String str) {
        return str.getBytes(RtspMessageChannel.CHARSET);
    }

    public static String toMethodString(int i) {
        switch (i) {
            case 1:
                return "ANNOUNCE";
            case 2:
                return "DESCRIBE";
            case 3:
                return "GET_PARAMETER";
            case 4:
                return "OPTIONS";
            case 5:
                return "PAUSE";
            case 6:
                return "PLAY";
            case 7:
                return "PLAY_NOTIFY";
            case 8:
                return "RECORD";
            case 9:
                return "REDIRECT";
            case 10:
                return "SETUP";
            case 11:
                return "SET_PARAMETER";
            case 12:
                return "TEARDOWN";
            default:
                throw new IllegalStateException();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static int parseMethodString(String str) {
        char c;
        switch (str.hashCode()) {
            case -1881579439:
                if (str.equals("RECORD")) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case -880847356:
                if (str.equals("TEARDOWN")) {
                    c = 11;
                    break;
                }
                c = 65535;
                break;
            case -702888512:
                if (str.equals("GET_PARAMETER")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case -531492226:
                if (str.equals("OPTIONS")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case -84360524:
                if (str.equals("PLAY_NOTIFY")) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case 2458420:
                if (str.equals("PLAY")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case 6481884:
                if (str.equals("REDIRECT")) {
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            case 71242700:
                if (str.equals("SET_PARAMETER")) {
                    c = '\n';
                    break;
                }
                c = 65535;
                break;
            case 75902422:
                if (str.equals("PAUSE")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 78791261:
                if (str.equals("SETUP")) {
                    c = '\t';
                    break;
                }
                c = 65535;
                break;
            case 133006441:
                if (str.equals("ANNOUNCE")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 1800840907:
                if (str.equals("DESCRIBE")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
                return 1;
            case 1:
                return 2;
            case 2:
                return 3;
            case 3:
                return 4;
            case 4:
                return 5;
            case 5:
                return 6;
            case 6:
                return 7;
            case 7:
                return 8;
            case '\b':
                return 9;
            case '\t':
                return 10;
            case '\n':
                return 11;
            case 11:
                return 12;
            default:
                throw new IllegalArgumentException();
        }
    }

    public static RtspResponse parseResponse(List<String> list) {
        boolean z = false;
        Matcher matcher = STATUS_LINE_PATTERN.matcher(list.get(0));
        Assertions.checkArgument(matcher.matches());
        int parseInt = Integer.parseInt((String) Assertions.checkNotNull(matcher.group(1)));
        int indexOf = list.indexOf("");
        if (indexOf > 0) {
            z = true;
        }
        Assertions.checkArgument(z);
        return new RtspResponse(parseInt, new RtspHeaders.Builder().addAll(list.subList(1, indexOf)).build(), Joiner.on(CRLF).join(list.subList(indexOf + 1, list.size())));
    }

    public static RtspRequest parseRequest(List<String> list) {
        boolean z = false;
        Matcher matcher = REQUEST_LINE_PATTERN.matcher(list.get(0));
        Assertions.checkArgument(matcher.matches());
        int parseMethodString = parseMethodString((String) Assertions.checkNotNull(matcher.group(1)));
        Uri parse = Uri.parse((String) Assertions.checkNotNull(matcher.group(2)));
        int indexOf = list.indexOf("");
        if (indexOf > 0) {
            z = true;
        }
        Assertions.checkArgument(z);
        return new RtspRequest(parse, parseMethodString, new RtspHeaders.Builder().addAll(list.subList(1, indexOf)).build(), Joiner.on(CRLF).join(list.subList(indexOf + 1, list.size())));
    }

    public static boolean isRtspStartLine(String str) {
        return REQUEST_LINE_PATTERN.matcher(str).matches() || STATUS_LINE_PATTERN.matcher(str).matches();
    }

    public static String[] splitRtspMessageBody(String str) {
        return Util.split(str, str.contains(CRLF) ? CRLF : LF);
    }

    public static long parseContentLengthHeader(String str) throws ParserException {
        try {
            Matcher matcher = CONTENT_LENGTH_HEADER_PATTERN.matcher(str);
            if (matcher.find()) {
                return Long.parseLong((String) Assertions.checkNotNull(matcher.group(1)));
            }
            return -1;
        } catch (NumberFormatException e) {
            throw ParserException.createForMalformedManifest(str, e);
        }
    }

    public static ImmutableList<Integer> parsePublicHeader(String str) {
        if (str == null) {
            return ImmutableList.of();
        }
        ImmutableList.Builder builder = new ImmutableList.Builder();
        for (String str2 : Util.split(str, ",\\s?")) {
            builder.add((ImmutableList.Builder) Integer.valueOf(parseMethodString(str2)));
        }
        return builder.build();
    }

    public static RtspSessionHeader parseSessionHeader(String str) throws ParserException {
        Matcher matcher = SESSION_HEADER_PATTERN.matcher(str);
        if (matcher.matches()) {
            String str2 = (String) Assertions.checkNotNull(matcher.group(1));
            long j = 60000;
            String group = matcher.group(2);
            if (group != null) {
                try {
                    j = ((long) Integer.parseInt(group)) * 1000;
                } catch (NumberFormatException e) {
                    throw ParserException.createForMalformedManifest(str, e);
                }
            }
            return new RtspSessionHeader(str2, j);
        }
        throw ParserException.createForMalformedManifest(str, null);
    }

    public static RtspAuthenticationInfo parseWwwAuthenticateHeader(String str) throws ParserException {
        Matcher matcher = WWW_AUTHENTICATION_HEADER_DIGEST_PATTERN.matcher(str);
        if (matcher.find()) {
            return new RtspAuthenticationInfo(2, (String) Assertions.checkNotNull(matcher.group(1)), (String) Assertions.checkNotNull(matcher.group(3)), Strings.nullToEmpty(matcher.group(4)));
        }
        Matcher matcher2 = WWW_AUTHENTICATION_HEADER_BASIC_PATTERN.matcher(str);
        if (matcher2.matches()) {
            return new RtspAuthenticationInfo(1, (String) Assertions.checkNotNull(matcher2.group(1)), "", "");
        }
        String valueOf = String.valueOf(str);
        throw ParserException.createForMalformedManifest(valueOf.length() != 0 ? "Invalid WWW-Authenticate header ".concat(valueOf) : new String("Invalid WWW-Authenticate header "), null);
    }

    private static String getRtspStatusReasonPhrase(int i) {
        if (i == 200) {
            return "OK";
        }
        if (i == 461) {
            return "Unsupported Transport";
        }
        if (i == 500) {
            return "Internal Server Error";
        }
        if (i == 505) {
            return "RTSP Version Not Supported";
        }
        if (i == 400) {
            return "Bad Request";
        }
        if (i == 401) {
            return "Unauthorized";
        }
        if (i == 404) {
            return "Not Found";
        }
        if (i == 405) {
            return "Method Not Allowed";
        }
        switch (i) {
            case 454:
                return "Session Not Found";
            case 455:
                return "Method Not Valid In This State";
            case 456:
                return "Header Field Not Valid";
            case 457:
                return "Invalid Range";
            default:
                throw new IllegalArgumentException();
        }
    }

    public static int parseInt(String str) throws ParserException {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException e) {
            throw ParserException.createForMalformedManifest(str, e);
        }
    }

    private RtspMessageUtil() {
    }
}
