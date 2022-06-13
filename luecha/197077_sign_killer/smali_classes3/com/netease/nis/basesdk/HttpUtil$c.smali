.class Lcom/netease/nis/basesdk/HttpUtil$c;
.super Landroid/net/ConnectivityManager$NetworkCallback;
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
.field final synthetic a:Ljava/util/Timer;

.field final synthetic b:[Z

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;

.field final synthetic e:Landroid/net/ConnectivityManager;


# direct methods
.method constructor <init>(Ljava/util/Timer;[ZLjava/lang/String;Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;Landroid/net/ConnectivityManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/basesdk/HttpUtil$c;->a:Ljava/util/Timer;

    iput-object p2, p0, Lcom/netease/nis/basesdk/HttpUtil$c;->b:[Z

    iput-object p3, p0, Lcom/netease/nis/basesdk/HttpUtil$c;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/nis/basesdk/HttpUtil$c;->d:Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;

    iput-object p5, p0, Lcom/netease/nis/basesdk/HttpUtil$c;->e:Landroid/net/ConnectivityManager;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    const-string v0, "\u5207\u6362\u7f51\u7edc\u6210\u529f"

    .line 2
    invoke-static {v0}, Lcom/netease/nis/basesdk/Logger;->d(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/netease/nis/basesdk/HttpUtil$c;->a:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 4
    iget-object v0, p0, Lcom/netease/nis/basesdk/HttpUtil$c;->a:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 6
    iget-object v0, p0, Lcom/netease/nis/basesdk/HttpUtil$c;->b:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-nez v0, :cond_0

    .line 7
    iget-object v2, p0, Lcom/netease/nis/basesdk/HttpUtil$c;->c:Ljava/lang/String;

    iget-object v8, p0, Lcom/netease/nis/basesdk/HttpUtil$c;->d:Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, p1

    invoke-static/range {v2 .. v8}, Lcom/netease/nis/basesdk/HttpUtil;->doHttpRequest(Ljava/lang/String;ZZLjava/lang/String;Ljava/util/Map;Landroid/net/Network;Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;)V

    .line 8
    iget-object p1, p0, Lcom/netease/nis/basesdk/HttpUtil$c;->b:[Z

    const/4 v0, 0x1

    aput-boolean v0, p1, v1

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/netease/nis/basesdk/HttpUtil$c;->e:Landroid/net/ConnectivityManager;

    invoke-virtual {p1, p0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method
