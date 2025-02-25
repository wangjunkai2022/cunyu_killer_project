.class Lcom/netease/nis/basesdk/HttpUtil$d;
.super Ljava/util/TimerTask;
.source "HttpUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/nis/basesdk/HttpUtil;->doGetRequestByMobileNet(Landroid/content/Context;Ljava/lang/String;Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/net/ConnectivityManager;

.field final synthetic b:Landroid/net/ConnectivityManager$NetworkCallback;

.field final synthetic c:Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;


# direct methods
.method constructor <init>(Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$NetworkCallback;Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/basesdk/HttpUtil$d;->a:Landroid/net/ConnectivityManager;

    iput-object p2, p0, Lcom/netease/nis/basesdk/HttpUtil$d;->b:Landroid/net/ConnectivityManager$NetworkCallback;

    iput-object p3, p0, Lcom/netease/nis/basesdk/HttpUtil$d;->c:Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/nis/basesdk/HttpUtil$d;->a:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/netease/nis/basesdk/HttpUtil$d;->b:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 2
    iget-object v0, p0, Lcom/netease/nis/basesdk/HttpUtil$d;->c:Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;

    const/16 v1, 0x2712

    const-string v2, "\u5f53\u524d\u72b6\u6001\u4e3awifi\u548c\u6570\u636e\u6d41\u91cf\u540c\u65f6\u5f00\u542f\uff0c\u5207\u6362\u5230\u6570\u636e\u6d41\u91cf\u8d85\u65f6\uff0c\u8bf7\u91cd\u8bd5"

    invoke-interface {v0, v1, v2}, Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;->onError(ILjava/lang/String;)V

    return-void
.end method
