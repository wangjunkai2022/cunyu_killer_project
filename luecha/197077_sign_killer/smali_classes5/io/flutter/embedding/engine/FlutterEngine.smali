.class public Lio/flutter/embedding/engine/FlutterEngine;
.super Ljava/lang/Object;
.source "FlutterEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/engine/FlutterEngine$EngineLifecycleListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FlutterEngine"


# instance fields
.field private final accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

.field private final dartExecutor:Lio/flutter/embedding/engine/dart/DartExecutor;

.field private final deferredComponentChannel:Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;

.field private final engineLifecycleListener:Lio/flutter/embedding/engine/FlutterEngine$EngineLifecycleListener;

.field private final engineLifecycleListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/flutter/embedding/engine/FlutterEngine$EngineLifecycleListener;",
            ">;"
        }
    .end annotation
.end field

.field private final flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

.field private final keyEventChannel:Lio/flutter/embedding/engine/systemchannels/KeyEventChannel;

.field private final lifecycleChannel:Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;

.field private final localizationChannel:Lio/flutter/embedding/engine/systemchannels/LocalizationChannel;

.field private final localizationPlugin:Lio/flutter/plugin/localization/LocalizationPlugin;

.field private final mouseCursorChannel:Lio/flutter/embedding/engine/systemchannels/MouseCursorChannel;

.field private final navigationChannel:Lio/flutter/embedding/engine/systemchannels/NavigationChannel;

.field private final platformChannel:Lio/flutter/embedding/engine/systemchannels/PlatformChannel;

.field private final platformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

.field private final pluginRegistry:Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;

.field private final renderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

.field private final restorationChannel:Lio/flutter/embedding/engine/systemchannels/RestorationChannel;

.field private final settingsChannel:Lio/flutter/embedding/engine/systemchannels/SettingsChannel;

.field private final systemChannel:Lio/flutter/embedding/engine/systemchannels/SystemChannel;

