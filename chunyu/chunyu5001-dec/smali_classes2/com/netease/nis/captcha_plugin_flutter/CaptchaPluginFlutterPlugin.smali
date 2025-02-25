.class public final Lcom/netease/nis/captcha_plugin_flutter/CaptchaPluginFlutterPlugin;
.super Ljava/lang/Object;
.source "CaptchaPluginFlutterPlugin.kt"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;
.implements Lio/flutter/embedding/engine/plugins/activity/ActivityAware;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0012\u0010\u0013\u001a\u00020\u00102\u0008\u0008\u0001\u0010\u0014\u001a\u00020\u0015H\u0016J\u0008\u0010\u0016\u001a\u00020\u0010H\u0016J\u0008\u0010\u0017\u001a\u00020\u0010H\u0016J\u0012\u0010\u0018\u001a\u00020\u00102\u0008\u0008\u0001\u0010\u0011\u001a\u00020\u0015H\u0016J\u001c\u0010\u0019\u001a\u00020\u00102\u0008\u0008\u0001\u0010\u001a\u001a\u00020\u001b2\u0008\u0008\u0001\u0010\u001c\u001a\u00020\u001dH\u0016J\u0010\u0010\u001e\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082D\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082.\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/netease/nis/captcha_plugin_flutter/CaptchaPluginFlutterPlugin;",
        "Lio/flutter/embedding/engine/plugins/FlutterPlugin;",
        "Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;",
        "Lio/flutter/embedding/engine/plugins/activity/ActivityAware;",
        "()V",
        "EVENT_CHANNEL",
        "",
        "METHOD_CHANNEL",
        "callHandler",
        "Lcom/netease/nis/captcha_plugin_flutter/CaptchaHelper;",
        "channel",
        "Lio/flutter/plugin/common/MethodChannel;",
        "mActivity",
        "Ljava/lang/ref/WeakReference;",
        "Landroid/app/Activity;",
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
        "onMethodCall",
        "call",
        "Lio/flutter/plugin/common/MethodCall;",
        "result",
        "Lio/flutter/plugin/common/MethodChannel$Result;",
        "onReattachedToActivityForConfigChanges",
        "captcha_plugin_flutter_release"
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
.field private final EVENT_CHANNEL:Ljava/lang/String;

.field private final METHOD_CHANNEL:Ljava/lang/String;

.field private callHandler:Lcom/netease/nis/captcha_plugin_flutter/CaptchaHelper;

.field private channel:Lio/flutter/plugin/common/MethodChannel;

.field private mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "yd_captcha_flutter_method_channel"

    .line 26
    iput-object v0, p0, Lcom/netease/nis/captcha_plugin_flutter/CaptchaPluginFlutterPlugin;->METHOD_CHANNEL:Ljava/lang/String;

    const-string v0, "yd_captcha_flutter_event_channel"

    .line 27
    iput-object v0, p0, Lcom/netease/nis/captcha_plugin_flutter/CaptchaPluginFlutterPlugin;->EVENT_CHANNEL:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getCallHandler$p(Lcom/netease/nis/captcha_plugin_flutter/CaptchaPluginFlutterPlugin;)Lcom/netease/nis/captcha_plugin_flutter/CaptchaHelper;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/netease/nis/captcha_plugin_flutter/CaptchaPluginFlutterPlugin;->callHandler:Lcom/netease/nis/captcha_plugin_flutter/CaptchaHelper;

    return-object p0
.end method


