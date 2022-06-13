.class public Lcom/tencent/thumbplayer/tplayer/plugins/report/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/thumbplayer/tplayer/plugins/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(IIILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    const-string p3, "TPLogPlugin"

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    const-string p1, "on reset"

    goto :goto_0

    :pswitch_2
    const-string p1, "on release"

    goto :goto_0

    :pswitch_3
    const-string p1, "on play complete"

    goto :goto_0

    :pswitch_4
    const-string p1, "seek complete"

    goto :goto_0

    :pswitch_5
    const-string p1, "start seek"

    goto :goto_0

    :pswitch_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "on error:"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_7
    const-string p1, "on stoped"

    goto :goto_0

    :pswitch_8
    const-string p1, "on paused"

    goto :goto_0

    :pswitch_9
    const-string p1, "start play"

    goto :goto_0

    :pswitch_a
    const-string p1, "on prepared"

    goto :goto_0

    :pswitch_b
    const-string p1, "start prepare"

    goto :goto_0

    :pswitch_c
    const-string p1, "create player adapter"

    :goto_0
    invoke-static {p3, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public b()V
    .locals 0

    return-void
.end method
