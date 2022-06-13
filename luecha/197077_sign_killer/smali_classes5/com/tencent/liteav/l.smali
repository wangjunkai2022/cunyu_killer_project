.class public Lcom/tencent/liteav/l;
.super Ljava/lang/Object;
.source "TXSDKUtil.java"


# direct methods
.method public static a(Landroid/content/Context;I)Lcom/tencent/liteav/j;
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 24
    :cond_0
    new-instance p1, Lcom/tencent/liteav/c;

    invoke-direct {p1, p0}, Lcom/tencent/liteav/c;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    new-instance p1, Lcom/tencent/liteav/h;

    invoke-direct {p1, p0}, Lcom/tencent/liteav/h;-><init>(Landroid/content/Context;)V

    :goto_1
    return-object p1
.end method

.method public static a(Landroid/content/Context;Lcom/tencent/live2/V2TXLivePlayer;Lcom/tencent/live2/impl/a$c;)Lcom/tencent/live2/V2TXLivePlayer;
    .locals 1

    .line 35
    sget-object v0, Lcom/tencent/live2/impl/a$c;->c:Lcom/tencent/live2/impl/a$c;

    if-ne p2, v0, :cond_0

    .line 36
    new-instance p2, Lcom/tencent/live2/a/a;

    invoke-direct {p2, p1, p0}, Lcom/tencent/live2/a/a;-><init>(Lcom/tencent/live2/V2TXLivePlayer;Landroid/content/Context;)V

    goto :goto_0

    .line 38
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "createV2Player error not support type : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TXSDKUtil"

    invoke-static {p1, p0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
