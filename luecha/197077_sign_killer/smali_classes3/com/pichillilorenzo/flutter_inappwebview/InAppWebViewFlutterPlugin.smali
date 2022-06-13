.class public Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewFlutterPlugin;
.super Ljava/lang/Object;
.source "InAppWebViewFlutterPlugin.java"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/embedding/engine/plugins/activity/ActivityAware;


# static fields
.field protected static final LOG_TAG:Ljava/lang/String; = "InAppWebViewFlutterPL"

.field public static chromeSafariBrowserManager:Lcom/pichillilorenzo/flutter_inappwebview/ChromeSafariBrowserManager;

.field public static credentialDatabaseHandler:Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabaseHandler;

.field public static filePathCallback:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field public static filePathCallbackLegacy:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field public static headlessInAppWebViewManager:Lcom/pichillilorenzo/flutter_inappwebview/HeadlessInAppWebViewManager;

.field public static inAppBrowserManager:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowserManager;

.field public static inAppWebViewStatic:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewStatic;

.field public static myCookieManager:Lcom/pichillilorenzo/flutter_inappwebview/MyCookieManager;

.field public static myWebStorage:Lcom/pichillilorenzo/flutter_inappwebview/MyWebStorage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private initLocalCache(Landroid/content/Context;)V
    .locals 21

    const-string v0, "js"

    const-string v1, "ico"

    const-string v2, "css"

    const-string v3, "png"

    const-string v4, "jpg"

    const-string v5, "jpeg"

    const-string v6, "gif"

    const-string v7, "bmp"

    const-string v8, "ttf"

    const-string v9, "woff"

    const-string v10, "woff2"

    const-string v11, "otf"

    const-string v12, "eot"

    const-string v13, "svg"

    const-string v14, "xml"

    const-string v15, "txt"

    const-string v16, "text"

    const-string v17, "conf"

    const-string v18, "webp"

    const-string v19, "bin"

    const-string v20, "data"

    .line 67
    filled-new-array/range {v0 .. v20}, [Ljava/lang/String;

    move-result-object v0

    .line 68
    new-instance v1, Lren/yale/android/cachewebviewlib/config/CacheExtensionConfig;

    invoke-direct {v1}, Lren/yale/android/cachewebviewlib/config/CacheExtensionConfig;-><init>()V

    const/4 v2, 0x0

    .line 69
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 70
    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Lren/yale/android/cachewebviewlib/config/CacheExtensionConfig;->addExtension(Ljava/lang/String;)Lren/yale/android/cachewebviewlib/config/CacheExtensionConfig;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 74
    :cond_0
    new-instance v0, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;

    move-object/from16 v2, p1

    invoke-direct {v0, v2}, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;-><init>(Landroid/content/Context;)V

    .line 75
    invoke-virtual {v0, v1}, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;->setCacheExtensionConfig(Lren/yale/android/cachewebviewlib/config/CacheExtensionConfig;)Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;

    .line 76
    new-instance v1, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "InAppWebViewLocalAssets"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;->setCachePath(Ljava/io/File;)Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;

    move-result-object v1

    const-wide/32 v2, 0x20000000

    .line 77
    invoke-virtual {v1, v2, v3}, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;->setCacheSize(J)Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;

    move-result-object v1

    const-wide/16 v2, 0x14

    .line 78
    invoke-virtual {v1, v2, v3}, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;->setConnectTimeoutSecond(J)Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;

    move-result-object v1

    .line 79
    invoke-virtual {v1, v2, v3}, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;->setReadTimeoutSecond(J)Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;

    move-result-object v1

    sget-object v2, Lren/yale/android/cachewebviewlib/CacheType;->FORCE:Lren/yale/android/cachewebviewlib/CacheType;

    .line 80
    invoke-virtual {v1, v2}, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;->setCacheType(Lren/yale/android/cachewebviewlib/CacheType;)Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;

    .line 81
    invoke-static {}, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptorInst;->getInstance()Lren/yale/android/cachewebviewlib/WebViewCacheInterceptorInst;

    move-result-object v1

    invoke-virtual {v1, v0}, Lren/yale/android/cachewebviewlib/WebViewCacheInterceptorInst;->init(Lren/yale/android/cachewebviewlib/WebViewCacheInterceptor$Builder;)V

    return-void
.end method

.method private onAttachedToEngine(Landroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;Landroid/app/Activity;Lio/flutter/plugin/platform/PlatformViewRegistry;Lio/flutter/view/FlutterView;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewFlutterPlugin;->initLocalCache(Landroid/content/Context;)V

    .line 88
    sput-object p1, Lcom/pichillilorenzo/flutter_inappwebview/Shared;->applicationContext:Landroid/content/Context;

    .line 89
    sput-object p3, Lcom/pichillilorenzo/flutter_inappwebview/Shared;->activity:Landroid/app/Activity;

    .line 90
    sput-object p2, Lcom/pichillilorenzo/flutter_inappwebview/Shared;->messenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 92
    new-instance p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowserManager;

    invoke-direct {p1, p2}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowserManager;-><init>(Lio/flutter/plugin/common/BinaryMessenger;)V

    sput-object p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewFlutterPlugin;->inAppBrowserManager:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowserManager;

    .line 93
    new-instance p1, Lcom/pichillilorenzo/flutter_inappwebview/HeadlessInAppWebViewManager;

    invoke-direct {p1, p2}, Lcom/pichillilorenzo/flutter_inappwebview/HeadlessInAppWebViewManager;-><init>(Lio/flutter/plugin/common/BinaryMessenger;)V

    sput-object p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewFlutterPlugin;->headlessInAppWebViewManager:Lcom/pichillilorenzo/flutter_inappwebview/HeadlessInAppWebViewManager;

    .line 94
    new-instance p1, Lcom/pichillilorenzo/flutter_inappwebview/ChromeSafariBrowserManager;

    invoke-direct {p1, p2}, Lcom/pichillilorenzo/flutter_inappwebview/ChromeSafariBrowserManager;-><init>(Lio/flutter/plugin/common/BinaryMessenger;)V

    sput-object p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewFlutterPlugin;->chromeSafariBrowserManager:Lcom/pichillilorenzo/flutter_inappwebview/ChromeSafariBrowserManager;

    .line 96
    new-instance p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebViewFactory;

    invoke-direct {p1, p2, p5}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/FlutterWebViewFactory;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Landroid/view/View;)V

    const-string p3, "com.pichillilorenzo/flutter_inappwebview"

    invoke-interface {p4, p3, p1}, Lio/flutter/plugin/platform/PlatformViewRegistry;->registerViewFactory(Ljava/lang/String;Lio/flutter/plugin/platform/PlatformViewFactory;)Z

    .line 98
    new-instance p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewStatic;

    invoke-direct {p1, p2}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewStatic;-><init>(Lio/flutter/plugin/common/BinaryMessenger;)V

    sput-object p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewFlutterPlugin;->inAppWebViewStatic:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewStatic;

    .line 99
    new-instance p1, Lcom/pichillilorenzo/flutter_inappwebview/MyCookieManager;

    invoke-direct {p1, p2}, Lcom/pichillilorenzo/flutter_inappwebview/MyCookieManager;-><init>(Lio/flutter/plugin/common/BinaryMessenger;)V

    sput-object p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewFlutterPlugin;->myCookieManager:Lcom/pichillilorenzo/flutter_inappwebview/MyCookieManager;

    .line 100
    new-instance p1, Lcom/pichillilorenzo/flutter_inappwebview/MyWebStorage;

    invoke-direct {p1, p2}, Lcom/pichillilorenzo/flutter_inappwebview/MyWebStorage;-><init>(Lio/flutter/plugin/common/BinaryMessenger;)V

    sput-object p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewFlutterPlugin;->myWebStorage:Lcom/pichillilorenzo/flutter_inappwebview/MyWebStorage;

    .line 101
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1a

    if-lt p1, p3, :cond_0

    .line 102
    new-instance p1, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabaseHandler;

    invoke-direct {p1, p2}, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabaseHandler;-><init>(Lio/flutter/plugin/common/BinaryMessenger;)V

    sput-object p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewFlutterPlugin;->credentialDatabaseHandler:Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabaseHandler;

    :cond_0
    return-void
.end method

.method public static registerWith(Lio/flutter/plugin/common/PluginRegistry$Registrar;)V
    .locals 6

    .line 46
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewFlutterPlugin;

    invoke-direct {v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewFlutterPlugin;-><init>()V

    .line 47
    sput-object p0, Lcom/pichillilorenzo/flutter_inappwebview/Shared;->registrar:Lio/flutter/plugin/common/PluginRegistry$Registrar;

    .line 49
    invoke-interface {p0}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->context()Landroid/content/Context;

    move-result-object v1

    invoke-interface {p0}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->messenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v2

    invoke-interface {p0}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->activity()Landroid/app/Activity;

    move-result-object v3

    invoke-interface {p0}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->platformViewRegistry()Lio/flutter/plugin/platform/PlatformViewRegistry;

    move-result-object v4

    invoke-interface {p0}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->view()Lio/flutter/view/FlutterView;

    move-result-object v5

    .line 48
    invoke-direct/range {v0 .. v5}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewFlutterPlugin;->onAttachedToEngine(Landroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;Landroid/app/Activity;Lio/flutter/plugin/platform/PlatformViewRegistry;Lio/flutter/view/FlutterView;)V

    return-void
.end method


# virtual methods
.method public onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 0

    .line 142
    sput-object p1, Lcom/pichillilorenzo/flutter_inappwebview/Shared;->activityPluginBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    .line 143
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    move-result-object p1

    sput-object p1, Lcom/pichillilorenzo/flutter_inappwebview/Shared;->activity:Landroid/app/Activity;

    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 7

    .line 54
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getFlutterAssets()Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterAssets;

    move-result-object v0

    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview/Shared;->flutterAssets:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterAssets;

    .line 61
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v3

    sget-object v4, Lcom/pichillilorenzo/flutter_inappwebview/Shared;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getPlatformViewRegistry()Lio/flutter/plugin/platform/PlatformViewRegistry;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p0

    .line 60
    invoke-direct/range {v1 .. v6}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewFlutterPlugin;->onAttachedToEngine(Landroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;Landroid/app/Activity;Lio/flutter/plugin/platform/PlatformViewRegistry;Lio/flutter/view/FlutterView;)V

    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 1

    const/4 v0, 0x0

    .line 160
    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview/Shared;->activityPluginBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    .line 161
    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview/Shared;->activity:Landroid/app/Activity;

    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 1

    const/4 v0, 0x0

    .line 148
    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview/Shared;->activityPluginBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    .line 149
    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview/Shared;->activity:Landroid/app/Activity;

    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 2

    .line 108
    sget-object p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewFlutterPlugin;->inAppBrowserManager:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowserManager;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 109
    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowserManager;->dispose()V

    .line 110
    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewFlutterPlugin;->inAppBrowserManager:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowserManager;

    .line 112
    :cond_0
    sget-object p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewFlutterPlugin;->headlessInAppWebViewManager:Lcom/pichillilorenzo/flutter_inappwebview/HeadlessInAppWebViewManager;

    if-eqz p1, :cond_1

    .line 113
    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview/HeadlessInAppWebViewManager;->dispose()V

    .line 114
    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewFlutterPlugin;->headlessInAppWebViewManager:Lcom/pichillilorenzo/flutter_inappwebview/HeadlessInAppWebViewManager;

    .line 116
    :cond_1
    sget-object p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewFlutterPlugin;->chromeSafariBrowserManager:Lcom/pichillilorenzo/flutter_inappwebview/ChromeSafariBrowserManager;

    if-eqz p1, :cond_2

    .line 117
    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview/ChromeSafariBrowserManager;->dispose()V

    .line 118
    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewFlutterPlugin;->chromeSafariBrowserManager:Lcom/pichillilorenzo/flutter_inappwebview/ChromeSafariBrowserManager;

    .line 120
    :cond_2
    sget-object p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewFlutterPlugin;->myCookieManager:Lcom/pichillilorenzo/flutter_inappwebview/MyCookieManager;

    if-eqz p1, :cond_3

    .line 121
    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview/MyCookieManager;->dispose()V

    .line 122
    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewFlutterPlugin;->myCookieManager:Lcom/pichillilorenzo/flutter_inappwebview/MyCookieManager;

    .line 124
    :cond_3
    sget-object p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewFlutterPlugin;->myWebStorage:Lcom/pichillilorenzo/flutter_inappwebview/MyWebStorage;

    if-eqz p1, :cond_4

    .line 125
    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview/MyWebStorage;->dispose()V

    .line 126
    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewFlutterPlugin;->myWebStorage:Lcom/pichillilorenzo/flutter_inappwebview/MyWebStorage;

    .line 128
    :cond_4
    sget-object p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewFlutterPlugin;->credentialDatabaseHandler:Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabaseHandler;

    if-eqz p1, :cond_5

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt p1, v1, :cond_5

    .line 129
    sget-object p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewFlutterPlugin;->credentialDatabaseHandler:Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabaseHandler;

    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabaseHandler;->dispose()V

    .line 130
    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewFlutterPlugin;->credentialDatabaseHandler:Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabaseHandler;

    .line 132
    :cond_5
    sget-object p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewFlutterPlugin;->inAppWebViewStatic:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewStatic;

    if-eqz p1, :cond_6

    .line 133
    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewStatic;->dispose()V

    .line 134
    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewFlutterPlugin;->inAppWebViewStatic:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewStatic;

    .line 136
    :cond_6
    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewFlutterPlugin;->filePathCallbackLegacy:Landroid/webkit/ValueCallback;

    .line 137
    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebViewFlutterPlugin;->filePathCallback:Landroid/webkit/ValueCallback;

    return-void
.end method

.method public onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 0

    .line 154
    sput-object p1, Lcom/pichillilorenzo/flutter_inappwebview/Shared;->activityPluginBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    .line 155
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    move-result-object p1

    sput-object p1, Lcom/pichillilorenzo/flutter_inappwebview/Shared;->activity:Landroid/app/Activity;

    return-void
.end method
