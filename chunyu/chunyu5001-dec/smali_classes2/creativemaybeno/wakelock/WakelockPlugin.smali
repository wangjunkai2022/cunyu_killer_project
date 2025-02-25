.class public final Lcreativemaybeno/wakelock/WakelockPlugin;
.super Ljava/lang/Object;
.source "WakelockPlugin.kt"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lcreativemaybeno/wakelock/Messages$WakelockApi;
.implements Lio/flutter/embedding/engine/plugins/activity/ActivityAware;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0012\u0010\r\u001a\u00020\n2\u0008\u0008\u0001\u0010\u000e\u001a\u00020\u000fH\u0016J\u0008\u0010\u0010\u001a\u00020\nH\u0016J\u0008\u0010\u0011\u001a\u00020\nH\u0016J\u0012\u0010\u0012\u001a\u00020\n2\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u000fH\u0016J\u0010\u0010\u0013\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0012\u0010\u0014\u001a\u00020\n2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcreativemaybeno/wakelock/WakelockPlugin;",
        "Lio/flutter/embedding/engine/plugins/FlutterPlugin;",
        "Lcreativemaybeno/wakelock/Messages$WakelockApi;",
        "Lio/flutter/embedding/engine/plugins/activity/ActivityAware;",
        "()V",
        "wakelock",
        "Lcreativemaybeno/wakelock/Wakelock;",
        "isEnabled",
        "Lcreativemaybeno/wakelock/Messages$IsEnabledMessage;",
        "onAttachedToActivity",
        "",
        "binding",
        "Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;",
        "onAttachedToEngine",
        "flutterPluginBinding",
        "Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;",
        "onDetachedFromActivity",
        "onDetachedFromActivityForConfigChanges",
        "onDetachedFromEngine",
        "onReattachedToActivityForConfigChanges",
        "toggle",
        "arg",
        "Lcreativemaybeno/wakelock/Messages$ToggleMessage;",
        "wakelock_release"
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
.field private wakelock:Lcreativemaybeno/wakelock/Wakelock;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isEnabled()Lcreativemaybeno/wakelock/Messages$IsEnabledMessage;
    .locals 1

    .line 46
    iget-object v0, p0, Lcreativemaybeno/wakelock/WakelockPlugin;->wakelock:Lcreativemaybeno/wakelock/Wakelock;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcreativemaybeno/wakelock/Wakelock;->isEnabled()Lcreativemaybeno/wakelock/Messages$IsEnabledMessage;

    move-result-object v0

    return-object v0
.end method

.method public onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcreativemaybeno/wakelock/WakelockPlugin;->wakelock:Lcreativemaybeno/wakelock/Wakelock;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcreativemaybeno/wakelock/Wakelock;->setActivity(Landroid/app/Activity;)V

    :goto_0
    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 1

    const-string v0, "flutterPluginBinding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object p1

    move-object v0, p0

    check-cast v0, Lcreativemaybeno/wakelock/Messages$WakelockApi;

    invoke-static {p1, v0}, Lcreativemaybeno/wakelock/Messages$WakelockApi$-CC;->setup(Lio/flutter/plugin/common/BinaryMessenger;Lcreativemaybeno/wakelock/Messages$WakelockApi;)V

    .line 17
    new-instance p1, Lcreativemaybeno/wakelock/Wakelock;

    invoke-direct {p1}, Lcreativemaybeno/wakelock/Wakelock;-><init>()V

    iput-object p1, p0, Lcreativemaybeno/wakelock/WakelockPlugin;->wakelock:Lcreativemaybeno/wakelock/Wakelock;

    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 2

    .line 30
    iget-object v0, p0, Lcreativemaybeno/wakelock/WakelockPlugin;->wakelock:Lcreativemaybeno/wakelock/Wakelock;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcreativemaybeno/wakelock/Wakelock;->setActivity(Landroid/app/Activity;)V

    :goto_0
    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 0

    .line 38
    invoke-virtual {p0}, Lcreativemaybeno/wakelock/WakelockPlugin;->onDetachedFromActivity()V

    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcreativemaybeno/wakelock/Messages$WakelockApi$-CC;->setup(Lio/flutter/plugin/common/BinaryMessenger;Lcreativemaybeno/wakelock/Messages$WakelockApi;)V

    .line 22
    iput-object v0, p0, Lcreativemaybeno/wakelock/WakelockPlugin;->wakelock:Lcreativemaybeno/wakelock/Wakelock;

    return-void
.end method

.method public onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0, p1}, Lcreativemaybeno/wakelock/WakelockPlugin;->onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V

    return-void
.end method

.method public toggle(Lcreativemaybeno/wakelock/Messages$ToggleMessage;)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcreativemaybeno/wakelock/WakelockPlugin;->wakelock:Lcreativemaybeno/wakelock/Wakelock;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcreativemaybeno/wakelock/Wakelock;->toggle(Lcreativemaybeno/wakelock/Messages$ToggleMessage;)V

    return-void
.end method
