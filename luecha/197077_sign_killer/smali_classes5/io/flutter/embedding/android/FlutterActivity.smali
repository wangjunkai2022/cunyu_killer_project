.class public Lio/flutter/embedding/android/FlutterActivity;
.super Landroid/app/Activity;
.source "FlutterActivity.java"

# interfaces
.implements Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;
.implements Landroidx/lifecycle/LifecycleOwner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/android/FlutterActivity$CachedEngineIntentBuilder;,
        Lio/flutter/embedding/android/FlutterActivity$NewEngineIntentBuilder;
    }
.end annotation


# static fields
.field public static final FLUTTER_VIEW_ID:I

.field private static final TAG:Ljava/lang/String; = "FlutterActivity"


# instance fields
.field protected delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

.field private lifecycle:Landroidx/lifecycle/LifecycleRegistry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0xf1f2

    .line 217
    invoke-static {v0}, Lio/flutter/util/ViewUtils;->generateViewId(I)I

    move-result v0

    sput v0, Lio/flutter/embedding/android/FlutterActivity;->FLUTTER_VIEW_ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 431
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 432
    new-instance v0, Landroidx/lifecycle/LifecycleRegistry;

    invoke-direct {v0, p0}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterActivity;->lifecycle:Landroidx/lifecycle/LifecycleRegistry;

    return-void
.end method

.method private configureStatusBarForFullscreenFlutterExperience()V
    .locals 2

    .line 579
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 580
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    .line 581
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const/high16 v1, 0x40000000    # 2.0f

    .line 582
    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 583
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method

