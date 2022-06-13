.class public Lcom/tencent/liteav/basic/module/Monitor;
.super Ljava/lang/Object;
.source "Monitor.java"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 12
    invoke-static {}, Lcom/tencent/liteav/basic/util/h;->f()Z

    return-void
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 20
    invoke-static {p0, p1, p2, p3}, Lcom/tencent/liteav/basic/module/Monitor;->nativeOnlineLog(ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private static native nativeOnlineLog(ILjava/lang/String;Ljava/lang/String;I)V
.end method
