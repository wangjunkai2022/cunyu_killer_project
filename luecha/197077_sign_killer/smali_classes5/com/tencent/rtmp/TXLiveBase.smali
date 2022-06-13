.class public Lcom/tencent/rtmp/TXLiveBase;
.super Ljava/lang/Object;
.source "TXLiveBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/rtmp/TXLiveBase$a;,
        Lcom/tencent/rtmp/TXLiveBase$b;
    }
.end annotation


# static fields
.field private static final FILE_MD5_FFMPEG_ARM:Ljava/lang/String; = "___md5_libtxffmpeg_arm_md5______"

.field private static final FILE_MD5_FFMPEG_V64:Ljava/lang/String; = "___md5_libtxffmpeg_v64_md5______"

.field private static final FILE_MD5_FFMPEG_V7A:Ljava/lang/String; = "___md5_libtxffmpeg_v7a_md5______"

.field private static final FILE_MD5_LITEAV_ARM:Ljava/lang/String; = "___md5_libliteavsdk_arm_md5_____"

.field private static final FILE_MD5_LITEAV_V64:Ljava/lang/String; = "___md5_libliteavsdk_v64_md5_____"

.field private static final FILE_MD5_LITEAV_V7A:Ljava/lang/String; = "___md5_libliteavsdk_v7a_md5_____"

.field private static final FILE_MD5_SATURN_ARM:Ljava/lang/String; = "___md5_libsaturn_arm_md5________"

.field private static final FILE_MD5_SATURN_V64:Ljava/lang/String; = "___md5_libsaturn_v64_md5________"

.field private static final FILE_MD5_SATURN_V7A:Ljava/lang/String; = "___md5_libsaturn_v7a_md5________"

.field private static final FILE_MD5_TRAE_ARM:Ljava/lang/String; = "___md5_libtraeimp_arm_md5_______"

.field private static final FILE_MD5_TRAE_V64:Ljava/lang/String; = "___md5_libtraeimp_v64_md5_______"

.field private static final FILE_MD5_TRAE_V7A:Ljava/lang/String; = "___md5_libtraeimp_v7a_md5_______"

.field private static final TAG:Ljava/lang/String; = "TXLiveBase"

.field private static instance:Lcom/tencent/rtmp/TXLiveBase;

.field private static listener:Lcom/tencent/rtmp/TXLiveBaseListener;

.field private static sHasLoadedLibrary:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lcom/tencent/rtmp/TXLiveBase;

    invoke-direct {v0}, Lcom/tencent/rtmp/TXLiveBase;-><init>()V

    sput-object v0, Lcom/tencent/rtmp/TXLiveBase;->instance:Lcom/tencent/rtmp/TXLiveBase;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200()Lcom/tencent/rtmp/TXLiveBaseListener;
    .locals 1

    .line 30
    sget-object v0, Lcom/tencent/rtmp/TXLiveBase;->listener:Lcom/tencent/rtmp/TXLiveBaseListener;

    return-object v0
.end method

