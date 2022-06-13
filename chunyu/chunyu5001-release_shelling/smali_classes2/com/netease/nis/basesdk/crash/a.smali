.class Lcom/netease/nis/basesdk/crash/a;
.super Ljava/lang/Object;
.source "CrashReportRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/netease/nis/basesdk/crash/a;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/netease/nis/basesdk/crash/a;->b:Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;

    .line 6
    iput-object p1, p0, Lcom/netease/nis/basesdk/crash/a;->a:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/netease/nis/basesdk/crash/a;->b:Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;

    return-void
.end method

.method static synthetic a(Lcom/netease/nis/basesdk/crash/a;)Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/basesdk/crash/a;->b:Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/netease/nis/basesdk/crash/a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nis/basesdk/crash/a;->b:Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/netease/nis/basesdk/crash/a;->a:Ljava/lang/String;

    new-instance v7, Lcom/netease/nis/basesdk/crash/a$a;

    invoke-direct {v7, p0}, Lcom/netease/nis/basesdk/crash/a$a;-><init>(Lcom/netease/nis/basesdk/crash/a;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v7}, Lcom/netease/nis/basesdk/HttpUtil;->doHttpRequest(Ljava/lang/String;ZZLjava/lang/String;Ljava/util/Map;Landroid/net/Network;Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;)V

    :cond_0
    return-void
.end method
