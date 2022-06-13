.class Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;
.super Ljava/lang/Object;
.source "FlutterActivityAndFragmentDelegate.java"

# interfaces
.implements Lio/flutter/embedding/android/ExclusiveAppComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/flutter/embedding/android/ExclusiveAppComponent<",
        "Landroid/app/Activity;",
        ">;"
    }
.end annotation


# static fields
.field private static final FLUTTER_SPLASH_VIEW_FALLBACK_ID:I = 0x1d063b02

.field private static final FRAMEWORK_RESTORATION_BUNDLE_KEY:Ljava/lang/String; = "framework"

.field private static final PLUGINS_RESTORATION_BUNDLE_KEY:Ljava/lang/String; = "plugins"

.field private static final TAG:Ljava/lang/String; = "FlutterActivityAndFragmentDelegate"


# instance fields
.field activePreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

.field private final flutterUiDisplayListener:Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;

.field private flutterView:Lio/flutter/embedding/android/FlutterView;

.field private host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

.field private isAttached:Z

.field private isFirstFrameRendered:Z

.field private isFlutterEngineFromHost:Z

.field private isFlutterUiDisplayed:Z

.field private platformPlugin:Lio/flutter/plugin/platform/PlatformPlugin;


# direct methods
.method constructor <init>(Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;)V
    .locals 1

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$1;

    invoke-direct {v0, p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$1;-><init>(Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;)V

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterUiDisplayListener:Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;

    .line 103
    iput-object p1, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    const/4 p1, 0x0

    .line 104
    iput-boolean p1, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->isFirstFrameRendered:Z

    return-void
.end method

.method static synthetic access$000(Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;)Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;
    .locals 0

    .line 67
    iget-object p0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    return-object p0
.end method

.method static synthetic access$100(Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->isFlutterUiDisplayed:Z

    return p0
.end method

.method static synthetic access$102(Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;Z)Z
    .locals 0

    .line 67
    iput-boolean p1, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->isFlutterUiDisplayed:Z

    return p1
.end method

.method static synthetic access$202(Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;Z)Z
    .locals 0

    .line 67
    iput-boolean p1, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->isFirstFrameRendered:Z

    return p1
.end method

.method private delayFirstAndroidViewDraw(Lio/flutter/embedding/android/FlutterView;)V
    .locals 2

    .line 466
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->getRenderMode()Lio/flutter/embedding/android/RenderMode;

    move-result-object v0

    sget-object v1, Lio/flutter/embedding/android/RenderMode;->surface:Lio/flutter/embedding/android/RenderMode;

    if-ne v0, v1, :cond_1

    .line 476
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->activePreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v0, :cond_0

    .line 477
    invoke-virtual {p1}, Lio/flutter/embedding/android/FlutterView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->activePreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 480
    :cond_0
    new-instance v0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$2;

    invoke-direct {v0, p0, p1}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$2;-><init>(Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;Lio/flutter/embedding/android/FlutterView;)V

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->activePreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 491
    invoke-virtual {p1}, Lio/flutter/embedding/android/FlutterView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->activePreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void

    .line 471
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot delay the first Android view draw when the render mode is not set to `RenderMode.surface`."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private doInitialFlutterViewRun()V
    .locals 3

    .line 403
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->getCachedEngineId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 407
    :cond_0
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getDartExecutor()Lio/flutter/embedding/engine/dart/DartExecutor;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/dart/DartExecutor;->isExecutingDart()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 413
    :cond_1
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->getInitialRoute()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 415
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->maybeGetInitialRouteFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "/"

    .line 420
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Executing Dart entrypoint: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    .line 423
    invoke-interface {v2}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->getDartEntrypointFunctionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", and sending initial route: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FlutterActivityAndFragmentDelegate"

    .line 420
    invoke-static {v2, v1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v1}, Lio/flutter/embedding/engine/FlutterEngine;->getNavigationChannel()Lio/flutter/embedding/engine/systemchannels/NavigationChannel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/flutter/embedding/engine/systemchannels/NavigationChannel;->setInitialRoute(Ljava/lang/String;)V

    .line 431
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->getAppBundlePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 432
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 433
    :cond_3
    invoke-static {}, Lio/flutter/FlutterInjector;->instance()Lio/flutter/FlutterInjector;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/FlutterInjector;->flutterLoader()Lio/flutter/embedding/engine/loader/FlutterLoader;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/loader/FlutterLoader;->findAppBundlePath()Ljava/lang/String;

    move-result-object v0

    .line 437
    :cond_4
    new-instance v1, Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;

    iget-object v2, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    .line 439
    invoke-interface {v2}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->getDartEntrypointFunctionName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getDartExecutor()Lio/flutter/embedding/engine/dart/DartExecutor;

    move-result-object v0

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/dart/DartExecutor;->executeDartEntrypoint(Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;)V

    return-void
.end method

.method private ensureAlive()V
    .locals 2

    .line 841
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    if-eqz v0, :cond_0

    return-void

    .line 842
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute method on a destroyed FlutterActivityAndFragmentDelegate."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private maybeGetInitialRouteFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2

    .line 444
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->shouldHandleDeeplinking()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 445
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 447
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 448
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 449
    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 452
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 453
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public detachFromFlutterEngine()V
    .locals 3

    .line 608
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->shouldDestroyEngineWithHost()Z

    move-result v0

    if-nez v0, :cond_0

    .line 621
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->detachFromFlutterEngine()V

    return-void

    .line 611
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The internal FlutterEngine created by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " has been attached to by another activity. To persist a FlutterEngine beyond the ownership of this activity, explicitly create a FlutterEngine"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public getAppComponent()Landroid/app/Activity;
    .locals 2

    .line 205
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 207
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "FlutterActivityAndFragmentDelegate\'s getAppComponent should only be queried after onAttach, when the host\'s activity should always be non-null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public bridge synthetic getAppComponent()Ljava/lang/Object;
    .locals 1

    .line 67
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->getAppComponent()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method getFlutterEngine()Lio/flutter/embedding/engine/FlutterEngine;
    .locals 1

    .line 131
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    return-object v0
.end method

.method isAttached()Z
    .locals 1

    .line 147
    iget-boolean v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->isAttached:Z

    return v0
.end method

.method isFlutterEngineFromHost()Z
    .locals 1

    .line 139
    iget-boolean v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->isFlutterEngineFromHost:Z

    return v0
.end method

.method onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 759
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->ensureAlive()V

    .line 760
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    const-string v1, "FlutterActivityAndFragmentDelegate"

    if-eqz v0, :cond_0

    .line 761
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Forwarding onActivityResult() to FlutterEngine:\nrequestCode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\nresultCode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\ndata: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getActivityControlSurface()Lio/flutter/embedding/engine/plugins/activity/ActivityControlSurface;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lio/flutter/embedding/engine/plugins/activity/ActivityControlSurface;->onActivityResult(IILandroid/content/Intent;)Z

    goto :goto_0

    :cond_0
    const-string p1, "onActivityResult() invoked before FlutterFragment was attached to an Activity."

    .line 774
    invoke-static {v1, p1}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method onAttach(Landroid/content/Context;)V
    .locals 2

    .line 169
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->ensureAlive()V

    .line 173
    iget-object p1, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    if-nez p1, :cond_0

    .line 174
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->setupFlutterEngine()V

    .line 177
    :cond_0
    iget-object p1, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {p1}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->shouldAttachEngineToActivity()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "FlutterActivityAndFragmentDelegate"

    const-string v0, "Attaching FlutterEngine to the Activity that owns this delegate."

    .line 187
    invoke-static {p1, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object p1, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/FlutterEngine;->getActivityControlSurface()Lio/flutter/embedding/engine/plugins/activity/ActivityControlSurface;

    move-result-object p1

    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lio/flutter/embedding/engine/plugins/activity/ActivityControlSurface;->attachToActivity(Lio/flutter/embedding/android/ExclusiveAppComponent;Landroidx/lifecycle/Lifecycle;)V

    .line 197
    :cond_1
    iget-object p1, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {p1}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-interface {p1, v0, v1}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->providePlatformPlugin(Landroid/app/Activity;Lio/flutter/embedding/engine/FlutterEngine;)Lio/flutter/plugin/platform/PlatformPlugin;

    move-result-object p1

    iput-object p1, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->platformPlugin:Lio/flutter/plugin/platform/PlatformPlugin;

    .line 199
    iget-object p1, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-interface {p1, v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->configureFlutterEngine(Lio/flutter/embedding/engine/FlutterEngine;)V

    const/4 p1, 0x1

    .line 200
    iput-boolean p1, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->isAttached:Z

    return-void
.end method

.method onBackPressed()V
    .locals 2

    .line 690
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->ensureAlive()V

    .line 691
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    const-string v1, "FlutterActivityAndFragmentDelegate"

    if-eqz v0, :cond_0

    const-string v0, "Forwarding onBackPressed() to FlutterEngine."

    .line 692
    invoke-static {v1, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getNavigationChannel()Lio/flutter/embedding/engine/systemchannels/NavigationChannel;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/systemchannels/NavigationChannel;->popRoute()V

    goto :goto_0

    :cond_0
    const-string v0, "Invoked onBackPressed() before FlutterFragment was attached to an Activity."

    .line 695
    invoke-static {v1, v0}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;IZ)Landroid/view/View;
    .locals 4

    const-string p1, "FlutterActivityAndFragmentDelegate"

    const-string p2, "Creating FlutterView."

    .line 302
    invoke-static {p1, p2}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->ensureAlive()V

    .line 305
    iget-object p2, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {p2}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->getRenderMode()Lio/flutter/embedding/android/RenderMode;

    move-result-object p2

    sget-object p3, Lio/flutter/embedding/android/RenderMode;->surface:Lio/flutter/embedding/android/RenderMode;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, p3, :cond_1

    .line 306
    new-instance p2, Lio/flutter/embedding/android/FlutterSurfaceView;

    iget-object p3, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    .line 308
    invoke-interface {p3}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-object v2, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {v2}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->getTransparencyMode()Lio/flutter/embedding/android/TransparencyMode;

    move-result-object v2

    sget-object v3, Lio/flutter/embedding/android/TransparencyMode;->transparent:Lio/flutter/embedding/android/TransparencyMode;

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-direct {p2, p3, v0}, Lio/flutter/embedding/android/FlutterSurfaceView;-><init>(Landroid/content/Context;Z)V

    .line 311
    iget-object p3, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {p3, p2}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->onFlutterSurfaceViewCreated(Lio/flutter/embedding/android/FlutterSurfaceView;)V

    .line 314
    new-instance p3, Lio/flutter/embedding/android/FlutterView;

    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0, p2}, Lio/flutter/embedding/android/FlutterView;-><init>(Landroid/content/Context;Lio/flutter/embedding/android/FlutterSurfaceView;)V

    iput-object p3, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterView:Lio/flutter/embedding/android/FlutterView;

    goto :goto_2

    .line 316
    :cond_1
    new-instance p2, Lio/flutter/embedding/android/FlutterTextureView;

    iget-object p3, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {p3}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lio/flutter/embedding/android/FlutterTextureView;-><init>(Landroid/content/Context;)V

    .line 318
    iget-object p3, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {p3}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->getTransparencyMode()Lio/flutter/embedding/android/TransparencyMode;

    move-result-object p3

    sget-object v2, Lio/flutter/embedding/android/TransparencyMode;->opaque:Lio/flutter/embedding/android/TransparencyMode;

    if-ne p3, v2, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    invoke-virtual {p2, v0}, Lio/flutter/embedding/android/FlutterTextureView;->setOpaque(Z)V

    .line 321
    iget-object p3, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {p3, p2}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->onFlutterTextureViewCreated(Lio/flutter/embedding/android/FlutterTextureView;)V

    .line 324
    new-instance p3, Lio/flutter/embedding/android/FlutterView;

    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0, p2}, Lio/flutter/embedding/android/FlutterView;-><init>(Landroid/content/Context;Lio/flutter/embedding/android/FlutterTextureView;)V

    iput-object p3, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterView:Lio/flutter/embedding/android/FlutterView;

    .line 328
    :goto_2
    iget-object p2, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterView:Lio/flutter/embedding/android/FlutterView;

    iget-object p3, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterUiDisplayListener:Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;

    invoke-virtual {p2, p3}, Lio/flutter/embedding/android/FlutterView;->addOnFirstFrameRenderedListener(Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;)V

    const-string p2, "Attaching FlutterEngine to FlutterView."

    .line 330
    invoke-static {p1, p2}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    iget-object p2, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterView:Lio/flutter/embedding/android/FlutterView;

    iget-object p3, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {p2, p3}, Lio/flutter/embedding/android/FlutterView;->attachToFlutterEngine(Lio/flutter/embedding/engine/FlutterEngine;)V

    .line 332
    iget-object p2, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterView:Lio/flutter/embedding/android/FlutterView;

    invoke-virtual {p2, p4}, Lio/flutter/embedding/android/FlutterView;->setId(I)V

    .line 334
    iget-object p2, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {p2}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->provideSplashScreen()Lio/flutter/embedding/android/SplashScreen;

    move-result-object p2

    if-eqz p2, :cond_3

    const-string p3, "A splash screen was provided to Flutter, but this is deprecated. See flutter.dev/go/android-splash-migration for migration steps."

    .line 337
    invoke-static {p1, p3}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    new-instance p1, Lio/flutter/embedding/android/FlutterSplashView;

    iget-object p3, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {p3}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p1, p3}, Lio/flutter/embedding/android/FlutterSplashView;-><init>(Landroid/content/Context;)V

    const p3, 0x1d063b02

    .line 342
    invoke-static {p3}, Lio/flutter/util/ViewUtils;->generateViewId(I)I

    move-result p3

    invoke-virtual {p1, p3}, Lio/flutter/embedding/android/FlutterSplashView;->setId(I)V

    .line 343
    iget-object p3, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterView:Lio/flutter/embedding/android/FlutterView;

    invoke-virtual {p1, p3, p2}, Lio/flutter/embedding/android/FlutterSplashView;->displayFlutterViewWithSplash(Lio/flutter/embedding/android/FlutterView;Lio/flutter/embedding/android/SplashScreen;)V

    return-object p1

    :cond_3
    if-eqz p5, :cond_4

    .line 349
    iget-object p1, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterView:Lio/flutter/embedding/android/FlutterView;

    invoke-direct {p0, p1}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->delayFirstAndroidViewDraw(Lio/flutter/embedding/android/FlutterView;)V

    .line 351
    :cond_4
    iget-object p1, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterView:Lio/flutter/embedding/android/FlutterView;

    return-object p1
.end method

.method onDestroyView()V
    .locals 2

    const-string v0, "FlutterActivityAndFragmentDelegate"

    const-string v1, "onDestroyView()"

    .line 578
    invoke-static {v0, v1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->ensureAlive()V

    .line 581
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->activePreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterView:Lio/flutter/embedding/android/FlutterView;

    invoke-virtual {v0}, Lio/flutter/embedding/android/FlutterView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->activePreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x0

    .line 583
    iput-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->activePreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 585
    :cond_0
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterView:Lio/flutter/embedding/android/FlutterView;

    invoke-virtual {v0}, Lio/flutter/embedding/android/FlutterView;->detachFromFlutterEngine()V

    .line 586
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterView:Lio/flutter/embedding/android/FlutterView;

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterUiDisplayListener:Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;

    invoke-virtual {v0, v1}, Lio/flutter/embedding/android/FlutterView;->removeOnFirstFrameRenderedListener(Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;)V

    return-void
.end method

.method onDetach()V
    .locals 3

    const-string v0, "FlutterActivityAndFragmentDelegate"

    const-string v1, "onDetach()"

    .line 640
    invoke-static {v0, v1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->ensureAlive()V

    .line 645
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    iget-object v2, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-interface {v1, v2}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->cleanUpFlutterEngine(Lio/flutter/embedding/engine/FlutterEngine;)V

    .line 647
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {v1}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->shouldAttachEngineToActivity()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Detaching FlutterEngine from the Activity that owns this Fragment."

    .line 649
    invoke-static {v0, v1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getActivityControlSurface()Lio/flutter/embedding/engine/plugins/activity/ActivityControlSurface;

    move-result-object v0

    invoke-interface {v0}, Lio/flutter/embedding/engine/plugins/activity/ActivityControlSurface;->detachFromActivityForConfigChanges()V

    goto :goto_0

    .line 653
    :cond_0
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getActivityControlSurface()Lio/flutter/embedding/engine/plugins/activity/ActivityControlSurface;

    move-result-object v0

    invoke-interface {v0}, Lio/flutter/embedding/engine/plugins/activity/ActivityControlSurface;->detachFromActivity()V

    .line 660
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->platformPlugin:Lio/flutter/plugin/platform/PlatformPlugin;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 661
    invoke-virtual {v0}, Lio/flutter/plugin/platform/PlatformPlugin;->destroy()V

    .line 662
    iput-object v1, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->platformPlugin:Lio/flutter/plugin/platform/PlatformPlugin;

    .line 665
    :cond_2
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getLifecycleChannel()Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;->appIsDetached()V

    .line 668
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->shouldDestroyEngineWithHost()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 669
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->destroy()V

    .line 671
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->getCachedEngineId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 672
    invoke-static {}, Lio/flutter/embedding/engine/FlutterEngineCache;->getInstance()Lio/flutter/embedding/engine/FlutterEngineCache;

    move-result-object v0

    iget-object v2, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {v2}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->getCachedEngineId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/flutter/embedding/engine/FlutterEngineCache;->remove(Ljava/lang/String;)V

    .line 675
    :cond_3
    iput-object v1, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    :cond_4
    const/4 v0, 0x0

    .line 678
    iput-boolean v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->isAttached:Z

    return-void
.end method

.method onLowMemory()V
    .locals 2

    const-string v0, "FlutterActivityAndFragmentDelegate"

    const-string v1, "Forwarding onLowMemory() to FlutterEngine."

    .line 829
    invoke-static {v0, v1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->ensureAlive()V

    .line 831
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getDartExecutor()Lio/flutter/embedding/engine/dart/DartExecutor;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/dart/DartExecutor;->notifyLowMemoryWarning()V

    .line 832
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getSystemChannel()Lio/flutter/embedding/engine/systemchannels/SystemChannel;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/systemchannels/SystemChannel;->sendMemoryPressureWarning()V

    return-void
.end method

.method onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 739
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->ensureAlive()V

    .line 740
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    const-string v1, "FlutterActivityAndFragmentDelegate"

    if-eqz v0, :cond_0

    const-string v0, "Forwarding onNewIntent() to FlutterEngine and sending pushRoute message."

    .line 741
    invoke-static {v1, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getActivityControlSurface()Lio/flutter/embedding/engine/plugins/activity/ActivityControlSurface;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityControlSurface;->onNewIntent(Landroid/content/Intent;)V

    .line 743
    invoke-direct {p0, p1}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->maybeGetInitialRouteFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 744
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 745
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getNavigationChannel()Lio/flutter/embedding/engine/systemchannels/NavigationChannel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/flutter/embedding/engine/systemchannels/NavigationChannel;->pushRoute(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "onNewIntent() invoked before FlutterFragment was attached to an Activity."

    .line 748
    invoke-static {v1, p1}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method onPause()V
    .locals 2

    const-string v0, "FlutterActivityAndFragmentDelegate"

    const-string v1, "onPause()"

    .line 547
    invoke-static {v0, v1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->ensureAlive()V

    .line 549
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getLifecycleChannel()Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;->appIsInactive()V

    return-void
.end method

.method onPostResume()V
    .locals 2

    const-string v0, "FlutterActivityAndFragmentDelegate"

    const-string v1, "onPostResume()"

    .line 518
    invoke-static {v0, v1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->ensureAlive()V

    .line 520
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    if-eqz v1, :cond_0

    .line 521
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->updateSystemUiOverlays()V

    goto :goto_0

    :cond_0
    const-string v1, "onPostResume() invoked before FlutterFragment was attached to an Activity."

    .line 523
    invoke-static {v0, v1}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    .line 707
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->ensureAlive()V

    .line 708
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    const-string v1, "FlutterActivityAndFragmentDelegate"

    if-eqz v0, :cond_0

    .line 709
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Forwarding onRequestPermissionsResult() to FlutterEngine:\nrequestCode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\npermissions: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\ngrantResults: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 709
    invoke-static {v1, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    .line 721
    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getActivityControlSurface()Lio/flutter/embedding/engine/plugins/activity/ActivityControlSurface;

    move-result-object v0

    .line 722
    invoke-interface {v0, p1, p2, p3}, Lio/flutter/embedding/engine/plugins/activity/ActivityControlSurface;->onRequestPermissionsResult(I[Ljava/lang/String;[I)Z

    goto :goto_0

    :cond_0
    const-string p1, "onRequestPermissionResult() invoked before FlutterFragment was attached to an Activity."

    .line 724
    invoke-static {v1, p1}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "FlutterActivityAndFragmentDelegate"

    const-string v1, "onRestoreInstanceState. Giving framework and plugins an opportunity to restore state."

    .line 355
    invoke-static {v0, v1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->ensureAlive()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v0, "plugins"

    .line 363
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "framework"

    .line 364
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 367
    :goto_0
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {v1}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->shouldRestoreAndSaveState()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 368
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v1}, Lio/flutter/embedding/engine/FlutterEngine;->getRestorationChannel()Lio/flutter/embedding/engine/systemchannels/RestorationChannel;

    move-result-object v1

    invoke-virtual {v1, p1}, Lio/flutter/embedding/engine/systemchannels/RestorationChannel;->setRestorationData([B)V

    .line 371
    :cond_1
    iget-object p1, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {p1}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->shouldAttachEngineToActivity()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 372
    iget-object p1, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/FlutterEngine;->getActivityControlSurface()Lio/flutter/embedding/engine/plugins/activity/ActivityControlSurface;

    move-result-object p1

    invoke-interface {p1, v0}, Lio/flutter/embedding/engine/plugins/activity/ActivityControlSurface;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method onResume()V
    .locals 2

    const-string v0, "FlutterActivityAndFragmentDelegate"

    const-string v1, "onResume()"

    .line 501
    invoke-static {v0, v1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->ensureAlive()V

    .line 503
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getLifecycleChannel()Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;->appIsResumed()V

    return-void
.end method

.method onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "FlutterActivityAndFragmentDelegate"

    const-string v1, "onSaveInstanceState. Giving framework and plugins an opportunity to save state."

    .line 590
    invoke-static {v0, v1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->ensureAlive()V

    .line 593
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->shouldRestoreAndSaveState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    .line 596
    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getRestorationChannel()Lio/flutter/embedding/engine/systemchannels/RestorationChannel;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/systemchannels/RestorationChannel;->getRestorationData()[B

    move-result-object v0

    const-string v1, "framework"

    .line 594
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 599
    :cond_0
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->shouldAttachEngineToActivity()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 600
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 601
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v1}, Lio/flutter/embedding/engine/FlutterEngine;->getActivityControlSurface()Lio/flutter/embedding/engine/plugins/activity/ActivityControlSurface;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/flutter/embedding/engine/plugins/activity/ActivityControlSurface;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v1, "plugins"

    .line 602
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method onStart()V
    .locals 2

    const-string v0, "FlutterActivityAndFragmentDelegate"

    const-string v1, "onStart()"

    .line 388
    invoke-static {v0, v1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->ensureAlive()V

    .line 390
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->doInitialFlutterViewRun()V

    return-void
.end method

.method onStop()V
    .locals 2

    const-string v0, "FlutterActivityAndFragmentDelegate"

    const-string v1, "onStop()"

    .line 567
    invoke-static {v0, v1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->ensureAlive()V

    .line 569
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getLifecycleChannel()Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;->appIsPaused()V

    return-void
.end method

.method onTrimMemory(I)V
    .locals 1

    .line 805
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->ensureAlive()V

    .line 806
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    if-eqz v0, :cond_1

    .line 812
    iget-boolean v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->isFirstFrameRendered:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 814
    iget-object p1, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/FlutterEngine;->getDartExecutor()Lio/flutter/embedding/engine/dart/DartExecutor;

    move-result-object p1

    invoke-virtual {p1}, Lio/flutter/embedding/engine/dart/DartExecutor;->notifyLowMemoryWarning()V

    .line 815
    iget-object p1, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/FlutterEngine;->getSystemChannel()Lio/flutter/embedding/engine/systemchannels/SystemChannel;

    move-result-object p1

    invoke-virtual {p1}, Lio/flutter/embedding/engine/systemchannels/SystemChannel;->sendMemoryPressureWarning()V

    :cond_1
    return-void
.end method

.method onUserLeaveHint()V
    .locals 2

    .line 787
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->ensureAlive()V

    .line 788
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    const-string v1, "FlutterActivityAndFragmentDelegate"

    if-eqz v0, :cond_0

    const-string v0, "Forwarding onUserLeaveHint() to FlutterEngine."

    .line 789
    invoke-static {v1, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterEngine;->getActivityControlSurface()Lio/flutter/embedding/engine/plugins/activity/ActivityControlSurface;

    move-result-object v0

    invoke-interface {v0}, Lio/flutter/embedding/engine/plugins/activity/ActivityControlSurface;->onUserLeaveHint()V

    goto :goto_0

    :cond_0
    const-string v0, "onUserLeaveHint() invoked before FlutterFragment was attached to an Activity."

    .line 792
    invoke-static {v1, v0}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method release()V
    .locals 1

    const/4 v0, 0x0

    .line 119
    iput-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    .line 120
    iput-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    .line 121
    iput-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterView:Lio/flutter/embedding/android/FlutterView;

    .line 122
    iput-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->platformPlugin:Lio/flutter/plugin/platform/PlatformPlugin;

    return-void
.end method

.method setupFlutterEngine()V
    .locals 5

    const-string v0, "FlutterActivityAndFragmentDelegate"

    const-string v1, "Setting up FlutterEngine."

    .line 231
    invoke-static {v0, v1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {v1}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->getCachedEngineId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 236
    invoke-static {}, Lio/flutter/embedding/engine/FlutterEngineCache;->getInstance()Lio/flutter/embedding/engine/FlutterEngineCache;

    move-result-object v0

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/FlutterEngineCache;->get(Ljava/lang/String;)Lio/flutter/embedding/engine/FlutterEngine;

    move-result-object v0

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    .line 237
    iput-boolean v2, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->isFlutterEngineFromHost:Z

    .line 238
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    if-eqz v0, :cond_0

    return-void

    .line 239
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The requested cached FlutterEngine did not exist in the FlutterEngineCache: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_1
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    invoke-interface {v1}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->provideFlutterEngine(Landroid/content/Context;)Lio/flutter/embedding/engine/FlutterEngine;

    move-result-object v1

    iput-object v1, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    .line 249
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    if-eqz v1, :cond_2

    .line 250
    iput-boolean v2, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->isFlutterEngineFromHost:Z

    return-void

    :cond_2
    const-string v1, "No preferred FlutterEngine was provided. Creating a new FlutterEngine for this FlutterFragment."

    .line 256
    invoke-static {v0, v1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    new-instance v0, Lio/flutter/embedding/engine/FlutterEngine;

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    .line 262
    invoke-interface {v1}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    .line 263
    invoke-interface {v2}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->getFlutterShellArgs()Lio/flutter/embedding/engine/FlutterShellArgs;

    move-result-object v2

    invoke-virtual {v2}, Lio/flutter/embedding/engine/FlutterShellArgs;->toArray()[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->host:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;

    .line 265
    invoke-interface {v3}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;->shouldRestoreAndSaveState()Z

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v4, v3}, Lio/flutter/embedding/engine/FlutterEngine;-><init>(Landroid/content/Context;[Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->flutterEngine:Lio/flutter/embedding/engine/FlutterEngine;

    .line 266
    iput-boolean v4, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->isFlutterEngineFromHost:Z

    return-void
.end method

.method updateSystemUiOverlays()V
    .locals 1

    .line 532
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->platformPlugin:Lio/flutter/plugin/platform/PlatformPlugin;

    if-eqz v0, :cond_0

    .line 536
    invoke-virtual {v0}, Lio/flutter/plugin/platform/PlatformPlugin;->updateSystemUiOverlays()V

    :cond_0
    return-void
.end method
