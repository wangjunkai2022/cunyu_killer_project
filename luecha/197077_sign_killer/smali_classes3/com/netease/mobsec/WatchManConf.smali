.class public Lcom/netease/mobsec/WatchManConf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/netease/mobsec/AbstractNetClient;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/netease/mobsec/WatchManConf;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/mobsec/WatchManConf;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/mobsec/WatchManConf;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/mobsec/WatchManConf;->d:Lcom/netease/mobsec/AbstractNetClient;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/mobsec/WatchManConf;->e:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/mobsec/WatchManConf;->f:Z

    iput-boolean v0, p0, Lcom/netease/mobsec/WatchManConf;->g:Z

    return-void
.end method


# virtual methods
.method public getAbstractNetClient()Lcom/netease/mobsec/AbstractNetClient;
    .locals 1

    iget-object v0, p0, Lcom/netease/mobsec/WatchManConf;->d:Lcom/netease/mobsec/AbstractNetClient;

    return-object v0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/mobsec/WatchManConf;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getCollectApk()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/mobsec/WatchManConf;->f:Z

    return v0
.end method

.method public getCollectSensor()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netease/mobsec/WatchManConf;->g:Z

    return v0
.end method

.method public getCustomTrackId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/mobsec/WatchManConf;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/netease/mobsec/WatchManConf;->e:Ljava/util/Map;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/mobsec/WatchManConf;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setAbstractNetClient(Lcom/netease/mobsec/AbstractNetClient;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobsec/WatchManConf;->d:Lcom/netease/mobsec/AbstractNetClient;

    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobsec/WatchManConf;->b:Ljava/lang/String;

    return-void
.end method

.method public setCollectApk(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netease/mobsec/WatchManConf;->f:Z

    return-void
.end method

.method public setCollectSensor(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netease/mobsec/WatchManConf;->g:Z

    return-void
.end method

.method public setCustomTrackId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobsec/WatchManConf;->c:Ljava/lang/String;

    return-void
.end method

.method public setExtraData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mobsec/WatchManConf;->e:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobsec/WatchManConf;->a:Ljava/lang/String;

    return-void
.end method
