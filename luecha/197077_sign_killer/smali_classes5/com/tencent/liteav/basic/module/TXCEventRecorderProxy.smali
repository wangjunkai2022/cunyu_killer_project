.class public Lcom/tencent/liteav/basic/module/TXCEventRecorderProxy;
.super Ljava/lang/Object;
.source "TXCEventRecorderProxy.java"


# instance fields
.field private a:J


# direct methods
.method public static a(Ljava/lang/String;IJJLjava/lang/String;I)V
    .locals 0

    if-eqz p0, :cond_1

    if-nez p6, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    invoke-static/range {p0 .. p7}, Lcom/tencent/liteav/basic/module/TXCEventRecorderProxy;->nativeAddEventMsg(Ljava/lang/String;IJJLjava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static native nativeAddEventMsg(Ljava/lang/String;IJJLjava/lang/String;I)V
.end method

.method private static native nativeRelease(J)V
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 93
    iget-wide v0, p0, Lcom/tencent/liteav/basic/module/TXCEventRecorderProxy;->a:J

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/module/TXCEventRecorderProxy;->nativeRelease(J)V

    const-wide/16 v0, 0x0

    .line 94
    iput-wide v0, p0, Lcom/tencent/liteav/basic/module/TXCEventRecorderProxy;->a:J

    .line 95
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
