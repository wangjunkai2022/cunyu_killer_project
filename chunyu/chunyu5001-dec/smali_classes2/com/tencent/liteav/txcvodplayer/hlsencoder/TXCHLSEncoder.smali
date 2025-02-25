.class public Lcom/tencent/liteav/txcvodplayer/hlsencoder/TXCHLSEncoder;
.super Ljava/lang/Object;
.source "TXCHLSEncoder.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/nio/charset/Charset;

.field private static final c:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lcom/tencent/liteav/txcvodplayer/hlsencoder/TXCHLSEncoder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/liteav/txcvodplayer/hlsencoder/TXCHLSEncoder;->a:Ljava/lang/String;

    const-string v0, "UTF-8"

    .line 19
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/tencent/liteav/txcvodplayer/hlsencoder/TXCHLSEncoder;->b:Ljava/nio/charset/Charset;

    const-string v0, "0123456789ABCDEF"

    .line 20
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/tencent/liteav/txcvodplayer/hlsencoder/TXCHLSEncoder;->c:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 5

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x20

    if-ge v1, v2, :cond_0

    .line 43
    sget-object v2, Lcom/tencent/liteav/txcvodplayer/hlsencoder/TXCHLSEncoder;->c:[C

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    sget-object v4, Lcom/tencent/liteav/txcvodplayer/hlsencoder/TXCHLSEncoder;->c:[C

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aget-char v2, v2, v3

    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 58
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "default"

    .line 61
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    sget-object p0, Lcom/tencent/liteav/txcvodplayer/hlsencoder/TXCHLSEncoder;->a:Ljava/lang/String;

    const-string p1, "genSecretKey input exception!"

    invoke-static {p0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 65
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/tencent/liteav/txcvodplayer/hlsencoder/TXCHLSEncoder;->md5(ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 28
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    sget-object p0, Lcom/tencent/liteav/txcvodplayer/hlsencoder/TXCHLSEncoder;->a:Ljava/lang/String;

    const-string v0, "encryptKey input exception!"

    invoke-static {p0, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 32
    :cond_0
    invoke-static {p0}, Lcom/tencent/liteav/txcvodplayer/hlsencoder/TXCHLSEncoder;->rsaEncrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 75
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    sget-object v0, Lcom/tencent/liteav/txcvodplayer/hlsencoder/TXCHLSEncoder;->b:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tencent/liteav/txcvodplayer/hlsencoder/TXCHLSEncoder;->aesEncrypt(Ljava/lang/String;[B)[B

    move-result-object p0

    const/4 p1, 0x2

    .line 80
    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 76
    :cond_1
    :goto_0
    sget-object p0, Lcom/tencent/liteav/txcvodplayer/hlsencoder/TXCHLSEncoder;->a:Ljava/lang/String;

    const-string p1, "encryptWithSecretKey input exception!"

    invoke-static {p0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static native aesDecrypt(Ljava/lang/String;[B)[B
.end method

.method private static native aesEncrypt(Ljava/lang/String;[B)[B
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 90
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 94
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 95
    invoke-static {p0, p1}, Lcom/tencent/liteav/txcvodplayer/hlsencoder/TXCHLSEncoder;->aesDecrypt(Ljava/lang/String;[B)[B

    move-result-object p0

    .line 96
    new-instance p1, Ljava/lang/String;

    sget-object v0, Lcom/tencent/liteav/txcvodplayer/hlsencoder/TXCHLSEncoder;->b:Ljava/nio/charset/Charset;

    invoke-direct {p1, p0, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p1

    .line 91
    :cond_1
    :goto_0
    sget-object p0, Lcom/tencent/liteav/txcvodplayer/hlsencoder/TXCHLSEncoder;->a:Ljava/lang/String;

    const-string p1, "decryptWithSecretKey input exception!"

    invoke-static {p0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static native md5(ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
.end method

.method private static native rsaEncrypt(Ljava/lang/String;)Ljava/lang/String;
.end method
