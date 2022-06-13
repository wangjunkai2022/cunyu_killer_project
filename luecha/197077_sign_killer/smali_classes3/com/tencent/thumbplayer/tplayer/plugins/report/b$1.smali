.class Lcom/tencent/thumbplayer/tplayer/plugins/report/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/thumbplayer/utils/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/thumbplayer/tplayer/plugins/report/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/thumbplayer/tplayer/plugins/report/b;


# direct methods
.method constructor <init>(Lcom/tencent/thumbplayer/tplayer/plugins/report/b;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/b$1;->a:Lcom/tencent/thumbplayer/tplayer/plugins/report/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIILjava/lang/Object;)V
    .locals 0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "OnGlobalEventChangeListener eventId: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "TPReportManager"

    invoke-static {p3, p2}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const/16 p1, 0x835

    goto :goto_0

    :pswitch_1
    const/16 p1, 0x834

    :goto_0
    iget-object p2, p0, Lcom/tencent/thumbplayer/tplayer/plugins/report/b$1;->a:Lcom/tencent/thumbplayer/tplayer/plugins/report/b;

    invoke-static {p2}, Lcom/tencent/thumbplayer/tplayer/plugins/report/b;->f(Lcom/tencent/thumbplayer/tplayer/plugins/report/b;)Lcom/tencent/thumbplayer/tplayer/plugins/report/b$b;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Lcom/tencent/thumbplayer/tplayer/plugins/report/b$b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    :pswitch_data_0
    .packed-switch 0x186a1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