.field private final textInputChannel:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 154
    invoke-direct {p0, p1, v0}, Lio/flutter/embedding/engine/FlutterEngine;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/flutter/embedding/engine/loader/FlutterLoader;Lio/flutter/embedding/engine/FlutterJNI;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 228
    invoke-direct/range {v0 .. v5}, Lio/flutter/embedding/engine/FlutterEngine;-><init>(Landroid/content/Context;Lio/flutter/embedding/engine/loader/FlutterLoader;Lio/flutter/embedding/engine/FlutterJNI;[Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/flutter/embedding/engine/loader/FlutterLoader;Lio/flutter/embedding/engine/FlutterJNI;Lio/flutter/plugin/platform/PlatformViewsController;[Ljava/lang/String;Z)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .line 263
    invoke-direct/range {v0 .. v7}, Lio/flutter/embedding/engine/FlutterEngine;-><init>(Landroid/content/Context;Lio/flutter/embedding/engine/loader/FlutterLoader;Lio/flutter/embedding/engine/FlutterJNI;Lio/flutter/plugin/platform/PlatformViewsController;[Ljava/lang/String;ZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/flutter/embedding/engine/loader/FlutterLoader;Lio/flutter/embedding/engine/FlutterJNI;Lio/flutter/plugin/platform/PlatformViewsController;[Ljava/lang/String;ZZ)V
    .locals 4

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->engineLifecycleListeners:Ljava/util/Set;

    .line 107
    new-instance v0, Lio/flutter/embedding/engine/FlutterEngine$1;

    invoke-direct {v0, p0}, Lio/flutter/embedding/engine/FlutterEngine$1;-><init>(Lio/flutter/embedding/engine/FlutterEngine;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->engineLifecycleListener:Lio/flutter/embedding/engine/FlutterEngine$EngineLifecycleListener;

    .line 284
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 286
    :catch_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 289
    :goto_0
    invoke-static {}, Lio/flutter/FlutterInjector;->instance()Lio/flutter/FlutterInjector;

    move-result-object v1

    if-nez p3, :cond_0

    .line 292
    invoke-virtual {v1}, Lio/flutter/FlutterInjector;->getFlutterJNIFactory()Lio/flutter/embedding/engine/FlutterJNI$Factory;

    move-result-object p3

    invoke-virtual {p3}, Lio/flutter/embedding/engine/FlutterJNI$Factory;->provideFlutterJNI()Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object p3

    .line 294
    :cond_0
    iput-object p3, p0, Lio/flutter/embedding/engine/FlutterEngine;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    .line 296
    new-instance v2, Lio/flutter/embedding/engine/dart/DartExecutor;

    invoke-direct {v2, p3, v0}, Lio/flutter/embedding/engine/dart/DartExecutor;-><init>(Lio/flutter/embedding/engine/FlutterJNI;Landroid/content/res/AssetManager;)V

    iput-object v2, p0, Lio/flutter/embedding/engine/FlutterEngine;->dartExecutor:Lio/flutter/embedding/engine/dart/DartExecutor;

    .line 297
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->dartExecutor:Lio/flutter/embedding/engine/dart/DartExecutor;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/dart/DartExecutor;->onAttachedToJNI()V

    .line 300
    invoke-static {}, Lio/flutter/FlutterInjector;->instance()Lio/flutter/FlutterInjector;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/FlutterInjector;->deferredComponentManager()Lio/flutter/embedding/engine/deferredcomponents/DeferredComponentManager;

    move-result-object v0

    .line 302
    new-instance v2, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    iget-object v3, p0, Lio/flutter/embedding/engine/FlutterEngine;->dartExecutor:Lio/flutter/embedding/engine/dart/DartExecutor;

    invoke-direct {v2, v3, p3}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;-><init>(Lio/flutter/embedding/engine/dart/DartExecutor;Lio/flutter/embedding/engine/FlutterJNI;)V

    iput-object v2, p0, Lio/flutter/embedding/engine/FlutterEngine;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    .line 303
    new-instance v2, Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;

    iget-object v3, p0, Lio/flutter/embedding/engine/FlutterEngine;->dartExecutor:Lio/flutter/embedding/engine/dart/DartExecutor;

    invoke-direct {v2, v3}, Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;-><init>(Lio/flutter/embedding/engine/dart/DartExecutor;)V

    iput-object v2, p0, Lio/flutter/embedding/engine/FlutterEngine;->deferredComponentChannel:Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;

    .line 304
    new-instance v2, Lio/flutter/embedding/engine/systemchannels/KeyEventChannel;

    iget-object v3, p0, Lio/flutter/embedding/engine/FlutterEngine;->dartExecutor:Lio/flutter/embedding/engine/dart/DartExecutor;

    invoke-direct {v2, v3}, Lio/flutter/embedding/engine/systemchannels/KeyEventChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;)V

    iput-object v2, p0, Lio/flutter/embedding/engine/FlutterEngine;->keyEventChannel:Lio/flutter/embedding/engine/systemchannels/KeyEventChannel;

    .line 305
    new-instance v2, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;

    iget-object v3, p0, Lio/flutter/embedding/engine/FlutterEngine;->dartExecutor:Lio/flutter/embedding/engine/dart/DartExecutor;

    invoke-direct {v2, v3}, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;-><init>(Lio/flutter/embedding/engine/dart/DartExecutor;)V

    iput-object v2, p0, Lio/flutter/embedding/engine/FlutterEngine;->lifecycleChannel:Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;

    .line 306
    new-instance v2, Lio/flutter/embedding/engine/systemchannels/LocalizationChannel;

    iget-object v3, p0, Lio/flutter/embedding/engine/FlutterEngine;->dartExecutor:Lio/flutter/embedding/engine/dart/DartExecutor;

    invoke-direct {v2, v3}, Lio/flutter/embedding/engine/systemchannels/LocalizationChannel;-><init>(Lio/flutter/embedding/engine/dart/DartExecutor;)V

    iput-object v2, p0, Lio/flutter/embedding/engine/FlutterEngine;->localizationChannel:Lio/flutter/embedding/engine/systemchannels/LocalizationChannel;

    .line 307
    new-instance v2, Lio/flutter/embedding/engine/systemchannels/MouseCursorChannel;

    iget-object v3, p0, Lio/flutter/embedding/engine/FlutterEngine;->dartExecutor:Lio/flutter/embedding/engine/dart/DartExecutor;

    invoke-direct {v2, v3}, Lio/flutter/embedding/engine/systemchannels/MouseCursorChannel;-><init>(Lio/flutter/embedding/engine/dart/DartExecutor;)V

    iput-object v2, p0, Lio/flutter/embedding/engine/FlutterEngine;->mouseCursorChannel:Lio/flutter/embedding/engine/systemchannels/MouseCursorChannel;

    .line 308
    new-instance v2, Lio/flutter/embedding/engine/systemchannels/NavigationChannel;

    iget-object v3, p0, Lio/flutter/embedding/engine/FlutterEngine;->dartExecutor:Lio/flutter/embedding/engine/dart/DartExecutor;

    invoke-direct {v2, v3}, Lio/flutter/embedding/engine/systemchannels/NavigationChannel;-><init>(Lio/flutter/embedding/engine/dart/DartExecutor;)V

    iput-object v2, p0, Lio/flutter/embedding/engine/FlutterEngine;->navigationChannel:Lio/flutter/embedding/engine/systemchannels/NavigationChannel;

    .line 309
    new-instance v2, Lio/flutter/embedding/engine/systemchannels/PlatformChannel;

    iget-object v3, p0, Lio/flutter/embedding/engine/FlutterEngine;->dartExecutor:Lio/flutter/embedding/engine/dart/DartExecutor;

    invoke-direct {v2, v3}, Lio/flutter/embedding/engine/systemchannels/PlatformChannel;-><init>(Lio/flutter/embedding/engine/dart/DartExecutor;)V

    iput-object v2, p0, Lio/flutter/embedding/engine/FlutterEngine;->platformChannel:Lio/flutter/embedding/engine/systemchannels/PlatformChannel;

    .line 310
    new-instance v2, Lio/flutter/embedding/engine/systemchannels/RestorationChannel;

    iget-object v3, p0, Lio/flutter/embedding/engine/FlutterEngine;->dartExecutor:Lio/flutter/embedding/engine/dart/DartExecutor;

    invoke-direct {v2, v3, p7}, Lio/flutter/embedding/engine/systemchannels/RestorationChannel;-><init>(Lio/flutter/embedding/engine/dart/DartExecutor;Z)V

    iput-object v2, p0, Lio/flutter/embedding/engine/FlutterEngine;->restorationChannel:Lio/flutter/embedding/engine/systemchannels/RestorationChannel;

    .line 311
    new-instance p7, Lio/flutter/embedding/engine/systemchannels/SettingsChannel;

    iget-object v2, p0, Lio/flutter/embedding/engine/FlutterEngine;->dartExecutor:Lio/flutter/embedding/engine/dart/DartExecutor;

    invoke-direct {p7, v2}, Lio/flutter/embedding/engine/systemchannels/SettingsChannel;-><init>(Lio/flutter/embedding/engine/dart/DartExecutor;)V

    iput-object p7, p0, Lio/flutter/embedding/engine/FlutterEngine;->settingsChannel:Lio/flutter/embedding/engine/systemchannels/SettingsChannel;

    .line 312
    new-instance p7, Lio/flutter/embedding/engine/systemchannels/SystemChannel;

    iget-object v2, p0, Lio/flutter/embedding/engine/FlutterEngine;->dartExecutor:Lio/flutter/embedding/engine/dart/DartExecutor;

    invoke-direct {p7, v2}, Lio/flutter/embedding/engine/systemchannels/SystemChannel;-><init>(Lio/flutter/embedding/engine/dart/DartExecutor;)V

    iput-object p7, p0, Lio/flutter/embedding/engine/FlutterEngine;->systemChannel:Lio/flutter/embedding/engine/systemchannels/SystemChannel;

    .line 313
    new-instance p7, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    iget-object v2, p0, Lio/flutter/embedding/engine/FlutterEngine;->dartExecutor:Lio/flutter/embedding/engine/dart/DartExecutor;

    invoke-direct {p7, v2}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;-><init>(Lio/flutter/embedding/engine/dart/DartExecutor;)V

    iput-object p7, p0, Lio/flutter/embedding/engine/FlutterEngine;->textInputChannel:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    if-eqz v0, :cond_1

    .line 316
    iget-object p7, p0, Lio/flutter/embedding/engine/FlutterEngine;->deferredComponentChannel:Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;

    invoke-interface {v0, p7}, Lio/flutter/embedding/engine/deferredcomponents/DeferredComponentManager;->setDeferredComponentChannel(Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;)V

    .line 319
    :cond_1
    new-instance p7, Lio/flutter/plugin/localization/LocalizationPlugin;

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->localizationChannel:Lio/flutter/embedding/engine/systemchannels/LocalizationChannel;

    invoke-direct {p7, p1, v0}, Lio/flutter/plugin/localization/LocalizationPlugin;-><init>(Landroid/content/Context;Lio/flutter/embedding/engine/systemchannels/LocalizationChannel;)V

    iput-object p7, p0, Lio/flutter/embedding/engine/FlutterEngine;->localizationPlugin:Lio/flutter/plugin/localization/LocalizationPlugin;

    if-nez p2, :cond_2

    .line 322
    invoke-virtual {v1}, Lio/flutter/FlutterInjector;->flutterLoader()Lio/flutter/embedding/engine/loader/FlutterLoader;

    move-result-object p2

    .line 325
    :cond_2
    invoke-virtual {p3}, Lio/flutter/embedding/engine/FlutterJNI;->isAttached()Z

    move-result p7

    if-nez p7, :cond_3

    .line 326
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p7

    invoke-virtual {p2, p7}, Lio/flutter/embedding/engine/loader/FlutterLoader;->startInitialization(Landroid/content/Context;)V

    .line 327
    invoke-virtual {p2, p1, p5}, Lio/flutter/embedding/engine/loader/FlutterLoader;->ensureInitializationComplete(Landroid/content/Context;[Ljava/lang/String;)V

    .line 330
    :cond_3
    iget-object p5, p0, Lio/flutter/embedding/engine/FlutterEngine;->engineLifecycleListener:Lio/flutter/embedding/engine/FlutterEngine$EngineLifecycleListener;

    invoke-virtual {p3, p5}, Lio/flutter/embedding/engine/FlutterJNI;->addEngineLifecycleListener(Lio/flutter/embedding/engine/FlutterEngine$EngineLifecycleListener;)V

    .line 331
    invoke-virtual {p3, p4}, Lio/flutter/embedding/engine/FlutterJNI;->setPlatformViewsController(Lio/flutter/plugin/platform/PlatformViewsController;)V

    .line 332
    iget-object p5, p0, Lio/flutter/embedding/engine/FlutterEngine;->localizationPlugin:Lio/flutter/plugin/localization/LocalizationPlugin;

    invoke-virtual {p3, p5}, Lio/flutter/embedding/engine/FlutterJNI;->setLocalizationPlugin(Lio/flutter/plugin/localization/LocalizationPlugin;)V

    .line 333
    invoke-virtual {v1}, Lio/flutter/FlutterInjector;->deferredComponentManager()Lio/flutter/embedding/engine/deferredcomponents/DeferredComponentManager;

    move-result-object p5

    invoke-virtual {p3, p5}, Lio/flutter/embedding/engine/FlutterJNI;->setDeferredComponentManager(Lio/flutter/embedding/engine/deferredcomponents/DeferredComponentManager;)V

    .line 338
    invoke-virtual {p3}, Lio/flutter/embedding/engine/FlutterJNI;->isAttached()Z

    move-result p5

    if-nez p5, :cond_4

    .line 339
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterEngine;->attachToJni()V

    .line 344
    :cond_4
    new-instance p5, Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    invoke-direct {p5, p3}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;-><init>(Lio/flutter/embedding/engine/FlutterJNI;)V

    iput-object p5, p0, Lio/flutter/embedding/engine/FlutterEngine;->renderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    .line 346
    iput-object p4, p0, Lio/flutter/embedding/engine/FlutterEngine;->platformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

    .line 347
    iget-object p3, p0, Lio/flutter/embedding/engine/FlutterEngine;->platformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

    invoke-virtual {p3}, Lio/flutter/plugin/platform/PlatformViewsController;->onAttachedToJNI()V

    .line 349
    new-instance p3, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;

    .line 350
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p3, p1, p0, p2}, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;-><init>(Landroid/content/Context;Lio/flutter/embedding/engine/FlutterEngine;Lio/flutter/embedding/engine/loader/FlutterLoader;)V

    iput-object p3, p0, Lio/flutter/embedding/engine/FlutterEngine;->pluginRegistry:Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;

    if-eqz p6, :cond_5

    .line 354
    invoke-virtual {p2}, Lio/flutter/embedding/engine/loader/FlutterLoader;->automaticallyRegisterPlugins()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 355
    invoke-static {p0}, Lio/flutter/embedding/engine/plugins/util/GeneratedPluginRegister;->registerGeneratedPlugins(Lio/flutter/embedding/engine/FlutterEngine;)V

    :cond_5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/flutter/embedding/engine/loader/FlutterLoader;Lio/flutter/embedding/engine/FlutterJNI;[Ljava/lang/String;Z)V
    .locals 7

    .line 243
    new-instance v4, Lio/flutter/plugin/platform/PlatformViewsController;

    invoke-direct {v4}, Lio/flutter/plugin/platform/PlatformViewsController;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lio/flutter/embedding/engine/FlutterEngine;-><init>(Landroid/content/Context;Lio/flutter/embedding/engine/loader/FlutterLoader;Lio/flutter/embedding/engine/FlutterJNI;Lio/flutter/plugin/platform/PlatformViewsController;[Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    .line 163
    invoke-direct/range {v0 .. v5}, Lio/flutter/embedding/engine/FlutterEngine;-><init>(Landroid/content/Context;Lio/flutter/embedding/engine/loader/FlutterLoader;Lio/flutter/embedding/engine/FlutterJNI;[Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;Z)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    .line 176
    invoke-direct/range {v0 .. v5}, Lio/flutter/embedding/engine/FlutterEngine;-><init>(Landroid/content/Context;Lio/flutter/embedding/engine/loader/FlutterLoader;Lio/flutter/embedding/engine/FlutterJNI;[Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;ZZ)V
    .locals 8

    .line 207
    new-instance v4, Lio/flutter/plugin/platform/PlatformViewsController;

    invoke-direct {v4}, Lio/flutter/plugin/platform/PlatformViewsController;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lio/flutter/embedding/engine/FlutterEngine;-><init>(Landroid/content/Context;Lio/flutter/embedding/engine/loader/FlutterLoader;Lio/flutter/embedding/engine/FlutterJNI;Lio/flutter/plugin/platform/PlatformViewsController;[Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$000(Lio/flutter/embedding/engine/FlutterEngine;)Ljava/util/Set;
    .locals 0

    .line 78
    iget-object p0, p0, Lio/flutter/embedding/engine/FlutterEngine;->engineLifecycleListeners:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$100(Lio/flutter/embedding/engine/FlutterEngine;)Lio/flutter/plugin/platform/PlatformViewsController;
    .locals 0

    .line 78
    iget-object p0, p0, Lio/flutter/embedding/engine/FlutterEngine;->platformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

    return-object p0
.end method

.method static synthetic access$200(Lio/flutter/embedding/engine/FlutterEngine;)Lio/flutter/embedding/engine/systemchannels/RestorationChannel;
    .locals 0

    .line 78
    iget-object p0, p0, Lio/flutter/embedding/engine/FlutterEngine;->restorationChannel:Lio/flutter/embedding/engine/systemchannels/RestorationChannel;

    return-object p0
.end method

.method private attachToJni()V
    .locals 2

    const-string v0, "FlutterEngine"

    const-string v1, "Attaching to JNI."

    .line 360
    invoke-static {v0, v1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterJNI;->attachToNative()V

    .line 363
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterEngine;->isAttachedToJni()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 364
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "FlutterEngine failed to attach to its native Object reference."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isAttachedToJni()Z
    .locals 1

    .line 370
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterJNI;->isAttached()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addEngineLifecycleListener(Lio/flutter/embedding/engine/FlutterEngine$EngineLifecycleListener;)V
    .locals 1

    .line 442
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->engineLifecycleListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public destroy()V
    .locals 2

    const-string v0, "FlutterEngine"

    const-string v1, "Destroying."

    .line 420
    invoke-static {v0, v1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->engineLifecycleListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/embedding/engine/FlutterEngine$EngineLifecycleListener;

    .line 422
    invoke-interface {v1}, Lio/flutter/embedding/engine/FlutterEngine$EngineLifecycleListener;->onEngineWillDestroy()V

    goto :goto_0

    .line 425
    :cond_0
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->pluginRegistry:Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;->destroy()V

    .line 426
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->platformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

    invoke-virtual {v0}, Lio/flutter/plugin/platform/PlatformViewsController;->onDetachedFromJNI()V

    .line 427
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->dartExecutor:Lio/flutter/embedding/engine/dart/DartExecutor;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/dart/DartExecutor;->onDetachedFromJNI()V

    .line 428
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    iget-object v1, p0, Lio/flutter/embedding/engine/FlutterEngine;->engineLifecycleListener:Lio/flutter/embedding/engine/FlutterEngine$EngineLifecycleListener;

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/FlutterJNI;->removeEngineLifecycleListener(Lio/flutter/embedding/engine/FlutterEngine$EngineLifecycleListener;)V

    .line 429
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/FlutterJNI;->setDeferredComponentManager(Lio/flutter/embedding/engine/deferredcomponents/DeferredComponentManager;)V

    .line 430
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterJNI;->detachFromNativeAndReleaseResources()V

    .line 431
    invoke-static {}, Lio/flutter/FlutterInjector;->instance()Lio/flutter/FlutterInjector;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/FlutterInjector;->deferredComponentManager()Lio/flutter/embedding/engine/deferredcomponents/DeferredComponentManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 432
    invoke-static {}, Lio/flutter/FlutterInjector;->instance()Lio/flutter/FlutterInjector;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/FlutterInjector;->deferredComponentManager()Lio/flutter/embedding/engine/deferredcomponents/DeferredComponentManager;

    move-result-object v0

    invoke-interface {v0}, Lio/flutter/embedding/engine/deferredcomponents/DeferredComponentManager;->destroy()V

    .line 433
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->deferredComponentChannel:Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;->setDeferredComponentManager(Lio/flutter/embedding/engine/deferredcomponents/DeferredComponentManager;)V

    :cond_1
    return-void
.end method

.method public getAccessibilityChannel()Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;
    .locals 1

    .line 481
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->accessibilityChannel:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    return-object v0
.end method

.method public getActivityControlSurface()Lio/flutter/embedding/engine/plugins/activity/ActivityControlSurface;
    .locals 1

    .line 587
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->pluginRegistry:Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;

    return-object v0
.end method

.method public getBroadcastReceiverControlSurface()Lio/flutter/embedding/engine/plugins/broadcastreceiver/BroadcastReceiverControlSurface;
    .locals 1

    .line 597
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->pluginRegistry:Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;

    return-object v0
.end method

.method public getContentProviderControlSurface()Lio/flutter/embedding/engine/plugins/contentprovider/ContentProviderControlSurface;
    .locals 1

    .line 602
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->pluginRegistry:Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;

    return-object v0
.end method

.method public getDartExecutor()Lio/flutter/embedding/engine/dart/DartExecutor;
    .locals 1

    .line 464
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->dartExecutor:Lio/flutter/embedding/engine/dart/DartExecutor;

    return-object v0
.end method

.method public getDeferredComponentChannel()Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;
    .locals 1

    .line 541
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->deferredComponentChannel:Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;

    return-object v0
.end method

.method public getKeyEventChannel()Lio/flutter/embedding/engine/systemchannels/KeyEventChannel;
    .locals 1

    .line 487
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->keyEventChannel:Lio/flutter/embedding/engine/systemchannels/KeyEventChannel;

    return-object v0
.end method

.method public getLifecycleChannel()Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;
    .locals 1

    .line 493
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->lifecycleChannel:Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;

    return-object v0
.end method

.method public getLocalizationChannel()Lio/flutter/embedding/engine/systemchannels/LocalizationChannel;
    .locals 1

    .line 499
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->localizationChannel:Lio/flutter/embedding/engine/systemchannels/LocalizationChannel;

    return-object v0
.end method

.method public getLocalizationPlugin()Lio/flutter/plugin/localization/LocalizationPlugin;
    .locals 1

    .line 573
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->localizationPlugin:Lio/flutter/plugin/localization/LocalizationPlugin;

    return-object v0
.end method

.method public getMouseCursorChannel()Lio/flutter/embedding/engine/systemchannels/MouseCursorChannel;
    .locals 1

    .line 553
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->mouseCursorChannel:Lio/flutter/embedding/engine/systemchannels/MouseCursorChannel;

    return-object v0
.end method

.method public getNavigationChannel()Lio/flutter/embedding/engine/systemchannels/NavigationChannel;
    .locals 1

    .line 505
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->navigationChannel:Lio/flutter/embedding/engine/systemchannels/NavigationChannel;

    return-object v0
.end method

.method public getPlatformChannel()Lio/flutter/embedding/engine/systemchannels/PlatformChannel;
    .locals 1

    .line 514
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->platformChannel:Lio/flutter/embedding/engine/systemchannels/PlatformChannel;

    return-object v0
.end method

.method public getPlatformViewsController()Lio/flutter/plugin/platform/PlatformViewsController;
    .locals 1

    .line 582
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->platformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

    return-object v0
.end method

.method public getPlugins()Lio/flutter/embedding/engine/plugins/PluginRegistry;
    .locals 1

    .line 567
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->pluginRegistry:Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;

    return-object v0
.end method

.method public getRenderer()Lio/flutter/embedding/engine/renderer/FlutterRenderer;
    .locals 1

    .line 475
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->renderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    return-object v0
.end method

.method public getRestorationChannel()Lio/flutter/embedding/engine/systemchannels/RestorationChannel;
    .locals 1

    .line 526
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->restorationChannel:Lio/flutter/embedding/engine/systemchannels/RestorationChannel;

    return-object v0
.end method

.method public getServiceControlSurface()Lio/flutter/embedding/engine/plugins/service/ServiceControlSurface;
    .locals 1

    .line 592
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->pluginRegistry:Lio/flutter/embedding/engine/FlutterEngineConnectionRegistry;

    return-object v0
.end method

.method public getSettingsChannel()Lio/flutter/embedding/engine/systemchannels/SettingsChannel;
    .locals 1

    .line 535
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->settingsChannel:Lio/flutter/embedding/engine/systemchannels/SettingsChannel;

    return-object v0
.end method

.method public getSystemChannel()Lio/flutter/embedding/engine/systemchannels/SystemChannel;
    .locals 1

    .line 547
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->systemChannel:Lio/flutter/embedding/engine/systemchannels/SystemChannel;

    return-object v0
.end method

.method public getTextInputChannel()Lio/flutter/embedding/engine/systemchannels/TextInputChannel;
    .locals 1

    .line 559
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->textInputChannel:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    return-object v0
.end method

.method public removeEngineLifecycleListener(Lio/flutter/embedding/engine/FlutterEngine$EngineLifecycleListener;)V
    .locals 1

    .line 450
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->engineLifecycleListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method spawn(Landroid/content/Context;Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;Ljava/lang/String;Ljava/util/List;)Lio/flutter/embedding/engine/FlutterEngine;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/flutter/embedding/engine/FlutterEngine;"
        }
    .end annotation

    .line 395
    invoke-direct {p0}, Lio/flutter/embedding/engine/FlutterEngine;->isAttachedToJni()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngine;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    iget-object v1, p2, Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;->dartEntrypointFunctionName:Ljava/lang/String;

    iget-object p2, p2, Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;->dartEntrypointLibrary:Ljava/lang/String;

    .line 401
    invoke-virtual {v0, v1, p2, p3, p4}, Lio/flutter/embedding/engine/FlutterJNI;->spawn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object p2

    .line 406
    new-instance p3, Lio/flutter/embedding/engine/FlutterEngine;

    const/4 p4, 0x0

    invoke-direct {p3, p1, p4, p2}, Lio/flutter/embedding/engine/FlutterEngine;-><init>(Landroid/content/Context;Lio/flutter/embedding/engine/loader/FlutterLoader;Lio/flutter/embedding/engine/FlutterJNI;)V

    return-object p3

    .line 396
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Spawn can only be called on a fully constructed FlutterEngine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
