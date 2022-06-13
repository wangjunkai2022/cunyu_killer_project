.class public Lcom/tencent/thumbplayer/d/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/thumbplayer/utils/f$a;
.implements Lcom/tencent/thumbplayer/utils/i$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/thumbplayer/d/g$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/tencent/thumbplayer/d/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/thumbplayer/d/g;->a:I

    const-string v1, ""

    iput-object v1, p0, Lcom/tencent/thumbplayer/d/g;->b:Ljava/lang/String;

    iput v0, p0, Lcom/tencent/thumbplayer/d/g;->c:I

    iget-object v0, p0, Lcom/tencent/thumbplayer/d/g;->d:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/thumbplayer/d/g;->d:Ljava/util/concurrent/ConcurrentHashMap;

    :cond_0
    invoke-static {p0}, Lcom/tencent/thumbplayer/utils/f;->a(Lcom/tencent/thumbplayer/utils/f$a;)V

    invoke-static {}, Lcom/tencent/thumbplayer/utils/i;->a()Lcom/tencent/thumbplayer/utils/i;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/thumbplayer/utils/i;->a(Lcom/tencent/thumbplayer/utils/i$b;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/thumbplayer/d/g$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/thumbplayer/d/g;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDLProxyInitParam;
    .locals 8

    new-instance v7, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDLProxyInitParam;

    invoke-static {}, Lcom/tencent/thumbplayer/config/TPPlayerConfig;->getPlatform()I

    move-result v1

    invoke-static {p0}, Lcom/tencent/thumbplayer/config/TPPlayerConfig;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/tencent/thumbplayer/config/TPPlayerConfig;->getGuid()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/tencent/thumbplayer/config/TPPlayerConfig;->getProxyCacheDir()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/tencent/thumbplayer/config/TPPlayerConfig;->getProxyDataDir()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/tencent/thumbplayer/config/TPPlayerConfig;->getProxyConfigDir()Ljava/lang/String;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDLProxyInitParam;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v7
.end method

.method public static a()Lcom/tencent/thumbplayer/d/g;
    .locals 1

    invoke-static {}, Lcom/tencent/thumbplayer/d/g$a;->a()Lcom/tencent/thumbplayer/d/g;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;I)V
    .locals 4

    iput-object p1, p0, Lcom/tencent/thumbplayer/d/g;->b:Ljava/lang/String;

    iput p2, p0, Lcom/tencent/thumbplayer/d/g;->c:I

    iget-object v0, p0, Lcom/tencent/thumbplayer/d/g;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/thumbplayer/d/b;

    invoke-interface {v1}, Lcom/tencent/thumbplayer/d/b;->a()Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadProxy;

    move-result-object v2

    const-string v3, "carrier_pesudo_code"

    invoke-interface {v2, v3, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadProxy;->setUserData(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1}, Lcom/tencent/thumbplayer/d/b;->a()Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadProxy;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "carrier_pesudo_state"

    invoke-interface {v1, v3, v2}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadProxy;->setUserData(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b(Z)Ljava/lang/String;
    .locals 2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "EnableReport"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "TPProxyGlobalManager"

    invoke-static {v0, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p1, ""

    return-object p1
.end method

.method private b(I)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/thumbplayer/d/g;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/thumbplayer/d/b;

    invoke-interface {v1, p1}, Lcom/tencent/thumbplayer/d/b;->a(I)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)Lcom/tencent/thumbplayer/d/b;
    .locals 7

    const-string v0, "TPProxyGlobalManager"

    const/4 v1, 0x0

    if-gez p1, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/tencent/thumbplayer/d/g;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/tencent/thumbplayer/d/g;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/thumbplayer/d/b;

    return-object p1

    :cond_1
    invoke-static {p1}, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxyFactory;->getTPDownloadProxy(I)Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadProxy;

    move-result-object v2

    if-eqz v2, :cond_7

    :try_start_0
    invoke-static {}, Lcom/tencent/thumbplayer/api/TPPlayerMgr;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/tencent/thumbplayer/api/TPPlayerMgr;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/thumbplayer/d/g;->a(Landroid/content/Context;)Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDLProxyInitParam;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadProxy;->init(Landroid/content/Context;Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDLProxyInitParam;)I

    move-result v3

    if-gez v3, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downloadProxy init failed with status:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_2
    new-instance v3, Lcom/tencent/thumbplayer/d/g$1;

    invoke-direct {v3, p0}, Lcom/tencent/thumbplayer/d/g$1;-><init>(Lcom/tencent/thumbplayer/d/g;)V

    invoke-interface {v2, v3}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadProxy;->setLogListener(Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDLProxyLogListener;)V

    invoke-static {}, Lcom/tencent/thumbplayer/utils/i;->c()I

    move-result v3

    const/16 v4, 0xa

    const/4 v5, 0x1

    if-ne v3, v5, :cond_3

    invoke-interface {v2, v5}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadProxy;->pushEvent(I)V

    :goto_0
    invoke-interface {v2, v4}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadProxy;->pushEvent(I)V

    goto :goto_1

    :cond_3
    const/4 v5, 0x2

    if-ne v3, v5, :cond_4

    invoke-interface {v2, v5}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadProxy;->pushEvent(I)V

    const/16 v3, 0x9

    invoke-interface {v2, v3}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadProxy;->pushEvent(I)V

    goto :goto_1

    :cond_4
    const/4 v6, 0x3

    if-ne v3, v6, :cond_5

    invoke-interface {v2, v5}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadProxy;->pushEvent(I)V

    goto :goto_0

    :cond_5
    :goto_1
    iget v3, p0, Lcom/tencent/thumbplayer/d/g;->a:I

    invoke-interface {v2, v3}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadProxy;->pushEvent(I)V

    const-string v3, "carrier_pesudo_code"

    iget-object v4, p0, Lcom/tencent/thumbplayer/d/g;->b:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadProxy;->setUserData(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "carrier_pesudo_state"

    iget v4, p0, Lcom/tencent/thumbplayer/d/g;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadProxy;->setUserData(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "proxy_config"

    invoke-static {}, Lcom/tencent/thumbplayer/config/TPPlayerConfig;->isDataReportEnable()Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/tencent/thumbplayer/d/g;->b(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadProxy;->setUserData(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/tencent/thumbplayer/config/TPPlayerConfig;->getProxyMaxStorageSizeMB()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_6

    invoke-static {}, Lcom/tencent/thumbplayer/config/TPPlayerConfig;->getProxyMaxStorageSizeMB()J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadProxy;->setMaxStorageSizeMB(J)V

    :cond_6
    new-instance v3, Lcom/tencent/thumbplayer/d/h;

    invoke-direct {v3, v2}, Lcom/tencent/thumbplayer/d/h;-><init>(Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadProxy;)V

    iget-object v2, p0, Lcom/tencent/thumbplayer/d/g;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPlayerProxy, init proxy succeeded, serviceType:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v3

    :catchall_0
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init proxy failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-object v1
.end method

.method public a(IIII)V
    .locals 0

    const/16 p1, 0xa

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    :goto_0
    invoke-direct {p0, p3}, Lcom/tencent/thumbplayer/d/g;->b(I)V

    :goto_1
    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/d/g;->b(I)V

    goto :goto_2

    :cond_0
    const/4 p3, 0x2

    if-ne p2, p3, :cond_1

    invoke-direct {p0, p3}, Lcom/tencent/thumbplayer/d/g;->b(I)V

    const/16 p1, 0x9

    goto :goto_1

    :cond_1
    const/4 p4, 0x3

    if-ne p2, p4, :cond_2

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public a(IIILjava/lang/Object;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEvent eventId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", arg1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", arg2: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", object"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "TPProxyGlobalManager"

    invoke-static {v0, p3}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    check-cast p4, Ljava/lang/String;

    invoke-direct {p0, p4, p2}, Lcom/tencent/thumbplayer/d/g;->a(Ljava/lang/String;I)V

    goto :goto_1

    :pswitch_1
    const/16 p1, 0xe

    goto :goto_0

    :pswitch_2
    const/16 p1, 0xd

    :goto_0
    iput p1, p0, Lcom/tencent/thumbplayer/d/g;->a:I

    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/d/g;->b(I)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x186a1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(J)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/thumbplayer/d/g;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/thumbplayer/d/b;

    invoke-interface {v1}, Lcom/tencent/thumbplayer/d/b;->a()Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadProxy;

    move-result-object v1

    if-eqz v1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    invoke-interface {v1, p1, p2}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadProxy;->setMaxStorageSizeMB(J)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Z)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/thumbplayer/d/g;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/thumbplayer/d/b;

    invoke-interface {v1}, Lcom/tencent/thumbplayer/d/b;->a()Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadProxy;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/d/g;->b(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "proxy_config"

    invoke-interface {v1, v3, v2}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadProxy;->setUserData(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method
