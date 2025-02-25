.class public Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$CommonParams;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CommonParams"
.end annotation


# instance fields
.field public appVersionString:Ljava/lang/String;

.field public cdnIdInt:I

.field public cdnIpString:Ljava/lang/String;

.field public cdnUipString:Ljava/lang/String;

.field public deviceNameString:Ljava/lang/String;

.field public deviceResolutionString:Ljava/lang/String;

.field public downloadTypeInt:I

.field public flowIdString:Ljava/lang/String;

.field public guidString:Ljava/lang/String;

.field public loginTypeInt:I

.field public mediaDurationFloat:F

.field public mediaFormatInt:I

.field public mediaRateInt:I

.field public mediaResolutionString:Ljava/lang/String;

.field public networkSpeedInt:I

.field public networkTypeInt:I

.field public onlineInt:I

.field public osVersionString:Ljava/lang/String;

.field public p2pInt:I

.field public p2pVersionString:Ljava/lang/String;

.field public platformLong:J

.field public playNoString:Ljava/lang/String;

.field public playTypeInt:I

.field public playerTypeInt:I

.field public playerVersionString:Ljava/lang/String;

.field public proto:Ljava/lang/String;

.field public protover:Ljava/lang/String;

.field public qqOpenIdString:Ljava/lang/String;

.field public scenesId:I

.field public seqInt:I

.field public signalStrengthInt:I

.field public stepInt:I

.field public testIdInt:I

.field final synthetic this$0:Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams;

.field public uinString:Ljava/lang/String;

.field public uipString:Ljava/lang/String;

.field public vidString:Ljava/lang/String;

.field public wxOpenIdString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$CommonParams;->this$0:Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$CommonParams;->seqInt:I

    return-void
.end method


