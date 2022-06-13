.class final Lio/flutter/plugins/urllauncher/MethodCallHandlerImpl;
.super Ljava/lang/Object;
.source "MethodCallHandlerImpl.java"

# interfaces
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "MethodCallHandlerImpl"


# instance fields
.field private channel:Lio/flutter/plugin/common/MethodChannel;

.field private final urlLauncher:Lio/flutter/plugins/urllauncher/UrlLauncher;


# direct methods
.method constructor <init>(Lio/flutter/plugins/urllauncher/UrlLauncher;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lio/flutter/plugins/urllauncher/MethodCallHandlerImpl;->urlLauncher:Lio/flutter/plugins/urllauncher/UrlLauncher;

    return-void
.end method

.method private static extractBundle(Ljava/util/Map;)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 115
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 116
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 117
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 118
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private onCanLaunch(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lio/flutter/plugins/urllauncher/MethodCallHandlerImpl;->urlLauncher:Lio/flutter/plugins/urllauncher/UrlLauncher;

    invoke-virtual {v0, p2}, Lio/flutter/plugins/urllauncher/UrlLauncher;->canLaunch(Ljava/lang/String;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method

.method private onCloseWebView(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 110
    iget-object v0, p0, Lio/flutter/plugins/urllauncher/MethodCallHandlerImpl;->urlLauncher:Lio/flutter/plugins/urllauncher/UrlLauncher;

    invoke-virtual {v0}, Lio/flutter/plugins/urllauncher/UrlLauncher;->closeWebView()V

    const/4 v0, 0x0

    .line 111
    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method

.method private onLaunch(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;)V
    .locals 7

    const-string v0, "useWebView"

    .line 88
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string v0, "enableJavaScript"

    .line 89
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const-string v0, "enableDomStorage"

    .line 90
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const-string v0, "headers"

    .line 91
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 92
    invoke-static {p1}, Lio/flutter/plugins/urllauncher/MethodCallHandlerImpl;->extractBundle(Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object v3

    .line 94
    iget-object v1, p0, Lio/flutter/plugins/urllauncher/MethodCallHandlerImpl;->urlLauncher:Lio/flutter/plugins/urllauncher/UrlLauncher;

    move-object v2, p3

    .line 95
    invoke-virtual/range {v1 .. v6}, Lio/flutter/plugins/urllauncher/UrlLauncher;->launch(Ljava/lang/String;Landroid/os/Bundle;ZZZ)Lio/flutter/plugins/urllauncher/UrlLauncher$LaunchStatus;

    move-result-object p1

    .line 97
    sget-object v0, Lio/flutter/plugins/urllauncher/UrlLauncher$LaunchStatus;->NO_ACTIVITY:Lio/flutter/plugins/urllauncher/UrlLauncher$LaunchStatus;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    const-string p1, "NO_ACTIVITY"

    const-string p3, "Launching a URL requires a foreground activity."

    .line 98
    invoke-interface {p2, p1, p3, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 99
    :cond_0
    sget-object v0, Lio/flutter/plugins/urllauncher/UrlLauncher$LaunchStatus;->ACTIVITY_NOT_FOUND:Lio/flutter/plugins/urllauncher/UrlLauncher$LaunchStatus;

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    new-array p1, v2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, p1, v0

    const-string p3, "No Activity found to handle intent { %s }"

    .line 102
    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "ACTIVITY_NOT_FOUND"

    .line 100
    invoke-interface {p2, p3, p1, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 105
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 6

    const-string v0, "url"

    .line 34
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 35
    iget-object v1, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x4226dc4d

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v3, :cond_2

    const v3, -0xb0b8c5d

    if-eq v2, v3, :cond_1

    const v3, -0x73fbcff

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "closeWebView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v4

    goto :goto_1

    :cond_1
    const-string v2, "canLaunch"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const-string v2, "launch"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v5

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_6

    if-eq v1, v5, :cond_5

    if-eq v1, v4, :cond_4

    .line 46
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    goto :goto_2

    .line 43
    :cond_4
    invoke-direct {p0, p2}, Lio/flutter/plugins/urllauncher/MethodCallHandlerImpl;->onCloseWebView(Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_2

    .line 40
    :cond_5
    invoke-direct {p0, p1, p2, v0}, Lio/flutter/plugins/urllauncher/MethodCallHandlerImpl;->onLaunch(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;)V

    goto :goto_2

    .line 37
    :cond_6
    invoke-direct {p0, p2, v0}, Lio/flutter/plugins/urllauncher/MethodCallHandlerImpl;->onCanLaunch(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method startListening(Lio/flutter/plugin/common/BinaryMessenger;)V
    .locals 2

    .line 59
    iget-object v0, p0, Lio/flutter/plugins/urllauncher/MethodCallHandlerImpl;->channel:Lio/flutter/plugin/common/MethodChannel;

    if-eqz v0, :cond_0

    const-string v0, "MethodCallHandlerImpl"

    const-string v1, "Setting a method call handler before the last was disposed."

    .line 60
    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {p0}, Lio/flutter/plugins/urllauncher/MethodCallHandlerImpl;->stopListening()V

    .line 64
    :cond_0
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    const-string v1, "plugins.flutter.io/url_launcher_android"

    invoke-direct {v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    iput-object v0, p0, Lio/flutter/plugins/urllauncher/MethodCallHandlerImpl;->channel:Lio/flutter/plugin/common/MethodChannel;

    .line 65
    iget-object p1, p0, Lio/flutter/plugins/urllauncher/MethodCallHandlerImpl;->channel:Lio/flutter/plugin/common/MethodChannel;

    invoke-virtual {p1, p0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    return-void
.end method

.method stopListening()V
    .locals 2

    .line 74
    iget-object v0, p0, Lio/flutter/plugins/urllauncher/MethodCallHandlerImpl;->channel:Lio/flutter/plugin/common/MethodChannel;

    if-nez v0, :cond_0

    const-string v0, "MethodCallHandlerImpl"

    const-string v1, "Tried to stop listening when no MethodChannel had been initialized."

    .line 75
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 79
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 80
    iput-object v1, p0, Lio/flutter/plugins/urllauncher/MethodCallHandlerImpl;->channel:Lio/flutter/plugin/common/MethodChannel;

    return-void
.end method