.method private configureWindowForTransparency()V
    .locals 3

    .line 562
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterActivity;->getBackgroundMode()Lio/flutter/embedding/android/FlutterActivityLaunchConfigs$BackgroundMode;

    move-result-object v0

    .line 563
    sget-object v1, Lio/flutter/embedding/android/FlutterActivityLaunchConfigs$BackgroundMode;->transparent:Lio/flutter/embedding/android/FlutterActivityLaunchConfigs$BackgroundMode;

    if-ne v0, v1, :cond_0

    .line 564
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public static createDefaultIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    .line 232
    invoke-static {}, Lio/flutter/embedding/android/FlutterActivity;->withNewEngine()Lio/flutter/embedding/android/FlutterActivity$NewEngineIntentBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/flutter/embedding/android/FlutterActivity$NewEngineIntentBuilder;->build(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private createFlutterView()Landroid/view/View;
    .locals 6

    .line 570
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivity;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    sget v4, Lio/flutter/embedding/android/FlutterActivity;->FLUTTER_VIEW_ID:I

    .line 575
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterActivity;->getRenderMode()Lio/flutter/embedding/android/RenderMode;

    move-result-object v1

    sget-object v2, Lio/flutter/embedding/android/RenderMode;->surface:Lio/flutter/embedding/android/RenderMode;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v5, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 570
    invoke-virtual/range {v0 .. v5}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getSplashScreenFromManifest()Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v0, 0x0

    .line 539
    :try_start_0
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterActivity;->getMetaData()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "io.flutter.embedding.android.SplashScreenDrawable"

    .line 540
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 542
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-static {v2, v1, v3}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-object v0

    :catch_1
    move-exception v0

    const-string v1, "FlutterActivity"

    const-string v2, "Splash screen not found. Ensure the drawable exists and that it\'s valid."

    .line 545
    invoke-static {v1, v2}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    throw v0
.end method

.method private isDebuggable()Z
    .locals 1

    .line 900
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private release()V
    .locals 1

    .line 650
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivity;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    if-eqz v0, :cond_0

    .line 651
    invoke-virtual {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->release()V

    const/4 v0, 0x0

    .line 652
    iput-object v0, p0, Lio/flutter/embedding/android/FlutterActivity;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    :cond_0
    return-void
.end method

.method private stillAttachedForEvent(Ljava/lang/String;)Z
    .locals 5

    .line 1143
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivity;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    const/4 v1, 0x0

    const-string v2, " "

    const-string v3, "FlutterActivity "

    const-string v4, "FlutterActivity"

    if-nez v0, :cond_0

    .line 1144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " called after release."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 1147
    :cond_0
    invoke-virtual {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->isAttached()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " called after detach."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private switchLaunchThemeForNormalTheme()V
    .locals 4

    const-string v0, "FlutterActivity"

    .line 502
    :try_start_0
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterActivity;->getMetaData()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "io.flutter.embedding.android.NormalTheme"

    const/4 v3, -0x1

    .line 504
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 506
    invoke-virtual {p0, v1}, Lio/flutter/embedding/android/FlutterActivity;->setTheme(I)V

    goto :goto_0

    :cond_0
    const-string v1, "Using the launch theme as normal theme."

    .line 509
    invoke-static {v0, v1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "Could not read meta-data for FlutterActivity. Using the launch theme as normal theme."

    .line 512
    invoke-static {v0, v1}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static withCachedEngine(Ljava/lang/String;)Lio/flutter/embedding/android/FlutterActivity$CachedEngineIntentBuilder;
    .locals 2

    .line 335
    new-instance v0, Lio/flutter/embedding/android/FlutterActivity$CachedEngineIntentBuilder;

    const-class v1, Lio/flutter/embedding/android/FlutterActivity;

    invoke-direct {v0, v1, p0}, Lio/flutter/embedding/android/FlutterActivity$CachedEngineIntentBuilder;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-object v0
.end method

.method public static withNewEngine()Lio/flutter/embedding/android/FlutterActivity$NewEngineIntentBuilder;
    .locals 2

    .line 245
    new-instance v0, Lio/flutter/embedding/android/FlutterActivity$NewEngineIntentBuilder;

    const-class v1, Lio/flutter/embedding/android/FlutterActivity;

    invoke-direct {v0, v1}, Lio/flutter/embedding/android/FlutterActivity$NewEngineIntentBuilder;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public cleanUpFlutterEngine(Lio/flutter/embedding/engine/FlutterEngine;)V
    .locals 0

    return-void
.end method

.method public configureFlutterEngine(Lio/flutter/embedding/engine/FlutterEngine;)V
    .locals 1

    .line 1002
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivity;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    invoke-virtual {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->isFlutterEngineFromHost()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1009
    :cond_0
    invoke-static {p1}, Lio/flutter/embedding/engine/plugins/util/GeneratedPluginRegister;->registerGeneratedPlugins(Lio/flutter/embedding/engine/FlutterEngine;)V

    return-void
.end method

.method public detachFromFlutterEngine()V
    .locals 2

    .line 658
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FlutterActivity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " connection to the engine "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterActivity;->getFlutterEngine()Lio/flutter/embedding/engine/FlutterEngine;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " evicted by another attaching activity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlutterActivity"

    .line 658
    invoke-static {v1, v0}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivity;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    if-eqz v0, :cond_0

    .line 666
    invoke-virtual {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->onDestroyView()V

    .line 667
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivity;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    invoke-virtual {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->onDetach()V

    :cond_0
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 0

    return-object p0
.end method

.method public getAppBundlePath()Ljava/lang/String;
    .locals 2

    .line 884
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterActivity;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.RUN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 885
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getBackgroundMode()Lio/flutter/embedding/android/FlutterActivityLaunchConfigs$BackgroundMode;
    .locals 2

    .line 935
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "background_mode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 936
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/flutter/embedding/android/FlutterActivityLaunchConfigs$BackgroundMode;->valueOf(Ljava/lang/String;)Lio/flutter/embedding/android/FlutterActivityLaunchConfigs$BackgroundMode;

    move-result-object v0

    return-object v0

    .line 938
    :cond_0
    sget-object v0, Lio/flutter/embedding/android/FlutterActivityLaunchConfigs$BackgroundMode;->opaque:Lio/flutter/embedding/android/FlutterActivityLaunchConfigs$BackgroundMode;

    return-object v0
.end method

.method public getCachedEngineId()Ljava/lang/String;
    .locals 2

    .line 780
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cached_engine_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    return-object p0
.end method

.method public getDartEntrypointFunctionName()Ljava/lang/String;
    .locals 3

    const-string v0, "main"

    .line 818
    :try_start_0
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterActivity;->getMetaData()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "io.flutter.Entrypoint"

    .line 820
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    move-object v0, v1

    :catch_0
    :cond_1
    return-object v0
.end method

.method protected getFlutterEngine()Lio/flutter/embedding/engine/FlutterEngine;
    .locals 1

    .line 964
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivity;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    invoke-virtual {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->getFlutterEngine()Lio/flutter/embedding/engine/FlutterEngine;

    move-result-object v0

    return-object v0
.end method

.method public getFlutterShellArgs()Lio/flutter/embedding/engine/FlutterShellArgs;
    .locals 1

    .line 769
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lio/flutter/embedding/engine/FlutterShellArgs;->fromIntent(Landroid/content/Intent;)Lio/flutter/embedding/engine/FlutterShellArgs;

    move-result-object v0

    return-object v0
.end method

.method public getInitialRoute()Ljava/lang/String;
    .locals 3

    .line 852
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "route"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 853
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 857
    :try_start_0
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterActivity;->getMetaData()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "io.flutter.InitialRoute"

    .line 859
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-object v0
.end method

.method public getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 1

    .line 758
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivity;->lifecycle:Landroidx/lifecycle/LifecycleRegistry;

    return-object v0
.end method

.method protected getMetaData()Landroid/os/Bundle;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 977
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 978
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    return-object v0
.end method

.method public getRenderMode()Lio/flutter/embedding/android/RenderMode;
    .locals 2

    .line 911
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterActivity;->getBackgroundMode()Lio/flutter/embedding/android/FlutterActivityLaunchConfigs$BackgroundMode;

    move-result-object v0

    sget-object v1, Lio/flutter/embedding/android/FlutterActivityLaunchConfigs$BackgroundMode;->opaque:Lio/flutter/embedding/android/FlutterActivityLaunchConfigs$BackgroundMode;

    if-ne v0, v1, :cond_0

    sget-object v0, Lio/flutter/embedding/android/RenderMode;->surface:Lio/flutter/embedding/android/RenderMode;

    goto :goto_0

    :cond_0
    sget-object v0, Lio/flutter/embedding/android/RenderMode;->texture:Lio/flutter/embedding/android/RenderMode;

    :goto_0
    return-object v0
.end method

.method public getTransparencyMode()Lio/flutter/embedding/android/TransparencyMode;
    .locals 2

    .line 922
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterActivity;->getBackgroundMode()Lio/flutter/embedding/android/FlutterActivityLaunchConfigs$BackgroundMode;

    move-result-object v0

    sget-object v1, Lio/flutter/embedding/android/FlutterActivityLaunchConfigs$BackgroundMode;->opaque:Lio/flutter/embedding/android/FlutterActivityLaunchConfigs$BackgroundMode;

    if-ne v0, v1, :cond_0

    .line 923
    sget-object v0, Lio/flutter/embedding/android/TransparencyMode;->opaque:Lio/flutter/embedding/android/TransparencyMode;

    goto :goto_0

    .line 924
    :cond_0
    sget-object v0, Lio/flutter/embedding/android/TransparencyMode;->transparent:Lio/flutter/embedding/android/TransparencyMode;

    :goto_0
    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const-string v0, "onActivityResult"

    .line 684
    invoke-direct {p0, v0}, Lio/flutter/embedding/android/FlutterActivity;->stillAttachedForEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 685
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivity;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    invoke-virtual {v0, p1, p2, p3}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    const-string v0, "onBackPressed"

    .line 700
    invoke-direct {p0, v0}, Lio/flutter/embedding/android/FlutterActivity;->stillAttachedForEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 701
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivity;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    invoke-virtual {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->onBackPressed()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 454
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterActivity;->switchLaunchThemeForNormalTheme()V

    .line 456
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 458
    new-instance v0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    invoke-direct {v0, p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;-><init>(Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$Host;)V

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterActivity;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    .line 459
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivity;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    invoke-virtual {v0, p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->onAttach(Landroid/content/Context;)V

    .line 460
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivity;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 462
    iget-object p1, p0, Lio/flutter/embedding/android/FlutterActivity;->lifecycle:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 464
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterActivity;->configureWindowForTransparency()V

    .line 466
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterActivity;->createFlutterView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/flutter/embedding/android/FlutterActivity;->setContentView(Landroid/view/View;)V

    .line 468
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterActivity;->configureStatusBarForFullscreenFlutterExperience()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 673
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string v0, "onDestroy"

    .line 674
    invoke-direct {p0, v0}, Lio/flutter/embedding/android/FlutterActivity;->stillAttachedForEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivity;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    invoke-virtual {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->onDestroyView()V

    .line 676
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivity;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    invoke-virtual {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->onDetach()V

    .line 678
    :cond_0
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterActivity;->release()V

    .line 679
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivity;->lifecycle:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public onFlutterSurfaceViewCreated(Lio/flutter/embedding/android/FlutterSurfaceView;)V
    .locals 0

    return-void
.end method

.method public onFlutterTextureViewCreated(Lio/flutter/embedding/android/FlutterTextureView;)V
    .locals 0

    return-void
.end method

.method public onFlutterUiDisplayed()V
    .locals 2

    .line 1107
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 1108
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterActivity;->reportFullyDrawn()V

    :cond_0
    return-void
.end method

.method public onFlutterUiNoLongerDisplayed()V
    .locals 0

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 692
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "onNewIntent"

    .line 693
    invoke-direct {p0, v0}, Lio/flutter/embedding/android/FlutterActivity;->stillAttachedForEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivity;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->onNewIntent(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 615
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string v0, "onPause"

    .line 616
    invoke-direct {p0, v0}, Lio/flutter/embedding/android/FlutterActivity;->stillAttachedForEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivity;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    invoke-virtual {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->onPause()V

    .line 619
    :cond_0
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivity;->lifecycle:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public onPostResume()V
    .locals 1

    .line 607
    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    const-string v0, "onPostResume"

    .line 608
    invoke-direct {p0, v0}, Lio/flutter/embedding/android/FlutterActivity;->stillAttachedForEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivity;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    invoke-virtual {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->onPostResume()V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const-string v0, "onRequestPermissionsResult"

    .line 708
    invoke-direct {p0, v0}, Lio/flutter/embedding/android/FlutterActivity;->stillAttachedForEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 709
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivity;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    invoke-virtual {v0, p1, p2, p3}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 598
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 599
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivity;->lifecycle:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    const-string v0, "onResume"

    .line 600
    invoke-direct {p0, v0}, Lio/flutter/embedding/android/FlutterActivity;->stillAttachedForEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivity;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    invoke-virtual {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->onResume()V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 633
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "onSaveInstanceState"

    .line 634
    invoke-direct {p0, v0}, Lio/flutter/embedding/android/FlutterActivity;->stillAttachedForEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivity;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 589
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 590
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivity;->lifecycle:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    const-string v0, "onStart"

    .line 591
    invoke-direct {p0, v0}, Lio/flutter/embedding/android/FlutterActivity;->stillAttachedForEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivity;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    invoke-virtual {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->onStart()V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 624
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const-string v0, "onStop"

    .line 625
    invoke-direct {p0, v0}, Lio/flutter/embedding/android/FlutterActivity;->stillAttachedForEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 626
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivity;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    invoke-virtual {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->onStop()V

    .line 628
    :cond_0
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivity;->lifecycle:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    .line 722
    invoke-super {p0, p1}, Landroid/app/Activity;->onTrimMemory(I)V

    const-string v0, "onTrimMemory"

    .line 723
    invoke-direct {p0, v0}, Lio/flutter/embedding/android/FlutterActivity;->stillAttachedForEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 724
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivity;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->onTrimMemory(I)V

    :cond_0
    return-void
.end method

.method public onUserLeaveHint()V
    .locals 1

    const-string v0, "onUserLeaveHint"

    .line 715
    invoke-direct {p0, v0}, Lio/flutter/embedding/android/FlutterActivity;->stillAttachedForEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 716
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivity;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    invoke-virtual {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->onUserLeaveHint()V

    :cond_0
    return-void
.end method

.method public popSystemNavigator()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public provideFlutterEngine(Landroid/content/Context;)Lio/flutter/embedding/engine/FlutterEngine;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public providePlatformPlugin(Landroid/app/Activity;Lio/flutter/embedding/engine/FlutterEngine;)Lio/flutter/plugin/platform/PlatformPlugin;
    .locals 1

    .line 985
    new-instance p1, Lio/flutter/plugin/platform/PlatformPlugin;

    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p2}, Lio/flutter/embedding/engine/FlutterEngine;->getPlatformChannel()Lio/flutter/embedding/engine/systemchannels/PlatformChannel;

    move-result-object p2

    invoke-direct {p1, v0, p2, p0}, Lio/flutter/plugin/platform/PlatformPlugin;-><init>(Landroid/app/Activity;Lio/flutter/embedding/engine/systemchannels/PlatformChannel;Lio/flutter/plugin/platform/PlatformPlugin$PlatformPluginDelegate;)V

    return-object p1
.end method

.method public provideSplashScreen()Lio/flutter/embedding/android/SplashScreen;
    .locals 2

    .line 521
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterActivity;->getSplashScreenFromManifest()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 523
    new-instance v1, Lio/flutter/embedding/android/DrawableSplashScreen;

    invoke-direct {v1, v0}, Lio/flutter/embedding/android/DrawableSplashScreen;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method setDelegate(Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;)V
    .locals 0

    .line 449
    iput-object p1, p0, Lio/flutter/embedding/android/FlutterActivity;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    return-void
.end method

.method public shouldAttachEngineToActivity()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public shouldDestroyEngineWithHost()Z
    .locals 3

    .line 795
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "destroy_engine_with_activity"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 796
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterActivity;->getCachedEngineId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lio/flutter/embedding/android/FlutterActivity;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    invoke-virtual {v2}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->isFlutterEngineFromHost()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 802
    :cond_0
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    :cond_1
    :goto_0
    return v0
.end method

.method public shouldHandleDeeplinking()Z
    .locals 3

    const/4 v0, 0x0

    .line 1079
    :try_start_0
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterActivity;->getMetaData()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "flutter_deeplinking_enabled"

    .line 1081
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return v0
.end method

.method public shouldRestoreAndSaveState()Z
    .locals 3

    .line 1119
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "enable_state_restoration"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1120
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .line 1122
    :cond_0
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterActivity;->getCachedEngineId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public updateSystemUiOverlays()V
    .locals 1

    .line 1137
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivity;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    if-eqz v0, :cond_0

    .line 1138
    invoke-virtual {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->updateSystemUiOverlays()V

    :cond_0
    return-void
.end method
