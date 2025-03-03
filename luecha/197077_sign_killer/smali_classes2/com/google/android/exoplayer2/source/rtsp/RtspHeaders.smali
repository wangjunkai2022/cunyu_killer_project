.class final Lcom/google/android/exoplayer2/source/rtsp/RtspHeaders;
.super Ljava/lang/Object;
.source "RtspHeaders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/rtsp/RtspHeaders$Builder;
    }
.end annotation


# static fields
.field public static final ACCEPT:Ljava/lang/String; = "Accept"

.field public static final ALLOW:Ljava/lang/String; = "Allow"

.field public static final AUTHORIZATION:Ljava/lang/String; = "Authorization"

.field public static final BANDWIDTH:Ljava/lang/String; = "Bandwidth"

.field public static final BLOCKSIZE:Ljava/lang/String; = "Blocksize"

.field public static final CACHE_CONTROL:Ljava/lang/String; = "Cache-Control"

.field public static final CONNECTION:Ljava/lang/String; = "Connection"

.field public static final CONTENT_BASE:Ljava/lang/String; = "Content-Base"

.field public static final CONTENT_ENCODING:Ljava/lang/String; = "Content-Encoding"

.field public static final CONTENT_LANGUAGE:Ljava/lang/String; = "Content-Language"

.field public static final CONTENT_LENGTH:Ljava/lang/String; = "Content-Length"

.field public static final CONTENT_LOCATION:Ljava/lang/String; = "Content-Location"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field public static final CSEQ:Ljava/lang/String; = "CSeq"

.field public static final DATE:Ljava/lang/String; = "Date"

.field public static final EMPTY:Lcom/google/android/exoplayer2/source/rtsp/RtspHeaders;

.field public static final EXPIRES:Ljava/lang/String; = "Expires"

.field public static final PROXY_AUTHENTICATE:Ljava/lang/String; = "Proxy-Authenticate"

.field public static final PROXY_REQUIRE:Ljava/lang/String; = "Proxy-Require"

.field public static final PUBLIC:Ljava/lang/String; = "Public"

.field public static final RANGE:Ljava/lang/String; = "Range"

.field public static final RTCP_INTERVAL:Ljava/lang/String; = "RTCP-Interval"

.field public static final RTP_INFO:Ljava/lang/String; = "RTP-Info"

.field public static final SCALE:Ljava/lang/String; = "Scale"

.field public static final SESSION:Ljava/lang/String; = "Session"

.field public static final SPEED:Ljava/lang/String; = "Speed"

.field public static final SUPPORTED:Ljava/lang/String; = "Supported"

.field public static final TIMESTAMP:Ljava/lang/String; = "Timestamp"

.field public static final TRANSPORT:Ljava/lang/String; = "Transport"

.field public static final USER_AGENT:Ljava/lang/String; = "User-Agent"

.field public static final VIA:Ljava/lang/String; = "Via"

.field public static final WWW_AUTHENTICATE:Ljava/lang/String; = "WWW-Authenticate"


