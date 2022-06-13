.class public Lcom/tencent/thumbplayer/b/a/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4

    const-string v0, "TPBeaconReportWrapper"

    const-string v1, "Beacon sdk init."

    invoke-static {v0, v1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.tencent.tvkbeacon.event.open.BeaconReport"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lcom/tencent/tvkbeacon/event/open/BeaconConfig;->builder()Lcom/tencent/tvkbeacon/event/open/BeaconConfig$Builder;

    move-result-object v1

    invoke-static {}, Lcom/tencent/tvkbeacon/event/open/BeaconReport;->getInstance()Lcom/tencent/tvkbeacon/event/open/BeaconReport;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tencent/tvkbeacon/event/open/BeaconReport;->setCollectMac(Z)V

    invoke-static {}, Lcom/tencent/thumbplayer/config/TPPlayerConfig;->isDataReportEnable()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Lcom/tencent/tvkbeacon/event/open/BeaconConfig$Builder;->auditEnable(Z)Lcom/tencent/tvkbeacon/event/open/BeaconConfig$Builder;

    :cond_0
    sget-object v2, Lcom/tencent/thumbplayer/config/TPPlayerConfig;->beacon_policy_host:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/tencent/thumbplayer/config/TPPlayerConfig;->beacon_log_host:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/tencent/thumbplayer/config/TPPlayerConfig;->beacon_policy_host:Ljava/lang/String;

    sget-object v3, Lcom/tencent/thumbplayer/config/TPPlayerConfig;->beacon_log_host:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/tencent/tvkbeacon/event/UserAction;->setReportDomain(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/tencent/tvkbeacon/event/open/BeaconReport;->getInstance()Lcom/tencent/tvkbeacon/event/open/BeaconReport;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tencent/tvkbeacon/event/open/BeaconReport;->setLogAble(Z)V

    invoke-static {}, Lcom/tencent/tvkbeacon/event/open/BeaconReport;->getInstance()Lcom/tencent/tvkbeacon/event/open/BeaconReport;

    move-result-object v0

    new-instance v2, Lcom/tencent/thumbplayer/b/a/b$1;

    invoke-direct {v2}, Lcom/tencent/thumbplayer/b/a/b$1;-><init>()V

    invoke-virtual {v0, v2}, Lcom/tencent/tvkbeacon/event/open/BeaconReport;->getQimei(Lcom/tencent/tvkbeacon/qimei/IAsyncQimeiListener;)V

    invoke-static {}, Lcom/tencent/tvkbeacon/event/open/BeaconReport;->getInstance()Lcom/tencent/tvkbeacon/event/open/BeaconReport;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v1}, Lcom/tencent/tvkbeacon/event/open/BeaconConfig$Builder;->build()Lcom/tencent/tvkbeacon/event/open/BeaconConfig;

    move-result-object v1

    const-string v2, "00000GODBG3702Y1"

    invoke-virtual {v0, p0, v2, v1}, Lcom/tencent/tvkbeacon/event/open/BeaconReport;->start(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/tvkbeacon/event/open/BeaconConfig;)V

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    sput-boolean v0, Lcom/tencent/thumbplayer/b/a/b;->a:Z

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/tencent/thumbplayer/b/a/a;)V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1, v0}, Lcom/tencent/thumbplayer/b/a/a;->a(Ljava/util/Map;)V

    const-string p1, "00000GODBG3702Y1"

    invoke-static {p0, p1, v0}, Lcom/tencent/thumbplayer/b/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-boolean v0, Lcom/tencent/thumbplayer/b/a/b;->a:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/thumbplayer/config/TPPlayerConfig;->isDataReportEnable()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/tencent/tvkbeacon/event/open/BeaconEvent;->builder()Lcom/tencent/tvkbeacon/event/open/BeaconEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/tvkbeacon/event/open/BeaconEvent$Builder;->withCode(Ljava/lang/String;)Lcom/tencent/tvkbeacon/event/open/BeaconEvent$Builder;

    move-result-object p0

    sget-object v0, Lcom/tencent/tvkbeacon/event/open/EventType;->NORMAL:Lcom/tencent/tvkbeacon/event/open/EventType;

    invoke-virtual {p0, v0}, Lcom/tencent/tvkbeacon/event/open/BeaconEvent$Builder;->withType(Lcom/tencent/tvkbeacon/event/open/EventType;)Lcom/tencent/tvkbeacon/event/open/BeaconEvent$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/tencent/tvkbeacon/event/open/BeaconEvent$Builder;->withAppKey(Ljava/lang/String;)Lcom/tencent/tvkbeacon/event/open/BeaconEvent$Builder;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/tencent/tvkbeacon/event/open/BeaconEvent$Builder;->withParams(Ljava/util/Map;)Lcom/tencent/tvkbeacon/event/open/BeaconEvent$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/tvkbeacon/event/open/BeaconEvent$Builder;->build()Lcom/tencent/tvkbeacon/event/open/BeaconEvent;

    move-result-object p0

    invoke-static {}, Lcom/tencent/tvkbeacon/event/open/BeaconReport;->getInstance()Lcom/tencent/tvkbeacon/event/open/BeaconReport;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/tencent/tvkbeacon/event/open/BeaconReport;->report(Lcom/tencent/tvkbeacon/event/open/BeaconEvent;)Lcom/tencent/tvkbeacon/event/open/EventResult;

    move-result-object p0

    iget p1, p0, Lcom/tencent/tvkbeacon/event/open/EventResult;->errorCode:I

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "reportEvent: failed! eventId = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/tencent/tvkbeacon/event/open/EventResult;->eventID:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", errorCode="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/tencent/tvkbeacon/event/open/EventResult;->errorCode:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TPBeaconReportWrapper"

    invoke-static {p1, p0}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "00000GODBG3702Y1"

    invoke-static {p0, v0, p1}, Lcom/tencent/thumbplayer/b/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