.method private static getFileMD5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 249
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_2

    :cond_0
    const/16 p0, 0x400

    new-array v1, p0, [B

    :try_start_0
    const-string v2, "MD5"

    .line 259
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    .line 260
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :goto_0
    const/4 v0, 0x0

    .line 261
    invoke-virtual {v2, v1, v0, p0}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 262
    invoke-virtual {p1, v1, v0, v3}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 264
    :cond_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 270
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p0

    .line 268
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception p0

    .line 266
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 273
    :goto_1
    new-instance p0, Ljava/math/BigInteger;

    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    invoke-direct {p0, v0, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 p1, 0x10

    .line 275
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_2
    return-object p1
.end method

.method public static getInstance()Lcom/tencent/rtmp/TXLiveBase;
    .locals 1

    .line 60
    sget-object v0, Lcom/tencent/rtmp/TXLiveBase;->instance:Lcom/tencent/rtmp/TXLiveBase;

    return-object v0
.end method

.method public static getNetworkTimestamp()J
    .locals 2

    .line 305
    sget-boolean v0, Lcom/tencent/rtmp/TXLiveBase;->sHasLoadedLibrary:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 308
    :cond_0
    invoke-static {}, Lcom/tencent/rtmp/TXLiveBase;->nativeGetNetworkTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getPituSDKVersion()Ljava/lang/String;
    .locals 1

    .line 216
    invoke-static {}, Lcom/tencent/liteav/l;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSDKVersionStr()Ljava/lang/String;
    .locals 1

    .line 203
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->getSDKVersionStr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isLibraryPathValid(Ljava/lang/String;)Z
    .locals 10

    const-string v0, "libliteavsdk.so"

    .line 148
    invoke-static {p0, v0}, Lcom/tencent/rtmp/TXLiveBase;->getFileMD5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "libsaturn.so"

    .line 149
    invoke-static {p0, v1}, Lcom/tencent/rtmp/TXLiveBase;->getFileMD5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "libtxffmpeg.so"

    .line 150
    invoke-static {p0, v2}, Lcom/tencent/rtmp/TXLiveBase;->getFileMD5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "libtraeimp-rtmp.so"

    .line 151
    invoke-static {p0, v3}, Lcom/tencent/rtmp/TXLiveBase;->getFileMD5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 153
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MD5-CHECK-V64 libliteavsdk = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " FILE_MD5_LITEAV_V64 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "___md5_libliteavsdk_v64_md5_____"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "TXLiveBase"

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MD5-CHECK-V64 libsaturn    = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " FILE_MD5_SATURN_V64 = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "___md5_libsaturn_v64_md5________"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MD5-CHECK-V64 libtxffmpeg  = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " FILE_MD5_FFMPEG_V64 = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "___md5_libtxffmpeg_v64_md5______"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MD5-CHECK-V64 libtraeimpl  = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " FILE_MD5_TRAE_V64   = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "___md5_libtraeimp_v64_md5_______"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    .line 158
    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    .line 159
    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz p0, :cond_0

    .line 160
    invoke-virtual {p0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v3

    .line 164
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MD5-CHECK-V7A libliteavsdk = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " FILE_MD5_LITEAV_V7A = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "___md5_libliteavsdk_v7a_md5_____"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MD5-CHECK-V7A libsaturn    = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " FILE_MD5_SATURN_V7A = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "___md5_libsaturn_v7a_md5________"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MD5-CHECK-V7A libtxffmpeg  = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " FILE_MD5_FFMPEG_V7A = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "___md5_libtxffmpeg_v7a_md5______"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MD5-CHECK-V7A libtraeimpl  = "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " FILE_MD5_TRAE_V7A   = "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "___md5_libtraeimp_v7a_md5_______"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    .line 168
    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    .line 169
    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v2, :cond_1

    .line 170
    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz p0, :cond_1

    .line 171
    invoke-virtual {p0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v3

    .line 175
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MD5-CHECK-ARM libliteavsdk = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " FILE_MD5_LITEAV_ARM = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "___md5_libliteavsdk_arm_md5_____"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MD5-CHECK-ARM libsaturn    = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " FILE_MD5_SATURN_ARM = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "___md5_libsaturn_arm_md5________"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MD5-CHECK-ARM libtxffmpeg  = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " FILE_MD5_FFMPEG_ARM = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "___md5_libtxffmpeg_arm_md5______"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MD5-CHECK-ARM libtraeimpl  = "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " FILE_MD5_TRAE_ARM   = "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "___md5_libtraeimp_arm_md5_______"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    .line 179
    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 180
    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    .line 181
    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    .line 182
    invoke-virtual {p0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v3

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private static native nativeClassInit()V
.end method

.method private static native nativeGetNetworkTimestamp()J
.end method

.method private static native nativeUpdateNetworkTime()I
.end method

.method public static onUpdateNetworkTime(ILjava/lang/String;)V
    .locals 1

    .line 312
    sget-object v0, Lcom/tencent/rtmp/TXLiveBase;->listener:Lcom/tencent/rtmp/TXLiveBaseListener;

    if-eqz v0, :cond_0

    .line 314
    invoke-virtual {v0, p0, p1}, Lcom/tencent/rtmp/TXLiveBaseListener;->onUpdateNetworkTime(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setAppID(Ljava/lang/String;)V
    .locals 0

    .line 224
    invoke-static {p0}, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->setAppID(Ljava/lang/String;)V

    return-void
.end method

.method public static setAppVersion(Ljava/lang/String;)V
    .locals 0

    .line 128
    invoke-static {p0}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetAppVersion(Ljava/lang/String;)V

    .line 129
    invoke-static {p0}, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->setAppVersion(Ljava/lang/String;)V

    return-void
.end method

.method public static setConsoleEnabled(Z)V
    .locals 0

    .line 123
    invoke-static {p0}, Lcom/tencent/liteav/basic/log/TXCLog;->setConsoleEnabled(Z)V

    return-void
.end method

.method public static setExtID(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 329
    invoke-static {p0, p1}, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->setExtID(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static setExternalDecoderFactory(Lcom/tencent/liteav/TXLiteAVExternalDecoderFactoryInterface;)V
    .locals 2

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setExternalDecoderFactory decoderFactory = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXLiveBase"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-static {p0}, Lcom/tencent/liteav/basic/a;->a(Lcom/tencent/liteav/TXLiteAVExternalDecoderFactoryInterface;)V

    return-void
.end method

.method public static setGlobalEnv(Ljava/lang/String;)I
    .locals 1

    .line 104
    sget v0, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->ENV_PRIORITY_API:I

    invoke-static {p0, v0}, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->setGlobalEnv(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static setLibraryPath(Ljava/lang/String;)V
    .locals 2

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLibraryPath "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXLiveBase"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-static {p0}, Lcom/tencent/liteav/basic/util/h;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static setListener(Lcom/tencent/rtmp/TXLiveBaseListener;)V
    .locals 3

    .line 89
    new-instance v0, Lcom/tencent/rtmp/TXLiveBase$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/rtmp/TXLiveBase$b;-><init>(Lcom/tencent/rtmp/TXLiveBase$1;)V

    invoke-static {v0}, Lcom/tencent/liteav/basic/log/TXCLog;->setListener(Lcom/tencent/liteav/basic/log/TXCLog$a;)V

    .line 90
    invoke-static {}, Lcom/tencent/liteav/basic/license/LicenceCheck;->a()Lcom/tencent/liteav/basic/license/LicenceCheck;

    move-result-object v0

    new-instance v2, Lcom/tencent/rtmp/TXLiveBase$a;

    invoke-direct {v2, v1}, Lcom/tencent/rtmp/TXLiveBase$a;-><init>(Lcom/tencent/rtmp/TXLiveBase$1;)V

    invoke-virtual {v0, v2}, Lcom/tencent/liteav/basic/license/LicenceCheck;->a(Lcom/tencent/liteav/basic/license/LicenceCheck$a;)V

    .line 91
    sput-object p0, Lcom/tencent/rtmp/TXLiveBase;->listener:Lcom/tencent/rtmp/TXLiveBaseListener;

    return-void
.end method

.method public static setLogLevel(I)V
    .locals 0

    .line 115
    invoke-static {p0}, Lcom/tencent/liteav/basic/log/TXCLog;->setLevel(I)V

    return-void
.end method

.method public static setPituLicencePath(Ljava/lang/String;)V
    .locals 0

    .line 210
    invoke-static {p0}, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->setPituLicencePath(Ljava/lang/String;)V

    return-void
.end method

.method public static setUserId(Ljava/lang/String;)V
    .locals 0

    .line 282
    invoke-static {p0}, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->setUserId(Ljava/lang/String;)V

    return-void
.end method

.method public static updateNetworkTime()I
    .locals 1

    .line 291
    sget-boolean v0, Lcom/tencent/rtmp/TXLiveBase;->sHasLoadedLibrary:Z

    if-nez v0, :cond_0

    .line 292
    invoke-static {}, Lcom/tencent/liteav/basic/util/h;->f()Z

    .line 293
    invoke-static {}, Lcom/tencent/rtmp/TXLiveBase;->nativeClassInit()V

    const/4 v0, 0x1

    .line 294
    sput-boolean v0, Lcom/tencent/rtmp/TXLiveBase;->sHasLoadedLibrary:Z

    .line 296
    :cond_0
    invoke-static {}, Lcom/tencent/rtmp/TXLiveBase;->nativeUpdateNetworkTime()I

    move-result v0

    return v0
.end method


# virtual methods
.method public getLicenceInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 78
    new-instance v0, Lcom/tencent/liteav/basic/license/e;

    invoke-direct {v0}, Lcom/tencent/liteav/basic/license/e;-><init>()V

    .line 79
    invoke-static {}, Lcom/tencent/liteav/basic/license/LicenceCheck;->a()Lcom/tencent/liteav/basic/license/LicenceCheck;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/tencent/liteav/basic/license/LicenceCheck;->b(Lcom/tencent/liteav/basic/license/e;Landroid/content/Context;)I

    .line 81
    iget-object p1, v0, Lcom/tencent/liteav/basic/license/e;->a:Ljava/lang/String;

    return-object p1
.end method

.method public setLicence(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 69
    invoke-static {}, Lcom/tencent/liteav/basic/license/LicenceCheck;->a()Lcom/tencent/liteav/basic/license/LicenceCheck;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/liteav/basic/license/LicenceCheck;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
