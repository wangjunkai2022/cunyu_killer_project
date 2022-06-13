.class public Lcom/tencent/rtmp/TXPlayerGlobalSetting;
.super Ljava/lang/Object;
.source "TXPlayerGlobalSetting.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCacheFolderPath()Ljava/lang/String;
    .locals 2

    .line 26
    invoke-static {}, Lcom/tencent/liteav/txcplayer/a/b;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NO_SET"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 29
    :cond_0
    invoke-static {}, Lcom/tencent/liteav/txcplayer/a/b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMaxCacheSize()I
    .locals 2

    .line 33
    invoke-static {}, Lcom/tencent/liteav/txcplayer/a/b;->b()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static setCacheFolderPath(Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-static {p0}, Lcom/tencent/liteav/txcplayer/a/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static setMaxCacheSize(I)V
    .locals 0

    .line 22
    invoke-static {p0}, Lcom/tencent/liteav/txcplayer/a/b;->a(I)V

    return-void
.end method
