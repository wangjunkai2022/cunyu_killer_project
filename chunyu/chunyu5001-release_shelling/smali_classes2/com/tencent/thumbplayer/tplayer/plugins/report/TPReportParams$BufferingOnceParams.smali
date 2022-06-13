.class public Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$BufferingOnceParams;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BufferingOnceParams"
.end annotation


# instance fields
.field public bufferingPresentTimeLong:J

.field public endTimeUnix:J

.field public errCodeString:Ljava/lang/String;

.field public formatInt:I

.field public lastEventInt:I

.field public reasonInt:I

.field public sceneInt:I

.field public starTimeUnix:J

.field final synthetic this$0:Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams;

.field public urlString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$BufferingOnceParams;->this$0:Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public paramsToJson(Lorg/json/JSONObject;)V
    .locals 3

    :try_start_0
    const-string v0, "scene"

    iget v1, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$BufferingOnceParams;->sceneInt:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "levent"

    iget v1, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$BufferingOnceParams;->lastEventInt:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "reason"

    iget v1, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$BufferingOnceParams;->reasonInt:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "format"

    iget v1, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$BufferingOnceParams;->formatInt:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "ptime"

    iget-wide v1, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$BufferingOnceParams;->bufferingPresentTimeLong:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "stime"

    iget-wide v1, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$BufferingOnceParams;->starTimeUnix:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "etime"

    iget-wide v1, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$BufferingOnceParams;->endTimeUnix:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "url"

    iget-object v1, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$BufferingOnceParams;->urlString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "code"

    iget-object v1, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$BufferingOnceParams;->errCodeString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "TPReportParams"

    invoke-static {v0, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public paramsToProperties(Lcom/tencent/thumbplayer/b/a/a;)V
    .locals 3

    iget v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$BufferingOnceParams;->sceneInt:I

    const-string v1, "scene"

    invoke-interface {p1, v1, v0}, Lcom/tencent/thumbplayer/b/a/a;->a(Ljava/lang/String;I)V

    iget v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$BufferingOnceParams;->lastEventInt:I

    const-string v1, "levent"

    invoke-interface {p1, v1, v0}, Lcom/tencent/thumbplayer/b/a/a;->a(Ljava/lang/String;I)V

    iget v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$BufferingOnceParams;->reasonInt:I

    const-string v1, "reason"

    invoke-interface {p1, v1, v0}, Lcom/tencent/thumbplayer/b/a/a;->a(Ljava/lang/String;I)V

    iget v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$BufferingOnceParams;->formatInt:I

    const-string v1, "format"

    invoke-interface {p1, v1, v0}, Lcom/tencent/thumbplayer/b/a/a;->a(Ljava/lang/String;I)V

    iget-wide v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$BufferingOnceParams;->bufferingPresentTimeLong:J

    const-string v2, "ptime"

    invoke-interface {p1, v2, v0, v1}, Lcom/tencent/thumbplayer/b/a/a;->a(Ljava/lang/String;J)V

    iget-wide v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$BufferingOnceParams;->starTimeUnix:J

    const-string v2, "stime"

    invoke-interface {p1, v2, v0, v1}, Lcom/tencent/thumbplayer/b/a/a;->a(Ljava/lang/String;J)V

    iget-wide v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$BufferingOnceParams;->endTimeUnix:J

    const-string v2, "etime"

    invoke-interface {p1, v2, v0, v1}, Lcom/tencent/thumbplayer/b/a/a;->a(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$BufferingOnceParams;->urlString:Ljava/lang/String;

    const-string v1, "url"

    invoke-interface {p1, v1, v0}, Lcom/tencent/thumbplayer/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$BufferingOnceParams;->errCodeString:Ljava/lang/String;

    const-string v1, "code"

    invoke-interface {p1, v1, v0}, Lcom/tencent/thumbplayer/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$BufferingOnceParams;->sceneInt:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$BufferingOnceParams;->lastEventInt:I

    const v0, 0x155d24

    iput v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$BufferingOnceParams;->reasonInt:I

    return-void
.end method
