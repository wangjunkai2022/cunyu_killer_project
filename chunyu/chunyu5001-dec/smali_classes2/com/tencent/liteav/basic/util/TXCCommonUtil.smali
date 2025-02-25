.class public Lcom/tencent/liteav/basic/util/TXCCommonUtil;
.super Ljava/lang/Object;
.source "TXCCommonUtil.java"


# static fields
.field public static ENV_PRIORITY_API:I = 0x0

.field public static ENV_PRIORITY_FUNCTION:I = 0x0

.field public static ENV_PRIORITY_SDKAPPID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TXCCommonUtil"

.field private static mAppID:Ljava/lang/String; = ""

.field private static mExtIDMap:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mStrAppVersion:Ljava/lang/String; = ""

.field private static mUserId:Ljava/lang/String; = ""

.field public static pituLicencePath:Ljava/lang/String; = "YTFaceSDK.licence"

.field private static sApplicationContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    invoke-static {}, Lcom/tencent/liteav/basic/util/h;->f()Z

    const/4 v0, 0x1

    .line 483
    sput v0, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->ENV_PRIORITY_FUNCTION:I

    .line 484
    sget v1, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->ENV_PRIORITY_FUNCTION:I

    add-int/2addr v1, v0

    sput v1, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->ENV_PRIORITY_SDKAPPID:I

    .line 485
    sget v1, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->ENV_PRIORITY_SDKAPPID:I

    add-int/2addr v1, v0

    sput v1, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->ENV_PRIORITY_API:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static equalURL(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "UTF-8"

    const/4 v1, 0x0

    .line 633
    :try_start_0
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 634
    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 635
    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0

    :catch_0
    return v1
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    .line 402
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static getAppContext()Landroid/content/Context;
    .locals 1

    .line 95
    sget-object v0, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->sApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getAppFilePath()Ljava/lang/String;
    .locals 3

    .line 411
    sget-object v0, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->sApplicationContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 412
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "/sdcard/liteav"

    .line 414
    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 415
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 416
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_1
    return-object v0
.end method

.method public static getAppID()Ljava/lang/String;
    .locals 1

    .line 224
    sget-object v0, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->mAppID:Ljava/lang/String;

    return-object v0
.end method

.method public static getAppNameByStreamUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    .line 157
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "?"

    .line 171
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 173
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    if-eqz p0, :cond_7

    .line 175
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "/"

    .line 182
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v3, :cond_3

    .line 184
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_3
    if-eqz p0, :cond_7

    .line 187
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    .line 194
    :cond_4
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_5

    add-int/lit8 v1, v1, 0x1

    .line 196
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_5
    if-eqz p0, :cond_7

    .line 199
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    return-object p0

    :cond_7
    :goto_0
    return-object v0
.end method

.method public static getAppPackageName()Ljava/lang/String;
    .locals 1

    .line 406
    sget-object v0, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->sApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/liteav/basic/util/h;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppVersion()Ljava/lang/String;
    .locals 1

    .line 216
    sget-object v0, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->mStrAppVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 526
    const-class v0, Lcom/tencent/liteav/basic/util/TXCCommonUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public static getConfigCenterKey()Ljava/lang/String;
    .locals 1

    .line 76
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->nativeGetConfigCenterKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurEnvProxyDomain()Ljava/lang/String;
    .locals 1

    .line 500
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->nativeGetCurEnvProxyDomain()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurEnvProxySDKAppId()I
    .locals 1

    .line 504
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->nativeGetCurEnvProxySDKAppId()I

    move-result v0

    return v0
.end method

.method public static getCurEnvServerConfigUrl()Ljava/lang/String;
    .locals 1

    .line 496
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->nativeGetCurEnvServerConfigUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getDeviceInfo()Ljava/lang/String;
    .locals 3

    const-string v0, "_"

    .line 518
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->Brand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->Model()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->Version()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "unknown_device"

    return-object v0
.end method

.method public static getExtIDMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 565
    sget-object v0, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->mExtIDMap:Ljava/util/Map;

    return-object v0
.end method

.method public static getFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    .line 81
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0x2e

    .line 82
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 83
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 84
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getGateway()I
    .locals 4

    .line 374
    sget-object v0, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->sApplicationContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    const-string v2, "wifi"

    .line 377
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 378
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    .line 379
    iget v1, v0, Landroid/net/DhcpInfo;->gateway:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "TXCCommonUtil"

    const-string v3, "getGateway error "

    .line 381
    invoke-static {v2, v3, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return v1
.end method

.method public static getLogUploadPath()Ljava/lang/String;
    .locals 3

    .line 364
    sget-object v0, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->sApplicationContext:Landroid/content/Context;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    .line 365
    invoke-virtual {v0, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 368
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/log/liteav"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    :try_start_0
    const-string v0, "MD5"

    .line 238
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 239
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 240
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 242
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 243
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 244
    aget-byte v3, v0, v2

    if-gez v3, :cond_0

    add-int/lit16 v3, v3, 0x100

    :cond_0
    const/16 v4, 0x10

    if-ge v3, v4, :cond_1

    const-string v4, "0"

    .line 248
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 249
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 251
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method

.method public static getMD5([B)[B
    .locals 1

    :try_start_0
    const-string v0, "MD5"

    .line 259
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 260
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 261
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSDKID()I
    .locals 1

    .line 72
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->nativeGetSDKID()I

    move-result v0

    return v0
.end method

.method public static getSDKVersion()[I
    .locals 7

    .line 52
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->nativeGetSDKVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\."

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 54
    array-length v1, v0

    new-array v1, v1, [I

    const/4 v2, 0x0

    move v3, v2

    .line 55
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 57
    :try_start_0
    aget-object v4, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v1, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    const-string v5, "TXCCommonUtil"

    const-string v6, "parse version failed."

    .line 60
    invoke-static {v5, v6, v4}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    aput v2, v1, v3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static getSDKVersionStr()Ljava/lang/String;
    .locals 1

    .line 68
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->nativeGetSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStreamIDByStreamUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    .line 107
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "?"

    .line 121
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 123
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    if-eqz p0, :cond_7

    .line 125
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "/"

    .line 132
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_3

    add-int/lit8 v1, v1, 0x1

    .line 134
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_3
    if-eqz p0, :cond_7

    .line 137
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const-string v1, "."

    .line 144
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_5

    .line 146
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_5
    if-eqz p0, :cond_7

    .line 148
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    return-object p0

    :cond_7
    :goto_0
    return-object v0
.end method

.method public static getUserId()Ljava/lang/String;
    .locals 1

    .line 228
    sget-object v0, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method public static isUrlEncoded(Ljava/lang/String;)Z
    .locals 4

    const-string v0, " "

    const-string v1, "+"

    const/4 v2, 0x1

    if-nez p0, :cond_0

    return v2

    :cond_0
    :try_start_0
    const-string v3, "UTF-8"

    .line 471
    invoke-static {p0, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 473
    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 474
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 475
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr p0, v2

    return p0

    :catch_0
    move-exception p0

    const-string v0, "TXCCommonUtil"

    const-string v1, "isUrlEncoded error : "

    .line 478
    invoke-static {v0, v1, p0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static loadString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 281
    sget-object v0, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->sApplicationContext:Landroid/content/Context;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    const-string v2, "TXCCommonConfig"

    const/4 v3, 0x0

    .line 285
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 286
    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "TXCCommonUtil"

    const-string v2, "load string failed."

    .line 289
    invoke-static {v0, v2, p0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v1
.end method

.method public static loadUInt64(Ljava/lang/String;)J
    .locals 5

    .line 308
    sget-object v0, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->sApplicationContext:Landroid/content/Context;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    :try_start_0
    const-string v3, "TXCCommonConfig"

    const/4 v4, 0x0

    .line 312
    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 313
    invoke-interface {v0, p0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "TXCCommonUtil"

    const-string v3, "load uint64 failed."

    .line 316
    invoke-static {v0, v3, p0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-wide v1
.end method

.method private static native nativeGetConfigCenterKey()Ljava/lang/String;
.end method

.method private static native nativeGetCurEnvProxyDomain()Ljava/lang/String;
.end method

.method private static native nativeGetCurEnvProxySDKAppId()I
.end method

.method private static native nativeGetCurEnvServerConfigUrl()Ljava/lang/String;
.end method

.method private static native nativeGetSDKID()I
.end method

.method private static native nativeGetSDKVersion()Ljava/lang/String;
.end method

.method private static native nativeSetGlobalEnv(Ljava/lang/String;I)I
.end method

.method private static native nativeSetSocks5Proxy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
.end method

.method public static saveString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 268
    sget-object v0, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->sApplicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v1, "TXCCommonConfig"

    const/4 v2, 0x0

    .line 271
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 272
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 273
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 274
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "TXCCommonUtil"

    const-string v0, "save string failed"

    .line 276
    invoke-static {p1, v0, p0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static saveUInt64(Ljava/lang/String;J)V
    .locals 3

    .line 295
    sget-object v0, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->sApplicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v1, "TXCCommonConfig"

    const/4 v2, 0x0

    .line 298
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 299
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 300
    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 301
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "TXCCommonUtil"

    const-string p2, "save uint64 failed."

    .line 303
    invoke-static {p1, p2, p0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static setAppContext(Landroid/content/Context;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 92
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->sApplicationContext:Landroid/content/Context;

    return-void
.end method

.method public static setAppID(Ljava/lang/String;)V
    .locals 0

    .line 220
    sput-object p0, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->mAppID:Ljava/lang/String;

    return-void
.end method

.method public static setAppVersion(Ljava/lang/String;)V
    .locals 0

    .line 208
    sput-object p0, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->mStrAppVersion:Ljava/lang/String;

    return-void
.end method

.method public static setExtID(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13

    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setExtID: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCCommonUtil"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "businessId"

    const-string v3, "buildModel"

    const-string v4, "buildBrand"

    const-string v5, "buildManufacturer"

    const-string v6, "buildHardware"

    const-string v7, "buildVersion"

    const-string v8, "buildVersionRelease"

    const-string v9, "buildVersionInt"

    const-string v10, "buildVersionSDKInt"

    const-string v11, "buildVersionIncremental"

    const-string v12, "buildBoard"

    .line 578
    filled-new-array/range {v2 .. v12}, [Ljava/lang/String;

    move-result-object v0

    .line 589
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "buildModel"

    .line 593
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 594
    invoke-static {p1}, Lcom/tencent/liteav/basic/util/TXCBuild;->SetModel(Ljava/lang/String;)V

    return v2

    :cond_1
    const-string v0, "buildBrand"

    .line 596
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 597
    invoke-static {p1}, Lcom/tencent/liteav/basic/util/TXCBuild;->SetBrand(Ljava/lang/String;)V

    return v2

    :cond_2
    const-string v0, "buildManufacturer"

    .line 599
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 600
    invoke-static {p1}, Lcom/tencent/liteav/basic/util/TXCBuild;->SetManufacturer(Ljava/lang/String;)V

    return v2

    :cond_3
    const-string v0, "buildHardware"

    .line 602
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 603
    invoke-static {p1}, Lcom/tencent/liteav/basic/util/TXCBuild;->SetHardware(Ljava/lang/String;)V

    return v2

    :cond_4
    const-string v0, "buildVersion"

    .line 605
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "buildVersionRelease"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    const-string v0, "buildVersionIncremental"

    .line 608
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 609
    invoke-static {p1}, Lcom/tencent/liteav/basic/util/TXCBuild;->SetVersionIncremental(Ljava/lang/String;)V

    return v2

    :cond_6
    const-string v0, "buildVersionInt"

    .line 611
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "buildVersionSDKInt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_0

    :cond_7
    const-string v0, "buildBoard"

    .line 618
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 619
    invoke-static {p1}, Lcom/tencent/liteav/basic/util/TXCBuild;->SetBoard(Ljava/lang/String;)V

    return v2

    .line 623
    :cond_8
    sget-object v0, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->mExtIDMap:Ljava/util/Map;

    if-nez v0, :cond_9

    .line 624
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->mExtIDMap:Ljava/util/Map;

    .line 626
    :cond_9
    sget-object v0, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->mExtIDMap:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v2

    .line 613
    :cond_a
    :goto_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcom/tencent/liteav/basic/util/TXCBuild;->SetVersionInt(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    return v1

    .line 606
    :cond_b
    :goto_1
    invoke-static {p1}, Lcom/tencent/liteav/basic/util/TXCBuild;->SetVersion(Ljava/lang/String;)V

    return v2
.end method

.method public static setGlobalEnv(Ljava/lang/String;I)I
    .locals 0

    .line 488
    invoke-static {p0, p1}, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->nativeSetGlobalEnv(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static setPituLicencePath(Ljava/lang/String;)V
    .locals 0

    .line 212
    sput-object p0, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->pituLicencePath:Ljava/lang/String;

    return-void
.end method

.method public static setSocks5Proxy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 492
    invoke-static {p0, p1, p2, p3}, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->nativeSetSocks5Proxy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static setUserId(Ljava/lang/String;)V
    .locals 0

    .line 232
    sput-object p0, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->mUserId:Ljava/lang/String;

    return-void
.end method

.method public static sleep(I)V
    .locals 2

    int-to-long v0, p0

    .line 99
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static tryEncodeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, "TXCCommonUtil"

    .line 430
    :try_start_0
    invoke-static {p0}, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->isUrlEncoded(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "URL has been encoded"

    .line 431
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_0
    const-string v1, "UTF-8"

    .line 435
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 436
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x0

    move v4, v3

    .line 437
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_4

    .line 438
    aget-byte v5, v1, v4

    if-gez v5, :cond_1

    aget-byte v5, v1, v4

    add-int/lit16 v5, v5, 0x100

    goto :goto_1

    :cond_1
    aget-byte v5, v1, v4

    :goto_1
    const/16 v6, 0x20

    if-le v5, v6, :cond_3

    const/16 v6, 0x7f

    if-ge v5, v6, :cond_3

    const/16 v6, 0x22

    if-eq v5, v6, :cond_3

    const/16 v6, 0x25

    if-eq v5, v6, :cond_3

    const/16 v6, 0x3c

    if-eq v5, v6, :cond_3

    const/16 v6, 0x3e

    if-eq v5, v6, :cond_3

    const/16 v6, 0x5b

    if-eq v5, v6, :cond_3

    const/16 v6, 0x7d

    if-eq v5, v6, :cond_3

    const/16 v6, 0x5c

    if-eq v5, v6, :cond_3

    const/16 v6, 0x5d

    if-eq v5, v6, :cond_3

    const/16 v6, 0x5e

    if-eq v5, v6, :cond_3

    const/16 v6, 0x60

    if-eq v5, v6, :cond_3

    const/16 v6, 0x7b

    if-eq v5, v6, :cond_3

    const/16 v6, 0x7c

    if-ne v5, v6, :cond_2

    goto :goto_2

    :cond_2
    int-to-char v5, v5

    .line 448
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    :goto_2
    const-string v6, "%%%02X"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    .line 446
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 452
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    const-string v2, "tryEncodeUrl failed."

    .line 455
    invoke-static {v0, v2, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    return-object p0
.end method

.method public static unzip(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    .line 536
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 537
    :try_start_1
    new-instance v2, Ljava/util/zip/ZipInputStream;

    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 540
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 541
    new-instance v3, Ljava/io/File;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 543
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    .line 548
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 549
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/liteav/basic/util/c;->a(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 550
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    .line 557
    invoke-static {v1}, Lcom/tencent/liteav/basic/util/c;->a(Ljava/io/Closeable;)V

    .line 558
    invoke-static {v2}, Lcom/tencent/liteav/basic/util/c;->a(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v2, v0

    goto :goto_1

    :catchall_2
    move-exception p1

    move-object v1, v0

    move-object v2, v1

    :goto_1
    :try_start_3
    const-string v0, "TXCCommonUtil"

    .line 555
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unzip "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " failed."

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 557
    invoke-static {v1}, Lcom/tencent/liteav/basic/util/c;->a(Ljava/io/Closeable;)V

    .line 558
    invoke-static {v2}, Lcom/tencent/liteav/basic/util/c;->a(Ljava/io/Closeable;)V

    const/4 p0, 0x0

    :goto_2
    return p0

    :catchall_3
    move-exception p0

    .line 557
    invoke-static {v1}, Lcom/tencent/liteav/basic/util/c;->a(Ljava/io/Closeable;)V

    .line 558
    invoke-static {v2}, Lcom/tencent/liteav/basic/util/c;->a(Ljava/io/Closeable;)V

    .line 559
    throw p0
.end method

.method public static zip(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "TXCCommonUtil"

    .line 322
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 327
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    const-string v1, "LiteAV log"

    .line 328
    invoke-virtual {v2, v1}, Ljava/util/zip/ZipOutputStream;->setComment(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :catch_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 330
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 332
    :try_start_2
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/32 v6, 0x800000

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    goto :goto_2

    .line 334
    :cond_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 335
    :try_start_3
    new-instance p1, Ljava/util/zip/ZipEntry;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v3}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    const/16 p1, 0x2000

    new-array p1, p1, [B

    .line 338
    :goto_1
    invoke-virtual {v1, p1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x0

    .line 339
    invoke-virtual {v2, p1, v4, v3}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_3

    .line 345
    :cond_1
    :goto_2
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v1, p1

    goto :goto_4

    :catch_2
    move-exception v1

    move-object v8, v1

    move-object v1, p1

    move-object p1, v8

    :goto_3
    :try_start_5
    const-string v3, "zip failed."

    .line 342
    invoke-static {v0, v3, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 345
    :cond_2
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catch_3
    move-object p1, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_4
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 349
    :catch_4
    :try_start_8
    throw p0
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 355
    :cond_3
    :try_start_9
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_6

    :catchall_2
    move-exception p0

    goto :goto_7

    :catch_5
    move-object p1, v2

    goto :goto_5

    :catchall_3
    move-exception p0

    move-object v2, p1

    goto :goto_7

    :catch_6
    :goto_5
    :try_start_a
    const-string p0, "zip log error"

    .line 352
    invoke-static {v0, p0}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 355
    :try_start_b
    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    :catch_7
    :goto_6
    return-void

    :goto_7
    :try_start_c
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    .line 359
    :catch_8
    throw p0
.end method
