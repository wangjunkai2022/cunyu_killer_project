.class public Lio/flutter/plugin/platform/PlatformPlugin;
.super Ljava/lang/Object;
.source "PlatformPlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugin/platform/PlatformPlugin$PlatformPluginDelegate;
    }
.end annotation


# static fields
.field public static final DEFAULT_SYSTEM_UI:I = 0x500

.field private static final TAG:Ljava/lang/String; = "PlatformPlugin"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private currentTheme:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemChromeStyle;

.field private mEnabledOverlays:I

.field final mPlatformMessageHandler:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$PlatformMessageHandler;

.field private final platformChannel:Lio/flutter/embedding/engine/systemchannels/PlatformChannel;

.field private final platformPluginDelegate:Lio/flutter/plugin/platform/PlatformPlugin$PlatformPluginDelegate;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lio/flutter/embedding/engine/systemchannels/PlatformChannel;)V
    .locals 1

    const/4 v0, 0x0

    .line 134
    invoke-direct {p0, p1, p2, v0}, Lio/flutter/plugin/platform/PlatformPlugin;-><init>(Landroid/app/Activity;Lio/flutter/embedding/engine/systemchannels/PlatformChannel;Lio/flutter/plugin/platform/PlatformPlugin$PlatformPluginDelegate;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lio/flutter/embedding/engine/systemchannels/PlatformChannel;Lio/flutter/plugin/platform/PlatformPlugin$PlatformPluginDelegate;)V
    .locals 1

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lio/flutter/plugin/platform/PlatformPlugin$1;

    invoke-direct {v0, p0}, Lio/flutter/plugin/platform/PlatformPlugin$1;-><init>(Lio/flutter/plugin/platform/PlatformPlugin;)V

    iput-object v0, p0, Lio/flutter/plugin/platform/PlatformPlugin;->mPlatformMessageHandler:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$PlatformMessageHandler;

    .line 139
    iput-object p1, p0, Lio/flutter/plugin/platform/PlatformPlugin;->activity:Landroid/app/Activity;

    .line 140
    iput-object p2, p0, Lio/flutter/plugin/platform/PlatformPlugin;->platformChannel:Lio/flutter/embedding/engine/systemchannels/PlatformChannel;

    .line 141
    iget-object p1, p0, Lio/flutter/plugin/platform/PlatformPlugin;->platformChannel:Lio/flutter/embedding/engine/systemchannels/PlatformChannel;

    iget-object p2, p0, Lio/flutter/plugin/platform/PlatformPlugin;->mPlatformMessageHandler:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$PlatformMessageHandler;

    invoke-virtual {p1, p2}, Lio/flutter/embedding/engine/systemchannels/PlatformChannel;->setPlatformMessageHandler(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$PlatformMessageHandler;)V

    .line 142
    iput-object p3, p0, Lio/flutter/plugin/platform/PlatformPlugin;->platformPluginDelegate:Lio/flutter/plugin/platform/PlatformPlugin$PlatformPluginDelegate;

    const/16 p1, 0x500

    .line 144
    iput p1, p0, Lio/flutter/plugin/platform/PlatformPlugin;->mEnabledOverlays:I

    return-void
.end method

