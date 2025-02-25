.class Lcom/tencent/liteav/audio/impl/route/e$b;
.super Lcom/tencent/liteav/audio/impl/route/b;
.source "TXCAudioRouteManager.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/audio/impl/route/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/audio/impl/route/e;

.field private b:Landroid/content/Context;

.field private c:Lcom/tencent/liteav/audio/impl/route/h;

.field private d:Landroid/bluetooth/BluetoothAdapter;

.field private e:Landroid/bluetooth/BluetoothProfile;

.field private final f:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/audio/impl/route/e;)V
    .locals 0

    .line 1555
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e$b;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-direct {p0}, Lcom/tencent/liteav/audio/impl/route/b;-><init>()V

    const/4 p1, 0x0

    .line 1556
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e$b;->b:Landroid/content/Context;

    .line 1557
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e$b;->c:Lcom/tencent/liteav/audio/impl/route/h;

    .line 1558
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e$b;->d:Landroid/bluetooth/BluetoothAdapter;

    .line 1559
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e$b;->e:Landroid/bluetooth/BluetoothProfile;

    .line 1560
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e$b;->f:Ljava/lang/Object;

    return-void
.end method

.method private d()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 1609
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e$b;->e:Landroid/bluetooth/BluetoothProfile;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1615
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e$b;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/route/e;->b(Lcom/tencent/liteav/audio/impl/route/e;)Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->VersionInt()I

    move-result v0

    const/16 v3, 0x1f

    if-lt v0, v3, :cond_2

    .line 1616
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e$b;->a:Lcom/tencent/liteav/audio/impl/route/e;

    .line 1617
    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/route/e;->b(Lcom/tencent/liteav/audio/impl/route/e;)Landroid/content/Context;

    move-result-object v0

    const-string v3, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    move v2, v0

    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    .line 1620
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e$b;->e:Landroid/bluetooth/BluetoothProfile;

    invoke-interface {v0}, Landroid/bluetooth/BluetoothProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1623
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get connected devices failed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TXCAudioRouteManager"

    invoke-static {v2, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-object v1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "BluetoohHeadsetCheck"

    return-object v0
.end method

.method protected a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 1730
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    const/16 p1, 0xa

    const-string v2, "android.bluetooth.profile.extra.STATE"

    .line 1731
    invoke-virtual {p2, v2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/16 v2, 0xc

    if-ne p2, v2, :cond_0

    .line 1733
    iget-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e$b;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {p1}, Lcom/tencent/liteav/audio/impl/route/e;->o(Lcom/tencent/liteav/audio/impl/route/e;)Lcom/tencent/liteav/audio/impl/route/d;

    move-result-object p1

    sget-object p2, Lcom/tencent/liteav/audio/impl/route/d;->f:Lcom/tencent/liteav/audio/impl/route/d;

    if-ne p1, p2, :cond_9

    const-string p1, "TXCAudioRouteManager"

    const-string p2, "receive bluetooth audio state changed to SCO_CONNECTED"

    .line 1734
    invoke-static {p1, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1735
    iget-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e$b;->a:Lcom/tencent/liteav/audio/impl/route/e;

    sget-object p2, Lcom/tencent/liteav/audio/impl/route/d;->g:Lcom/tencent/liteav/audio/impl/route/d;

    invoke-static {p1, p2}, Lcom/tencent/liteav/audio/impl/route/e;->a(Lcom/tencent/liteav/audio/impl/route/e;Lcom/tencent/liteav/audio/impl/route/d;)Lcom/tencent/liteav/audio/impl/route/d;

    .line 1736
    iget-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e$b;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {p1}, Lcom/tencent/liteav/audio/impl/route/e;->p(Lcom/tencent/liteav/audio/impl/route/e;)[Z

    move-result-object p1

    monitor-enter p1

    .line 1737
    :try_start_0
    iget-object p2, p0, Lcom/tencent/liteav/audio/impl/route/e$b;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {p2}, Lcom/tencent/liteav/audio/impl/route/e;->p(Lcom/tencent/liteav/audio/impl/route/e;)[Z

    move-result-object p2

    aput-boolean v1, p2, v0

    .line 1738
    iget-object p2, p0, Lcom/tencent/liteav/audio/impl/route/e$b;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {p2}, Lcom/tencent/liteav/audio/impl/route/e;->p(Lcom/tencent/liteav/audio/impl/route/e;)[Z

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 1739
    monitor-exit p1

    goto/16 :goto_2

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_0
    if-ne p2, p1, :cond_9

    .line 1743
    iget-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e$b;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {p1, v1}, Lcom/tencent/liteav/audio/impl/route/e;->a(Lcom/tencent/liteav/audio/impl/route/e;Z)V

    const-string p1, "TXCAudioRouteManager"

    const-string p2, "receive bluetooth audio state changed to STATE_AUDIO_DISCONNECTED"

    .line 1744
    invoke-static {p1, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1746
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v2, 0x2

    const/4 v3, -0x1

    if-eqz p1, :cond_4

    const-string p1, "android.bluetooth.profile.extra.STATE"

    .line 1747
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    new-array p2, v1, [Ljava/lang/Object;

    .line 1749
    invoke-static {p1}, Lcom/tencent/liteav/audio/impl/route/e$b;->c(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v0

    const-string v3, "TXCAudioRouteManager"

    const-string v4, "receive bluetooth headset connection state changed: %s"

    .line 1748
    invoke-static {v3, v4, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_3

    if-eq p1, v2, :cond_2

    goto/16 :goto_2

    .line 1756
    :cond_2
    iget-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e$b;->a:Lcom/tencent/liteav/audio/impl/route/e;

    sget-object p2, Lcom/tencent/liteav/audio/impl/route/d;->d:Lcom/tencent/liteav/audio/impl/route/d;

    invoke-static {p1, p2}, Lcom/tencent/liteav/audio/impl/route/e;->a(Lcom/tencent/liteav/audio/impl/route/e;Lcom/tencent/liteav/audio/impl/route/d;)Lcom/tencent/liteav/audio/impl/route/d;

    .line 1757
    iget-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e$b;->c:Lcom/tencent/liteav/audio/impl/route/h;

    const-string p2, "DEVICE_BLUETOOTHHEADSET"

    invoke-virtual {p1, p2, v1}, Lcom/tencent/liteav/audio/impl/route/h;->a(Ljava/lang/String;Z)Z

    const-string p1, "TXCAudioRouteManager"

    const-string p2, "ACTION_CONNECTION_STATE_CHANGED BluetoothProfile.STATE_CONNECTED"

    .line 1758
    invoke-static {p1, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1759
    iget-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e$b;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {p1, v0}, Lcom/tencent/liteav/audio/impl/route/e;->a(Lcom/tencent/liteav/audio/impl/route/e;Z)V

    goto/16 :goto_2

    .line 1752
    :cond_3
    iget-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e$b;->a:Lcom/tencent/liteav/audio/impl/route/e;

    sget-object p2, Lcom/tencent/liteav/audio/impl/route/d;->c:Lcom/tencent/liteav/audio/impl/route/d;

    invoke-static {p1, p2}, Lcom/tencent/liteav/audio/impl/route/e;->a(Lcom/tencent/liteav/audio/impl/route/e;Lcom/tencent/liteav/audio/impl/route/d;)Lcom/tencent/liteav/audio/impl/route/d;

    .line 1753
    iget-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e$b;->c:Lcom/tencent/liteav/audio/impl/route/h;

    const-string p2, "DEVICE_BLUETOOTHHEADSET"

    invoke-virtual {p1, p2, v0}, Lcom/tencent/liteav/audio/impl/route/h;->a(Ljava/lang/String;Z)Z

    goto/16 :goto_2

    .line 1762
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v4, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    .line 1763
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v4, "android.bluetooth.adapter.extra.PREVIOUS_CONNECTION_STATE"

    .line 1764
    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "android.bluetooth.device.extra.DEVICE"

    .line 1765
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    .line 1766
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "receive bluetooth connection state changed, EXTRA_CONNECTION_STATE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1767
    invoke-static {p1}, Lcom/tencent/liteav/audio/impl/route/e$b;->b(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", EXTRA_PREVIOUS_CONNECTION_STATE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1768
    invoke-static {v3}, Lcom/tencent/liteav/audio/impl/route/e$b;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", EXTRA_DEVICE "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_5

    .line 1769
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_5
    const-string v3, "unknown name"

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TXCAudioRouteManager"

    .line 1766
    invoke-static {v4, v3}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-ne p1, v2, :cond_8

    if-eqz p2, :cond_6

    .line 1772
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_6
    const-string p1, "unkown"

    :goto_1
    const-string p2, "FreeBuds"

    .line 1773
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 1774
    iget-object p2, p0, Lcom/tencent/liteav/audio/impl/route/e$b;->c:Lcom/tencent/liteav/audio/impl/route/h;

    const-string v0, "DEVICE_BLUETOOTHHEADSET"

    invoke-virtual {p2, v0, v1}, Lcom/tencent/liteav/audio/impl/route/h;->a(Ljava/lang/String;Z)Z

    .line 1776
    :cond_7
    iget-object p2, p0, Lcom/tencent/liteav/audio/impl/route/e$b;->c:Lcom/tencent/liteav/audio/impl/route/h;

    invoke-virtual {p2, p1}, Lcom/tencent/liteav/audio/impl/route/h;->b(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    if-nez p1, :cond_9

    .line 1778
    iget-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e$b;->c:Lcom/tencent/liteav/audio/impl/route/h;

    const-string p2, "DEVICE_BLUETOOTHHEADSET"

    invoke-virtual {p1, p2, v0}, Lcom/tencent/liteav/audio/impl/route/h;->a(Ljava/lang/String;Z)Z

    :cond_9
    :goto_2
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/tencent/liteav/audio/impl/route/h;)Z
    .locals 3

    const-string v0, ""

    .line 1565
    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->LogTraceEntry(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 1571
    :cond_0
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e$b;->b:Landroid/content/Context;

    .line 1572
    iput-object p2, p0, Lcom/tencent/liteav/audio/impl/route/e$b;->c:Lcom/tencent/liteav/audio/impl/route/h;

    .line 1573
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e$b;->d:Landroid/bluetooth/BluetoothAdapter;

    .line 1574
    iget-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e$b;->d:Landroid/bluetooth/BluetoothAdapter;

    if-nez p1, :cond_1

    const-string p1, "TXCAudioRouteManager"

    const-string p2, "getDefaultAdapter return null!"

    .line 1575
    invoke-static {p1, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 1579
    :cond_1
    iget-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e$b;->f:Ljava/lang/Object;

    monitor-enter p1

    .line 1580
    :try_start_0
    iget-object p2, p0, Lcom/tencent/liteav/audio/impl/route/e$b;->d:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/tencent/liteav/audio/impl/route/e$b;->e:Landroid/bluetooth/BluetoothProfile;

    if-nez p2, :cond_2

    .line 1581
    iget-object p2, p0, Lcom/tencent/liteav/audio/impl/route/e$b;->d:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/route/e$b;->b:Landroid/content/Context;

    invoke-virtual {p2, v2, p0, v1}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "TXCAudioRouteManager"

    const-string v1, "BluetoohHeadsetCheck: getProfileProxy HEADSET fail!"

    .line 1582
    invoke-static {p2, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1583
    monitor-exit p1

    return v0

    .line 1586
    :cond_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1587
    invoke-static {}, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->LogTraceExit()V

    return v1

    :catchall_0
    move-exception p2

    .line 1586
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    :cond_3
    :goto_0
    const-string p1, "TXCAudioRouteManager"

    const-string p2, "err ctx is null or devCfg is null"

    .line 1567
    invoke-static {p1, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public b()V
    .locals 4

    .line 1593
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " profile:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e$b;->e:Landroid/bluetooth/BluetoothProfile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->LogTraceEntry(Ljava/lang/String;)V

    .line 1594
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e$b;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 1596
    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e$b;->d:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_1

    .line 1597
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e$b;->e:Landroid/bluetooth/BluetoothProfile;

    if-eqz v1, :cond_0

    .line 1598
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e$b;->d:Landroid/bluetooth/BluetoothAdapter;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/tencent/liteav/audio/impl/route/e$b;->e:Landroid/bluetooth/BluetoothProfile;

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    :cond_0
    const/4 v1, 0x0

    .line 1599
    iput-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e$b;->e:Landroid/bluetooth/BluetoothProfile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "TXCAudioRouteManager"

    const-string v3, "closeProfileProxy failed."

    .line 1602
    invoke-static {v2, v3, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1604
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1605
    invoke-static {}, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->LogTraceExit()V

    return-void

    .line 1604
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected b(Landroid/content/IntentFilter;Landroid/content/IntentFilter;)V
    .locals 1

    .line 1722
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "add extra action "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/liteav/audio/impl/route/e$b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TXCAudioRouteManager"

    invoke-static {v0, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    .line 1723
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    .line 1724
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    .line 1725
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public c()Z
    .locals 3

    .line 1631
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e$b;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 1632
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/liteav/audio/impl/route/e$b;->d()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1634
    monitor-exit v0

    return v2

    .line 1636
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v2, 0x1

    .line 1637
    :cond_1
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 8

    .line 1644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " profile:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e$b;->e:Landroid/bluetooth/BluetoothProfile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " profile:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " proxy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->LogTraceEntry(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    .line 1650
    :cond_0
    iget-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e$b;->f:Ljava/lang/Object;

    monitor-enter p1

    .line 1651
    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e$b;->e:Landroid/bluetooth/BluetoothProfile;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e$b;->e:Landroid/bluetooth/BluetoothProfile;

    if-eq v1, p2, :cond_1

    const-string v1, "TXCAudioRouteManager"

    .line 1652
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BluetoohHeadsetCheck: HEADSET Connected proxy:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", profile:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tencent/liteav/audio/impl/route/e$b;->e:Landroid/bluetooth/BluetoothProfile;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1654
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e$b;->d:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/route/e$b;->e:Landroid/bluetooth/BluetoothProfile;

    invoke-virtual {v1, v0, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    const/4 v1, 0x0

    .line 1655
    iput-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e$b;->e:Landroid/bluetooth/BluetoothProfile;

    .line 1658
    :cond_1
    iput-object p2, p0, Lcom/tencent/liteav/audio/impl/route/e$b;->e:Landroid/bluetooth/BluetoothProfile;

    .line 1659
    invoke-direct {p0}, Lcom/tencent/liteav/audio/impl/route/e$b;->d()Ljava/util/List;

    move-result-object p2

    const/4 v1, 0x0

    if-eqz p2, :cond_4

    .line 1661
    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/route/e$b;->e:Landroid/bluetooth/BluetoothProfile;

    if-eqz v2, :cond_4

    const-string v2, "TXCAudioRouteManager"

    .line 1662
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HEADSET Connected devs:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", profile:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/tencent/liteav/audio/impl/route/e$b;->e:Landroid/bluetooth/BluetoothProfile;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    .line 1664
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1666
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1669
    :try_start_1
    iget-object v4, p0, Lcom/tencent/liteav/audio/impl/route/e$b;->e:Landroid/bluetooth/BluetoothProfile;

    if-eqz v4, :cond_2

    .line 1670
    iget-object v4, p0, Lcom/tencent/liteav/audio/impl/route/e$b;->e:Landroid/bluetooth/BluetoothProfile;

    invoke-interface {v4, v3}, Landroid/bluetooth/BluetoothProfile;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v4

    :try_start_2
    const-string v5, "TXCAudioRouteManager"

    .line 1673
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get bluetooth connection state failed."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move v4, v1

    :goto_1
    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 1677
    iget-object v6, p0, Lcom/tencent/liteav/audio/impl/route/e$b;->c:Lcom/tencent/liteav/audio/impl/route/h;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/tencent/liteav/audio/impl/route/h;->b(Ljava/lang/String;)V

    :cond_3
    const-string v6, "TXCAudioRouteManager"

    const-string v7, "bluetooth state, device: %s, state: %s"

    new-array v5, v5, [Ljava/lang/Object;

    .line 1680
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v1

    invoke-static {v4}, Lcom/tencent/liteav/audio/impl/route/e$b;->b(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v0

    .line 1679
    invoke-static {v6, v7, v5}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1683
    :cond_4
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1684
    iget-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e$b;->c:Lcom/tencent/liteav/audio/impl/route/h;

    if-eqz p1, :cond_7

    .line 1685
    iget-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e$b;->a:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {p1}, Lcom/tencent/liteav/audio/impl/route/e;->c(Lcom/tencent/liteav/audio/impl/route/e;)Lcom/tencent/liteav/audio/impl/route/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/liteav/audio/impl/route/h;->d()Ljava/lang/String;

    move-result-object p1

    .line 1687
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1688
    iget-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e$b;->c:Lcom/tencent/liteav/audio/impl/route/h;

    const-string p2, "DEVICE_BLUETOOTHHEADSET"

    invoke-virtual {p1, p2, v1}, Lcom/tencent/liteav/audio/impl/route/h;->a(Ljava/lang/String;Z)Z

    goto :goto_2

    .line 1689
    :cond_5
    invoke-virtual {p0}, Lcom/tencent/liteav/audio/impl/route/e$b;->c()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1690
    iget-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e$b;->c:Lcom/tencent/liteav/audio/impl/route/h;

    const-string p2, "DEVICE_BLUETOOTHHEADSET"

    invoke-virtual {p1, p2, v0}, Lcom/tencent/liteav/audio/impl/route/h;->a(Ljava/lang/String;Z)Z

    .line 1691
    iget-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e$b;->a:Lcom/tencent/liteav/audio/impl/route/e;

    const-string p2, "DEVICE_BLUETOOTHHEADSET"

    invoke-static {p1, p2, v0}, Lcom/tencent/liteav/audio/impl/route/e;->a(Lcom/tencent/liteav/audio/impl/route/e;Ljava/lang/String;Z)V

    goto :goto_2

    .line 1693
    :cond_6
    iget-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e$b;->c:Lcom/tencent/liteav/audio/impl/route/h;

    const-string p2, "DEVICE_BLUETOOTHHEADSET"

    invoke-virtual {p1, p2, v1}, Lcom/tencent/liteav/audio/impl/route/h;->a(Ljava/lang/String;Z)Z

    .line 1697
    :cond_7
    :goto_2
    invoke-static {}, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->LogTraceExit()V

    return-void

    :catchall_0
    move-exception p2

    .line 1683
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p2
.end method

.method public onServiceDisconnected(I)V
    .locals 3

    .line 1703
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_profile:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e$b;->e:Landroid/bluetooth/BluetoothProfile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " profile:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->LogTraceEntry(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    const-string p1, "TXCAudioRouteManager"

    const-string v1, "TRAEBluetoohProxy: HEADSET Disconnected"

    .line 1705
    invoke-static {p1, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1706
    invoke-virtual {p0}, Lcom/tencent/liteav/audio/impl/route/e$b;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1707
    iget-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e$b;->a:Lcom/tencent/liteav/audio/impl/route/e;

    const/4 v1, 0x0

    const-string v2, "DEVICE_BLUETOOTHHEADSET"

    invoke-static {p1, v2, v1}, Lcom/tencent/liteav/audio/impl/route/e;->a(Lcom/tencent/liteav/audio/impl/route/e;Ljava/lang/String;Z)V

    .line 1710
    :cond_0
    iget-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e$b;->f:Ljava/lang/Object;

    monitor-enter p1

    .line 1711
    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e$b;->e:Landroid/bluetooth/BluetoothProfile;

    if-eqz v1, :cond_1

    .line 1712
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e$b;->d:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/route/e$b;->e:Landroid/bluetooth/BluetoothProfile;

    invoke-virtual {v1, v0, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    const/4 v0, 0x0

    .line 1713
    iput-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e$b;->e:Landroid/bluetooth/BluetoothProfile;

    .line 1715
    :cond_1
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1717
    :cond_2
    :goto_0
    invoke-static {}, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->LogTraceExit()V

    return-void
.end method
