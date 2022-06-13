.class public final Lcom/netease/nis/captcha_plugin_flutter/CaptchaPluginFlutterPlugin$onAttachedToEngine$1;
.super Ljava/lang/Object;
.source "CaptchaPluginFlutterPlugin.kt"

# interfaces
.implements Lio/flutter/plugin/common/EventChannel$StreamHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/nis/captcha_plugin_flutter/CaptchaPluginFlutterPlugin;->onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u001c\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/netease/nis/captcha_plugin_flutter/CaptchaPluginFlutterPlugin$onAttachedToEngine$1",
        "Lio/flutter/plugin/common/EventChannel$StreamHandler;",
        "onCancel",
        "",
        "arguments",
        "",
        "onListen",
        "events",
        "Lio/flutter/plugin/common/EventChannel$EventSink;",
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
.field final synthetic this$0:Lcom/netease/nis/captcha_plugin_flutter/CaptchaPluginFlutterPlugin;


# direct methods
.method constructor <init>(Lcom/netease/nis/captcha_plugin_flutter/CaptchaPluginFlutterPlugin;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nis/captcha_plugin_flutter/CaptchaPluginFlutterPlugin$onAttachedToEngine$1;->this$0:Lcom/netease/nis/captcha_plugin_flutter/CaptchaPluginFlutterPlugin;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onListen(Ljava/lang/Object;Lio/flutter/plugin/common/EventChannel$EventSink;)V
    .locals 0

    .line 39
    iget-object p1, p0, Lcom/netease/nis/captcha_plugin_flutter/CaptchaPluginFlutterPlugin$onAttachedToEngine$1;->this$0:Lcom/netease/nis/captcha_plugin_flutter/CaptchaPluginFlutterPlugin;

    invoke-static {p1}, Lcom/netease/nis/captcha_plugin_flutter/CaptchaPluginFlutterPlugin;->access$getCallHandler$p(Lcom/netease/nis/captcha_plugin_flutter/CaptchaPluginFlutterPlugin;)Lcom/netease/nis/captcha_plugin_flutter/CaptchaHelper;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Lcom/netease/nis/captcha_plugin_flutter/CaptchaHelper;->setEvents(Lio/flutter/plugin/common/EventChannel$EventSink;)V

    :goto_0
    return-void
.end method
