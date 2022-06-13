.class public abstract Lcom/tencent/liteav/audio/impl/route/b;
.super Ljava/lang/Object;
.source "BluetoothHeadsetCheckBase.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "unknown"

    return-object p0

    :pswitch_0
    const-string p0, "STATE_TURNING_OFF"

    return-object p0

    :pswitch_1
    const-string p0, "STATE_ON"

    return-object p0

    :pswitch_2
    const-string p0, "STATE_TURNING_ON"

    return-object p0

    :pswitch_3
    const-string p0, "STATE_OFF"

    return-object p0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static b(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, "unknown"

    return-object p0

    :cond_0
    const-string p0, "STATE_DISCONNECTING"

    return-object p0

    :cond_1
    const-string p0, "STATE_CONNECTED"

    return-object p0

    :cond_2
    const-string p0, "STATE_CONNECTING"

    return-object p0

    :cond_3
    const-string p0, "STATE_DISCONNECTED"

    return-object p0
.end method

.method public static c(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, "unknown"

    return-object p0

    :cond_0
    const-string p0, "STATE_DISCONNECTING"

    return-object p0

    :cond_1
    const-string p0, "STATE_CONNECTED"

    return-object p0

    :cond_2
    const-string p0, "STATE_CONNECTING"

    return-object p0

    :cond_3
    const-string p0, "STATE_DISCONNECTED"

    return-object p0
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method protected abstract a(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public a(Landroid/content/Context;Landroid/content/Intent;Lcom/tencent/liteav/audio/impl/route/h;)V
    .locals 3

    .line 37
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, -0x1

    const-string v0, "android.bluetooth.adapter.extra.STATE"

    .line 38
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "android.bluetooth.adapter.extra.PREVIOUS_STATE"

    .line 39
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    .line 41
    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/route/b;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, p2, v2

    const/4 v1, 0x1

    invoke-static {p1}, Lcom/tencent/liteav/audio/impl/route/b;->a(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    const-string p1, "BluetoohHeadsetCheckBase"

    const-string v1, "receive ACTION_STATE_CHANGED, EXTRA_STATE: %s, EXTRA_PREVIOUS_STATE: %s"

    .line 40
    invoke-static {p1, v1, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 p2, 0xa

    if-ne v0, p2, :cond_0

    const-string p2, "BT off"

    .line 44
    invoke-static {p1, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "DEVICE_BLUETOOTHHEADSET"

    .line 45
    invoke-virtual {p3, p1, v2}, Lcom/tencent/liteav/audio/impl/route/h;->a(Ljava/lang/String;Z)Z

    goto :goto_0

    :cond_0
    const/16 p2, 0xc

    if-ne v0, p2, :cond_2

    const-string p2, "BT OFF-->ON, need update its visibility."

    .line 47
    invoke-static {p1, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/tencent/liteav/audio/impl/route/b;->a(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Landroid/content/IntentFilter;Landroid/content/IntentFilter;)V
    .locals 1

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 26
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.bluetooth.device.action.ACL_CONNECTED"

    .line 27
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.bluetooth.device.action.ACL_DISCONNECTED"

    .line 28
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/tencent/liteav/audio/impl/route/b;->b(Landroid/content/IntentFilter;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public abstract a(Landroid/content/Context;Lcom/tencent/liteav/audio/impl/route/h;)Z
.end method

.method public abstract b()V
.end method

.method protected abstract b(Landroid/content/IntentFilter;Landroid/content/IntentFilter;)V
.end method

.method public abstract c()Z
.end method