.method static synthetic access$000(Lio/flutter/plugin/platform/PlatformPlugin;Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SoundType;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lio/flutter/plugin/platform/PlatformPlugin;->playSystemSound(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SoundType;)V

    return-void
.end method

.method static synthetic access$100(Lio/flutter/plugin/platform/PlatformPlugin;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lio/flutter/plugin/platform/PlatformPlugin;->setSystemChromePreferredOrientations(I)V

    return-void
.end method

.method static synthetic access$1000(Lio/flutter/plugin/platform/PlatformPlugin;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lio/flutter/plugin/platform/PlatformPlugin;->setClipboardData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lio/flutter/plugin/platform/PlatformPlugin;)Z
    .locals 0

    .line 30
    invoke-direct {p0}, Lio/flutter/plugin/platform/PlatformPlugin;->clipboardHasStrings()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lio/flutter/plugin/platform/PlatformPlugin;)Lio/flutter/embedding/engine/systemchannels/PlatformChannel;
    .locals 0

    .line 30
    iget-object p0, p0, Lio/flutter/plugin/platform/PlatformPlugin;->platformChannel:Lio/flutter/embedding/engine/systemchannels/PlatformChannel;

    return-object p0
.end method

.method static synthetic access$200(Lio/flutter/plugin/platform/PlatformPlugin;Lio/flutter/embedding/engine/systemchannels/PlatformChannel$AppSwitcherDescription;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lio/flutter/plugin/platform/PlatformPlugin;->setSystemChromeApplicationSwitcherDescription(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$AppSwitcherDescription;)V

    return-void
.end method

.method static synthetic access$300(Lio/flutter/plugin/platform/PlatformPlugin;Ljava/util/List;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lio/flutter/plugin/platform/PlatformPlugin;->setSystemChromeEnabledSystemUIOverlays(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$400(Lio/flutter/plugin/platform/PlatformPlugin;Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lio/flutter/plugin/platform/PlatformPlugin;->setSystemChromeEnabledSystemUIMode(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;)V

    return-void
.end method

.method static synthetic access$500(Lio/flutter/plugin/platform/PlatformPlugin;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lio/flutter/plugin/platform/PlatformPlugin;->setSystemChromeChangeListener()V

    return-void
.end method

.method static synthetic access$600(Lio/flutter/plugin/platform/PlatformPlugin;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lio/flutter/plugin/platform/PlatformPlugin;->restoreSystemChromeSystemUIOverlays()V

    return-void
.end method

.method static synthetic access$700(Lio/flutter/plugin/platform/PlatformPlugin;Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemChromeStyle;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lio/flutter/plugin/platform/PlatformPlugin;->setSystemChromeSystemUIOverlayStyle(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemChromeStyle;)V

    return-void
.end method

.method static synthetic access$800(Lio/flutter/plugin/platform/PlatformPlugin;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lio/flutter/plugin/platform/PlatformPlugin;->popSystemNavigator()V

    return-void
.end method

.method static synthetic access$900(Lio/flutter/plugin/platform/PlatformPlugin;Lio/flutter/embedding/engine/systemchannels/PlatformChannel$ClipboardContentFormat;)Ljava/lang/CharSequence;
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lio/flutter/plugin/platform/PlatformPlugin;->getClipboardData(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$ClipboardContentFormat;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private clipboardHasStrings()Z
    .locals 3

    .line 502
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformPlugin;->activity:Landroid/app/Activity;

    const-string v1, "clipboard"

    .line 503
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 507
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 510
    :cond_0
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    move-result-object v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    const-string v1, "text/*"

    .line 514
    invoke-virtual {v0, v1}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private getClipboardData(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$ClipboardContentFormat;)Ljava/lang/CharSequence;
    .locals 4

    .line 465
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformPlugin;->activity:Landroid/app/Activity;

    const-string v1, "clipboard"

    .line 466
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 468
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 471
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    if-eqz p1, :cond_3

    .line 473
    sget-object v1, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$ClipboardContentFormat;->PLAIN_TEXT:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$ClipboardContentFormat;

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    return-object v2

    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 474
    invoke-virtual {v0, p1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p1

    .line 475
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 476
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformPlugin;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    const-string v3, "text/*"

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    .line 477
    :cond_4
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformPlugin;->activity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v2

    :catch_1
    move-exception p1

    const-string v0, "PlatformPlugin"

    const-string v1, "Attempted to get clipboard data that requires additional permission(s).\nSee the exception details for which permission(s) are required, and consider adding them to your Android Manifest as described in:\nhttps://developer.android.com/guide/topics/permissions/overview"

    .line 480
    invoke-static {v0, v1, p1}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method

.method private playSystemSound(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SoundType;)V
    .locals 1

    .line 157
    sget-object v0, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SoundType;->CLICK:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SoundType;

    if-ne p1, v0, :cond_0

    .line 158
    iget-object p1, p0, Lio/flutter/plugin/platform/PlatformPlugin;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    .line 159
    invoke-virtual {p1, v0}, Landroid/view/View;->playSoundEffect(I)V

    :cond_0
    return-void
.end method

.method private popSystemNavigator()V
    .locals 2

    .line 452
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformPlugin;->platformPluginDelegate:Lio/flutter/plugin/platform/PlatformPlugin$PlatformPluginDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/flutter/plugin/platform/PlatformPlugin$PlatformPluginDelegate;->popSystemNavigator()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 457
    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformPlugin;->activity:Landroid/app/Activity;

    instance-of v1, v0, Landroidx/activity/OnBackPressedDispatcherOwner;

    if-eqz v1, :cond_1

    .line 458
    check-cast v0, Landroidx/activity/OnBackPressedDispatcherOwner;

    invoke-interface {v0}, Landroidx/activity/OnBackPressedDispatcherOwner;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    goto :goto_0

    .line 460
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method private restoreSystemChromeSystemUIOverlays()V
    .locals 0

    .line 360
    invoke-virtual {p0}, Lio/flutter/plugin/platform/PlatformPlugin;->updateSystemUiOverlays()V

    return-void
.end method

.method private setClipboardData(Ljava/lang/String;)V
    .locals 2

    .line 495
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformPlugin;->activity:Landroid/app/Activity;

    const-string v1, "clipboard"

    .line 496
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    const-string v1, "text label?"

    .line 497
    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    .line 498
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    return-void
.end method

.method private setSystemChromeApplicationSwitcherDescription(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$AppSwitcherDescription;)V
    .locals 6

    .line 196
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    return-void

    .line 204
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-ge v0, v2, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v1, :cond_1

    .line 206
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformPlugin;->activity:Landroid/app/Activity;

    new-instance v1, Landroid/app/ActivityManager$TaskDescription;

    iget-object v3, p1, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$AppSwitcherDescription;->label:Ljava/lang/String;

    const/4 v4, 0x0

    iget v5, p1, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$AppSwitcherDescription;->color:I

    invoke-direct {v1, v3, v4, v5}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    .line 209
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_2

    .line 210
    new-instance v0, Landroid/app/ActivityManager$TaskDescription;

    iget-object v1, p1, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$AppSwitcherDescription;->label:Ljava/lang/String;

    const/4 v2, 0x0

    iget p1, p1, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$AppSwitcherDescription;->color:I

    invoke-direct {v0, v1, v2, p1}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;II)V

    .line 212
    iget-object p1, p0, Lio/flutter/plugin/platform/PlatformPlugin;->activity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    :cond_2
    return-void
.end method

.method private setSystemChromeChangeListener()V
    .locals 2

    .line 218
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformPlugin;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 219
    new-instance v1, Lio/flutter/plugin/platform/PlatformPlugin$2;

    invoke-direct {v1, p0}, Lio/flutter/plugin/platform/PlatformPlugin$2;-><init>(Lio/flutter/plugin/platform/PlatformPlugin;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    return-void
.end method

.method private setSystemChromeEnabledSystemUIMode(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;)V
    .locals 2

    .line 243
    sget-object v0, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;->LEAN_BACK:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;

    if-ne p1, v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/16 p1, 0x706

    goto :goto_0

    .line 258
    :cond_0
    sget-object v0, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;->IMMERSIVE:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;

    const/16 v1, 0x13

    if-ne p1, v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_1

    const/16 p1, 0xf06

    goto :goto_0

    .line 274
    :cond_1
    sget-object v0, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;->IMMERSIVE_STICKY:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;

    if-ne p1, v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_2

    const/16 p1, 0x1706

    goto :goto_0

    .line 289
    :cond_2
    sget-object v0, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;->EDGE_TO_EDGE:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;

    if-ne p1, v0, :cond_3

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p1, v0, :cond_3

    const/16 p1, 0x700

    .line 305
    :goto_0
    iput p1, p0, Lio/flutter/plugin/platform/PlatformPlugin;->mEnabledOverlays:I

    .line 306
    invoke-virtual {p0}, Lio/flutter/plugin/platform/PlatformPlugin;->updateSystemUiOverlays()V

    :cond_3
    return-void
.end method

.method private setSystemChromeEnabledSystemUIOverlays(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiOverlay;",
            ">;)V"
        }
    .end annotation

    .line 322
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/16 v0, 0x1706

    goto :goto_0

    :cond_0
    const/16 v0, 0x706

    :goto_0
    const/4 v1, 0x0

    .line 327
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 328
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiOverlay;

    .line 329
    sget-object v3, Lio/flutter/plugin/platform/PlatformPlugin$3;->$SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$SystemUiOverlay:[I

    invoke-virtual {v2}, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiOverlay;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    goto :goto_2

    :cond_1
    and-int/lit16 v0, v0, -0x201

    and-int/lit8 v0, v0, -0x3

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x5

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 340
    :cond_3
    iput v0, p0, Lio/flutter/plugin/platform/PlatformPlugin;->mEnabledOverlays:I

    .line 341
    invoke-virtual {p0}, Lio/flutter/plugin/platform/PlatformPlugin;->updateSystemUiOverlays()V

    return-void
.end method

.method private setSystemChromePreferredOrientations(I)V
    .locals 1

    .line 190
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformPlugin;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method private setSystemChromeSystemUIOverlayStyle(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemChromeStyle;)V
    .locals 8

    .line 365
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformPlugin;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 366
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 367
    new-instance v2, Landroidx/core/view/WindowInsetsControllerCompat;

    invoke-direct {v2, v0, v1}, Landroidx/core/view/WindowInsetsControllerCompat;-><init>(Landroid/view/Window;Landroid/view/View;)V

    .line 377
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/16 v6, 0x17

    if-lt v1, v6, :cond_3

    .line 378
    iget-object v1, p1, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemChromeStyle;->statusBarIconBrightness:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$Brightness;

    if-eqz v1, :cond_2

    .line 379
    sget-object v1, Lio/flutter/plugin/platform/PlatformPlugin$3;->$SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$Brightness:[I

    iget-object v6, p1, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemChromeStyle;->statusBarIconBrightness:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$Brightness;

    invoke-virtual {v6}, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$Brightness;->ordinal()I

    move-result v6

    aget v1, v1, v6

    if-eq v1, v5, :cond_1

    if-eq v1, v4, :cond_0

    goto :goto_0

    .line 388
    :cond_0
    invoke-virtual {v2, v3}, Landroidx/core/view/WindowInsetsControllerCompat;->setAppearanceLightStatusBars(Z)V

    goto :goto_0

    .line 383
    :cond_1
    invoke-virtual {v2, v5}, Landroidx/core/view/WindowInsetsControllerCompat;->setAppearanceLightStatusBars(Z)V

    .line 393
    :cond_2
    :goto_0
    iget-object v1, p1, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemChromeStyle;->statusBarColor:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 394
    iget-object v1, p1, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemChromeStyle;->statusBarColor:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 400
    :cond_3
    iget-object v1, p1, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemChromeStyle;->systemStatusBarContrastEnforced:Ljava/lang/Boolean;

    const/16 v6, 0x1d

    if-eqz v1, :cond_4

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v6, :cond_4

    .line 401
    iget-object v1, p1, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemChromeStyle;->systemStatusBarContrastEnforced:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarContrastEnforced(Z)V

    .line 411
    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1a

    if-lt v1, v7, :cond_8

    .line 412
    iget-object v1, p1, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemChromeStyle;->systemNavigationBarIconBrightness:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$Brightness;

    if-eqz v1, :cond_7

    .line 413
    sget-object v1, Lio/flutter/plugin/platform/PlatformPlugin$3;->$SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$Brightness:[I

    iget-object v7, p1, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemChromeStyle;->systemNavigationBarIconBrightness:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$Brightness;

    invoke-virtual {v7}, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$Brightness;->ordinal()I

    move-result v7

    aget v1, v1, v7

    if-eq v1, v5, :cond_6

    if-eq v1, v4, :cond_5

    goto :goto_1

    .line 422
    :cond_5
    invoke-virtual {v2, v3}, Landroidx/core/view/WindowInsetsControllerCompat;->setAppearanceLightNavigationBars(Z)V

    goto :goto_1

    .line 417
    :cond_6
    invoke-virtual {v2, v5}, Landroidx/core/view/WindowInsetsControllerCompat;->setAppearanceLightNavigationBars(Z)V

    .line 427
    :cond_7
    :goto_1
    iget-object v1, p1, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemChromeStyle;->systemNavigationBarColor:Ljava/lang/Integer;

    if-eqz v1, :cond_8

    .line 428
    iget-object v1, p1, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemChromeStyle;->systemNavigationBarColor:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 432
    :cond_8
    iget-object v1, p1, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemChromeStyle;->systemNavigationBarDividerColor:Ljava/lang/Integer;

    if-eqz v1, :cond_9

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_9

    const/high16 v1, -0x80000000

    .line 433
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const/high16 v1, 0x8000000

    .line 434
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 435
    iget-object v1, p1, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemChromeStyle;->systemNavigationBarDividerColor:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarDividerColor(I)V

    .line 442
    :cond_9
    iget-object v1, p1, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemChromeStyle;->systemNavigationBarContrastEnforced:Ljava/lang/Boolean;

    if-eqz v1, :cond_a

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v6, :cond_a

    .line 444
    iget-object v1, p1, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemChromeStyle;->systemNavigationBarContrastEnforced:Ljava/lang/Boolean;

    .line 445
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 444
    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    .line 448
    :cond_a
    iput-object p1, p0, Lio/flutter/plugin/platform/PlatformPlugin;->currentTheme:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemChromeStyle;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 153
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformPlugin;->platformChannel:Lio/flutter/embedding/engine/systemchannels/PlatformChannel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/systemchannels/PlatformChannel;->setPlatformMessageHandler(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$PlatformMessageHandler;)V

    return-void
.end method

.method public updateSystemUiOverlays()V
    .locals 2

    .line 353
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformPlugin;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lio/flutter/plugin/platform/PlatformPlugin;->mEnabledOverlays:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 354
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformPlugin;->currentTheme:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemChromeStyle;

    if-eqz v0, :cond_0

    .line 355
    invoke-direct {p0, v0}, Lio/flutter/plugin/platform/PlatformPlugin;->setSystemChromeSystemUIOverlayStyle(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemChromeStyle;)V

    :cond_0
    return-void
.end method

.method vibrateHapticFeedback(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$HapticFeedbackType;)V
    .locals 3

    .line 165
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformPlugin;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 166
    sget-object v1, Lio/flutter/plugin/platform/PlatformPlugin$3;->$SwitchMap$io$flutter$embedding$engine$systemchannels$PlatformChannel$HapticFeedbackType:[I

    invoke-virtual {p1}, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$HapticFeedbackType;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v2, 0x5

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 182
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt p1, v2, :cond_5

    .line 183
    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_0

    .line 177
    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt p1, v1, :cond_5

    const/4 p1, 0x6

    .line 178
    invoke-virtual {v0, p1}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_0

    .line 174
    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_0

    .line 171
    :cond_3
    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    .line 168
    invoke-virtual {v0, p1}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_5
    :goto_0
    return-void
.end method