# instance fields
.field private final namesAndValues:Lcom/google/common/collect/ImmutableListMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableListMultimap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    new-instance v0, Lcom/google/android/exoplayer2/source/rtsp/RtspHeaders$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/rtsp/RtspHeaders$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/rtsp/RtspHeaders$Builder;->build()Lcom/google/android/exoplayer2/source/rtsp/RtspHeaders;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/rtsp/RtspHeaders;->EMPTY:Lcom/google/android/exoplayer2/source/rtsp/RtspHeaders;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/source/rtsp/RtspHeaders$Builder;)V
    .locals 0

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspHeaders$Builder;->access$300(Lcom/google/android/exoplayer2/source/rtsp/RtspHeaders$Builder;)Lcom/google/common/collect/ImmutableListMultimap$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableListMultimap$Builder;->build()Lcom/google/common/collect/ImmutableListMultimap;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspHeaders;->namesAndValues:Lcom/google/common/collect/ImmutableListMultimap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/source/rtsp/RtspHeaders$Builder;Lcom/google/android/exoplayer2/source/rtsp/RtspHeaders$1;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspHeaders;-><init>(Lcom/google/android/exoplayer2/source/rtsp/RtspHeaders$Builder;)V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 35
    invoke-static {p0}, Lcom/google/android/exoplayer2/source/rtsp/RtspHeaders;->convertToStandardHeaderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static convertToStandardHeaderName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "Accept"

    .line 205
    invoke-static {p0, v0}, Lcom/google/common/base/Ascii;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const-string v0, "Allow"

    .line 207
    invoke-static {p0, v0}, Lcom/google/common/base/Ascii;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    const-string v0, "Authorization"

    .line 209
    invoke-static {p0, v0}, Lcom/google/common/base/Ascii;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    const-string v0, "Bandwidth"

    .line 211
    invoke-static {p0, v0}, Lcom/google/common/base/Ascii;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v0

    :cond_3
    const-string v0, "Blocksize"

    .line 213
    invoke-static {p0, v0}, Lcom/google/common/base/Ascii;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-object v0

    :cond_4
    const-string v0, "Cache-Control"

    .line 215
    invoke-static {p0, v0}, Lcom/google/common/base/Ascii;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    return-object v0

    :cond_5
    const-string v0, "Connection"

    .line 217
    invoke-static {p0, v0}, Lcom/google/common/base/Ascii;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    return-object v0

    :cond_6
    const-string v0, "Content-Base"

    .line 219
    invoke-static {p0, v0}, Lcom/google/common/base/Ascii;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    return-object v0

    :cond_7
    const-string v0, "Content-Encoding"

    .line 221
    invoke-static {p0, v0}, Lcom/google/common/base/Ascii;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    return-object v0

    :cond_8
    const-string v0, "Content-Language"

    .line 223
    invoke-static {p0, v0}, Lcom/google/common/base/Ascii;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    return-object v0

    :cond_9
    const-string v0, "Content-Length"

    .line 225
    invoke-static {p0, v0}, Lcom/google/common/base/Ascii;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    return-object v0

    :cond_a
    const-string v0, "Content-Location"

    .line 227
    invoke-static {p0, v0}, Lcom/google/common/base/Ascii;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    :cond_b
    const-string v0, "Content-Type"

    .line 229
    invoke-static {p0, v0}, Lcom/google/common/base/Ascii;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    return-object v0

    :cond_c
    const-string v0, "CSeq"

    .line 231
    invoke-static {p0, v0}, Lcom/google/common/base/Ascii;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    return-object v0

    :cond_d
    const-string v0, "Date"

    .line 233
    invoke-static {p0, v0}, Lcom/google/common/base/Ascii;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    return-object v0

    :cond_e
    const-string v0, "Expires"

    .line 235
    invoke-static {p0, v0}, Lcom/google/common/base/Ascii;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string p0, "Expires"

    return-object p0

    :cond_f
    const-string v0, "Proxy-Authenticate"

    .line 237
    invoke-static {p0, v0}, Lcom/google/common/base/Ascii;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string p0, "Proxy-Authenticate"

    return-object p0

    :cond_10
    const-string v0, "Proxy-Require"

    .line 239
    invoke-static {p0, v0}, Lcom/google/common/base/Ascii;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string p0, "Proxy-Require"

    return-object p0

    :cond_11
    const-string v0, "Public"

    .line 241
    invoke-static {p0, v0}, Lcom/google/common/base/Ascii;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string p0, "Public"

    return-object p0

    :cond_12
    const-string v0, "Range"

    .line 243
    invoke-static {p0, v0}, Lcom/google/common/base/Ascii;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string p0, "Range"

    return-object p0

    :cond_13
    const-string v0, "RTP-Info"

    .line 245
    invoke-static {p0, v0}, Lcom/google/common/base/Ascii;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string p0, "RTP-Info"

    return-object p0

    :cond_14
    const-string v0, "RTCP-Interval"

    .line 247
    invoke-static {p0, v0}, Lcom/google/common/base/Ascii;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string p0, "RTCP-Interval"

    return-object p0

    :cond_15
    const-string v0, "Scale"

    .line 249
    invoke-static {p0, v0}, Lcom/google/common/base/Ascii;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string p0, "Scale"

    return-object p0

    :cond_16
    const-string v0, "Session"

    .line 251
    invoke-static {p0, v0}, Lcom/google/common/base/Ascii;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string p0, "Session"

    return-object p0

    :cond_17
    const-string v0, "Speed"

    .line 253
    invoke-static {p0, v0}, Lcom/google/common/base/Ascii;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string p0, "Speed"

    return-object p0

    :cond_18
    const-string v0, "Supported"

    .line 255
    invoke-static {p0, v0}, Lcom/google/common/base/Ascii;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string p0, "Supported"

    return-object p0

    :cond_19
    const-string v0, "Timestamp"

    .line 257
    invoke-static {p0, v0}, Lcom/google/common/base/Ascii;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string p0, "Timestamp"

    return-object p0

    :cond_1a
    const-string v0, "Transport"

    .line 259
    invoke-static {p0, v0}, Lcom/google/common/base/Ascii;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string p0, "Transport"

    return-object p0

    :cond_1b
    const-string v0, "User-Agent"

    .line 261
    invoke-static {p0, v0}, Lcom/google/common/base/Ascii;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string p0, "User-Agent"

    return-object p0

    :cond_1c
    const-string v0, "Via"

    .line 263
    invoke-static {p0, v0}, Lcom/google/common/base/Ascii;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string p0, "Via"

    return-object p0

    :cond_1d
    const-string v0, "WWW-Authenticate"

    .line 265
    invoke-static {p0, v0}, Lcom/google/common/base/Ascii;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string p0, "WWW-Authenticate"

    :cond_1e
    return-object p0
