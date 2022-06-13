.class Lflutter/plugins/vibrate/VibrateMethodCallHandler;
.super Ljava/lang/Object;
.source "VibrateMethodCallHandler.java"

# interfaces
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final hasVibrator:Z

.field private final legacyVibrator:Z

.field private final vibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/os/Vibrator;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lflutter/plugins/vibrate/VibrateMethodCallHandler;->vibrator:Landroid/os/Vibrator;

    .line 19
    invoke-virtual {p1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result p1

    iput-boolean p1, p0, Lflutter/plugins/vibrate/VibrateMethodCallHandler;->hasVibrator:Z

    .line 20
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lflutter/plugins/vibrate/VibrateMethodCallHandler;->legacyVibrator:Z

    return-void
.end method

.method private vibrate(I)V
    .locals 3

    .line 25
    iget-boolean v0, p0, Lflutter/plugins/vibrate/VibrateMethodCallHandler;->hasVibrator:Z

    if-eqz v0, :cond_1

    .line 26
    iget-boolean v0, p0, Lflutter/plugins/vibrate/VibrateMethodCallHandler;->legacyVibrator:Z

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lflutter/plugins/vibrate/VibrateMethodCallHandler;->vibrator:Landroid/os/Vibrator;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 29
    :cond_0
    iget-object v0, p0, Lflutter/plugins/vibrate/VibrateMethodCallHandler;->vibrator:Landroid/os/Vibrator;

    int-to-long v1, p1

    const/4 p1, -0x1

    invoke-static {v1, v2, p1}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 4

    .line 36
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "warning"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_1
    const-string v1, "vibrate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_2
    const-string v1, "light"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_3
    const-string v1, "heavy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_4
    const-string v1, "error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_5
    const-string v1, "canVibrate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_6
    const-string v1, "medium"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_7
    const-string v1, "impact"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_8
    const-string v1, "selection"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_9
    const-string v1, "success"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 78
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    goto :goto_2

    :pswitch_0
    const/16 p1, 0xa

    .line 74
    invoke-direct {p0, p1}, Lflutter/plugins/vibrate/VibrateMethodCallHandler;->vibrate(I)V

    .line 75
    invoke-interface {p2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_1
    const/16 p1, 0x28

    .line 70
    invoke-direct {p0, p1}, Lflutter/plugins/vibrate/VibrateMethodCallHandler;->vibrate(I)V

    .line 71
    invoke-interface {p2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_2
    const/16 p1, 0x64

    .line 66
    invoke-direct {p0, p1}, Lflutter/plugins/vibrate/VibrateMethodCallHandler;->vibrate(I)V

    .line 67
    invoke-interface {p2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_3
    const/16 p1, 0x1f4

    .line 62
    invoke-direct {p0, p1}, Lflutter/plugins/vibrate/VibrateMethodCallHandler;->vibrate(I)V

    .line 63
    invoke-interface {p2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_4
    const/16 p1, 0xfa

    .line 58
    invoke-direct {p0, p1}, Lflutter/plugins/vibrate/VibrateMethodCallHandler;->vibrate(I)V

    .line 59
    invoke-interface {p2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_5
    const/16 p1, 0x32

    .line 54
    invoke-direct {p0, p1}, Lflutter/plugins/vibrate/VibrateMethodCallHandler;->vibrate(I)V

    .line 55
    invoke-interface {p2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_2

    .line 50
    :pswitch_6
    invoke-direct {p0, v2}, Lflutter/plugins/vibrate/VibrateMethodCallHandler;->vibrate(I)V

    .line 51
    invoke-interface {p2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_2

    .line 46
    :pswitch_7
    invoke-direct {p0, v3}, Lflutter/plugins/vibrate/VibrateMethodCallHandler;->vibrate(I)V

    .line 47
    invoke-interface {p2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_8
    const-string v0, "duration"

    .line 41
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 42
    invoke-direct {p0, p1}, Lflutter/plugins/vibrate/VibrateMethodCallHandler;->vibrate(I)V

    .line 43
    invoke-interface {p2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_2

    .line 38
    :pswitch_9
    iget-boolean p1, p0, Lflutter/plugins/vibrate/VibrateMethodCallHandler;->hasVibrator:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6f4abffd -> :sswitch_9
        -0x66478e74 -> :sswitch_8
        -0x469ec2ba -> :sswitch_7
        -0x4041708b -> :sswitch_6
        -0x38cadc81 -> :sswitch_5
        0x5c4d208 -> :sswitch_4
        0x5e8f0c7 -> :sswitch_3
        0x6233516 -> :sswitch_2
        0x1ae6756f -> :sswitch_1
        0x4305af9c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
