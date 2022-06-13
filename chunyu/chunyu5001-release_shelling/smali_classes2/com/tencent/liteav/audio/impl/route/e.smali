.class public Lcom/tencent/liteav/audio/impl/route/e;
.super Landroid/content/BroadcastReceiver;
.source "TXCAudioRouteManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/audio/impl/route/e$b;,
        Lcom/tencent/liteav/audio/impl/route/e$c;,
        Lcom/tencent/liteav/audio/impl/route/e$e;,
        Lcom/tencent/liteav/audio/impl/route/e$g;,
        Lcom/tencent/liteav/audio/impl/route/e$d;,
        Lcom/tencent/liteav/audio/impl/route/e$h;,
        Lcom/tencent/liteav/audio/impl/route/e$i;,
        Lcom/tencent/liteav/audio/impl/route/e$f;,
        Lcom/tencent/liteav/audio/impl/route/e$a;
    }
.end annotation


# instance fields
.field private a:Landroid/media/AudioManager;

.field private b:Landroid/content/Context;

.field private c:I

.field private d:I

.field private e:I

.field private f:Lcom/tencent/liteav/audio/impl/route/d;

.field private final g:[Z

.field private h:Lcom/tencent/liteav/audio/impl/route/a$a;

.field private i:Z

.field private final j:Lcom/tencent/liteav/audio/impl/route/g;

.field private final k:Lcom/tencent/liteav/audio/impl/route/h;

.field private l:Lcom/tencent/liteav/audio/impl/route/b;

.field private m:Ljava/lang/String;

.field private n:Lcom/tencent/liteav/audio/impl/route/e$i;

.field private o:Lcom/tencent/liteav/audio/impl/route/e$h;

.field private final p:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 799
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 132
    iput-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e;->a:Landroid/media/AudioManager;

    .line 133
    iput-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e;->b:Landroid/content/Context;

    const/4 v1, 0x0

    .line 135
    iput v1, p0, Lcom/tencent/liteav/audio/impl/route/e;->c:I

    .line 136
    iput v1, p0, Lcom/tencent/liteav/audio/impl/route/e;->d:I

    const/4 v2, -0x1

    .line 137
    iput v2, p0, Lcom/tencent/liteav/audio/impl/route/e;->e:I

    .line 139
    sget-object v2, Lcom/tencent/liteav/audio/impl/route/d;->d:Lcom/tencent/liteav/audio/impl/route/d;

    iput-object v2, p0, Lcom/tencent/liteav/audio/impl/route/e;->f:Lcom/tencent/liteav/audio/impl/route/d;

    const/4 v2, 0x1

    new-array v2, v2, [Z

    aput-boolean v1, v2, v1

    .line 140
    iput-object v2, p0, Lcom/tencent/liteav/audio/impl/route/e;->g:[Z

    .line 142
    sget-object v2, Lcom/tencent/liteav/audio/impl/route/a$a;->a:Lcom/tencent/liteav/audio/impl/route/a$a;

    iput-object v2, p0, Lcom/tencent/liteav/audio/impl/route/e;->h:Lcom/tencent/liteav/audio/impl/route/a$a;

    .line 143
    iput-boolean v1, p0, Lcom/tencent/liteav/audio/impl/route/e;->i:Z

    .line 145
    new-instance v1, Lcom/tencent/liteav/audio/impl/route/g;

    invoke-direct {v1}, Lcom/tencent/liteav/audio/impl/route/g;-><init>()V

    iput-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e;->j:Lcom/tencent/liteav/audio/impl/route/g;

    .line 146
    new-instance v1, Lcom/tencent/liteav/audio/impl/route/h;

    invoke-direct {v1}, Lcom/tencent/liteav/audio/impl/route/h;-><init>()V

    iput-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e;->k:Lcom/tencent/liteav/audio/impl/route/h;

    .line 148
    iput-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e;->l:Lcom/tencent/liteav/audio/impl/route/b;

    const-string v1, "DEVICE_NONE"

    .line 149
    iput-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e;->m:Ljava/lang/String;

    .line 150
    iput-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e;->n:Lcom/tencent/liteav/audio/impl/route/e$i;

    .line 153
    iput-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e;->o:Lcom/tencent/liteav/audio/impl/route/e$h;

    .line 154
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e;->p:Ljava/lang/Object;

    .line 800
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " context:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->LogTraceEntry(Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 805
    :cond_0
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e;->b:Landroid/content/Context;

    .line 806
    new-instance p1, Lcom/tencent/liteav/audio/impl/route/e$i;

    invoke-direct {p1, p0, p0}, Lcom/tencent/liteav/audio/impl/route/e$i;-><init>(Lcom/tencent/liteav/audio/impl/route/e;Lcom/tencent/liteav/audio/impl/route/e;)V

    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e;->n:Lcom/tencent/liteav/audio/impl/route/e$i;

    .line 807
    invoke-static {}, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->LogTraceExit()V

    return-void
.end method

.method private a(Landroid/content/Intent;Ljava/util/HashMap;I)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)I"
        }
    .end annotation

    .line 1447
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e;->b:Landroid/content/Context;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "PARAM_SESSIONID"

    .line 1451
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 1452
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " sessonID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "PARAM_OPERATION"

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "TXCAudioRouteManager"

    invoke-static {v5, v3}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_4

    .line 1453
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v2, v2, v6

    if-nez v2, :cond_1

    goto :goto_1

    .line 1460
    :cond_1
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljava/lang/Long;

    .line 1461
    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v9, p2

    check-cast v9, Ljava/lang/String;

    const-string p2, "OPERATION_VOICECALL_PREPROCESS"

    .line 1464
    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "com.tencent.sharp.ACTION_TXCAUDIOMANAGER_RES"

    .line 1465
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1466
    invoke-virtual {p1, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1467
    invoke-virtual {p1, v4, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "PARAM_RES_ERRCODE"

    .line 1468
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1469
    iget-object p2, p0, Lcom/tencent/liteav/audio/impl/route/e;->j:Lcom/tencent/liteav/audio/impl/route/g;

    if-eqz p2, :cond_3

    .line 1470
    invoke-virtual {p2, p1}, Lcom/tencent/liteav/audio/impl/route/g;->a(Landroid/content/Intent;)V

    goto :goto_0

    .line 1472
    :cond_2
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1473
    new-instance v0, Lcom/tencent/liteav/audio/impl/route/e$1;

    move-object v5, v0

    move-object v6, p0

    move-object v7, p1

    move v10, p3

    invoke-direct/range {v5 .. v10}, Lcom/tencent/liteav/audio/impl/route/e$1;-><init>(Lcom/tencent/liteav/audio/impl/route/e;Landroid/content/Intent;Ljava/lang/Long;Ljava/lang/String;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1

    .line 1454
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/tencent/liteav/audio/impl/route/e;->b()V

    const-string p1, "sendResBroadcast sid null,don\'t send res"

    .line 1455
    invoke-static {v5, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private a(Lcom/tencent/liteav/audio/impl/route/e$a;Ljava/util/HashMap;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/liteav/audio/impl/route/e$a;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 915
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e;->n:Lcom/tencent/liteav/audio/impl/route/e$i;

    if-eqz v0, :cond_0

    .line 916
    invoke-virtual {v0, p1, p2}, Lcom/tencent/liteav/audio/impl/route/e$i;->a(Lcom/tencent/liteav/audio/impl/route/e$a;Ljava/util/HashMap;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method static synthetic a(Lcom/tencent/liteav/audio/impl/route/e;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/tencent/liteav/audio/impl/route/e;->c:I

    return p0
.end method

.method static synthetic a(Lcom/tencent/liteav/audio/impl/route/e;I)I
    .locals 0

    .line 46
    iput p1, p0, Lcom/tencent/liteav/audio/impl/route/e;->c:I

    return p1
.end method

.method static synthetic a(Lcom/tencent/liteav/audio/impl/route/e;Landroid/content/Intent;Ljava/util/HashMap;I)I
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/liteav/audio/impl/route/e;->a(Landroid/content/Intent;Ljava/util/HashMap;I)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/tencent/liteav/audio/impl/route/e;Ljava/lang/String;Ljava/util/HashMap;Z)I
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/liteav/audio/impl/route/e;->a(Ljava/lang/String;Ljava/util/HashMap;Z)I

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/String;Ljava/util/HashMap;Z)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)I"
        }
    .end annotation

    .line 1056
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " devName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->LogTraceEntry(Ljava/lang/String;)V

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p3, :cond_1

    const-string p3, "DEVICE_BLUETOOTHHEADSET"

    .line 1061
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/tencent/liteav/audio/impl/route/e;->k:Lcom/tencent/liteav/audio/impl/route/h;

    .line 1062
    invoke-virtual {p3}, Lcom/tencent/liteav/audio/impl/route/h;->h()Ljava/lang/String;

    move-result-object p3

    const-string v2, "DEVICE_NONE"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/tencent/liteav/audio/impl/route/e;->k:Lcom/tencent/liteav/audio/impl/route/h;

    .line 1063
    invoke-virtual {p3}, Lcom/tencent/liteav/audio/impl/route/h;->h()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    return v1

    .line 1067
    :cond_1
    invoke-static {p1}, Lcom/tencent/liteav/audio/impl/route/h;->f(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_c

    iget-object p3, p0, Lcom/tencent/liteav/audio/impl/route/e;->k:Lcom/tencent/liteav/audio/impl/route/h;

    .line 1068
    invoke-virtual {p3, p1}, Lcom/tencent/liteav/audio/impl/route/h;->c(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_2

    goto/16 :goto_2

    .line 1073
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/liteav/audio/impl/route/e;->a()Z

    move-result p3

    if-nez p3, :cond_3

    const-string p1, "TXCAudioRouteManager"

    const-string p2, "InternalIsDeviceChangeable fail"

    .line 1074
    invoke-static {p1, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 1078
    :cond_3
    iget-boolean p3, p0, Lcom/tencent/liteav/audio/impl/route/e;->i:Z

    if-eqz p3, :cond_4

    const-string p1, "TXCAudioRouteManager"

    const-string p2, "InternalConnectDevice fail,ready to stopService"

    .line 1079
    invoke-static {p1, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 1083
    :cond_4
    iget-object p3, p0, Lcom/tencent/liteav/audio/impl/route/e;->p:Ljava/lang/Object;

    monitor-enter p3

    .line 1084
    :try_start_0
    iget-boolean v2, p0, Lcom/tencent/liteav/audio/impl/route/e;->i:Z

    if-nez v2, :cond_b

    .line 1085
    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/route/e;->k:Lcom/tencent/liteav/audio/impl/route/h;

    invoke-virtual {v2, p1}, Lcom/tencent/liteav/audio/impl/route/h;->d(Ljava/lang/String;)V

    .line 1086
    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/route/e;->o:Lcom/tencent/liteav/audio/impl/route/e$h;

    if-eqz v2, :cond_5

    const-string v2, "TXCAudioRouteManager"

    .line 1087
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_switchThread:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/tencent/liteav/audio/impl/route/e;->o:Lcom/tencent/liteav/audio/impl/route/e$h;

    invoke-virtual {v4}, Lcom/tencent/liteav/audio/impl/route/e$h;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/route/e;->o:Lcom/tencent/liteav/audio/impl/route/e$h;

    invoke-virtual {v2}, Lcom/tencent/liteav/audio/impl/route/e$h;->e()V

    const/4 v2, 0x0

    .line 1089
    iput-object v2, p0, Lcom/tencent/liteav/audio/impl/route/e;->o:Lcom/tencent/liteav/audio/impl/route/e$h;

    .line 1092
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "DEVICE_BLUETOOTHHEADSET"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    move v0, v3

    goto :goto_0

    :sswitch_1
    const-string v2, "DEVICE_WIREDHEADSET"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    move v0, v4

    goto :goto_0

    :sswitch_2
    const-string v2, "DEVICE_EARPHONE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    move v0, v1

    goto :goto_0

    :sswitch_3
    const-string v2, "DEVICE_SPEAKERPHONE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    move v0, v5

    :cond_6
    :goto_0
    if-eqz v0, :cond_a

    if-eq v0, v5, :cond_9

    if-eq v0, v4, :cond_8

    if-eq v0, v3, :cond_7

    goto :goto_1

    .line 1103
    :cond_7
    new-instance p1, Lcom/tencent/liteav/audio/impl/route/e$c;

    invoke-direct {p1, p0}, Lcom/tencent/liteav/audio/impl/route/e$c;-><init>(Lcom/tencent/liteav/audio/impl/route/e;)V

    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e;->o:Lcom/tencent/liteav/audio/impl/route/e$h;

    goto :goto_1

    .line 1100
    :cond_8
    new-instance p1, Lcom/tencent/liteav/audio/impl/route/e$e;

    invoke-direct {p1, p0}, Lcom/tencent/liteav/audio/impl/route/e$e;-><init>(Lcom/tencent/liteav/audio/impl/route/e;)V

    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e;->o:Lcom/tencent/liteav/audio/impl/route/e$h;

    goto :goto_1

    .line 1097
    :cond_9
    new-instance p1, Lcom/tencent/liteav/audio/impl/route/e$g;

    invoke-direct {p1, p0}, Lcom/tencent/liteav/audio/impl/route/e$g;-><init>(Lcom/tencent/liteav/audio/impl/route/e;)V

    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e;->o:Lcom/tencent/liteav/audio/impl/route/e$h;

    goto :goto_1

    .line 1094
    :cond_a
    new-instance p1, Lcom/tencent/liteav/audio/impl/route/e$d;

    invoke-direct {p1, p0}, Lcom/tencent/liteav/audio/impl/route/e$d;-><init>(Lcom/tencent/liteav/audio/impl/route/e;)V

    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e;->o:Lcom/tencent/liteav/audio/impl/route/e$h;

    .line 1107
    :goto_1
    iget-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e;->o:Lcom/tencent/liteav/audio/impl/route/e$h;

    if-eqz p1, :cond_b

    .line 1108
    iget-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e;->o:Lcom/tencent/liteav/audio/impl/route/e$h;

    invoke-virtual {p1, p2}, Lcom/tencent/liteav/audio/impl/route/e$h;->a(Ljava/util/HashMap;)V

    .line 1109
    iget-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e;->o:Lcom/tencent/liteav/audio/impl/route/e$h;

    invoke-virtual {p1}, Lcom/tencent/liteav/audio/impl/route/e$h;->start()V

    .line 1112
    :cond_b
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1113
    invoke-static {}, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->LogTraceExit()V

    return v1

    :catchall_0
    move-exception p1

    .line 1112
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_c
    :goto_2
    const-string p1, "TXCAudioRouteManager"

    const-string p2, "checkDevName fail"

    .line 1069
    invoke-static {p1, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x4b36bfe8 -> :sswitch_3
        -0x1b9bd45f -> :sswitch_2
        0x2aa1c06c -> :sswitch_1
        0x2dea86dd -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic a(Lcom/tencent/liteav/audio/impl/route/e;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e;->b:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/liteav/audio/impl/route/e;Landroid/media/AudioManager;)Landroid/media/AudioManager;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e;->a:Landroid/media/AudioManager;

    return-object p1
.end method

.method private a(Landroid/content/Context;Lcom/tencent/liteav/audio/impl/route/h;)Lcom/tencent/liteav/audio/impl/route/b;
    .locals 2

    .line 1544
    new-instance v0, Lcom/tencent/liteav/audio/impl/route/e$b;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/audio/impl/route/e$b;-><init>(Lcom/tencent/liteav/audio/impl/route/e;)V

    .line 1545
    invoke-virtual {v0, p1, p2}, Lcom/tencent/liteav/audio/impl/route/b;->a(Landroid/content/Context;Lcom/tencent/liteav/audio/impl/route/h;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1546
    new-instance v0, Lcom/tencent/liteav/audio/impl/route/c;

    invoke-direct {v0}, Lcom/tencent/liteav/audio/impl/route/c;-><init>()V

    .line 1549
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "CreateBluetoothCheck:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/tencent/liteav/audio/impl/route/b;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " skip android4.3: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1550
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->VersionInt()I

    move-result p2

    const/16 v1, 0x12

    if-ne p2, v1, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TXCAudioRouteManager"

    .line 1549
    invoke-static {p2, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/liteav/audio/impl/route/e;Landroid/content/Context;Lcom/tencent/liteav/audio/impl/route/h;)Lcom/tencent/liteav/audio/impl/route/b;
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/audio/impl/route/e;->a(Landroid/content/Context;Lcom/tencent/liteav/audio/impl/route/h;)Lcom/tencent/liteav/audio/impl/route/b;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/tencent/liteav/audio/impl/route/e;Lcom/tencent/liteav/audio/impl/route/b;)Lcom/tencent/liteav/audio/impl/route/b;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e;->l:Lcom/tencent/liteav/audio/impl/route/b;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/liteav/audio/impl/route/e;Lcom/tencent/liteav/audio/impl/route/d;)Lcom/tencent/liteav/audio/impl/route/d;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e;->f:Lcom/tencent/liteav/audio/impl/route/d;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/liteav/audio/impl/route/e;Lcom/tencent/liteav/audio/impl/route/e$h;)Lcom/tencent/liteav/audio/impl/route/e$h;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e;->o:Lcom/tencent/liteav/audio/impl/route/e$h;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/liteav/audio/impl/route/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e;->m:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/content/Context;Z)V
    .locals 4

    const-string v0, "TXCAudioRouteManager"

    if-nez p1, :cond_0

    const-string p1, "Could not InternalSetSpeaker, context is null."

    .line 759
    invoke-static {v0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "audio"

    .line 763
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    if-nez p1, :cond_1

    const-string p1, "Could not InternalSetSpeaker AudioManager is null."

    .line 765
    invoke-static {v0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 769
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InternalSetSpeaker entry, speaker on: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "-->:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    :try_start_0
    invoke-virtual {p1}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v1

    if-eq v1, p2, :cond_2

    .line 773
    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 776
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSpeakerphoneOn failed with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v1

    if-ne v1, p2, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    const/4 v1, -0x1

    .line 780
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InternalSetSpeaker exit:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " res:"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " mode:"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/AudioManager;->getMode()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 4

    const-string v0, "name"

    .line 892
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "unkonw"

    .line 897
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "state"

    .line 898
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v1, :cond_2

    .line 900
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_1

    const-string v0, "unplugged"

    goto :goto_0

    :cond_1
    const-string v0, "plugged"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 902
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mic:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "microphone"

    .line 903
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v3, 0x1

    if-eq p1, v1, :cond_4

    .line 905
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p1, v3, :cond_3

    const-string p1, "Y"

    goto :goto_1

    :cond_3
    const-string p1, "unkown"

    :goto_1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 907
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHeadsetPlug:: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TXCAudioRouteManager"

    invoke-static {v0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    iget-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e;->k:Lcom/tencent/liteav/audio/impl/route/h;

    if-eqz p1, :cond_6

    if-ne v3, v2, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    const-string v0, "DEVICE_WIREDHEADSET"

    .line 910
    invoke-virtual {p1, v0, v3}, Lcom/tencent/liteav/audio/impl/route/h;->a(Ljava/lang/String;Z)Z

    :cond_6
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/audio/impl/route/e;Landroid/content/Context;Z)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/audio/impl/route/e;->a(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/audio/impl/route/e;Ljava/lang/String;Z)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/audio/impl/route/e;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/audio/impl/route/e;Ljava/util/HashMap;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/tencent/liteav/audio/impl/route/e;->b(Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/audio/impl/route/e;Z)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/tencent/liteav/audio/impl/route/e;->a(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 3

    .line 242
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e;->k:Lcom/tencent/liteav/audio/impl/route/h;

    invoke-virtual {v0}, Lcom/tencent/liteav/audio/impl/route/h;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 246
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkDevicePlug got update dev:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    const-string v1, " piugin"

    goto :goto_0

    :cond_1
    const-string v1, " plugout"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", connectedDev:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e;->k:Lcom/tencent/liteav/audio/impl/route/h;

    .line 248
    invoke-virtual {v1}, Lcom/tencent/liteav/audio/impl/route/h;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCAudioRouteManager"

    .line 246
    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-direct {p0}, Lcom/tencent/liteav/audio/impl/route/e;->e()V

    .line 251
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e;->k:Lcom/tencent/liteav/audio/impl/route/h;

    invoke-virtual {v0}, Lcom/tencent/liteav/audio/impl/route/h;->c()V

    const-string v0, "PARAM_DEVICE"

    if-eqz p2, :cond_2

    .line 254
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 255
    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object p1, Lcom/tencent/liteav/audio/impl/route/e$a;->k:Lcom/tencent/liteav/audio/impl/route/e$a;

    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/audio/impl/route/e;->a(Lcom/tencent/liteav/audio/impl/route/e$a;Ljava/util/HashMap;)I

    goto :goto_2

    .line 259
    :cond_2
    iget-object p2, p0, Lcom/tencent/liteav/audio/impl/route/e;->k:Lcom/tencent/liteav/audio/impl/route/h;

    invoke-virtual {p2}, Lcom/tencent/liteav/audio/impl/route/h;->h()Ljava/lang/String;

    move-result-object p2

    .line 260
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "DEVICE_NONE"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 265
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No switch,plugout:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " connectedDev:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 268
    sget-object p2, Lcom/tencent/liteav/audio/impl/route/e$a;->n:Lcom/tencent/liteav/audio/impl/route/e$a;

    invoke-direct {p0, p2, p1}, Lcom/tencent/liteav/audio/impl/route/e;->a(Lcom/tencent/liteav/audio/impl/route/e$a;Ljava/util/HashMap;)I

    goto :goto_2

    .line 261
    :cond_4
    :goto_1
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 262
    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object p1, Lcom/tencent/liteav/audio/impl/route/e$a;->l:Lcom/tencent/liteav/audio/impl/route/e$a;

    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/audio/impl/route/e;->a(Lcom/tencent/liteav/audio/impl/route/e$a;Ljava/util/HashMap;)I

    :goto_2
    return-void
.end method

.method private a(Ljava/util/HashMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, ""

    .line 1004
    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->LogTraceEntry(Ljava/lang/String;)V

    if-eqz p1, :cond_9

    .line 1005
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 1009
    :cond_0
    invoke-direct {p0}, Lcom/tencent/liteav/audio/impl/route/e;->c()Z

    move-result v0

    const-string v1, "TXCAudioRouteManager"

    if-eqz v0, :cond_1

    const-string p1, "InternalSessionConnectDevice failed, because it\'s in music scene"

    .line 1010
    invoke-static {v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "PARAM_DEVICE"

    .line 1014
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1015
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ConnectDevice: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    iget-object v3, p0, Lcom/tencent/liteav/audio/impl/route/e;->h:Lcom/tencent/liteav/audio/impl/route/a$a;

    invoke-virtual {v3}, Lcom/tencent/liteav/audio/impl/route/a$a;->b()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "DEVICE_EARPHONE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1018
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "InternalSessionConnectDevice IsEarPhoneSupported = false, Connect device:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " failed"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1023
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/liteav/audio/impl/route/e;->a()Z

    move-result v3

    .line 1024
    invoke-static {v2}, Lcom/tencent/liteav/audio/impl/route/h;->f(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_3

    const/4 v4, 0x7

    goto :goto_0

    .line 1026
    :cond_3
    iget-object v4, p0, Lcom/tencent/liteav/audio/impl/route/e;->k:Lcom/tencent/liteav/audio/impl/route/h;

    invoke-virtual {v4, v2}, Lcom/tencent/liteav/audio/impl/route/h;->c(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const/16 v4, 0x8

    goto :goto_0

    :cond_4
    if-nez v3, :cond_5

    const/16 v4, 0x9

    goto :goto_0

    :cond_5
    move v4, v5

    .line 1031
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sessonID:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "PARAM_SESSIONID"

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " devName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " bChangabled:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_6

    const-string v3, "Y"

    goto :goto_1

    :cond_6
    const-string v3, "N"

    :goto_1
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " err:"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "CONNECTDEVICE_RESULT_DEVICENAME"

    if-eqz v4, :cond_7

    .line 1034
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1035
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1036
    invoke-direct {p0, v1, p1, v4}, Lcom/tencent/liteav/audio/impl/route/e;->a(Landroid/content/Intent;Ljava/util/HashMap;I)I

    return-void

    .line 1040
    :cond_7
    iget-object v6, p0, Lcom/tencent/liteav/audio/impl/route/e;->k:Lcom/tencent/liteav/audio/impl/route/h;

    invoke-virtual {v6}, Lcom/tencent/liteav/audio/impl/route/h;->h()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1041
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has connected!"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1043
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1044
    invoke-direct {p0, v1, p1, v4}, Lcom/tencent/liteav/audio/impl/route/e;->a(Landroid/content/Intent;Ljava/util/HashMap;I)I

    return-void

    .line 1048
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "is connecting."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    invoke-direct {p0, v2, p1, v5}, Lcom/tencent/liteav/audio/impl/route/e;->a(Ljava/lang/String;Ljava/util/HashMap;Z)I

    .line 1050
    invoke-static {}, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->LogTraceExit()V

    :cond_9
    :goto_2
    return-void
.end method

.method private a(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 231
    iget-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e;->k:Lcom/tencent/liteav/audio/impl/route/h;

    invoke-virtual {p1}, Lcom/tencent/liteav/audio/impl/route/h;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const-string p1, "TXCAudioRouteManager"

    const-string v0, "checkAutoDeviceListUpdate got update!"

    .line 232
    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-direct {p0}, Lcom/tencent/liteav/audio/impl/route/e;->e()V

    .line 234
    iget-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e;->k:Lcom/tencent/liteav/audio/impl/route/h;

    invoke-virtual {p1}, Lcom/tencent/liteav/audio/impl/route/h;->c()V

    .line 236
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 237
    sget-object v0, Lcom/tencent/liteav/audio/impl/route/e$a;->j:Lcom/tencent/liteav/audio/impl/route/e$a;

    invoke-direct {p0, v0, p1}, Lcom/tencent/liteav/audio/impl/route/e;->a(Lcom/tencent/liteav/audio/impl/route/e$a;Ljava/util/HashMap;)I

    :cond_1
    return-void
.end method

.method private b(I)I
    .locals 5

    .line 177
    invoke-direct {p0}, Lcom/tencent/liteav/audio/impl/route/e;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string v0, " mode:"

    const-string v1, "TXCAudioRouteManager"

    if-ltz p1, :cond_1

    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Config] getCallAudioMode modePolicy:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    :cond_1
    const/4 v2, 0x3

    .line 187
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Config] getCallAudioMode _modePolicy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "facturer:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->Manufacturer()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " model:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->Model()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 187
    invoke-static {v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method static synthetic b(Lcom/tencent/liteav/audio/impl/route/e;I)I
    .locals 0

    .line 46
    iput p1, p0, Lcom/tencent/liteav/audio/impl/route/e;->d:I

    return p1
.end method

.method static synthetic b(Lcom/tencent/liteav/audio/impl/route/e;)Landroid/content/Context;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/tencent/liteav/audio/impl/route/e;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/tencent/liteav/audio/impl/route/e;Ljava/util/HashMap;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/tencent/liteav/audio/impl/route/e;->c(Ljava/util/HashMap;)V

    return-void
.end method

.method private b(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1424
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1425
    invoke-virtual {p0}, Lcom/tencent/liteav/audio/impl/route/e;->a()Z

    move-result v1

    const-string v2, "ISDEVICECHANGABLED_REULT_ISCHANGABLED"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 1426
    invoke-direct {p0, v0, p1, v1}, Lcom/tencent/liteav/audio/impl/route/e;->a(Landroid/content/Intent;Ljava/util/HashMap;I)I

    return-void
.end method

.method static synthetic b(Lcom/tencent/liteav/audio/impl/route/e;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/tencent/liteav/audio/impl/route/e;->i:Z

    return p1
.end method

.method static synthetic c(Lcom/tencent/liteav/audio/impl/route/e;I)I
    .locals 0

    .line 46
    iput p1, p0, Lcom/tencent/liteav/audio/impl/route/e;->e:I

    return p1
.end method

.method static synthetic c(Lcom/tencent/liteav/audio/impl/route/e;)Lcom/tencent/liteav/audio/impl/route/h;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/tencent/liteav/audio/impl/route/e;->k:Lcom/tencent/liteav/audio/impl/route/h;

    return-object p0
.end method

.method static synthetic c(Lcom/tencent/liteav/audio/impl/route/e;Ljava/util/HashMap;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/tencent/liteav/audio/impl/route/e;->d(Ljava/util/HashMap;)V

    return-void
.end method

.method private c(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1435
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1436
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e;->k:Lcom/tencent/liteav/audio/impl/route/h;

    invoke-virtual {v1}, Lcom/tencent/liteav/audio/impl/route/h;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GETCONNECTEDDEVICE_REULT_LIST"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 1437
    invoke-direct {p0, v0, p1, v1}, Lcom/tencent/liteav/audio/impl/route/e;->a(Landroid/content/Intent;Ljava/util/HashMap;I)I

    return-void
.end method

.method private c()Z
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e;->h:Lcom/tencent/liteav/audio/impl/route/a$a;

    invoke-virtual {v0}, Lcom/tencent/liteav/audio/impl/route/a$a;->a()Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/tencent/liteav/audio/impl/route/e;I)I
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/tencent/liteav/audio/impl/route/e;->b(I)I

    move-result p0

    return p0
.end method

.method private d()V
    .locals 11

    const-string v0, "DEVICE_SPEAKERPHONE"

    const-string v1, "DEVICE_WIREDHEADSET"

    const-string v2, "DEVICE_BLUETOOTHHEADSET"

    .line 195
    filled-new-array {v2, v1, v0}, [Ljava/lang/String;

    move-result-object v3

    .line 196
    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_5

    aget-object v7, v3, v6

    .line 198
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_1

    .line 199
    iget-object v8, p0, Lcom/tencent/liteav/audio/impl/route/e;->l:Lcom/tencent/liteav/audio/impl/route/b;

    if-nez v8, :cond_0

    .line 200
    iget-object v8, p0, Lcom/tencent/liteav/audio/impl/route/e;->k:Lcom/tencent/liteav/audio/impl/route/h;

    invoke-virtual {v8, v7, v5}, Lcom/tencent/liteav/audio/impl/route/h;->a(Ljava/lang/String;Z)Z

    move-result v8

    goto :goto_1

    .line 202
    :cond_0
    iget-object v10, p0, Lcom/tencent/liteav/audio/impl/route/e;->k:Lcom/tencent/liteav/audio/impl/route/h;

    invoke-virtual {v8}, Lcom/tencent/liteav/audio/impl/route/b;->c()Z

    move-result v8

    invoke-virtual {v10, v7, v8}, Lcom/tencent/liteav/audio/impl/route/h;->a(Ljava/lang/String;Z)Z

    move-result v8

    goto :goto_1

    .line 204
    :cond_1
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 205
    iget-object v8, p0, Lcom/tencent/liteav/audio/impl/route/e;->k:Lcom/tencent/liteav/audio/impl/route/h;

    iget-object v10, p0, Lcom/tencent/liteav/audio/impl/route/e;->a:Landroid/media/AudioManager;

    invoke-virtual {v10}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v10

    invoke-virtual {v8, v7, v10}, Lcom/tencent/liteav/audio/impl/route/h;->a(Ljava/lang/String;Z)Z

    move-result v8

    goto :goto_1

    .line 206
    :cond_2
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 207
    iget-object v8, p0, Lcom/tencent/liteav/audio/impl/route/e;->k:Lcom/tencent/liteav/audio/impl/route/h;

    invoke-virtual {v8, v7, v9}, Lcom/tencent/liteav/audio/impl/route/h;->a(Ljava/lang/String;Z)Z

    :cond_3
    move v8, v5

    :goto_1
    if-eqz v8, :cond_4

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v7, v8, v5

    .line 211
    iget-object v10, p0, Lcom/tencent/liteav/audio/impl/route/e;->k:Lcom/tencent/liteav/audio/impl/route/h;

    .line 212
    invoke-virtual {v10, v7}, Lcom/tencent/liteav/audio/impl/route/h;->c(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v8, v9

    const-string v7, "TXCAudioRouteManager"

    const-string v9, "update visibility success, dev: %s, visible: %b"

    .line 211
    invoke-static {v7, v9, v8}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 216
    :cond_5
    invoke-direct {p0, v5}, Lcom/tencent/liteav/audio/impl/route/e;->a(Z)V

    return-void
.end method

.method static synthetic d(Lcom/tencent/liteav/audio/impl/route/e;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/tencent/liteav/audio/impl/route/e;->d()V

    return-void
.end method

.method static synthetic d(Lcom/tencent/liteav/audio/impl/route/e;Ljava/util/HashMap;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/tencent/liteav/audio/impl/route/e;->a(Ljava/util/HashMap;)V

    return-void
.end method

.method private d(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1441
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1442
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e;->k:Lcom/tencent/liteav/audio/impl/route/h;

    invoke-virtual {v1}, Lcom/tencent/liteav/audio/impl/route/h;->g()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GETCONNECTINGDEVICE_REULT_LIST"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 1443
    invoke-direct {p0, v0, p1, v1}, Lcom/tencent/liteav/audio/impl/route/e;->a(Landroid/content/Intent;Ljava/util/HashMap;I)I

    return-void
.end method

.method static synthetic e(Lcom/tencent/liteav/audio/impl/route/e;)Ljava/lang/Object;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/tencent/liteav/audio/impl/route/e;->p:Ljava/lang/Object;

    return-object p0
.end method

.method private e()V
    .locals 4

    .line 220
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e;->k:Lcom/tencent/liteav/audio/impl/route/h;

    const-string v1, "DEVICE_WIREDHEADSET"

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/audio/impl/route/h;->c(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "DEVICE_EARPHONE"

    const-string v2, "TXCAudioRouteManager"

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e;->k:Lcom/tencent/liteav/audio/impl/route/h;

    const-string v3, "DEVICE_BLUETOOTHHEADSET"

    .line 221
    invoke-virtual {v0, v3}, Lcom/tencent/liteav/audio/impl/route/h;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "detected headset plugout,so enable earphone"

    .line 225
    invoke-static {v2, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e;->k:Lcom/tencent/liteav/audio/impl/route/h;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/audio/impl/route/h;->a(Ljava/lang/String;Z)Z

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "detected headset plugin,so disable earphone"

    .line 222
    invoke-static {v2, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e;->k:Lcom/tencent/liteav/audio/impl/route/h;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/audio/impl/route/h;->a(Ljava/lang/String;Z)Z

    :goto_1
    return-void
.end method

.method private e(Ljava/lang/String;J)V
    .locals 1

    .line 922
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 923
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "PARAM_SESSIONID"

    invoke-virtual {v0, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "PARAM_OPERATION"

    .line 924
    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 925
    sget-object p1, Lcom/tencent/liteav/audio/impl/route/e$a;->c:Lcom/tencent/liteav/audio/impl/route/e$a;

    invoke-direct {p0, p1, v0}, Lcom/tencent/liteav/audio/impl/route/e;->a(Lcom/tencent/liteav/audio/impl/route/e$a;Ljava/util/HashMap;)I

    return-void
.end method

.method static synthetic f(Lcom/tencent/liteav/audio/impl/route/e;)Lcom/tencent/liteav/audio/impl/route/e$h;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/tencent/liteav/audio/impl/route/e;->o:Lcom/tencent/liteav/audio/impl/route/e$h;

    return-object p0
.end method

.method private f()V
    .locals 3

    .line 1523
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 1526
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/liteav/audio/impl/route/e;->a()Z

    move-result v0

    .line 1527
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1528
    new-instance v2, Lcom/tencent/liteav/audio/impl/route/e$3;

    invoke-direct {v2, p0, v0}, Lcom/tencent/liteav/audio/impl/route/e$3;-><init>(Lcom/tencent/liteav/audio/impl/route/e;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private f(Ljava/lang/String;J)V
    .locals 1

    .line 968
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 969
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "PARAM_SESSIONID"

    invoke-virtual {v0, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "PARAM_OPERATION"

    .line 970
    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    sget-object p1, Lcom/tencent/liteav/audio/impl/route/e$a;->e:Lcom/tencent/liteav/audio/impl/route/e$a;

    invoke-direct {p0, p1, v0}, Lcom/tencent/liteav/audio/impl/route/e;->a(Lcom/tencent/liteav/audio/impl/route/e$a;Ljava/util/HashMap;)I

    return-void
.end method

.method static synthetic g(Lcom/tencent/liteav/audio/impl/route/e;)Landroid/media/AudioManager;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/tencent/liteav/audio/impl/route/e;->a:Landroid/media/AudioManager;

    return-object p0
.end method

.method private g(Ljava/lang/String;J)V
    .locals 1

    .line 982
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 983
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "PARAM_SESSIONID"

    invoke-virtual {v0, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "PARAM_OPERATION"

    .line 984
    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    sget-object p1, Lcom/tencent/liteav/audio/impl/route/e$a;->g:Lcom/tencent/liteav/audio/impl/route/e$a;

    invoke-direct {p0, p1, v0}, Lcom/tencent/liteav/audio/impl/route/e;->a(Lcom/tencent/liteav/audio/impl/route/e$a;Ljava/util/HashMap;)I

    return-void
.end method

.method static synthetic h(Lcom/tencent/liteav/audio/impl/route/e;)Lcom/tencent/liteav/audio/impl/route/a$a;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/tencent/liteav/audio/impl/route/e;->h:Lcom/tencent/liteav/audio/impl/route/a$a;

    return-object p0
.end method

.method static synthetic i(Lcom/tencent/liteav/audio/impl/route/e;)Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/tencent/liteav/audio/impl/route/e;->m:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic j(Lcom/tencent/liteav/audio/impl/route/e;)Lcom/tencent/liteav/audio/impl/route/b;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/tencent/liteav/audio/impl/route/e;->l:Lcom/tencent/liteav/audio/impl/route/b;

    return-object p0
.end method

.method static synthetic k(Lcom/tencent/liteav/audio/impl/route/e;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/tencent/liteav/audio/impl/route/e;->e:I

    return p0
.end method

.method static synthetic l(Lcom/tencent/liteav/audio/impl/route/e;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/tencent/liteav/audio/impl/route/e;->d:I

    return p0
.end method

.method static synthetic m(Lcom/tencent/liteav/audio/impl/route/e;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/tencent/liteav/audio/impl/route/e;->f()V

    return-void
.end method

.method static synthetic n(Lcom/tencent/liteav/audio/impl/route/e;)Z
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/tencent/liteav/audio/impl/route/e;->c()Z

    move-result p0

    return p0
.end method

.method static synthetic o(Lcom/tencent/liteav/audio/impl/route/e;)Lcom/tencent/liteav/audio/impl/route/d;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/tencent/liteav/audio/impl/route/e;->f:Lcom/tencent/liteav/audio/impl/route/d;

    return-object p0
.end method

.method static synthetic p(Lcom/tencent/liteav/audio/impl/route/e;)[Z
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/tencent/liteav/audio/impl/route/e;->g:[Z

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;J)I
    .locals 1

    .line 941
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 942
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "PARAM_SESSIONID"

    invoke-virtual {v0, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "PARAM_OPERATION"

    .line 943
    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    sget-object p1, Lcom/tencent/liteav/audio/impl/route/e$a;->b:Lcom/tencent/liteav/audio/impl/route/e$a;

    invoke-direct {p0, p1, v0}, Lcom/tencent/liteav/audio/impl/route/e;->a(Lcom/tencent/liteav/audio/impl/route/e$a;Ljava/util/HashMap;)I

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;JLjava/lang/String;)I
    .locals 1

    .line 929
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 933
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 934
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "PARAM_SESSIONID"

    invoke-virtual {v0, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "PARAM_OPERATION"

    .line 935
    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "EXTRA_DATA_DEVICECONFIG"

    .line 936
    invoke-virtual {v0, p1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 937
    sget-object p1, Lcom/tencent/liteav/audio/impl/route/e$a;->a:Lcom/tencent/liteav/audio/impl/route/e$a;

    invoke-direct {p0, p1, v0}, Lcom/tencent/liteav/audio/impl/route/e;->a(Lcom/tencent/liteav/audio/impl/route/e$a;Ljava/util/HashMap;)I

    move-result p1

    return p1
.end method

.method a(I)V
    .locals 5

    .line 784
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set audio mode to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCAudioRouteManager"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e;->a:Landroid/media/AudioManager;

    const-string v2, "setMode:"

    if-nez v0, :cond_0

    .line 786
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " fail because AudioManager is null."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 791
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 793
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMode failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/route/e;->a:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getMode()I

    move-result v2

    if-eq v2, p1, :cond_1

    const-string p1, "fail"

    goto :goto_1

    :cond_1
    const-string p1, "success"

    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/tencent/liteav/audio/impl/route/a$a;)V
    .locals 2

    .line 167
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e;->h:Lcom/tencent/liteav/audio/impl/route/a$a;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "TXCAudioRouteManager"

    const-string v1, "set audio io scene to %s"

    .line 168
    invoke-static {p1, v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public declared-synchronized a(Lcom/tencent/liteav/audio/impl/route/f;ZJ)V
    .locals 1

    monitor-enter p0

    if-eqz p2, :cond_0

    .line 158
    :try_start_0
    iget-object p2, p0, Lcom/tencent/liteav/audio/impl/route/e;->j:Lcom/tencent/liteav/audio/impl/route/g;

    invoke-virtual {p2, p1, p3, p4}, Lcom/tencent/liteav/audio/impl/route/g;->a(Lcom/tencent/liteav/audio/impl/route/f;J)V

    const-string p1, "TXCAudioRouteManager"

    .line 159
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[register] add AudioSession: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 161
    :cond_0
    iget-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e;->j:Lcom/tencent/liteav/audio/impl/route/g;

    invoke-virtual {p1, p3, p4}, Lcom/tencent/liteav/audio/impl/route/g;->b(J)V

    const-string p1, "TXCAudioRouteManager"

    .line 162
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[register] remove AudioSession: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Ljava/lang/String;JI)V
    .locals 1

    .line 989
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 990
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "PARAM_SESSIONID"

    invoke-virtual {v0, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "PARAM_OPERATION"

    .line 991
    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "PARAM_MODEPOLICY"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    sget-object p1, Lcom/tencent/liteav/audio/impl/route/e$a;->h:Lcom/tencent/liteav/audio/impl/route/e$a;

    invoke-direct {p0, p1, v0}, Lcom/tencent/liteav/audio/impl/route/e;->a(Lcom/tencent/liteav/audio/impl/route/e$a;Ljava/util/HashMap;)I

    return-void
.end method

.method a()Z
    .locals 2

    .line 1430
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e;->k:Lcom/tencent/liteav/audio/impl/route/h;

    invoke-virtual {v0}, Lcom/tencent/liteav/audio/impl/route/h;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "DEVICE_NONE"

    .line 1431
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method b()V
    .locals 7

    const-string v0, ""

    .line 1491
    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->LogTraceEntry(Ljava/lang/String;)V

    .line 1492
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 1496
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1497
    monitor-enter p0

    .line 1498
    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e;->k:Lcom/tencent/liteav/audio/impl/route/h;

    invoke-virtual {v1}, Lcom/tencent/liteav/audio/impl/route/h;->k()Ljava/util/ArrayList;

    move-result-object v1

    .line 1499
    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/route/e;->k:Lcom/tencent/liteav/audio/impl/route/h;

    invoke-virtual {v2}, Lcom/tencent/liteav/audio/impl/route/h;->h()Ljava/lang/String;

    move-result-object v2

    .line 1500
    iget-object v3, p0, Lcom/tencent/liteav/audio/impl/route/e;->k:Lcom/tencent/liteav/audio/impl/route/h;

    invoke-virtual {v3}, Lcom/tencent/liteav/audio/impl/route/h;->i()Ljava/lang/String;

    move-result-object v3

    .line 1501
    iget-object v4, p0, Lcom/tencent/liteav/audio/impl/route/e;->k:Lcom/tencent/liteav/audio/impl/route/h;

    invoke-virtual {v4}, Lcom/tencent/liteav/audio/impl/route/h;->d()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.tencent.sharp.ACTION_TXCAUDIOMANAGER_NOTIFY"

    .line 1503
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "PARAM_OPERATION"

    const-string v6, "NOTIFY_DEVICELISTUPDATE"

    .line 1504
    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "EXTRA_DATA_AVAILABLEDEVICE_LIST"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    .line 1505
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "EXTRA_DATA_CONNECTEDDEVICE"

    .line 1506
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "EXTRA_DATA_PREV_CONNECTEDDEVICE"

    .line 1507
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "EXTRA_DATA_IF_HAS_BLUETOOTH_THIS_IS_NAME"

    .line 1508
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1509
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1511
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/tencent/liteav/audio/impl/route/e$2;

    invoke-direct {v2, p0, v0}, Lcom/tencent/liteav/audio/impl/route/e$2;-><init>(Lcom/tencent/liteav/audio/impl/route/e;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1519
    invoke-static {}, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->LogTraceExit()V

    return-void

    :catchall_0
    move-exception v0

    .line 1509
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b(Ljava/lang/String;J)V
    .locals 1

    .line 961
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 962
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "PARAM_SESSIONID"

    invoke-virtual {v0, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "PARAM_OPERATION"

    .line 963
    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    sget-object p1, Lcom/tencent/liteav/audio/impl/route/e$a;->m:Lcom/tencent/liteav/audio/impl/route/e$a;

    invoke-direct {p0, p1, v0}, Lcom/tencent/liteav/audio/impl/route/e;->a(Lcom/tencent/liteav/audio/impl/route/e$a;Ljava/util/HashMap;)I

    return-void
.end method

.method public b(Ljava/lang/String;JLjava/lang/String;)V
    .locals 1

    if-nez p4, :cond_0

    return-void

    .line 952
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 953
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "PARAM_SESSIONID"

    invoke-virtual {v0, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "PARAM_OPERATION"

    .line 954
    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "CONNECTDEVICE_DEVICENAME"

    .line 955
    invoke-virtual {v0, p1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "PARAM_DEVICE"

    .line 956
    invoke-virtual {v0, p1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 957
    sget-object p1, Lcom/tencent/liteav/audio/impl/route/e$a;->d:Lcom/tencent/liteav/audio/impl/route/e$a;

    invoke-direct {p0, p1, v0}, Lcom/tencent/liteav/audio/impl/route/e;->a(Lcom/tencent/liteav/audio/impl/route/e$a;Ljava/util/HashMap;)I

    return-void
.end method

.method public c(Ljava/lang/String;J)V
    .locals 1

    .line 975
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 976
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "PARAM_SESSIONID"

    invoke-virtual {v0, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "PARAM_OPERATION"

    .line 977
    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 978
    sget-object p1, Lcom/tencent/liteav/audio/impl/route/e$a;->f:Lcom/tencent/liteav/audio/impl/route/e$a;

    invoke-direct {p0, p1, v0}, Lcom/tencent/liteav/audio/impl/route/e;->a(Lcom/tencent/liteav/audio/impl/route/e$a;Ljava/util/HashMap;)I

    return-void
.end method

.method public d(Ljava/lang/String;J)V
    .locals 1

    .line 997
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 998
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "PARAM_SESSIONID"

    invoke-virtual {v0, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "PARAM_OPERATION"

    .line 999
    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    sget-object p1, Lcom/tencent/liteav/audio/impl/route/e$a;->i:Lcom/tencent/liteav/audio/impl/route/e$a;

    invoke-direct {p0, p1, v0}, Lcom/tencent/liteav/audio/impl/route/e;->a(Lcom/tencent/liteav/audio/impl/route/e$a;Ljava/util/HashMap;)I

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const-string v0, "DEVICE_BLUETOOTHHEADSET"

    const-string v1, "DEVICE_WIREDHEADSET"

    const-string v2, "TXCAudioRouteManager"

    if-eqz p2, :cond_11

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 827
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PARAM_OPERATION"

    .line 828
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 829
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "receive Action: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    iget-object v5, p0, Lcom/tencent/liteav/audio/impl/route/e;->k:Lcom/tencent/liteav/audio/impl/route/h;

    if-nez v5, :cond_1

    const-string p1, "mDeviceConfigManager is null!"

    .line 831
    invoke-static {v2, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 835
    :cond_1
    iget-object v5, p0, Lcom/tencent/liteav/audio/impl/route/e;->k:Lcom/tencent/liteav/audio/impl/route/h;

    invoke-virtual {v5, v1}, Lcom/tencent/liteav/audio/impl/route/h;->c(Ljava/lang/String;)Z

    move-result v5

    .line 836
    iget-object v6, p0, Lcom/tencent/liteav/audio/impl/route/e;->k:Lcom/tencent/liteav/audio/impl/route/h;

    invoke-virtual {v6, v0}, Lcom/tencent/liteav/audio/impl/route/h;->c(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "android.intent.action.HEADSET_PLUG"

    .line 837
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v7, :cond_3

    .line 838
    invoke-direct {p0, p2}, Lcom/tencent/liteav/audio/impl/route/e;->a(Landroid/content/Intent;)V

    if-nez v5, :cond_2

    .line 839
    iget-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e;->k:Lcom/tencent/liteav/audio/impl/route/h;

    invoke-virtual {p1, v1}, Lcom/tencent/liteav/audio/impl/route/h;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 840
    invoke-direct {p0, v1, v9}, Lcom/tencent/liteav/audio/impl/route/e;->a(Ljava/lang/String;Z)V

    :cond_2
    if-eqz v5, :cond_10

    .line 842
    iget-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e;->k:Lcom/tencent/liteav/audio/impl/route/h;

    invoke-virtual {p1, v1}, Lcom/tencent/liteav/audio/impl/route/h;->c(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_10

    .line 843
    invoke-direct {p0, v1, v8}, Lcom/tencent/liteav/audio/impl/route/e;->a(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_3
    const-string v1, "com.tencent.sharp.ACTION_TXCAUDIOMANAGER_REQUEST"

    .line 845
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 846
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "operation: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "OPERATION_STARTSERVICE"

    .line 847
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/high16 v0, -0x8000000000000000L

    const-string v3, "PARAM_SESSIONID"

    if-eqz p1, :cond_4

    .line 848
    :try_start_1
    invoke-virtual {p2, v3, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    const-string p1, "EXTRA_DATA_DEVICECONFIG"

    .line 849
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 848
    invoke-virtual {p0, v4, v0, v1, p1}, Lcom/tencent/liteav/audio/impl/route/e;->a(Ljava/lang/String;JLjava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    const-string p1, "OPERATION_STOPSERVICE"

    .line 850
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 851
    invoke-virtual {p2, v3, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p1

    invoke-virtual {p0, v4, p1, p2}, Lcom/tencent/liteav/audio/impl/route/e;->a(Ljava/lang/String;J)I

    goto/16 :goto_0

    :cond_5
    const-string p1, "OPERATION_GETDEVICELIST"

    .line 852
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 853
    invoke-virtual {p2, v3, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p1

    invoke-direct {p0, v4, p1, p2}, Lcom/tencent/liteav/audio/impl/route/e;->e(Ljava/lang/String;J)V

    goto/16 :goto_0

    :cond_6
    const-string p1, "OPERATION_CONNECTDEVICE"

    .line 854
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 855
    invoke-virtual {p2, v3, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    const-string p1, "CONNECTDEVICE_DEVICENAME"

    .line 856
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 855
    invoke-virtual {p0, v4, v0, v1, p1}, Lcom/tencent/liteav/audio/impl/route/e;->b(Ljava/lang/String;JLjava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string p1, "OPERATION_CONNECT_HIGHEST_PRIORITY_DEVICE"

    .line 857
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 858
    invoke-virtual {p2, v3, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p1

    invoke-virtual {p0, v4, p1, p2}, Lcom/tencent/liteav/audio/impl/route/e;->b(Ljava/lang/String;J)V

    goto/16 :goto_0

    :cond_8
    const-string p1, "OPERATION_ISDEVICECHANGABLED"

    .line 859
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 860
    invoke-virtual {p2, v3, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p1

    invoke-direct {p0, v4, p1, p2}, Lcom/tencent/liteav/audio/impl/route/e;->f(Ljava/lang/String;J)V

    goto/16 :goto_0

    :cond_9
    const-string p1, "OPERATION_GETCONNECTEDDEVICE"

    .line 861
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 862
    invoke-virtual {p2, v3, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p1

    invoke-virtual {p0, v4, p1, p2}, Lcom/tencent/liteav/audio/impl/route/e;->c(Ljava/lang/String;J)V

    goto/16 :goto_0

    :cond_a
    const-string p1, "OPERATION_GETCONNECTINGDEVICE"

    .line 863
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 864
    invoke-virtual {p2, v3, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p1

    invoke-direct {p0, v4, p1, p2}, Lcom/tencent/liteav/audio/impl/route/e;->g(Ljava/lang/String;J)V

    goto :goto_0

    :cond_b
    const-string p1, "OPERATION_VOICECALL_PREPROCESS"

    .line 865
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    const-string p1, "PARAM_MODEPOLICY"

    const/4 v5, -0x1

    .line 866
    invoke-virtual {p2, p1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 867
    invoke-virtual {p2, v3, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {p0, v4, v0, v1, p1}, Lcom/tencent/liteav/audio/impl/route/e;->a(Ljava/lang/String;JI)V

    goto :goto_0

    :cond_c
    const-string p1, "OPERATION_VOICECALL_POSTROCESS"

    .line 868
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 869
    invoke-virtual {p2, v3, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p1

    invoke-virtual {p0, v4, p1, p2}, Lcom/tencent/liteav/audio/impl/route/e;->d(Ljava/lang/String;J)V

    goto :goto_0

    .line 871
    :cond_d
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e;->k:Lcom/tencent/liteav/audio/impl/route/h;

    if-eqz v1, :cond_10

    .line 872
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e;->l:Lcom/tencent/liteav/audio/impl/route/b;

    if-eqz v1, :cond_e

    .line 873
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e;->l:Lcom/tencent/liteav/audio/impl/route/b;

    iget-object v3, p0, Lcom/tencent/liteav/audio/impl/route/e;->k:Lcom/tencent/liteav/audio/impl/route/h;

    invoke-virtual {v1, p1, p2, v3}, Lcom/tencent/liteav/audio/impl/route/b;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/tencent/liteav/audio/impl/route/h;)V

    :cond_e
    if-nez v6, :cond_f

    .line 874
    iget-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e;->k:Lcom/tencent/liteav/audio/impl/route/h;

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/audio/impl/route/h;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 875
    invoke-direct {p0, v0, v9}, Lcom/tencent/liteav/audio/impl/route/e;->a(Ljava/lang/String;Z)V

    :cond_f
    if-eqz v6, :cond_10

    .line 878
    iget-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e;->k:Lcom/tencent/liteav/audio/impl/route/h;

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/audio/impl/route/h;->c(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_10

    .line 879
    invoke-direct {p0, v0, v8}, Lcom/tencent/liteav/audio/impl/route/e;->a(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 883
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "deal with receiver failed."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    :goto_0
    return-void

    :cond_11
    :goto_1
    const-string p1, "onReceive intent or context is null!"

    .line 822
    invoke-static {v2, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