.end method


# virtual methods
.method public asMultiMap()Lcom/google/common/collect/ImmutableListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableListMultimap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspHeaders;->namesAndValues:Lcom/google/common/collect/ImmutableListMultimap;

    return-object v0
.end method

.method public buildUpon()Lcom/google/android/exoplayer2/source/rtsp/RtspHeaders$Builder;
    .locals 3

    .line 165
    new-instance v0, Lcom/google/common/collect/ImmutableListMultimap$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableListMultimap$Builder;-><init>()V

    .line 167
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspHeaders;->namesAndValues:Lcom/google/common/collect/ImmutableListMultimap;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableListMultimap$Builder;->putAll(Lcom/google/common/collect/Multimap;)Lcom/google/common/collect/ImmutableListMultimap$Builder;

    .line 168
    new-instance v1, Lcom/google/android/exoplayer2/source/rtsp/RtspHeaders$Builder;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/exoplayer2/source/rtsp/RtspHeaders$Builder;-><init>(Lcom/google/common/collect/ImmutableListMultimap$Builder;Lcom/google/android/exoplayer2/source/rtsp/RtspHeaders$1;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 151
    :cond_0
    instance-of v0, p1, Lcom/google/android/exoplayer2/source/rtsp/RtspHeaders;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 154
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/source/rtsp/RtspHeaders;

    .line 155
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspHeaders;->namesAndValues:Lcom/google/common/collect/ImmutableListMultimap;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/rtsp/RtspHeaders;->namesAndValues:Lcom/google/common/collect/ImmutableListMultimap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableListMultimap;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 185
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspHeaders;->values(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    .line 186
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 189
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspHeaders;->namesAndValues:Lcom/google/common/collect/ImmutableListMultimap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableListMultimap;->hashCode()I

    move-result v0

    return v0
.end method

.method public values(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspHeaders;->namesAndValues:Lcom/google/common/collect/ImmutableListMultimap;

    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspHeaders;->convertToStandardHeaderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableListMultimap;->get(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method
