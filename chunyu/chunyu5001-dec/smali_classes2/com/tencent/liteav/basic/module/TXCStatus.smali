.class public Lcom/tencent/liteav/basic/module/TXCStatus;
.super Ljava/lang/Object;
.source "TXCStatus.java"


# direct methods
.method public static a(Ljava/lang/String;I)J
    .locals 1

    const/4 v0, 0x0

    .line 340
    invoke-static {p0, p1, v0}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;II)J

    move-result-wide p0

    return-wide p0
.end method

.method public static a(Ljava/lang/String;II)J
    .locals 0

    .line 366
    invoke-static {p0, p1, p2}, Lcom/tencent/liteav/basic/module/TXCStatus;->nativeStatusGetIntValue(Ljava/lang/String;II)J

    move-result-wide p0

    return-wide p0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    .line 304
    invoke-static {p0}, Lcom/tencent/liteav/basic/module/TXCStatus;->nativeStatusStartRecord(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;IILjava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    .line 316
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    return v0

    .line 319
    :cond_1
    instance-of v0, p3, Ljava/lang/Double;

    if-eqz v0, :cond_2

    .line 320
    check-cast p3, Ljava/lang/Double;

    .line 321
    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/tencent/liteav/basic/module/TXCStatus;->nativeStatusSetDoubleValue(Ljava/lang/String;IID)Z

    move-result p0

    return p0

    .line 322
    :cond_2
    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 323
    check-cast p3, Ljava/lang/String;

    .line 324
    invoke-static {p0, p1, p2, p3}, Lcom/tencent/liteav/basic/module/TXCStatus;->nativeStatusSetStrValue(Ljava/lang/String;IILjava/lang/String;)Z

    move-result p0

    return p0

    .line 325
    :cond_3
    instance-of v0, p3, Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 326
    check-cast p3, Ljava/lang/Long;

    .line 327
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/tencent/liteav/basic/module/TXCStatus;->nativeStatusSetIntValue(Ljava/lang/String;IIJ)Z

    move-result p0

    return p0

    .line 329
    :cond_4
    check-cast p3, Ljava/lang/Integer;

    .line 330
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-long v0, p3

    invoke-static {p0, p1, p2, v0, v1}, Lcom/tencent/liteav/basic/module/TXCStatus;->nativeStatusSetIntValue(Ljava/lang/String;IIJ)Z

    move-result p0

    return p0

    :cond_5
    :goto_0
    return v0
.end method

.method public static a(Ljava/lang/String;ILjava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    .line 312
    invoke-static {p0, p1, v0, p2}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;IILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static b(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 349
    invoke-static {p0, p1, v0}, Lcom/tencent/liteav/basic/module/TXCStatus;->b(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;II)Ljava/lang/String;
    .locals 0

    .line 370
    invoke-static {p0, p1, p2}, Lcom/tencent/liteav/basic/module/TXCStatus;->nativeStatusGetStrValue(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 0

    .line 308
    invoke-static {p0}, Lcom/tencent/liteav/basic/module/TXCStatus;->nativeStatusStopRecord(Ljava/lang/String;)V

    return-void
.end method

.method public static c(Ljava/lang/String;I)I
    .locals 1

    const/4 v0, 0x0

    .line 358
    invoke-static {p0, p1, v0}, Lcom/tencent/liteav/basic/module/TXCStatus;->c(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public static c(Ljava/lang/String;II)I
    .locals 0

    .line 374
    invoke-static {p0, p1, p2}, Lcom/tencent/liteav/basic/module/TXCStatus;->nativeStatusGetIntValue(Ljava/lang/String;II)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public static d(Ljava/lang/String;I)D
    .locals 1

    const/4 v0, 0x0

    .line 362
    invoke-static {p0, p1, v0}, Lcom/tencent/liteav/basic/module/TXCStatus;->d(Ljava/lang/String;II)D

    move-result-wide p0

    return-wide p0
.end method

.method public static d(Ljava/lang/String;II)D
    .locals 0

    .line 378
    invoke-static {p0, p1, p2}, Lcom/tencent/liteav/basic/module/TXCStatus;->nativeStatusGetDoubleValue(Ljava/lang/String;II)D

    move-result-wide p0

    return-wide p0
.end method

.method private static native nativeStatusGetDoubleValue(Ljava/lang/String;II)D
.end method

.method private static native nativeStatusGetIntValue(Ljava/lang/String;II)J
.end method

.method private static native nativeStatusGetStrValue(Ljava/lang/String;II)Ljava/lang/String;
.end method

.method private static native nativeStatusSetDoubleValue(Ljava/lang/String;IID)Z
.end method

.method private static native nativeStatusSetIntValue(Ljava/lang/String;IIJ)Z
.end method

.method private static native nativeStatusSetStrValue(Ljava/lang/String;IILjava/lang/String;)Z
.end method

.method private static native nativeStatusStartRecord(Ljava/lang/String;)V
.end method

.method private static native nativeStatusStopRecord(Ljava/lang/String;)V
.end method
