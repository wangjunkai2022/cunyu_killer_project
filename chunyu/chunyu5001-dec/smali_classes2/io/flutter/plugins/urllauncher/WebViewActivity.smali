.class public Lio/flutter/plugins/urllauncher/WebViewActivity;
.super Landroid/app/Activity;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/urllauncher/WebViewActivity$FlutterWebChromeClient;
    }
.end annotation


# static fields
.field public static ACTION_CLOSE:Ljava/lang/String; = "close action"

.field private static ENABLE_DOM_EXTRA:Ljava/lang/String; = "enableDomStorage"

.field private static ENABLE_JS_EXTRA:Ljava/lang/String; = "enableJavaScript"

.field private static URL_EXTRA:Ljava/lang/String; = "url"


# instance fields
.field private final broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private closeIntentFilter:Landroid/content/IntentFilter;

.field private final webViewClient:Landroid/webkit/WebViewClient;

.field private webview:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    new-instance v0, Lio/flutter/plugins/urllauncher/WebViewActivity$1;

    invoke-direct {v0, p0}, Lio/flutter/plugins/urllauncher/WebViewActivity$1;-><init>(Lio/flutter/plugins/urllauncher/WebViewActivity;)V

    iput-object v0, p0, Lio/flutter/plugins/urllauncher/WebViewActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 50
    new-instance v0, Lio/flutter/plugins/urllauncher/WebViewActivity$2;

    invoke-direct {v0, p0}, Lio/flutter/plugins/urllauncher/WebViewActivity$2;-><init>(Lio/flutter/plugins/urllauncher/WebViewActivity;)V

    iput-object v0, p0, Lio/flutter/plugins/urllauncher/WebViewActivity;->webViewClient:Landroid/webkit/WebViewClient;

    .line 79
    new-instance v0, Landroid/content/IntentFilter;

    sget-object v1, Lio/flutter/plugins/urllauncher/WebViewActivity;->ACTION_CLOSE:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/flutter/plugins/urllauncher/WebViewActivity;->closeIntentFilter:Landroid/content/IntentFilter;

    return-void
.end method

.method static synthetic access$000(Lio/flutter/plugins/urllauncher/WebViewActivity;)Landroid/webkit/WebView;
    .locals 0

    .line 31
    iget-object p0, p0, Lio/flutter/plugins/urllauncher/WebViewActivity;->webview:Landroid/webkit/WebView;

    return-object p0
.end method

.method public static createIntent(Landroid/content/Context;Ljava/lang/String;ZZLandroid/os/Bundle;)Landroid/content/Intent;
    .locals 2

    .line 187
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lio/flutter/plugins/urllauncher/WebViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object p0, Lio/flutter/plugins/urllauncher/WebViewActivity;->URL_EXTRA:Ljava/lang/String;

    .line 188
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    sget-object p1, Lio/flutter/plugins/urllauncher/WebViewActivity;->ENABLE_JS_EXTRA:Ljava/lang/String;

    .line 189
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    sget-object p1, Lio/flutter/plugins/urllauncher/WebViewActivity;->ENABLE_DOM_EXTRA:Ljava/lang/String;

    .line 190
    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "com.android.browser.headers"

    .line 191
    invoke-virtual {p0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static extractHeaders(Landroid/os/Bundle;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 151
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 153
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 154
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 155
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 156
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 121
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 122
    new-instance p1, Landroid/webkit/WebView;

    invoke-direct {p1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lio/flutter/plugins/urllauncher/WebViewActivity;->webview:Landroid/webkit/WebView;

    .line 123
    iget-object p1, p0, Lio/flutter/plugins/urllauncher/WebViewActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {p0, p1}, Lio/flutter/plugins/urllauncher/WebViewActivity;->setContentView(Landroid/view/View;)V

    .line 125
    invoke-virtual {p0}, Lio/flutter/plugins/urllauncher/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 126
    sget-object v0, Lio/flutter/plugins/urllauncher/WebViewActivity;->URL_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    sget-object v1, Lio/flutter/plugins/urllauncher/WebViewActivity;->ENABLE_JS_EXTRA:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 128
    sget-object v3, Lio/flutter/plugins/urllauncher/WebViewActivity;->ENABLE_DOM_EXTRA:Ljava/lang/String;

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "com.android.browser.headers"

    .line 129
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 131
    invoke-static {p1}, Lio/flutter/plugins/urllauncher/WebViewActivity;->extractHeaders(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object p1

    .line 132
    iget-object v3, p0, Lio/flutter/plugins/urllauncher/WebViewActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v3, v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 134
    iget-object p1, p0, Lio/flutter/plugins/urllauncher/WebViewActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 135
    iget-object p1, p0, Lio/flutter/plugins/urllauncher/WebViewActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 138
    iget-object p1, p0, Lio/flutter/plugins/urllauncher/WebViewActivity;->webview:Landroid/webkit/WebView;

    iget-object v0, p0, Lio/flutter/plugins/urllauncher/WebViewActivity;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 141
    iget-object p1, p0, Lio/flutter/plugins/urllauncher/WebViewActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 142
    iget-object p1, p0, Lio/flutter/plugins/urllauncher/WebViewActivity;->webview:Landroid/webkit/WebView;

    new-instance v0, Lio/flutter/plugins/urllauncher/WebViewActivity$FlutterWebChromeClient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/flutter/plugins/urllauncher/WebViewActivity$FlutterWebChromeClient;-><init>(Lio/flutter/plugins/urllauncher/WebViewActivity;Lio/flutter/plugins/urllauncher/WebViewActivity$1;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 145
    iget-object p1, p0, Lio/flutter/plugins/urllauncher/WebViewActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lio/flutter/plugins/urllauncher/WebViewActivity;->closeIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1, v0}, Lio/flutter/plugins/urllauncher/WebViewActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 163
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 164
    iget-object v0, p0, Lio/flutter/plugins/urllauncher/WebViewActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lio/flutter/plugins/urllauncher/WebViewActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 169
    iget-object v0, p0, Lio/flutter/plugins/urllauncher/WebViewActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object p1, p0, Lio/flutter/plugins/urllauncher/WebViewActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    const/4 p1, 0x1

    return p1

    .line 173
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
