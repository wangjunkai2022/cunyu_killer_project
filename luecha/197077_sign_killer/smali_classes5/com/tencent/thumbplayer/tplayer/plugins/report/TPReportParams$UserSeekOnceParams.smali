.class public Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$UserSeekOnceParams;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UserSeekOnceParams"
.end annotation


# instance fields
.field public endPresentTimeLong:J

.field public errCodeString:Ljava/lang/String;

.field public formatInt:I

.field public seekEndTimeUnix:J

.field public seekStartTimeUnix:J

.field public startPresentTimeLong:J

.field final synthetic this$0:Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams;


# direct methods
.method public constructor <init>(Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$UserSeekOnceParams;->this$0:Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public paramsToJson(Lorg/json/JSONObject;)V
    .locals 3

    :try_start_0
    const-string v0, "format"

    iget v1, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$UserSeekOnceParams;->formatInt:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "pstime"

    iget-wide v1, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$UserSeekOnceParams;->startPresentTimeLong:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "petime"

    iget-wide v1, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$UserSeekOnceParams;->endPresentTimeLong:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "lstime"

    iget-wide v1, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$UserSeekOnceParams;->seekStartTimeUnix:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "letime"

    iget-wide v1, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$UserSeekOnceParams;->seekEndTimeUnix:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "code"

    iget-object v1, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$UserSeekOnceParams;->errCodeString:Ljava/lang/String;

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

    iget v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$UserSeekOnceParams;->formatInt:I

    const-string v1, "format"

    invoke-interface {p1, v1, v0}, Lcom/tencent/thumbplayer/b/a/a;->a(Ljava/lang/String;I)V

    iget-wide v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$UserSeekOnceParams;->startPresentTimeLong:J

    const-string v2, "pstime"

    invoke-interface {p1, v2, v0, v1}, Lcom/tencent/thumbplayer/b/a/a;->a(Ljava/lang/String;J)V

    iget-wide v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$UserSeekOnceParams;->endPresentTimeLong:J

    const-string v2, "petime"

    invoke-interface {p1, v2, v0, v1}, Lcom/tencent/thumbplayer/b/a/a;->a(Ljava/lang/String;J)V

    iget-wide v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$UserSeekOnceParams;->seekStartTimeUnix:J

    const-string v2, "lstime"

    invoke-interface {p1, v2, v0, v1}, Lcom/tencent/thumbplayer/b/a/a;->a(Ljava/lang/String;J)V

    iget-wide v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$UserSeekOnceParams;->seekEndTimeUnix:J

    const-string v2, "letime"

    invoke-interface {p1, v2, v0, v1}, Lcom/tencent/thumbplayer/b/a/a;->a(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$UserSeekOnceParams;->errCodeString:Ljava/lang/String;

    const-string v1, "code"

    invoke-interface {p1, v1, v0}, Lcom/tencent/thumbplayer/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public reset()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$UserSeekOnceParams;->startPresentTimeLong:J

    iput-wide v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$UserSeekOnceParams;->endPresentTimeLong:J

    iput-wide v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$UserSeekOnceParams;->seekStartTimeUnix:J

    iput-wide v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$UserSeekOnceParams;->seekEndTimeUnix:J

    const-string v0, "0"

    iput-object v0, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/TPReportParams$UserSeekOnceParams;->errCodeString:Ljava/lang/String;

    return-void
.end method
