.class public Lcom/tencent/liteav/basic/datareport/TXCDRApi;
.super Ljava/lang/Object;
.source "TXCDRApi.java"


# static fields
.field private static final DIGITS_LOWER:[C

.field private static final TAG:Ljava/lang/String; = "TXCDRApi"

.field private static g_simulate_idfa:Ljava/lang/String; = ""

.field static initRpt:Z = false

.field private static mAppName:Ljava/lang/String; = ""

.field private static mDevId:Ljava/lang/String; = ""

.field private static mDevType:Ljava/lang/String; = ""

.field private static mDevUUID:Ljava/lang/String; = ""

.field private static mNetType:Ljava/lang/String; = ""

.field private static mPackageName:Ljava/lang/String; = ""

.field private static mSysVersion:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 164
    fill-array-data v0, :array_0

    sput-object v0, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->DIGITS_LOWER:[C

    const/4 v0, 0x0

    .line 281
    sput-boolean v0, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->initRpt:Z

    .line 303
    invoke-static {}, Lcom/tencent/liteav/basic/util/h;->f()Z

    .line 305
    invoke-static {}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->nativeInitDataReport()V

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static InitEvent(Landroid/content/Context;Ljava/lang/String;IILcom/tencent/liteav/basic/datareport/TXCDRExtInfo;)V
    .locals 0

    .line 43
    invoke-static {p0}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->setCommonInfo(Landroid/content/Context;)V

    if-nez p1, :cond_0

    return-void

    .line 47
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->nativeInitEventInternal(Ljava/lang/String;IILcom/tencent/liteav/basic/datareport/TXCDRExtInfo;)V

    return-void
.end method

.method private static byteArrayToHexString([B)Ljava/lang/String;
    .locals 6

    .line 155
    array-length v0, p0

    shl-int/lit8 v0, v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    move v2, v1

    .line 157
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    .line 158
    sget-object v4, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->DIGITS_LOWER:[C

    aget-byte v5, p0, v1

    and-int/lit16 v5, v5, 0xf0

    ushr-int/lit8 v5, v5, 0x4

    aget-char v5, v4, v5

    aput-char v5, v0, v2

    add-int/lit8 v2, v3, 0x1

    .line 159
    aget-byte v5, p0, v1

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 161
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static getDevUUID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 273
    invoke-static {p0}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->getSimulateIDFA(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSimulateIDFA(Landroid/content/Context;)Ljava/lang/String;
    .locals 23

    move-object/from16 v1, p0

    const-string v2, "/liteav/spuid"

    .line 187
    sget-object v0, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->g_simulate_idfa:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 188
    sget-object v0, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->g_simulate_idfa:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v3, 0x0

    .line 195
    invoke-virtual {v1, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    const-string v5, "TXCDRApi"

    if-nez v4, :cond_1

    const-string v0, "getSimulateIDFA sdcardDir is null"

    .line 197
    invoke-static {v5, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    sget-object v0, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->g_simulate_idfa:Ljava/lang/String;

    return-object v0

    :cond_1
    const/4 v6, 0x0

    const-string v0, "com.tencent.liteav.dev_uuid"

    .line 201
    invoke-virtual {v1, v0, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, ""

    const-string v9, "com.tencent.liteav.key_dev_uuid"

    .line 202
    invoke-interface {v7, v9, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 206
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 207
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 209
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 210
    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result v11

    if-lez v11, :cond_2

    .line 212
    new-array v11, v11, [B

    .line 213
    invoke-virtual {v0, v11}, Ljava/io/FileInputStream;->read([B)I

    .line 214
    new-instance v12, Ljava/lang/String;

    const-string v13, "UTF-8"

    invoke-direct {v12, v11, v13}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_2
    move-object v12, v3

    .line 216
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_3
    move-object v12, v3

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v12, v3

    .line 219
    :goto_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "read UUID from file failed! reason: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    if-eqz v10, :cond_4

    .line 222
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    move-object v3, v10

    goto :goto_3

    :cond_4
    if-eqz v12, :cond_5

    .line 224
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    move-object v3, v12

    :cond_5
    :goto_3
    if-eqz v3, :cond_6

    .line 228
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    .line 231
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 232
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v15

    .line 233
    invoke-static/range {p0 .. p0}, Lcom/tencent/liteav/basic/util/h;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    :goto_4
    const-wide/16 v17, 0xff

    const/4 v3, 0x1

    const-string v11, "%02x"

    if-ltz v1, :cond_7

    .line 235
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v3, [Ljava/lang/Object;

    mul-int/lit8 v8, v1, 0x8

    shr-long v19, v13, v8

    move-wide/from16 v21, v13

    and-long v13, v19, v17

    long-to-int v8, v13

    int-to-byte v8, v8

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    const/4 v13, 0x0

    aput-object v8, v3, v13

    invoke-static {v11, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v1, v1, -0x1

    move-wide/from16 v13, v21

    const/4 v6, 0x0

    goto :goto_4

    :cond_7
    const/4 v1, 0x3

    :goto_5
    if-ltz v1, :cond_8

    .line 238
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v8, v3, [Ljava/lang/Object;

    mul-int/lit8 v13, v1, 0x8

    shr-long v13, v15, v13

    and-long v13, v13, v17

    long-to-int v13, v13

    int-to-byte v13, v13

    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v8, v14

    invoke-static {v11, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    .line 240
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->string2Md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 243
    :cond_9
    sput-object v3, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->g_simulate_idfa:Ljava/lang/String;

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UUID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->g_simulate_idfa:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v12, :cond_a

    .line 245
    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 248
    :cond_a
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/liteav"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 249
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 251
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 252
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 254
    :cond_c
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 255
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 256
    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 257
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "write UUID to file failed! reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    :goto_6
    if-eqz v10, :cond_e

    .line 263
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 265
    :cond_e
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 266
    invoke-interface {v0, v9, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 267
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 269
    :cond_f
    sget-object v0, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->g_simulate_idfa:Ljava/lang/String;

    return-object v0
.end method

.method public static getStatusReportInterval()I
    .locals 1

    .line 104
    invoke-static {}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->nativeGetStatusReportInterval()I

    move-result v0

    return v0
.end method

.method public static initCrashReport(Landroid/content/Context;)V
    .locals 4

    .line 284
    :try_start_0
    const-class v0, Lcom/tencent/liteav/basic/datareport/TXCDRApi;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    :try_start_1
    sget-boolean v1, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->initRpt:Z

    if-nez v1, :cond_0

    if-eqz p0, :cond_0

    .line 286
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->getSDKVersionStr()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "BuglySdkInfos"

    const/4 v3, 0x0

    .line 288
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 289
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v2, "8e50744bf0"

    .line 290
    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 291
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 p0, 0x1

    .line 292
    sput-boolean p0, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->initRpt:Z

    .line 295
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    const-string v0, "TXCDRApi"

    const-string v1, "init crash report failed."

    .line 298
    invoke-static {v0, v1, p0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static native nativeGetStatusReportInterval()I
.end method

.method private static native nativeInitDataReport()V
.end method

.method private static native nativeInitEventInternal(Ljava/lang/String;IILcom/tencent/liteav/basic/datareport/TXCDRExtInfo;)V
.end method

.method public static native nativeReportAVRoomEvent(IJLjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeReportDAUInterval(IILjava/lang/String;)V
.end method

.method public static native nativeReportEvent(Ljava/lang/String;I)V
.end method

.method public static native nativeReportEvent40003(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
.end method

.method public static native nativeSetCommonValue(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeSetEventValueInterval(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeUninitDataReport()V
.end method

.method public static reportAVRoomEvent(IJLjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 99
    invoke-static/range {p0 .. p7}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->nativeReportAVRoomEvent(IJLjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static reportEvent40003(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 93
    invoke-static {p0, p1, p2, p3, p4}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->nativeReportEvent40003(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setCommonInfo(Landroid/content/Context;)V
    .locals 2

    .line 112
    sget-object v0, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->mDevType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->Model()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->mDevType:Ljava/lang/String;

    .line 113
    :cond_0
    invoke-static {p0}, Lcom/tencent/liteav/basic/util/h;->d(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->mNetType:Ljava/lang/String;

    .line 114
    sget-object v0, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->mDevId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->getSimulateIDFA(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->mDevId:Ljava/lang/String;

    .line 115
    :cond_1
    sget-object v0, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->mDevUUID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/tencent/liteav/basic/util/h;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->mDevUUID:Ljava/lang/String;

    .line 116
    :cond_2
    sget-object v0, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/tencent/liteav/basic/util/h;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->mPackageName:Ljava/lang/String;

    .line 117
    :cond_3
    sget-object v0, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->mAppName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->mPackageName:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/tencent/liteav/basic/util/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->mAppName:Ljava/lang/String;

    .line 118
    :cond_4
    sget-object p0, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->mSysVersion:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->VersionInt()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->mSysVersion:Ljava/lang/String;

    .line 119
    :cond_5
    invoke-static {}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txSetCommonInfo()V

    return-void
.end method

.method public static string2Md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "MD5"

    .line 174
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    const-string v2, "UTF-8"

    .line 175
    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "TXCDRApi"

    const-string v2, "string2Md5 failed."

    .line 177
    invoke-static {v1, v2, p0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p0, v0

    :goto_0
    if-nez p0, :cond_1

    move-object p0, v0

    :cond_1
    return-object p0
.end method

.method public static txCreateToken()Ljava/lang/String;
    .locals 1

    .line 149
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static txReportDAU(Landroid/content/Context;I)V
    .locals 1

    if-eqz p0, :cond_0

    .line 70
    invoke-static {p0}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->setCommonInfo(Landroid/content/Context;)V

    :cond_0
    const/4 p0, 0x0

    const-string v0, ""

    .line 72
    invoke-static {p1, p0, v0}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->nativeReportDAUInterval(IILjava/lang/String;)V

    return-void
.end method

.method public static txReportDAU(Landroid/content/Context;IILjava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 77
    invoke-static {p0}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->setCommonInfo(Landroid/content/Context;)V

    .line 79
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->nativeReportDAUInterval(IILjava/lang/String;)V

    return-void
.end method

.method public static txSetAppVersion(Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 141
    sget-object v0, Lcom/tencent/liteav/basic/datareport/a;->k:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->nativeSetCommonValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static txSetCommonInfo()V
    .locals 2

    .line 127
    sget-object v0, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->mDevType:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/liteav/basic/datareport/a;->f:Ljava/lang/String;

    sget-object v1, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->mDevType:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->nativeSetCommonValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_0
    sget-object v0, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->mNetType:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tencent/liteav/basic/datareport/a;->g:Ljava/lang/String;

    sget-object v1, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->mNetType:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->nativeSetCommonValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_1
    sget-object v0, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->mDevId:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/tencent/liteav/basic/datareport/a;->h:Ljava/lang/String;

    sget-object v1, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->mDevId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->nativeSetCommonValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_2
    sget-object v0, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->mDevUUID:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/tencent/liteav/basic/datareport/a;->i:Ljava/lang/String;

    sget-object v1, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->mDevUUID:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->nativeSetCommonValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :cond_3
    sget-object v0, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->mAppName:Ljava/lang/String;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/tencent/liteav/basic/datareport/a;->j:Ljava/lang/String;

    sget-object v1, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->mAppName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->nativeSetCommonValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :cond_4
    sget-object v0, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->mSysVersion:Ljava/lang/String;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/tencent/liteav/basic/datareport/a;->l:Ljava/lang/String;

    sget-object v1, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->mSysVersion:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->nativeSetCommonValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public static txSetEventIntValue(Ljava/lang/String;ILjava/lang/String;J)V
    .locals 2

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p1, p2, p3}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->nativeSetEventValueInterval(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static txSetEventValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 55
    invoke-static {p0, p1, p2, p3}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->nativeSetEventValueInterval(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