# virtual methods
.method public paramsToJson(Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method public paramsToProperties(Lcom/tencent/thumbplayer/b/a/a;)V
    .locals 3

    iget v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$CommonParams;->stepInt:I

    const-string v1, "step"

    invoke-interface {p1, v1, v0}, Lcom/tencent/thumbplayer/b/a/a;->a(Ljava/lang/String;I)V

    iget v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$CommonParams;->seqInt:I

    const-string v1, "seq"

    invoke-interface {p1, v1, v0}, Lcom/tencent/thumbplayer/b/a/a;->a(Ljava/lang/String;I)V

    iget-wide v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$CommonParams;->platformLong:J

    const-string v2, "platform"

    invoke-interface {p1, v2, v0, v1}, Lcom/tencent/thumbplayer/b/a/a;->a(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$CommonParams;->flowIdString:Ljava/lang/String;

    const-string v1, "flowid"

    invoke-interface {p1, v1, v0}, Lcom/tencent/thumbplayer/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$CommonParams;->playNoString:Ljava/lang/String;

    const-string v1, "playno"

    invoke-interface {p1, v1, v0}, Lcom/tencent/thumbplayer/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$CommonParams;->uinString:Ljava/lang/String;

    const-string v1, "uin"

    invoke-interface {p1, v1, v0}, Lcom/tencent/thumbplayer/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$CommonParams;->qqOpenIdString:Ljava/lang/String;

    const-string v1, "QQopenid"

    invoke-interface {p1, v1, v0}, Lcom/tencent/thumbplayer/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$CommonParams;->wxOpenIdString:Ljava/lang/String;

    const-string v1, "WXopenid"

    invoke-interface {p1, v1, v0}, Lcom/tencent/thumbplayer/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$CommonParams;->loginTypeInt:I

    const-string v1, "logintype"

    invoke-interface {p1, v1, v0}, Lcom/tencent/thumbplayer/b/a/a;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$CommonParams;->guidString:Ljava/lang/String;

    const-string v1, "guid"

    invoke-interface {p1, v1, v0}, Lcom/tencent/thumbplayer/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$CommonParams;->uipString:Ljava/lang/String;

    const-string v1, "uip"

    invoke-interface {p1, v1, v0}, Lcom/tencent/thumbplayer/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$CommonParams;->cdnUipString:Ljava/lang/String;

    const-string v1, "cdnuip"

    invoke-interface {p1, v1, v0}, Lcom/tencent/thumbplayer/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$CommonParams;->cdnIpString:Ljava/lang/String;

    const-string v1, "cdnip"

    invoke-interface {p1, v1, v0}, Lcom/tencent/thumbplayer/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$CommonParams;->onlineInt:I

    const-string v1, "online"

    invoke-interface {p1, v1, v0}, Lcom/tencent/thumbplayer/b/a/a;->a(Ljava/lang/String;I)V

    iget v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$CommonParams;->p2pInt:I

    const-string v1, "p2p"

    invoke-interface {p1, v1, v0}, Lcom/tencent/thumbplayer/b/a/a;->a(Ljava/lang/String;I)V

    iget v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$CommonParams;->signalStrengthInt:I

    const-string v1, "sstrength"

    invoke-interface {p1, v1, v0}, Lcom/tencent/thumbplayer/b/a/a;->a(Ljava/lang/String;I)V

    iget v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$CommonParams;->networkTypeInt:I

    const-string v1, "network"

    invoke-interface {p1, v1, v0}, Lcom/tencent/thumbplayer/b/a/a;->a(Ljava/lang/String;I)V

    iget v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$CommonParams;->networkSpeedInt:I

    const-string v1, "speed"

    invoke-interface {p1, v1, v0}, Lcom/tencent/thumbplayer/b/a/a;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$CommonParams;->deviceNameString:Ljava/lang/String;

    const-string v1, "device"

    invoke-interface {p1, v1, v0}, Lcom/tencent/thumbplayer/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$CommonParams;->deviceResolutionString:Ljava/lang/String;

    const-string v1, "resolution"

    invoke-interface {p1, v1, v0}, Lcom/tencent/thumbplayer/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$CommonParams;->testIdInt:I

    const-string v1, "testid"

    invoke-interface {p1, v1, v0}, Lcom/tencent/thumbplayer/b/a/a;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$CommonParams;->osVersionString:Ljava/lang/String;

    const-string v1, "osver"

    invoke-interface {p1, v1, v0}, Lcom/tencent/thumbplayer/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$CommonParams;->p2pVersionString:Ljava/lang/String;

    const-string v1, "p2pver"

    invoke-interface {p1, v1, v0}, Lcom/tencent/thumbplayer/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$CommonParams;->appVersionString:Ljava/lang/String;

    const-string v1, "appver"

    invoke-interface {p1, v1, v0}, Lcom/tencent/thumbplayer/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$CommonParams;->playerVersionString:Ljava/lang/String;

    const-string v1, "playerver"

    invoke-interface {p1, v1, v0}, Lcom/tencent/thumbplayer/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$CommonParams;->playerTypeInt:I

    const-string v1, "playertype"

    invoke-interface {p1, v1, v0}, Lcom/tencent/thumbplayer/b/a/a;->a(Ljava/lang/String;I)V

    iget v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$CommonParams;->cdnIdInt:I

    const-string v1, "cdnid"

    invoke-interface {p1, v1, v0}, Lcom/tencent/thumbplayer/b/a/a;->a(Ljava/lang/String;I)V

    iget v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$CommonParams;->scenesId:I

    const-string v1, "scenesid"

    invoke-interface {p1, v1, v0}, Lcom/tencent/thumbplayer/b/a/a;->a(Ljava/lang/String;I)V

    iget v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$CommonParams;->playTypeInt:I

    const-string v1, "playtype"

    invoke-interface {p1, v1, v0}, Lcom/tencent/thumbplayer/b/a/a;->a(Ljava/lang/String;I)V

    iget v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$CommonParams;->downloadTypeInt:I

    const-string v1, "dltype"

    invoke-interface {p1, v1, v0}, Lcom/tencent/thumbplayer/b/a/a;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$CommonParams;->vidString:Ljava/lang/String;

    const-string v1, "vid"

    invoke-interface {p1, v1, v0}, Lcom/tencent/thumbplayer/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$CommonParams;->mediaResolutionString:Ljava/lang/String;

    const-string v1, "definition"

    invoke-interface {p1, v1, v0}, Lcom/tencent/thumbplayer/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$CommonParams;->mediaFormatInt:I

    const-string v1, "fmt"

    invoke-interface {p1, v1, v0}, Lcom/tencent/thumbplayer/b/a/a;->a(Ljava/lang/String;I)V

    iget v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$CommonParams;->mediaRateInt:I

    const-string v1, "rate"

    invoke-interface {p1, v1, v0}, Lcom/tencent/thumbplayer/b/a/a;->a(Ljava/lang/String;I)V

    iget v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$CommonParams;->mediaDurationFloat:F

    const-string v1, "duration"

    invoke-interface {p1, v1, v0}, Lcom/tencent/thumbplayer/b/a/a;->a(Ljava/lang/String;F)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$CommonParams;->proto:Ljava/lang/String;

    const-string v1, "proto"

    invoke-interface {p1, v1, v0}, Lcom/tencent/thumbplayer/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$CommonParams;->protover:Ljava/lang/String;

    const-string v1, "protover"

    invoke-interface {p1, v1, v0}, Lcom/tencent/thumbplayer/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public reset()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$CommonParams;->stepInt:I

    iput v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$CommonParams;->seqInt:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$CommonParams;->platformLong:J

    const-string v1, ""

    iput-object v1, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$CommonParams;->flowIdString:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$CommonParams;->playNoString:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$CommonParams;->uinString:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$CommonParams;->qqOpenIdString:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$CommonParams;->wxOpenIdString:Ljava/lang/String;

    iput v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$CommonParams;->loginTypeInt:I

    iput-object v1, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$CommonParams;->guidString:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$CommonParams;->uipString:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$CommonParams;->cdnUipString:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$CommonParams;->cdnIpString:Ljava/lang/String;

    iput v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$CommonParams;->onlineInt:I

    iput v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$CommonParams;->p2pInt:I

    iput v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$CommonParams;->signalStrengthInt:I

    iput v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$CommonParams;->networkTypeInt:I

    iput v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$CommonParams;->networkSpeedInt:I

    iput-object v1, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$CommonParams;->deviceNameString:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$CommonParams;->deviceResolutionString:Ljava/lang/String;

    iput v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$CommonParams;->testIdInt:I

    iput-object v1, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$CommonParams;->osVersionString:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$CommonParams;->p2pVersionString:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$CommonParams;->appVersionString:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$CommonParams;->playerVersionString:Ljava/lang/String;

    iput v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$CommonParams;->playerTypeInt:I

    iput v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$CommonParams;->cdnIdInt:I

    iput v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$CommonParams;->scenesId:I

    iput v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$CommonParams;->downloadTypeInt:I

    iput-object v1, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$CommonParams;->vidString:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$CommonParams;->mediaResolutionString:Ljava/lang/String;

    iput v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$CommonParams;->mediaFormatInt:I

    iput v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$CommonParams;->mediaRateInt:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$CommonParams;->mediaDurationFloat:F

    iput-object v1, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$CommonParams;->proto:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$CommonParams;->protover:Ljava/lang/String;

    return-void
.end method
