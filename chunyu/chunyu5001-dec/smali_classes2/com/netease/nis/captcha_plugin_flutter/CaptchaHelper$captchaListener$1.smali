.class public final Lcom/netease/nis/captcha_plugin_flutter/CaptchaHelper$captchaListener$1;
.super Ljava/lang/Object;
.source "CaptchaHelper.kt"

# interfaces
.implements Lcom/netease/nis/captcha/CaptchaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/nis/captcha_plugin_flutter/CaptchaHelper;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u001a\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J\u0008\u0010\u000b\u001a\u00020\u0003H\u0016J&\u0010\u000c\u001a\u00020\u00032\u0008\u0010\r\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\n2\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/netease/nis/captcha_plugin_flutter/CaptchaHelper$captchaListener$1",
        "Lcom/netease/nis/captcha/CaptchaListener;",
        "onClose",
        "",
        "closeType",
        "Lcom/netease/nis/captcha/Captcha$CloseType;",
        "onError",
        "code",
        "",
        "msg",
        "",
        "onReady",
        "onValidate",
        "result",
        "validate",
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
.field final synthetic this$0:Lcom/netease/nis/captcha_plugin_flutter/CaptchaHelper;


# direct methods
.method constructor <init>(Lcom/netease/nis/captcha_plugin_flutter/CaptchaHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/nis/captcha_plugin_flutter/CaptchaHelper$captchaListener$1;->this$0:Lcom/netease/nis/captcha_plugin_flutter/CaptchaHelper;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Lcom/netease/nis/captcha/Captcha$CloseType;)V
    .locals 7

    .line 127
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 128
    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "closed"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Lcom/netease/nis/captcha_plugin_flutter/CaptchaHelper$captchaListener$1;->this$0:Lcom/netease/nis/captcha_plugin_flutter/CaptchaHelper;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lcom/netease/nis/captcha_plugin_flutter/CaptchaHelper$captchaListener$1$onClose$1;

    iget-object v3, p0, Lcom/netease/nis/captcha_plugin_flutter/CaptchaHelper$captchaListener$1;->this$0:Lcom/netease/nis/captcha_plugin_flutter/CaptchaHelper;

    const/4 v4, 0x0

    invoke-direct {v0, v3, p1, v4}, Lcom/netease/nis/captcha_plugin_flutter/CaptchaHelper$captchaListener$1$onClose$1;-><init>(Lcom/netease/nis/captcha_plugin_flutter/CaptchaHelper;Ljava/util/HashMap;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 7

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 119
    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "code"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "msg"

    .line 120
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object p1, p0, Lcom/netease/nis/captcha_plugin_flutter/CaptchaHelper$captchaListener$1;->this$0:Lcom/netease/nis/captcha_plugin_flutter/CaptchaHelper;

    move-object v1, p1

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance p1, Lcom/netease/nis/captcha_plugin_flutter/CaptchaHelper$captchaListener$1$onError$1;

    iget-object p2, p0, Lcom/netease/nis/captcha_plugin_flutter/CaptchaHelper$captchaListener$1;->this$0:Lcom/netease/nis/captcha_plugin_flutter/CaptchaHelper;

    const/4 v3, 0x0

    invoke-direct {p1, p2, v0, v3}, Lcom/netease/nis/captcha_plugin_flutter/CaptchaHelper$captchaListener$1$onError$1;-><init>(Lcom/netease/nis/captcha_plugin_flutter/CaptchaHelper;Ljava/util/HashMap;Lkotlin/coroutines/Continuation;)V

    move-object v4, p1

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public onReady()V
    .locals 0

    return-void
.end method

.method public onValidate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 109
    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    const-string v2, "validate"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "result"

    .line 110
    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "msg"

    .line 111
    invoke-interface {v1, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object p1, p0, Lcom/netease/nis/captcha_plugin_flutter/CaptchaHelper$captchaListener$1;->this$0:Lcom/netease/nis/captcha_plugin_flutter/CaptchaHelper;

    move-object v1, p1

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance p1, Lcom/netease/nis/captcha_plugin_flutter/CaptchaHelper$captchaListener$1$onValidate$1;

    iget-object p2, p0, Lcom/netease/nis/captcha_plugin_flutter/CaptchaHelper$captchaListener$1;->this$0:Lcom/netease/nis/captcha_plugin_flutter/CaptchaHelper;

    const/4 p3, 0x0

    invoke-direct {p1, p2, v0, p3}, Lcom/netease/nis/captcha_plugin_flutter/CaptchaHelper$captchaListener$1$onValidate$1;-><init>(Lcom/netease/nis/captcha_plugin_flutter/CaptchaHelper;Ljava/util/HashMap;Lkotlin/coroutines/Continuation;)V

    move-object v4, p1

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
