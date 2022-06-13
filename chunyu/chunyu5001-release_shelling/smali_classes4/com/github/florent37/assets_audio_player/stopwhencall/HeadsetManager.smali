.class public final Lcom/github/florent37/assets_audio_player/stopwhencall/HeadsetManager;
.super Ljava/lang/Object;
.source "HeadsetManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u0013\u001a\u00020\u0008J\u0006\u0010\u0014\u001a\u00020\u0008J\n\u0010\u0015\u001a\u00020\u0007*\u00020\u0003R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R(\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/github/florent37/assets_audio_player/stopwhencall/HeadsetManager;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "onHeadsetPluggedListener",
        "Lkotlin/Function1;",
        "",
        "",
        "getOnHeadsetPluggedListener",
        "()Lkotlin/jvm/functions/Function1;",
        "setOnHeadsetPluggedListener",
        "(Lkotlin/jvm/functions/Function1;)V",
        "profileListener",
        "Landroid/bluetooth/BluetoothProfile$ServiceListener;",
        "getProfileListener",
        "()Landroid/bluetooth/BluetoothProfile$ServiceListener;",
        "receiver",
        "Lcom/github/florent37/assets_audio_player/stopwhencall/MusicIntentReceiver;",
        "start",
        "stop",
        "hasPermissionBluetooth",
        "assets_audio_player_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private onHeadsetPluggedListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final profileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private final receiver:Lcom/github/florent37/assets_audio_player/stopwhencall/MusicIntentReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/florent37/assets_audio_player/stopwhencall/HeadsetManager;->context:Landroid/content/Context;

    .line 43
    new-instance p1, Lcom/github/florent37/assets_audio_player/stopwhencall/MusicIntentReceiver;

    invoke-direct {p1}, Lcom/github/florent37/assets_audio_player/stopwhencall/MusicIntentReceiver;-><init>()V

    .line 44
    new-instance v0, Lcom/github/florent37/assets_audio_player/stopwhencall/HeadsetManager$receiver$1$1;

    invoke-direct {v0, p0}, Lcom/github/florent37/assets_audio_player/stopwhencall/HeadsetManager$receiver$1$1;-><init>(Lcom/github/florent37/assets_audio_player/stopwhencall/HeadsetManager;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, v0}, Lcom/github/florent37/assets_audio_player/stopwhencall/MusicIntentReceiver;->setPluggedListener(Lkotlin/jvm/functions/Function1;)V

    .line 43
    iput-object p1, p0, Lcom/github/florent37/assets_audio_player/stopwhencall/HeadsetManager;->receiver:Lcom/github/florent37/assets_audio_player/stopwhencall/MusicIntentReceiver;

    .line 49
    new-instance p1, Lcom/github/florent37/assets_audio_player/stopwhencall/HeadsetManager$profileListener$1;

    invoke-direct {p1, p0}, Lcom/github/florent37/assets_audio_player/stopwhencall/HeadsetManager$profileListener$1;-><init>(Lcom/github/florent37/assets_audio_player/stopwhencall/HeadsetManager;)V

    check-cast p1, Landroid/bluetooth/BluetoothProfile$ServiceListener;

    iput-object p1, p0, Lcom/github/florent37/assets_audio_player/stopwhencall/HeadsetManager;->profileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-void
.end method


# virtual methods
.method public final getOnHeadsetPluggedListener()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/stopwhencall/HeadsetManager;->onHeadsetPluggedListener:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getProfileListener()Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/stopwhencall/HeadsetManager;->profileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-object v0
.end method

.method public final hasPermissionBluetooth(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x1000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 93
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    const-string v0, "packageInfo.requestedPermissions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, [Ljava/lang/Object;

    const-string v0, "android.permission.BLUETOOTH"

    invoke-static {p1, v0}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    const/4 p1, 0x0

    return p1
.end method

.method public final setOnHeadsetPluggedListener(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lcom/github/florent37/assets_audio_player/stopwhencall/HeadsetManager;->onHeadsetPluggedListener:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final start()V
    .locals 4

    .line 65
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    .line 71
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/stopwhencall/HeadsetManager;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/github/florent37/assets_audio_player/stopwhencall/HeadsetManager;->receiver:Lcom/github/florent37/assets_audio_player/stopwhencall/MusicIntentReceiver;

    check-cast v1, Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 72
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/stopwhencall/HeadsetManager;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/github/florent37/assets_audio_player/stopwhencall/HeadsetManager;->receiver:Lcom/github/florent37/assets_audio_player/stopwhencall/MusicIntentReceiver;

    check-cast v1, Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/stopwhencall/HeadsetManager;->context:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/github/florent37/assets_audio_player/stopwhencall/HeadsetManager;->hasPermissionBluetooth(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/github/florent37/assets_audio_player/stopwhencall/HeadsetManager;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/github/florent37/assets_audio_player/stopwhencall/HeadsetManager;->profileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    :goto_0
    return-void
.end method

.method public final stop()V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/github/florent37/assets_audio_player/stopwhencall/HeadsetManager;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/github/florent37/assets_audio_player/stopwhencall/HeadsetManager;->receiver:Lcom/github/florent37/assets_audio_player/stopwhencall/MusicIntentReceiver;

    check-cast v1, Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
