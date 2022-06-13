.class public Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$VodExParam;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VodExParam"
.end annotation


# instance fields
.field bizIdInt:I

.field clipInt:I

.field currentPlayInt:I

.field freeTypeInt:I

.field hasSubtitleInt:I

.field hevcLcInt:I

.field hitDownloaded:I

.field isSelectedSubtitleInt:I

.field multiTrackInt:I

.field optimizedPlayInt:I

.field statusInt:I

.field final synthetic this$0:Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams;


# direct methods
.method public constructor <init>(Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$VodExParam;->this$0:Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public paramsToJson(Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method public paramsToProperties(Lcom/tencent/thumbplayer/b/a/a;)V
    .locals 2

    iget v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$VodExParam;->freeTypeInt:I

    const-string v1, "freetype"

    invoke-interface {p1, v1, v0}, Lcom/tencent/thumbplayer/b/a/a;->a(Ljava/lang/String;I)V

    iget v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$VodExParam;->currentPlayInt:I

    const-string v1, "currentplay"

    invoke-interface {p1, v1, v0}, Lcom/tencent/thumbplayer/b/a/a;->a(Ljava/lang/String;I)V

    iget v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$VodExParam;->optimizedPlayInt:I

    const-string v1, "optimizedplay"

    invoke-interface {p1, v1, v0}, Lcom/tencent/thumbplayer/b/a/a;->a(Ljava/lang/String;I)V

    iget v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$VodExParam;->hasSubtitleInt:I

    const-string v1, "subtitles"

    invoke-interface {p1, v1, v0}, Lcom/tencent/thumbplayer/b/a/a;->a(Ljava/lang/String;I)V

    iget v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$VodExParam;->isSelectedSubtitleInt:I

    const-string v1, "selsubtitles"

    invoke-interface {p1, v1, v0}, Lcom/tencent/thumbplayer/b/a/a;->a(Ljava/lang/String;I)V

    iget v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$VodExParam;->multiTrackInt:I

    const-string v1, "multitrack"

    invoke-interface {p1, v1, v0}, Lcom/tencent/thumbplayer/b/a/a;->a(Ljava/lang/String;I)V

    iget v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$VodExParam;->bizIdInt:I

    const-string v1, "bizid"

    invoke-interface {p1, v1, v0}, Lcom/tencent/thumbplayer/b/a/a;->a(Ljava/lang/String;I)V

    iget v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$VodExParam;->hevcLcInt:I

    const-string v1, "hevclv"

    invoke-interface {p1, v1, v0}, Lcom/tencent/thumbplayer/b/a/a;->a(Ljava/lang/String;I)V

    iget v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$VodExParam;->clipInt:I

    const-string v1, "clip"

    invoke-interface {p1, v1, v0}, Lcom/tencent/thumbplayer/b/a/a;->a(Ljava/lang/String;I)V

    iget v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$VodExParam;->statusInt:I

    const-string v1, "status"

    invoke-interface {p1, v1, v0}, Lcom/tencent/thumbplayer/b/a/a;->a(Ljava/lang/String;I)V

    iget v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$VodExParam;->hitDownloaded:I

    const-string v1, "hitdownloaded"

    invoke-interface {p1, v1, v0}, Lcom/tencent/thumbplayer/b/a/a;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public reset()V
    .locals 0

    return-void
.end method
