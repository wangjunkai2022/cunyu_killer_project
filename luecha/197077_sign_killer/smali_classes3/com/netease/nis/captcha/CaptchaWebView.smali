.class public Lcom/netease/nis/captcha/CaptchaWebView;
.super Landroid/webkit/WebView;
.source "CaptchaWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/nis/captcha/CaptchaWebView$b;
    }
.end annotation


# instance fields
.field private a:Lcom/netease/nis/captcha/CaptchaListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/netease/nis/captcha/CaptchaWebView;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0}, Lcom/netease/nis/captcha/CaptchaWebView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-static {p1}, Lcom/netease/nis/captcha/CaptchaWebView;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0}, Lcom/netease/nis/captcha/CaptchaWebView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0}, Lcom/netease/nis/captcha/CaptchaWebView;->a()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Landroid/content/Context;
    .locals 2

    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 33
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    invoke-virtual {p0, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method static synthetic a(Lcom/netease/nis/captcha/CaptchaWebView;)Lcom/netease/nis/captcha/CaptchaListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/captcha/CaptchaWebView;->a:Lcom/netease/nis/captcha/CaptchaListener;

    return-object p0
.end method

.method private a()V
    .locals 5

    .line 2
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 5
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 6
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    const/4 v2, 0x0

    .line 7
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 8
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    const/16 v3, 0x64

    .line 9
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 11
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_0

    .line 12
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 13
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    :cond_0
    const/16 v4, 0x13

    if-ge v3, v4, :cond_1

    const-string v3, "searchBoxJavaBridge_"

    .line 17
    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string v3, "accessibility"

    .line 18
    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string v3, "accessibilityTraversal"

    .line 19
    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 21
    :cond_1
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 22
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 23
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 24
    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 25
    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 26
    new-instance v0, Landroid/webkit/WebChromeClient;

    invoke-direct {v0}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 27
    new-instance v0, Lcom/netease/nis/captcha/CaptchaWebView$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/netease/nis/captcha/CaptchaWebView$b;-><init>(Lcom/netease/nis/captcha/CaptchaWebView;Lcom/netease/nis/captcha/CaptchaWebView$a;)V

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 28
    invoke-virtual {p0}, Landroid/webkit/WebView;->resumeTimers()V

    .line 31
    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method protected onScrollChanged(IIII)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1, p1}, Landroid/webkit/WebView;->scrollTo(II)V

    return-void
.end method

.method public setCaptchaListener(Lcom/netease/nis/captcha/CaptchaListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/captcha/CaptchaWebView;->a:Lcom/netease/nis/captcha/CaptchaListener;

    return-void
.end method