# virtual methods
.method public onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 2

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "activity:"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CaptchaPlugin"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/netease/nis/captcha_plugin_flutter/CaptchaPluginFlutterPlugin;->mActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 3

    const-string v0, "flutterPluginBinding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/nis/captcha_plugin_flutter/CaptchaPluginFlutterPlugin;->METHOD_CHANNEL:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/nis/captcha_plugin_flutter/CaptchaPluginFlutterPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    .line 33
    iget-object v0, p0, Lcom/netease/nis/captcha_plugin_flutter/CaptchaPluginFlutterPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    if-nez v0, :cond_0

    const-string v0, "channel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    move-object v1, p0

    check-cast v1, Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;

    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 35
    new-instance v0, Lcom/netease/nis/captcha_plugin_flutter/CaptchaHelper;

    invoke-direct {v0}, Lcom/netease/nis/captcha_plugin_flutter/CaptchaHelper;-><init>()V

    iput-object v0, p0, Lcom/netease/nis/captcha_plugin_flutter/CaptchaPluginFlutterPlugin;->callHandler:Lcom/netease/nis/captcha_plugin_flutter/CaptchaHelper;

    .line 36
    new-instance v0, Lio/flutter/plugin/common/EventChannel;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object p1

    iget-object v1, p0, Lcom/netease/nis/captcha_plugin_flutter/CaptchaPluginFlutterPlugin;->EVENT_CHANNEL:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lio/flutter/plugin/common/EventChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    new-instance p1, Lcom/netease/nis/captcha_plugin_flutter/CaptchaPluginFlutterPlugin$onAttachedToEngine$1;

    invoke-direct {p1, p0}, Lcom/netease/nis/captcha_plugin_flutter/CaptchaPluginFlutterPlugin$onAttachedToEngine$1;-><init>(Lcom/netease/nis/captcha_plugin_flutter/CaptchaPluginFlutterPlugin;)V

    check-cast p1, Lio/flutter/plugin/common/EventChannel$StreamHandler;

    invoke-virtual {v0, p1}, Lio/flutter/plugin/common/EventChannel;->setStreamHandler(Lio/flutter/plugin/common/EventChannel$StreamHandler;)V

    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 1

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcom/netease/nis/captcha_plugin_flutter/CaptchaPluginFlutterPlugin;->mActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 0

    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object p1, p0, Lcom/netease/nis/captcha_plugin_flutter/CaptchaPluginFlutterPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "channel"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    return-void
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    const-string v1, "onMethodCall:"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CaptchaPlugin"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0xf4692e0

    if-eq v1, v2, :cond_8

    const v2, 0x316510

    if-eq v1, v2, :cond_3

    const p1, 0x381258bd

    if-eq v1, p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "showCaptcha"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 58
    :cond_1
    iget-object p1, p0, Lcom/netease/nis/captcha_plugin_flutter/CaptchaPluginFlutterPlugin;->callHandler:Lcom/netease/nis/captcha_plugin_flutter/CaptchaHelper;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/netease/nis/captcha_plugin_flutter/CaptchaHelper;->showCaptcha()V

    goto :goto_1

    :cond_3
    const-string v1, "init"

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    .line 52
    :cond_4
    iget-object p2, p0, Lcom/netease/nis/captcha_plugin_flutter/CaptchaPluginFlutterPlugin;->mActivity:Ljava/lang/ref/WeakReference;

    if-nez p2, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/Activity;

    if-nez p2, :cond_6

    goto :goto_1

    .line 53
    :cond_6
    iget-object v0, p0, Lcom/netease/nis/captcha_plugin_flutter/CaptchaPluginFlutterPlugin;->callHandler:Lcom/netease/nis/captcha_plugin_flutter/CaptchaHelper;

    if-nez v0, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {v0, p2, p1}, Lcom/netease/nis/captcha_plugin_flutter/CaptchaHelper;->init(Landroid/app/Activity;Lio/flutter/plugin/common/MethodCall;)V

    goto :goto_1

    :cond_8
    const-string p1, "destroyCaptcha"

    .line 50
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    .line 61
    :cond_9
    iget-object p1, p0, Lcom/netease/nis/captcha_plugin_flutter/CaptchaPluginFlutterPlugin;->callHandler:Lcom/netease/nis/captcha_plugin_flutter/CaptchaHelper;

    if-nez p1, :cond_a

    goto :goto_1

    :cond_a
    invoke-virtual {p1}, Lcom/netease/nis/captcha_plugin_flutter/CaptchaHelper;->destroy()V

    goto :goto_1

    .line 64
    :cond_b
    :goto_0
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    :goto_1
    return-void
.end method

.method public onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/netease/nis/captcha_plugin_flutter/CaptchaPluginFlutterPlugin;->mActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method
