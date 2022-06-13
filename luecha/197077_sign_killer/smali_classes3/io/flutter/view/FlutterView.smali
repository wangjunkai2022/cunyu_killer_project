.class public Lio/flutter/view/FlutterView;
.super Landroid/view/SurfaceView;
.source "FlutterView.java"

# interfaces
.implements Lio/flutter/plugin/common/BinaryMessenger;
.implements Lio/flutter/view/TextureRegistry;
.implements Lio/flutter/plugin/mouse/MouseCursorPlugin$MouseCursorViewDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/view/FlutterView$SurfaceTextureRegistryEntry;,
        Lio/flutter/view/FlutterView$FirstFrameListener;,
        Lio/flutter/view/FlutterView$ZeroSides;,
        Lio/flutter/view/FlutterView$ViewportMetrics;,
        Lio/flutter/view/FlutterView$Provider;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FlutterView"


# instance fields
.field private final androidTouchProcessor:Lio/flutter/embedding/android/AndroidTouchProcessor;

.field private final dartExecutor:Lio/flutter/embedding/engine/dart/DartExecutor;

.field private didRenderFirstFrame:Z

.field private final flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

.field private final keyEventChannel:Lio/flutter/embedding/engine/systemchannels/KeyEventChannel;

.field private final lifecycleChannel:Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;

.field private final localizationChannel:Lio/flutter/embedding/engine/systemchannels/LocalizationChannel;

.field private mAccessibilityNodeProvider:Lio/flutter/view/AccessibilityBridge;

.field private final mActivityLifecycleListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/flutter/plugin/common/ActivityLifecycleListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mFirstFrameListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/flutter/view/FlutterView$FirstFrameListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mIsSoftwareRenderingEnabled:Z

.field private final mKeyboardManager:Lio/flutter/embedding/android/KeyboardManager;

.field private final mLocalizationPlugin:Lio/flutter/plugin/localization/LocalizationPlugin;

.field private final mMetrics:Lio/flutter/view/FlutterView$ViewportMetrics;

.field private final mMouseCursorPlugin:Lio/flutter/plugin/mouse/MouseCursorPlugin;

.field private mNativeView:Lio/flutter/view/FlutterNativeView;

.field private final mSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

.field private final mTextInputPlugin:Lio/flutter/plugin/editing/TextInputPlugin;

.field private final navigationChannel:Lio/flutter/embedding/engine/systemchannels/NavigationChannel;

.field private final nextTextureId:Ljava/util/concurrent/atomic/AtomicLong;

.field private final onAccessibilityChangeListener:Lio/flutter/view/AccessibilityBridge$OnAccessibilityChangeListener;

.field private final platformChannel:Lio/flutter/embedding/engine/systemchannels/PlatformChannel;

.field private final settingsChannel:Lio/flutter/embedding/engine/systemchannels/SettingsChannel;

.field private final systemChannel:Lio/flutter/embedding/engine/systemchannels/SystemChannel;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 157
    invoke-direct {p0, p1, v0}, Lio/flutter/view/FlutterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 161
    invoke-direct {p0, p1, p2, v0}, Lio/flutter/view/FlutterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lio/flutter/view/FlutterNativeView;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lio/flutter/view/FlutterNativeView;)V
    .locals 5

    .line 165
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 142
    new-instance p2, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x0

    invoke-direct {p2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p2, p0, Lio/flutter/view/FlutterView;->nextTextureId:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 p2, 0x0

    .line 144
    iput-boolean p2, p0, Lio/flutter/view/FlutterView;->mIsSoftwareRenderingEnabled:Z

    .line 145
    iput-boolean p2, p0, Lio/flutter/view/FlutterView;->didRenderFirstFrame:Z

    .line 147
    new-instance v0, Lio/flutter/view/FlutterView$1;

    invoke-direct {v0, p0}, Lio/flutter/view/FlutterView$1;-><init>(Lio/flutter/view/FlutterView;)V

    iput-object v0, p0, Lio/flutter/view/FlutterView;->onAccessibilityChangeListener:Lio/flutter/view/AccessibilityBridge$OnAccessibilityChangeListener;

    .line 167
    invoke-virtual {p0}, Lio/flutter/view/FlutterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/flutter/util/ViewUtils;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    if-nez p3, :cond_0

    .line 173
    new-instance p3, Lio/flutter/view/FlutterNativeView;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p3, v1}, Lio/flutter/view/FlutterNativeView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lio/flutter/view/FlutterView;->mNativeView:Lio/flutter/view/FlutterNativeView;

    goto :goto_0

    .line 175
    :cond_0
    iput-object p3, p0, Lio/flutter/view/FlutterView;->mNativeView:Lio/flutter/view/FlutterNativeView;

    .line 178
    :goto_0
    iget-object p3, p0, Lio/flutter/view/FlutterView;->mNativeView:Lio/flutter/view/FlutterNativeView;

    invoke-virtual {p3}, Lio/flutter/view/FlutterNativeView;->getDartExecutor()Lio/flutter/embedding/engine/dart/DartExecutor;

    move-result-object p3

    iput-object p3, p0, Lio/flutter/view/FlutterView;->dartExecutor:Lio/flutter/embedding/engine/dart/DartExecutor;

    .line 179
    new-instance p3, Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    iget-object v1, p0, Lio/flutter/view/FlutterView;->mNativeView:Lio/flutter/view/FlutterNativeView;

    invoke-virtual {v1}, Lio/flutter/view/FlutterNativeView;->getFlutterJNI()Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object v1

    invoke-direct {p3, v1}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;-><init>(Lio/flutter/embedding/engine/FlutterJNI;)V

    iput-object p3, p0, Lio/flutter/view/FlutterView;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    .line 180
    iget-object p3, p0, Lio/flutter/view/FlutterView;->mNativeView:Lio/flutter/view/FlutterNativeView;

    invoke-virtual {p3}, Lio/flutter/view/FlutterNativeView;->getFlutterJNI()Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object p3

    invoke-virtual {p3}, Lio/flutter/embedding/engine/FlutterJNI;->getIsSoftwareRenderingEnabled()Z

    move-result p3

    iput-boolean p3, p0, Lio/flutter/view/FlutterView;->mIsSoftwareRenderingEnabled:Z

    .line 181
    new-instance p3, Lio/flutter/view/FlutterView$ViewportMetrics;

    invoke-direct {p3}, Lio/flutter/view/FlutterView$ViewportMetrics;-><init>()V

    iput-object p3, p0, Lio/flutter/view/FlutterView;->mMetrics:Lio/flutter/view/FlutterView$ViewportMetrics;

    .line 182
    iget-object p3, p0, Lio/flutter/view/FlutterView;->mMetrics:Lio/flutter/view/FlutterView$ViewportMetrics;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p3, Lio/flutter/view/FlutterView$ViewportMetrics;->devicePixelRatio:F

    .line 183
    iget-object p3, p0, Lio/flutter/view/FlutterView;->mMetrics:Lio/flutter/view/FlutterView$ViewportMetrics;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p3, Lio/flutter/view/FlutterView$ViewportMetrics;->physicalTouchSlop:I

    const/4 p3, 0x1

    .line 184
    invoke-virtual {p0, p3}, Lio/flutter/view/FlutterView;->setFocusable(Z)V

    .line 185
    invoke-virtual {p0, p3}, Lio/flutter/view/FlutterView;->setFocusableInTouchMode(Z)V

    .line 187
    iget-object v1, p0, Lio/flutter/view/FlutterView;->mNativeView:Lio/flutter/view/FlutterNativeView;

    invoke-virtual {v1, p0, v0}, Lio/flutter/view/FlutterNativeView;->attachViewAndActivity(Lio/flutter/view/FlutterView;Landroid/app/Activity;)V

    .line 189
    new-instance v1, Lio/flutter/view/FlutterView$2;

    invoke-direct {v1, p0}, Lio/flutter/view/FlutterView$2;-><init>(Lio/flutter/view/FlutterView;)V

    iput-object v1, p0, Lio/flutter/view/FlutterView;->mSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

    .line 209
    invoke-virtual {p0}, Lio/flutter/view/FlutterView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iget-object v2, p0, Lio/flutter/view/FlutterView;->mSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 211
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lio/flutter/view/FlutterView;->mActivityLifecycleListeners:Ljava/util/List;

    .line 212
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lio/flutter/view/FlutterView;->mFirstFrameListeners:Ljava/util/List;

    .line 215
    new-instance v1, Lio/flutter/embedding/engine/systemchannels/NavigationChannel;

    iget-object v2, p0, Lio/flutter/view/FlutterView;->dartExecutor:Lio/flutter/embedding/engine/dart/DartExecutor;

    invoke-direct {v1, v2}, Lio/flutter/embedding/engine/systemchannels/NavigationChannel;-><init>(Lio/flutter/embedding/engine/dart/DartExecutor;)V

    iput-object v1, p0, Lio/flutter/view/FlutterView;->navigationChannel:Lio/flutter/embedding/engine/systemchannels/NavigationChannel;

    .line 216
    new-instance v1, Lio/flutter/embedding/engine/systemchannels/KeyEventChannel;

    iget-object v2, p0, Lio/flutter/view/FlutterView;->dartExecutor:Lio/flutter/embedding/engine/dart/DartExecutor;

    invoke-direct {v1, v2}, Lio/flutter/embedding/engine/systemchannels/KeyEventChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;)V

    iput-object v1, p0, Lio/flutter/view/FlutterView;->keyEventChannel:Lio/flutter/embedding/engine/systemchannels/KeyEventChannel;

    .line 217
    new-instance v1, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;

    iget-object v2, p0, Lio/flutter/view/FlutterView;->dartExecutor:Lio/flutter/embedding/engine/dart/DartExecutor;

    invoke-direct {v1, v2}, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;-><init>(Lio/flutter/embedding/engine/dart/DartExecutor;)V

    iput-object v1, p0, Lio/flutter/view/FlutterView;->lifecycleChannel:Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;

    .line 218
    new-instance v1, Lio/flutter/embedding/engine/systemchannels/LocalizationChannel;

    iget-object v2, p0, Lio/flutter/view/FlutterView;->dartExecutor:Lio/flutter/embedding/engine/dart/DartExecutor;

    invoke-direct {v1, v2}, Lio/flutter/embedding/engine/systemchannels/LocalizationChannel;-><init>(Lio/flutter/embedding/engine/dart/DartExecutor;)V

    iput-object v1, p0, Lio/flutter/view/FlutterView;->localizationChannel:Lio/flutter/embedding/engine/systemchannels/LocalizationChannel;

    .line 219
    new-instance v1, Lio/flutter/embedding/engine/systemchannels/PlatformChannel;

    iget-object v2, p0, Lio/flutter/view/FlutterView;->dartExecutor:Lio/flutter/embedding/engine/dart/DartExecutor;

    invoke-direct {v1, v2}, Lio/flutter/embedding/engine/systemchannels/PlatformChannel;-><init>(Lio/flutter/embedding/engine/dart/DartExecutor;)V

    iput-object v1, p0, Lio/flutter/view/FlutterView;->platformChannel:Lio/flutter/embedding/engine/systemchannels/PlatformChannel;

    .line 220
    new-instance v1, Lio/flutter/embedding/engine/systemchannels/SystemChannel;

    iget-object v2, p0, Lio/flutter/view/FlutterView;->dartExecutor:Lio/flutter/embedding/engine/dart/DartExecutor;

    invoke-direct {v1, v2}, Lio/flutter/embedding/engine/systemchannels/SystemChannel;-><init>(Lio/flutter/embedding/engine/dart/DartExecutor;)V

    iput-object v1, p0, Lio/flutter/view/FlutterView;->systemChannel:Lio/flutter/embedding/engine/systemchannels/SystemChannel;

    .line 221
    new-instance v1, Lio/flutter/embedding/engine/systemchannels/SettingsChannel;

    iget-object v2, p0, Lio/flutter/view/FlutterView;->dartExecutor:Lio/flutter/embedding/engine/dart/DartExecutor;

    invoke-direct {v1, v2}, Lio/flutter/embedding/engine/systemchannels/SettingsChannel;-><init>(Lio/flutter/embedding/engine/dart/DartExecutor;)V

    iput-object v1, p0, Lio/flutter/view/FlutterView;->settingsChannel:Lio/flutter/embedding/engine/systemchannels/SettingsChannel;

    .line 224
    new-instance v1, Lio/flutter/plugin/platform/PlatformPlugin;

    iget-object v2, p0, Lio/flutter/view/FlutterView;->platformChannel:Lio/flutter/embedding/engine/systemchannels/PlatformChannel;

    invoke-direct {v1, v0, v2}, Lio/flutter/plugin/platform/PlatformPlugin;-><init>(Landroid/app/Activity;Lio/flutter/embedding/engine/systemchannels/PlatformChannel;)V

    .line 225
    new-instance v0, Lio/flutter/view/FlutterView$3;

    invoke-direct {v0, p0, v1}, Lio/flutter/view/FlutterView$3;-><init>(Lio/flutter/view/FlutterView;Lio/flutter/plugin/platform/PlatformPlugin;)V

    invoke-virtual {p0, v0}, Lio/flutter/view/FlutterView;->addActivityLifecycleListener(Lio/flutter/plugin/common/ActivityLifecycleListener;)V

    .line 232
    invoke-virtual {p0}, Lio/flutter/view/FlutterView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lio/flutter/view/FlutterView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 233
    iget-object v0, p0, Lio/flutter/view/FlutterView;->mNativeView:Lio/flutter/view/FlutterNativeView;

    .line 234
    invoke-virtual {v0}, Lio/flutter/view/FlutterNativeView;->getPluginRegistry()Lio/flutter/app/FlutterPluginRegistry;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/app/FlutterPluginRegistry;->getPlatformViewsController()Lio/flutter/plugin/platform/PlatformViewsController;

    move-result-object v0

    .line 235
    new-instance v1, Lio/flutter/plugin/editing/TextInputPlugin;

    new-instance v2, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    iget-object v3, p0, Lio/flutter/view/FlutterView;->dartExecutor:Lio/flutter/embedding/engine/dart/DartExecutor;

    invoke-direct {v2, v3}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;-><init>(Lio/flutter/embedding/engine/dart/DartExecutor;)V

    invoke-direct {v1, p0, v2, v0}, Lio/flutter/plugin/editing/TextInputPlugin;-><init>(Landroid/view/View;Lio/flutter/embedding/engine/systemchannels/TextInputChannel;Lio/flutter/plugin/platform/PlatformViewsController;)V

    iput-object v1, p0, Lio/flutter/view/FlutterView;->mTextInputPlugin:Lio/flutter/plugin/editing/TextInputPlugin;

    .line 237
    new-instance v1, Lio/flutter/embedding/android/KeyboardManager;

    iget-object v2, p0, Lio/flutter/view/FlutterView;->mTextInputPlugin:Lio/flutter/plugin/editing/TextInputPlugin;

    new-array p3, p3, [Lio/flutter/embedding/android/KeyChannelResponder;

    new-instance v3, Lio/flutter/embedding/android/KeyChannelResponder;

    iget-object v4, p0, Lio/flutter/view/FlutterView;->keyEventChannel:Lio/flutter/embedding/engine/systemchannels/KeyEventChannel;

    invoke-direct {v3, v4}, Lio/flutter/embedding/android/KeyChannelResponder;-><init>(Lio/flutter/embedding/engine/systemchannels/KeyEventChannel;)V

    aput-object v3, p3, p2

    invoke-direct {v1, p0, v2, p3}, Lio/flutter/embedding/android/KeyboardManager;-><init>(Landroid/view/View;Lio/flutter/plugin/editing/TextInputPlugin;[Lio/flutter/embedding/android/KeyboardManager$Responder;)V

    iput-object v1, p0, Lio/flutter/view/FlutterView;->mKeyboardManager:Lio/flutter/embedding/android/KeyboardManager;

    .line 243
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt p3, v1, :cond_1

    .line 244
    new-instance p3, Lio/flutter/plugin/mouse/MouseCursorPlugin;

    new-instance v1, Lio/flutter/embedding/engine/systemchannels/MouseCursorChannel;

    iget-object v2, p0, Lio/flutter/view/FlutterView;->dartExecutor:Lio/flutter/embedding/engine/dart/DartExecutor;

    invoke-direct {v1, v2}, Lio/flutter/embedding/engine/systemchannels/MouseCursorChannel;-><init>(Lio/flutter/embedding/engine/dart/DartExecutor;)V

    invoke-direct {p3, p0, v1}, Lio/flutter/plugin/mouse/MouseCursorPlugin;-><init>(Lio/flutter/plugin/mouse/MouseCursorPlugin$MouseCursorViewDelegate;Lio/flutter/embedding/engine/systemchannels/MouseCursorChannel;)V

    iput-object p3, p0, Lio/flutter/view/FlutterView;->mMouseCursorPlugin:Lio/flutter/plugin/mouse/MouseCursorPlugin;

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    .line 246
    iput-object p3, p0, Lio/flutter/view/FlutterView;->mMouseCursorPlugin:Lio/flutter/plugin/mouse/MouseCursorPlugin;

    .line 248
    :goto_1
    new-instance p3, Lio/flutter/plugin/localization/LocalizationPlugin;

    iget-object v1, p0, Lio/flutter/view/FlutterView;->localizationChannel:Lio/flutter/embedding/engine/systemchannels/LocalizationChannel;

    invoke-direct {p3, p1, v1}, Lio/flutter/plugin/localization/LocalizationPlugin;-><init>(Landroid/content/Context;Lio/flutter/embedding/engine/systemchannels/LocalizationChannel;)V

    iput-object p3, p0, Lio/flutter/view/FlutterView;->mLocalizationPlugin:Lio/flutter/plugin/localization/LocalizationPlugin;

    .line 249
    new-instance p1, Lio/flutter/embedding/android/AndroidTouchProcessor;

    iget-object p3, p0, Lio/flutter/view/FlutterView;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    invoke-direct {p1, p3, p2}, Lio/flutter/embedding/android/AndroidTouchProcessor;-><init>(Lio/flutter/embedding/engine/renderer/FlutterRenderer;Z)V

    iput-object p1, p0, Lio/flutter/view/FlutterView;->androidTouchProcessor:Lio/flutter/embedding/android/AndroidTouchProcessor;

    .line 251
    iget-object p1, p0, Lio/flutter/view/FlutterView;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    invoke-virtual {v0, p1}, Lio/flutter/plugin/platform/PlatformViewsController;->attachToFlutterRenderer(Lio/flutter/embedding/engine/renderer/FlutterRenderer;)V

    .line 252
    iget-object p1, p0, Lio/flutter/view/FlutterView;->mNativeView:Lio/flutter/view/FlutterNativeView;

    .line 253
    invoke-virtual {p1}, Lio/flutter/view/FlutterNativeView;->getPluginRegistry()Lio/flutter/app/FlutterPluginRegistry;

    move-result-object p1

    .line 254
    invoke-virtual {p1}, Lio/flutter/app/FlutterPluginRegistry;->getPlatformViewsController()Lio/flutter/plugin/platform/PlatformViewsController;

    move-result-object p1

    iget-object p2, p0, Lio/flutter/view/FlutterView;->mTextInputPlugin:Lio/flutter/plugin/editing/TextInputPlugin;

    .line 255
    invoke-virtual {p1, p2}, Lio/flutter/plugin/platform/PlatformViewsController;->attachTextInputPlugin(Lio/flutter/plugin/editing/TextInputPlugin;)V

    .line 256
    iget-object p1, p0, Lio/flutter/view/FlutterView;->mNativeView:Lio/flutter/view/FlutterNativeView;

    invoke-virtual {p1}, Lio/flutter/view/FlutterNativeView;->getFlutterJNI()Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object p1

    iget-object p2, p0, Lio/flutter/view/FlutterView;->mLocalizationPlugin:Lio/flutter/plugin/localization/LocalizationPlugin;

    invoke-virtual {p1, p2}, Lio/flutter/embedding/engine/FlutterJNI;->setLocalizationPlugin(Lio/flutter/plugin/localization/LocalizationPlugin;)V

    .line 259
    iget-object p1, p0, Lio/flutter/view/FlutterView;->mLocalizationPlugin:Lio/flutter/plugin/localization/LocalizationPlugin;

    invoke-virtual {p0}, Lio/flutter/view/FlutterView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/flutter/plugin/localization/LocalizationPlugin;->sendLocalesToFlutter(Landroid/content/res/Configuration;)V

    .line 260
    invoke-direct {p0}, Lio/flutter/view/FlutterView;->sendUserPlatformSettingsToDart()V

    return-void

    .line 169
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Bad context"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lio/flutter/view/FlutterView;ZZ)V
    .locals 0

    .line 81
    invoke-direct {p0, p1, p2}, Lio/flutter/view/FlutterView;->resetWillNotDraw(ZZ)V

    return-void
.end method

.method static synthetic access$100(Lio/flutter/view/FlutterView;)Lio/flutter/view/FlutterNativeView;
    .locals 0

    .line 81
    iget-object p0, p0, Lio/flutter/view/FlutterView;->mNativeView:Lio/flutter/view/FlutterNativeView;

    return-object p0
.end method

.method private calculateShouldZeroSides()Lio/flutter/view/FlutterView$ZeroSides;
    .locals 3

    .line 519
    invoke-virtual {p0}, Lio/flutter/view/FlutterView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 520
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const-string v2, "window"

    .line 522
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 523
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 524
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 528
    sget-object v0, Lio/flutter/view/FlutterView$ZeroSides;->RIGHT:Lio/flutter/view/FlutterView$ZeroSides;

    return-object v0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 531
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    sget-object v0, Lio/flutter/view/FlutterView$ZeroSides;->LEFT:Lio/flutter/view/FlutterView$ZeroSides;

    goto :goto_0

    :cond_1
    sget-object v0, Lio/flutter/view/FlutterView$ZeroSides;->RIGHT:Lio/flutter/view/FlutterView$ZeroSides;

    :goto_0
    return-object v0

    :cond_2
    if-eqz v0, :cond_3

    if-ne v0, v2, :cond_4

    .line 535
    :cond_3
    sget-object v0, Lio/flutter/view/FlutterView$ZeroSides;->BOTH:Lio/flutter/view/FlutterView$ZeroSides;

    return-object v0

    .line 540
    :cond_4
    sget-object v0, Lio/flutter/view/FlutterView$ZeroSides;->NONE:Lio/flutter/view/FlutterView$ZeroSides;

    return-object v0
.end method

.method private guessBottomKeyboardInset(Landroid/view/WindowInsets;)I
    .locals 7

    .line 554
    invoke-virtual {p0}, Lio/flutter/view/FlutterView;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 558
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v1

    int-to-double v1, v1

    int-to-double v3, v0

    const-wide v5, 0x3fc70a3d70a3d70aL    # 0.18

    mul-double/2addr v3, v5

    cmpg-double v0, v1, v3

    if-gez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 563
    :cond_0
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result p1

    return p1
.end method

.method private isAttached()Z
    .locals 1

    .line 698
    iget-object v0, p0, Lio/flutter/view/FlutterView;->mNativeView:Lio/flutter/view/FlutterNativeView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/flutter/view/FlutterNativeView;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private postRun()V
    .locals 0

    return-void
.end method

.method private preRun()V
    .locals 0

    .line 706
    invoke-virtual {p0}, Lio/flutter/view/FlutterView;->resetAccessibilityTree()V

    return-void
.end method

.method private releaseAccessibilityNodeProvider()V
    .locals 1

    .line 820
    iget-object v0, p0, Lio/flutter/view/FlutterView;->mAccessibilityNodeProvider:Lio/flutter/view/AccessibilityBridge;

    if-eqz v0, :cond_0

    .line 821
    invoke-virtual {v0}, Lio/flutter/view/AccessibilityBridge;->release()V

    const/4 v0, 0x0

    .line 822
    iput-object v0, p0, Lio/flutter/view/FlutterView;->mAccessibilityNodeProvider:Lio/flutter/view/AccessibilityBridge;

    :cond_0
    return-void
.end method

.method private resetWillNotDraw(ZZ)V
    .locals 2

    .line 800
    iget-boolean v0, p0, Lio/flutter/view/FlutterView;->mIsSoftwareRenderingEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 v1, 0x1

    .line 801
    :cond_0
    invoke-virtual {p0, v1}, Lio/flutter/view/FlutterView;->setWillNotDraw(Z)V

    goto :goto_0

    .line 803
    :cond_1
    invoke-virtual {p0, v1}, Lio/flutter/view/FlutterView;->setWillNotDraw(Z)V

    :goto_0
    return-void
.end method

.method private sendUserPlatformSettingsToDart()V
    .locals 3

    .line 379
    invoke-virtual {p0}, Lio/flutter/view/FlutterView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 383
    sget-object v0, Lio/flutter/embedding/engine/systemchannels/SettingsChannel$PlatformBrightness;->dark:Lio/flutter/embedding/engine/systemchannels/SettingsChannel$PlatformBrightness;

    goto :goto_1

    .line 384
    :cond_1
    sget-object v0, Lio/flutter/embedding/engine/systemchannels/SettingsChannel$PlatformBrightness;->light:Lio/flutter/embedding/engine/systemchannels/SettingsChannel$PlatformBrightness;

    .line 386
    :goto_1
    iget-object v1, p0, Lio/flutter/view/FlutterView;->settingsChannel:Lio/flutter/embedding/engine/systemchannels/SettingsChannel;

    .line 387
    invoke-virtual {v1}, Lio/flutter/embedding/engine/systemchannels/SettingsChannel;->startMessage()Lio/flutter/embedding/engine/systemchannels/SettingsChannel$MessageBuilder;

    move-result-object v1

    .line 388
    invoke-virtual {p0}, Lio/flutter/view/FlutterView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {v1, v2}, Lio/flutter/embedding/engine/systemchannels/SettingsChannel$MessageBuilder;->setTextScaleFactor(F)Lio/flutter/embedding/engine/systemchannels/SettingsChannel$MessageBuilder;

    move-result-object v1

    .line 389
    invoke-virtual {p0}, Lio/flutter/view/FlutterView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/flutter/embedding/engine/systemchannels/SettingsChannel$MessageBuilder;->setUse24HourFormat(Z)Lio/flutter/embedding/engine/systemchannels/SettingsChannel$MessageBuilder;

    move-result-object v1

    .line 390
    invoke-virtual {v1, v0}, Lio/flutter/embedding/engine/systemchannels/SettingsChannel$MessageBuilder;->setPlatformBrightness(Lio/flutter/embedding/engine/systemchannels/SettingsChannel$PlatformBrightness;)Lio/flutter/embedding/engine/systemchannels/SettingsChannel$MessageBuilder;

    move-result-object v0

    .line 391
    invoke-virtual {v0}, Lio/flutter/embedding/engine/systemchannels/SettingsChannel$MessageBuilder;->send()V

    return-void
.end method

.method private updateViewportMetrics()V
    .locals 22

    move-object/from16 v0, p0

    .line 735
    invoke-direct/range {p0 .. p0}, Lio/flutter/view/FlutterView;->isAttached()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 736
    :cond_0
    iget-object v1, v0, Lio/flutter/view/FlutterView;->mNativeView:Lio/flutter/view/FlutterNativeView;

    .line 737
    invoke-virtual {v1}, Lio/flutter/view/FlutterNativeView;->getFlutterJNI()Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object v2

    iget-object v1, v0, Lio/flutter/view/FlutterView;->mMetrics:Lio/flutter/view/FlutterView$ViewportMetrics;

    iget v3, v1, Lio/flutter/view/FlutterView$ViewportMetrics;->devicePixelRatio:F

    iget-object v1, v0, Lio/flutter/view/FlutterView;->mMetrics:Lio/flutter/view/FlutterView$ViewportMetrics;

    iget v4, v1, Lio/flutter/view/FlutterView$ViewportMetrics;->physicalWidth:I

    iget-object v1, v0, Lio/flutter/view/FlutterView;->mMetrics:Lio/flutter/view/FlutterView$ViewportMetrics;

    iget v5, v1, Lio/flutter/view/FlutterView$ViewportMetrics;->physicalHeight:I

    iget-object v1, v0, Lio/flutter/view/FlutterView;->mMetrics:Lio/flutter/view/FlutterView$ViewportMetrics;

    iget v6, v1, Lio/flutter/view/FlutterView$ViewportMetrics;->physicalViewPaddingTop:I

    iget-object v1, v0, Lio/flutter/view/FlutterView;->mMetrics:Lio/flutter/view/FlutterView$ViewportMetrics;

    iget v7, v1, Lio/flutter/view/FlutterView$ViewportMetrics;->physicalViewPaddingRight:I

    iget-object v1, v0, Lio/flutter/view/FlutterView;->mMetrics:Lio/flutter/view/FlutterView$ViewportMetrics;

    iget v8, v1, Lio/flutter/view/FlutterView$ViewportMetrics;->physicalViewPaddingBottom:I

    iget-object v1, v0, Lio/flutter/view/FlutterView;->mMetrics:Lio/flutter/view/FlutterView$ViewportMetrics;

    iget v9, v1, Lio/flutter/view/FlutterView$ViewportMetrics;->physicalViewPaddingLeft:I

    iget-object v1, v0, Lio/flutter/view/FlutterView;->mMetrics:Lio/flutter/view/FlutterView$ViewportMetrics;

    iget v10, v1, Lio/flutter/view/FlutterView$ViewportMetrics;->physicalViewInsetTop:I

    iget-object v1, v0, Lio/flutter/view/FlutterView;->mMetrics:Lio/flutter/view/FlutterView$ViewportMetrics;

    iget v11, v1, Lio/flutter/view/FlutterView$ViewportMetrics;->physicalViewInsetRight:I

    iget-object v1, v0, Lio/flutter/view/FlutterView;->mMetrics:Lio/flutter/view/FlutterView$ViewportMetrics;

    iget v12, v1, Lio/flutter/view/FlutterView$ViewportMetrics;->physicalViewInsetBottom:I

    iget-object v1, v0, Lio/flutter/view/FlutterView;->mMetrics:Lio/flutter/view/FlutterView$ViewportMetrics;

    iget v13, v1, Lio/flutter/view/FlutterView$ViewportMetrics;->physicalViewInsetLeft:I

    iget-object v1, v0, Lio/flutter/view/FlutterView;->mMetrics:Lio/flutter/view/FlutterView$ViewportMetrics;

    iget v14, v1, Lio/flutter/view/FlutterView$ViewportMetrics;->systemGestureInsetTop:I

    iget-object v1, v0, Lio/flutter/view/FlutterView;->mMetrics:Lio/flutter/view/FlutterView$ViewportMetrics;

    iget v15, v1, Lio/flutter/view/FlutterView$ViewportMetrics;->systemGestureInsetRight:I

    iget-object v1, v0, Lio/flutter/view/FlutterView;->mMetrics:Lio/flutter/view/FlutterView$ViewportMetrics;

    iget v1, v1, Lio/flutter/view/FlutterView$ViewportMetrics;->systemGestureInsetBottom:I

    move/from16 v16, v1

    iget-object v1, v0, Lio/flutter/view/FlutterView;->mMetrics:Lio/flutter/view/FlutterView$ViewportMetrics;

    iget v1, v1, Lio/flutter/view/FlutterView$ViewportMetrics;->systemGestureInsetLeft:I

    move/from16 v17, v1

    iget-object v1, v0, Lio/flutter/view/FlutterView;->mMetrics:Lio/flutter/view/FlutterView$ViewportMetrics;

    iget v1, v1, Lio/flutter/view/FlutterView$ViewportMetrics;->physicalTouchSlop:I

    move/from16 v18, v1

    const/4 v1, 0x0

    new-array v0, v1, [I

    move-object/from16 v19, v0

    new-array v0, v1, [I

    move-object/from16 v20, v0

    new-array v0, v1, [I

    move-object/from16 v21, v0

    .line 738
    invoke-virtual/range {v2 .. v21}, Lio/flutter/embedding/engine/FlutterJNI;->setViewportMetrics(FIIIIIIIIIIIIIII[I[I[I)V

    return-void
.end method


# virtual methods
.method public addActivityLifecycleListener(Lio/flutter/plugin/common/ActivityLifecycleListener;)V
    .locals 1

    .line 302
    iget-object v0, p0, Lio/flutter/view/FlutterView;->mActivityLifecycleListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addFirstFrameListener(Lio/flutter/view/FlutterView$FirstFrameListener;)V
    .locals 1

    .line 342
    iget-object v0, p0, Lio/flutter/view/FlutterView;->mFirstFrameListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method assertAttached()V
    .locals 2

    .line 702
    invoke-direct {p0}, Lio/flutter/view/FlutterView;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Platform view is not attached"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public autofill(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/view/autofill/AutofillValue;",
            ">;)V"
        }
    .end annotation

    .line 446
    iget-object v0, p0, Lio/flutter/view/FlutterView;->mTextInputPlugin:Lio/flutter/plugin/editing/TextInputPlugin;

    invoke-virtual {v0, p1}, Lio/flutter/plugin/editing/TextInputPlugin;->autofill(Landroid/util/SparseArray;)V

    return-void
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 1

    .line 432
    iget-object v0, p0, Lio/flutter/view/FlutterView;->mNativeView:Lio/flutter/view/FlutterNativeView;

    .line 433
    invoke-virtual {v0}, Lio/flutter/view/FlutterNativeView;->getPluginRegistry()Lio/flutter/app/FlutterPluginRegistry;

    move-result-object v0

    .line 434
    invoke-virtual {v0}, Lio/flutter/app/FlutterPluginRegistry;->getPlatformViewsController()Lio/flutter/plugin/platform/PlatformViewsController;

    move-result-object v0

    .line 435
    invoke-virtual {v0, p1}, Lio/flutter/plugin/platform/PlatformViewsController;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public createSurfaceTexture()Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;
    .locals 2

    .line 875
    new-instance v0, Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 876
    invoke-virtual {p0, v0}, Lio/flutter/view/FlutterView;->registerSurfaceTexture(Landroid/graphics/SurfaceTexture;)Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;

    move-result-object v0

    return-object v0
.end method

.method public destroy()V
    .locals 2

    .line 416
    invoke-direct {p0}, Lio/flutter/view/FlutterView;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 418
    :cond_0
    invoke-virtual {p0}, Lio/flutter/view/FlutterView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/view/FlutterView;->mSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 419
    invoke-direct {p0}, Lio/flutter/view/FlutterView;->releaseAccessibilityNodeProvider()V

    .line 421
    iget-object v0, p0, Lio/flutter/view/FlutterView;->mNativeView:Lio/flutter/view/FlutterNativeView;

    invoke-virtual {v0}, Lio/flutter/view/FlutterNativeView;->destroy()V

    const/4 v0, 0x0

    .line 422
    iput-object v0, p0, Lio/flutter/view/FlutterView;->mNativeView:Lio/flutter/view/FlutterNativeView;

    return-void
.end method

.method public detach()Lio/flutter/view/FlutterNativeView;
    .locals 3

    .line 406
    invoke-direct {p0}, Lio/flutter/view/FlutterView;->isAttached()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 407
    :cond_0
    invoke-virtual {p0}, Lio/flutter/view/FlutterView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v2, p0, Lio/flutter/view/FlutterView;->mSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 408
    iget-object v0, p0, Lio/flutter/view/FlutterView;->mNativeView:Lio/flutter/view/FlutterNativeView;

    invoke-virtual {v0}, Lio/flutter/view/FlutterNativeView;->detachFromFlutterView()V

    .line 410
    iget-object v0, p0, Lio/flutter/view/FlutterView;->mNativeView:Lio/flutter/view/FlutterNativeView;

    .line 411
    iput-object v1, p0, Lio/flutter/view/FlutterView;->mNativeView:Lio/flutter/view/FlutterNativeView;

    return-object v0
.end method

.method public disableBufferingIncomingMessages()V
    .locals 0

    return-void
.end method

.method public disableTransparentBackground()V
    .locals 2

    const/4 v0, 0x0

    .line 360
    invoke-virtual {p0, v0}, Lio/flutter/view/FlutterView;->setZOrderOnTop(Z)V

    .line 361
    invoke-virtual {p0}, Lio/flutter/view/FlutterView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchKeyEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlutterView"

    invoke-static {v1, v0}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 273
    invoke-virtual {p0}, Lio/flutter/view/FlutterView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto :goto_0

    .line 274
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 276
    invoke-virtual {p0}, Lio/flutter/view/FlutterView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 282
    :cond_1
    :goto_0
    invoke-direct {p0}, Lio/flutter/view/FlutterView;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/flutter/view/FlutterView;->mKeyboardManager:Lio/flutter/embedding/android/KeyboardManager;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/android/KeyboardManager;->handleEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_1
    return v1
.end method

.method public enableBufferingIncomingMessages()V
    .locals 0

    return-void
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 3

    .line 678
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_0

    .line 680
    iget-object v0, p0, Lio/flutter/view/FlutterView;->mMetrics:Lio/flutter/view/FlutterView$ViewportMetrics;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Lio/flutter/view/FlutterView$ViewportMetrics;->physicalViewPaddingTop:I

    .line 681
    iget-object v0, p0, Lio/flutter/view/FlutterView;->mMetrics:Lio/flutter/view/FlutterView$ViewportMetrics;

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iput v1, v0, Lio/flutter/view/FlutterView$ViewportMetrics;->physicalViewPaddingRight:I

    .line 682
    iget-object v0, p0, Lio/flutter/view/FlutterView;->mMetrics:Lio/flutter/view/FlutterView$ViewportMetrics;

    const/4 v1, 0x0

    iput v1, v0, Lio/flutter/view/FlutterView$ViewportMetrics;->physicalViewPaddingBottom:I

    .line 683
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iput v2, v0, Lio/flutter/view/FlutterView$ViewportMetrics;->physicalViewPaddingLeft:I

    .line 686
    iget-object v0, p0, Lio/flutter/view/FlutterView;->mMetrics:Lio/flutter/view/FlutterView$ViewportMetrics;

    iput v1, v0, Lio/flutter/view/FlutterView$ViewportMetrics;->physicalViewInsetTop:I

    .line 687
    iput v1, v0, Lio/flutter/view/FlutterView$ViewportMetrics;->physicalViewInsetRight:I

    .line 688
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iput p1, v0, Lio/flutter/view/FlutterView$ViewportMetrics;->physicalViewInsetBottom:I

    .line 689
    iget-object p1, p0, Lio/flutter/view/FlutterView;->mMetrics:Lio/flutter/view/FlutterView$ViewportMetrics;

    iput v1, p1, Lio/flutter/view/FlutterView$ViewportMetrics;->physicalViewInsetLeft:I

    .line 690
    invoke-direct {p0}, Lio/flutter/view/FlutterView;->updateViewportMetrics()V

    const/4 p1, 0x1

    return p1

    .line 693
    :cond_0
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    .line 809
    iget-object v0, p0, Lio/flutter/view/FlutterView;->mAccessibilityNodeProvider:Lio/flutter/view/AccessibilityBridge;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/flutter/view/AccessibilityBridge;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 810
    iget-object v0, p0, Lio/flutter/view/FlutterView;->mAccessibilityNodeProvider:Lio/flutter/view/AccessibilityBridge;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 730
    invoke-virtual {p0}, Lio/flutter/view/FlutterView;->assertAttached()V

    .line 731
    iget-object v0, p0, Lio/flutter/view/FlutterView;->mNativeView:Lio/flutter/view/FlutterNativeView;

    invoke-virtual {v0}, Lio/flutter/view/FlutterNativeView;->getFlutterJNI()Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterJNI;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getDartExecutor()Lio/flutter/embedding/engine/dart/DartExecutor;
    .locals 1

    .line 265
    iget-object v0, p0, Lio/flutter/view/FlutterView;->dartExecutor:Lio/flutter/embedding/engine/dart/DartExecutor;

    return-object v0
.end method

.method getDevicePixelRatio()F
    .locals 1

    .line 402
    iget-object v0, p0, Lio/flutter/view/FlutterView;->mMetrics:Lio/flutter/view/FlutterView$ViewportMetrics;

    iget v0, v0, Lio/flutter/view/FlutterView$ViewportMetrics;->devicePixelRatio:F

    return v0
.end method

.method public getFlutterNativeView()Lio/flutter/view/FlutterNativeView;
    .locals 1

    .line 286
    iget-object v0, p0, Lio/flutter/view/FlutterView;->mNativeView:Lio/flutter/view/FlutterNativeView;

    return-object v0
.end method

.method public getLookupKeyForAsset(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 294
    invoke-static {p1}, Lio/flutter/view/FlutterMain;->getLookupKeyForAsset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLookupKeyForAsset(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 298
    invoke-static {p1, p2}, Lio/flutter/view/FlutterMain;->getLookupKeyForAsset(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPluginRegistry()Lio/flutter/app/FlutterPluginRegistry;
    .locals 1

    .line 290
    iget-object v0, p0, Lio/flutter/view/FlutterView;->mNativeView:Lio/flutter/view/FlutterNativeView;

    invoke-virtual {v0}, Lio/flutter/view/FlutterNativeView;->getPluginRegistry()Lio/flutter/app/FlutterPluginRegistry;

    move-result-object v0

    return-object v0
.end method

.method public getSystemPointerIcon(I)Landroid/view/PointerIcon;
    .locals 1

    .line 831
    invoke-virtual {p0}, Lio/flutter/view/FlutterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p1

    return-object p1
.end method

.method public hasRenderedFirstFrame()Z
    .locals 1

    .line 334
    iget-boolean v0, p0, Lio/flutter/view/FlutterView;->didRenderFirstFrame:Z

    return v0
.end method

.method public synthetic makeBackgroundTaskQueue()Lio/flutter/plugin/common/BinaryMessenger$TaskQueue;
    .locals 1

    invoke-static {p0}, Lio/flutter/plugin/common/BinaryMessenger$-CC;->$default$makeBackgroundTaskQueue(Lio/flutter/plugin/common/BinaryMessenger;)Lio/flutter/plugin/common/BinaryMessenger$TaskQueue;

    move-result-object v0

    return-object v0
.end method

.method public makeBackgroundTaskQueue(Lio/flutter/plugin/common/BinaryMessenger$TaskQueueOptions;)Lio/flutter/plugin/common/BinaryMessenger$TaskQueue;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 5

    .line 578
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_0

    .line 579
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemGestureInsets()Landroid/graphics/Insets;

    move-result-object v0

    .line 580
    iget-object v1, p0, Lio/flutter/view/FlutterView;->mMetrics:Lio/flutter/view/FlutterView$ViewportMetrics;

    iget v2, v0, Landroid/graphics/Insets;->top:I

    iput v2, v1, Lio/flutter/view/FlutterView$ViewportMetrics;->systemGestureInsetTop:I

    .line 581
    iget-object v1, p0, Lio/flutter/view/FlutterView;->mMetrics:Lio/flutter/view/FlutterView$ViewportMetrics;

    iget v2, v0, Landroid/graphics/Insets;->right:I

    iput v2, v1, Lio/flutter/view/FlutterView$ViewportMetrics;->systemGestureInsetRight:I

    .line 582
    iget-object v1, p0, Lio/flutter/view/FlutterView;->mMetrics:Lio/flutter/view/FlutterView$ViewportMetrics;

    iget v2, v0, Landroid/graphics/Insets;->bottom:I

    iput v2, v1, Lio/flutter/view/FlutterView$ViewportMetrics;->systemGestureInsetBottom:I

    .line 583
    iget-object v1, p0, Lio/flutter/view/FlutterView;->mMetrics:Lio/flutter/view/FlutterView$ViewportMetrics;

    iget v0, v0, Landroid/graphics/Insets;->left:I

    iput v0, v1, Lio/flutter/view/FlutterView$ViewportMetrics;->systemGestureInsetLeft:I

    .line 586
    :cond_0
    invoke-virtual {p0}, Lio/flutter/view/FlutterView;->getWindowSystemUiVisibility()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 588
    :goto_0
    invoke-virtual {p0}, Lio/flutter/view/FlutterView;->getWindowSystemUiVisibility()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    .line 590
    :goto_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1e

    if-lt v3, v4, :cond_5

    if-eqz v1, :cond_3

    .line 593
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    or-int/2addr v2, v1

    :cond_3
    if-eqz v0, :cond_4

    .line 596
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v0

    or-int/2addr v2, v0

    .line 598
    :cond_4
    invoke-virtual {p1, v2}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    .line 599
    iget-object v1, p0, Lio/flutter/view/FlutterView;->mMetrics:Lio/flutter/view/FlutterView$ViewportMetrics;

    iget v2, v0, Landroid/graphics/Insets;->top:I

    iput v2, v1, Lio/flutter/view/FlutterView$ViewportMetrics;->physicalViewPaddingTop:I

    .line 600
    iget-object v1, p0, Lio/flutter/view/FlutterView;->mMetrics:Lio/flutter/view/FlutterView$ViewportMetrics;

    iget v2, v0, Landroid/graphics/Insets;->right:I

    iput v2, v1, Lio/flutter/view/FlutterView$ViewportMetrics;->physicalViewPaddingRight:I

    .line 601
    iget-object v1, p0, Lio/flutter/view/FlutterView;->mMetrics:Lio/flutter/view/FlutterView$ViewportMetrics;

    iget v2, v0, Landroid/graphics/Insets;->bottom:I

    iput v2, v1, Lio/flutter/view/FlutterView$ViewportMetrics;->physicalViewPaddingBottom:I

    .line 602
    iget-object v1, p0, Lio/flutter/view/FlutterView;->mMetrics:Lio/flutter/view/FlutterView$ViewportMetrics;

    iget v0, v0, Landroid/graphics/Insets;->left:I

    iput v0, v1, Lio/flutter/view/FlutterView$ViewportMetrics;->physicalViewPaddingLeft:I

    .line 604
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    .line 605
    iget-object v1, p0, Lio/flutter/view/FlutterView;->mMetrics:Lio/flutter/view/FlutterView$ViewportMetrics;

    iget v2, v0, Landroid/graphics/Insets;->top:I

    iput v2, v1, Lio/flutter/view/FlutterView$ViewportMetrics;->physicalViewInsetTop:I

    .line 606
    iget-object v1, p0, Lio/flutter/view/FlutterView;->mMetrics:Lio/flutter/view/FlutterView$ViewportMetrics;

    iget v2, v0, Landroid/graphics/Insets;->right:I

    iput v2, v1, Lio/flutter/view/FlutterView$ViewportMetrics;->physicalViewInsetRight:I

    .line 607
    iget-object v1, p0, Lio/flutter/view/FlutterView;->mMetrics:Lio/flutter/view/FlutterView$ViewportMetrics;

    iget v2, v0, Landroid/graphics/Insets;->bottom:I

    iput v2, v1, Lio/flutter/view/FlutterView$ViewportMetrics;->physicalViewInsetBottom:I

    .line 608
    iget-object v1, p0, Lio/flutter/view/FlutterView;->mMetrics:Lio/flutter/view/FlutterView$ViewportMetrics;

    iget v0, v0, Landroid/graphics/Insets;->left:I

    iput v0, v1, Lio/flutter/view/FlutterView$ViewportMetrics;->physicalViewInsetLeft:I

    .line 611
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemGestures()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    .line 612
    iget-object v1, p0, Lio/flutter/view/FlutterView;->mMetrics:Lio/flutter/view/FlutterView$ViewportMetrics;

    iget v2, v0, Landroid/graphics/Insets;->top:I

    iput v2, v1, Lio/flutter/view/FlutterView$ViewportMetrics;->systemGestureInsetTop:I

    .line 613
    iget-object v1, p0, Lio/flutter/view/FlutterView;->mMetrics:Lio/flutter/view/FlutterView$ViewportMetrics;

    iget v2, v0, Landroid/graphics/Insets;->right:I

    iput v2, v1, Lio/flutter/view/FlutterView$ViewportMetrics;->systemGestureInsetRight:I

    .line 614
    iget-object v1, p0, Lio/flutter/view/FlutterView;->mMetrics:Lio/flutter/view/FlutterView$ViewportMetrics;

    iget v2, v0, Landroid/graphics/Insets;->bottom:I

    iput v2, v1, Lio/flutter/view/FlutterView$ViewportMetrics;->systemGestureInsetBottom:I

    .line 615
    iget-object v1, p0, Lio/flutter/view/FlutterView;->mMetrics:Lio/flutter/view/FlutterView$ViewportMetrics;

    iget v0, v0, Landroid/graphics/Insets;->left:I

    iput v0, v1, Lio/flutter/view/FlutterView$ViewportMetrics;->systemGestureInsetLeft:I

    .line 620
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 622
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getWaterfallInsets()Landroid/graphics/Insets;

    move-result-object v1

    .line 623
    iget-object v2, p0, Lio/flutter/view/FlutterView;->mMetrics:Lio/flutter/view/FlutterView$ViewportMetrics;

    iget v3, v2, Lio/flutter/view/FlutterView$ViewportMetrics;->physicalViewPaddingTop:I

    iget v4, v1, Landroid/graphics/Insets;->top:I

    .line 625
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 626
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v4

    .line 624
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Lio/flutter/view/FlutterView$ViewportMetrics;->physicalViewPaddingTop:I

    .line 627
    iget-object v2, p0, Lio/flutter/view/FlutterView;->mMetrics:Lio/flutter/view/FlutterView$ViewportMetrics;

    iget v3, v2, Lio/flutter/view/FlutterView$ViewportMetrics;->physicalViewPaddingRight:I

    iget v4, v1, Landroid/graphics/Insets;->right:I

    .line 629
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 630
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v4

    .line 628
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Lio/flutter/view/FlutterView$ViewportMetrics;->physicalViewPaddingRight:I

    .line 631
    iget-object v2, p0, Lio/flutter/view/FlutterView;->mMetrics:Lio/flutter/view/FlutterView$ViewportMetrics;

    iget v3, v2, Lio/flutter/view/FlutterView$ViewportMetrics;->physicalViewPaddingBottom:I

    iget v4, v1, Landroid/graphics/Insets;->bottom:I

    .line 633
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 634
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v4

    .line 632
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Lio/flutter/view/FlutterView$ViewportMetrics;->physicalViewPaddingBottom:I

    .line 635
    iget-object v2, p0, Lio/flutter/view/FlutterView;->mMetrics:Lio/flutter/view/FlutterView$ViewportMetrics;

    iget v3, v2, Lio/flutter/view/FlutterView$ViewportMetrics;->physicalViewPaddingLeft:I

    iget v1, v1, Landroid/graphics/Insets;->left:I

    .line 637
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 638
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v0

    .line 636
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v2, Lio/flutter/view/FlutterView$ViewportMetrics;->physicalViewPaddingLeft:I

    goto :goto_8

    .line 643
    :cond_5
    sget-object v3, Lio/flutter/view/FlutterView$ZeroSides;->NONE:Lio/flutter/view/FlutterView$ZeroSides;

    if-nez v1, :cond_6

    .line 645
    invoke-direct {p0}, Lio/flutter/view/FlutterView;->calculateShouldZeroSides()Lio/flutter/view/FlutterView$ZeroSides;

    move-result-object v3

    .line 650
    :cond_6
    iget-object v4, p0, Lio/flutter/view/FlutterView;->mMetrics:Lio/flutter/view/FlutterView$ViewportMetrics;

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    goto :goto_2

    :cond_7
    move v0, v2

    :goto_2
    iput v0, v4, Lio/flutter/view/FlutterView$ViewportMetrics;->physicalViewPaddingTop:I

    .line 651
    iget-object v0, p0, Lio/flutter/view/FlutterView;->mMetrics:Lio/flutter/view/FlutterView$ViewportMetrics;

    .line 652
    sget-object v4, Lio/flutter/view/FlutterView$ZeroSides;->RIGHT:Lio/flutter/view/FlutterView$ZeroSides;

    if-eq v3, v4, :cond_9

    sget-object v4, Lio/flutter/view/FlutterView$ZeroSides;->BOTH:Lio/flutter/view/FlutterView$ZeroSides;

    if-ne v3, v4, :cond_8

    goto :goto_3

    .line 654
    :cond_8
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v4

    goto :goto_4

    :cond_9
    :goto_3
    move v4, v2

    :goto_4
    iput v4, v0, Lio/flutter/view/FlutterView$ViewportMetrics;->physicalViewPaddingRight:I

    .line 655
    iget-object v0, p0, Lio/flutter/view/FlutterView;->mMetrics:Lio/flutter/view/FlutterView$ViewportMetrics;

    if-eqz v1, :cond_a

    .line 656
    invoke-direct {p0, p1}, Lio/flutter/view/FlutterView;->guessBottomKeyboardInset(Landroid/view/WindowInsets;)I

    move-result v1

    if-nez v1, :cond_a

    .line 657
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v1

    goto :goto_5

    :cond_a
    move v1, v2

    .line 658
    :goto_5
    iput v1, v0, Lio/flutter/view/FlutterView$ViewportMetrics;->physicalViewPaddingBottom:I

    .line 659
    iget-object v0, p0, Lio/flutter/view/FlutterView;->mMetrics:Lio/flutter/view/FlutterView$ViewportMetrics;

    .line 660
    sget-object v1, Lio/flutter/view/FlutterView$ZeroSides;->LEFT:Lio/flutter/view/FlutterView$ZeroSides;

    if-eq v3, v1, :cond_c

    sget-object v1, Lio/flutter/view/FlutterView$ZeroSides;->BOTH:Lio/flutter/view/FlutterView$ZeroSides;

    if-ne v3, v1, :cond_b

    goto :goto_6

    .line 662
    :cond_b
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v1

    goto :goto_7

    :cond_c
    :goto_6
    move v1, v2

    :goto_7
    iput v1, v0, Lio/flutter/view/FlutterView$ViewportMetrics;->physicalViewPaddingLeft:I

    .line 665
    iget-object v0, p0, Lio/flutter/view/FlutterView;->mMetrics:Lio/flutter/view/FlutterView$ViewportMetrics;

    iput v2, v0, Lio/flutter/view/FlutterView$ViewportMetrics;->physicalViewInsetTop:I

    .line 666
    iput v2, v0, Lio/flutter/view/FlutterView$ViewportMetrics;->physicalViewInsetRight:I

    .line 667
    invoke-direct {p0, p1}, Lio/flutter/view/FlutterView;->guessBottomKeyboardInset(Landroid/view/WindowInsets;)I

    move-result v1

    iput v1, v0, Lio/flutter/view/FlutterView$ViewportMetrics;->physicalViewInsetBottom:I

    .line 668
    iget-object v0, p0, Lio/flutter/view/FlutterView;->mMetrics:Lio/flutter/view/FlutterView$ViewportMetrics;

    iput v2, v0, Lio/flutter/view/FlutterView$ViewportMetrics;->physicalViewInsetLeft:I

    .line 671
    :cond_d
    :goto_8
    invoke-direct {p0}, Lio/flutter/view/FlutterView;->updateViewportMetrics()V

    .line 672
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method

.method protected onAttachedToWindow()V
    .locals 7

    .line 773
    invoke-super {p0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    .line 776
    invoke-virtual {p0}, Lio/flutter/view/FlutterView;->getPluginRegistry()Lio/flutter/app/FlutterPluginRegistry;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/app/FlutterPluginRegistry;->getPlatformViewsController()Lio/flutter/plugin/platform/PlatformViewsController;

    move-result-object v6

    .line 777
    new-instance v0, Lio/flutter/view/AccessibilityBridge;

    new-instance v3, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    iget-object v1, p0, Lio/flutter/view/FlutterView;->dartExecutor:Lio/flutter/embedding/engine/dart/DartExecutor;

    .line 780
    invoke-virtual {p0}, Lio/flutter/view/FlutterView;->getFlutterNativeView()Lio/flutter/view/FlutterNativeView;

    move-result-object v2

    invoke-virtual {v2}, Lio/flutter/view/FlutterNativeView;->getFlutterJNI()Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object v2

    invoke-direct {v3, v1, v2}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;-><init>(Lio/flutter/embedding/engine/dart/DartExecutor;Lio/flutter/embedding/engine/FlutterJNI;)V

    .line 781
    invoke-virtual {p0}, Lio/flutter/view/FlutterView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/view/accessibility/AccessibilityManager;

    .line 782
    invoke-virtual {p0}, Lio/flutter/view/FlutterView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lio/flutter/view/AccessibilityBridge;-><init>(Landroid/view/View;Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;Landroid/view/accessibility/AccessibilityManager;Landroid/content/ContentResolver;Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;)V

    iput-object v0, p0, Lio/flutter/view/FlutterView;->mAccessibilityNodeProvider:Lio/flutter/view/AccessibilityBridge;

    .line 784
    iget-object v0, p0, Lio/flutter/view/FlutterView;->mAccessibilityNodeProvider:Lio/flutter/view/AccessibilityBridge;

    iget-object v1, p0, Lio/flutter/view/FlutterView;->onAccessibilityChangeListener:Lio/flutter/view/AccessibilityBridge$OnAccessibilityChangeListener;

    invoke-virtual {v0, v1}, Lio/flutter/view/AccessibilityBridge;->setOnAccessibilityChangeListener(Lio/flutter/view/AccessibilityBridge$OnAccessibilityChangeListener;)V

    .line 786
    iget-object v0, p0, Lio/flutter/view/FlutterView;->mAccessibilityNodeProvider:Lio/flutter/view/AccessibilityBridge;

    .line 787
    invoke-virtual {v0}, Lio/flutter/view/AccessibilityBridge;->isAccessibilityEnabled()Z

    move-result v0

    iget-object v1, p0, Lio/flutter/view/FlutterView;->mAccessibilityNodeProvider:Lio/flutter/view/AccessibilityBridge;

    .line 788
    invoke-virtual {v1}, Lio/flutter/view/AccessibilityBridge;->isTouchExplorationEnabled()Z

    move-result v1

    .line 786
    invoke-direct {p0, v0, v1}, Lio/flutter/view/FlutterView;->resetWillNotDraw(ZZ)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 396
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 397
    iget-object v0, p0, Lio/flutter/view/FlutterView;->mLocalizationPlugin:Lio/flutter/plugin/localization/LocalizationPlugin;

    invoke-virtual {v0, p1}, Lio/flutter/plugin/localization/LocalizationPlugin;->sendLocalesToFlutter(Landroid/content/res/Configuration;)V

    .line 398
    invoke-direct {p0}, Lio/flutter/view/FlutterView;->sendUserPlatformSettingsToDart()V

    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2

    .line 427
    iget-object v0, p0, Lio/flutter/view/FlutterView;->mTextInputPlugin:Lio/flutter/plugin/editing/TextInputPlugin;

    iget-object v1, p0, Lio/flutter/view/FlutterView;->mKeyboardManager:Lio/flutter/embedding/android/KeyboardManager;

    invoke-virtual {v0, p0, v1, p1}, Lio/flutter/plugin/editing/TextInputPlugin;->createInputConnection(Landroid/view/View;Lio/flutter/embedding/android/KeyboardManager;Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    return-object p1
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 793
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    .line 794
    invoke-direct {p0}, Lio/flutter/view/FlutterView;->releaseAccessibilityNodeProvider()V

    return-void
.end method

.method public onFirstFrame()V
    .locals 2

    const/4 v0, 0x1

    .line 762
    iput-boolean v0, p0, Lio/flutter/view/FlutterView;->didRenderFirstFrame:Z

    .line 765
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/flutter/view/FlutterView;->mFirstFrameListeners:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 766
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/view/FlutterView$FirstFrameListener;

    .line 767
    invoke-interface {v1}, Lio/flutter/view/FlutterView$FirstFrameListener;->onFirstFrame()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 490
    invoke-direct {p0}, Lio/flutter/view/FlutterView;->isAttached()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/flutter/view/FlutterView;->androidTouchProcessor:Lio/flutter/embedding/android/AndroidTouchProcessor;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/android/AndroidTouchProcessor;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    .line 491
    :cond_1
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_1
    return v1
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 469
    invoke-direct {p0}, Lio/flutter/view/FlutterView;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 470
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 473
    :cond_0
    iget-object v0, p0, Lio/flutter/view/FlutterView;->mAccessibilityNodeProvider:Lio/flutter/view/AccessibilityBridge;

    invoke-virtual {v0, p1}, Lio/flutter/view/AccessibilityBridge;->onAccessibilityHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onMemoryPressure()V
    .locals 1

    .line 325
    iget-object v0, p0, Lio/flutter/view/FlutterView;->mNativeView:Lio/flutter/view/FlutterNativeView;

    invoke-virtual {v0}, Lio/flutter/view/FlutterNativeView;->getFlutterJNI()Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterJNI;->notifyLowMemoryWarning()V

    .line 326
    iget-object v0, p0, Lio/flutter/view/FlutterView;->systemChannel:Lio/flutter/embedding/engine/systemchannels/SystemChannel;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/systemchannels/SystemChannel;->sendMemoryPressureWarning()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 310
    iget-object v0, p0, Lio/flutter/view/FlutterView;->lifecycleChannel:Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;->appIsInactive()V

    return-void
.end method

.method public onPostResume()V
    .locals 2

    .line 314
    iget-object v0, p0, Lio/flutter/view/FlutterView;->mActivityLifecycleListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/plugin/common/ActivityLifecycleListener;

    .line 315
    invoke-interface {v1}, Lio/flutter/plugin/common/ActivityLifecycleListener;->onPostResume()V

    goto :goto_0

    .line 317
    :cond_0
    iget-object v0, p0, Lio/flutter/view/FlutterView;->lifecycleChannel:Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;->appIsResumed()V

    return-void
.end method

.method public onProvideAutofillVirtualStructure(Landroid/view/ViewStructure;I)V
    .locals 1

    .line 440
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onProvideAutofillVirtualStructure(Landroid/view/ViewStructure;I)V

    .line 441
    iget-object v0, p0, Lio/flutter/view/FlutterView;->mTextInputPlugin:Lio/flutter/plugin/editing/TextInputPlugin;

    invoke-virtual {v0, p1, p2}, Lio/flutter/plugin/editing/TextInputPlugin;->onProvideAutofillVirtualStructure(Landroid/view/ViewStructure;I)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .line 496
    iget-object v0, p0, Lio/flutter/view/FlutterView;->mMetrics:Lio/flutter/view/FlutterView$ViewportMetrics;

    iput p1, v0, Lio/flutter/view/FlutterView$ViewportMetrics;->physicalWidth:I

    .line 497
    iput p2, v0, Lio/flutter/view/FlutterView$ViewportMetrics;->physicalHeight:I

    .line 498
    invoke-direct {p0}, Lio/flutter/view/FlutterView;->updateViewportMetrics()V

    .line 499
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/SurfaceView;->onSizeChanged(IIII)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 306
    iget-object v0, p0, Lio/flutter/view/FlutterView;->lifecycleChannel:Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;->appIsInactive()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 321
    iget-object v0, p0, Lio/flutter/view/FlutterView;->lifecycleChannel:Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;->appIsPaused()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 451
    invoke-direct {p0}, Lio/flutter/view/FlutterView;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 452
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 460
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 461
    invoke-virtual {p0, p1}, Lio/flutter/view/FlutterView;->requestUnbufferedDispatch(Landroid/view/MotionEvent;)V

    .line 464
    :cond_1
    iget-object v0, p0, Lio/flutter/view/FlutterView;->androidTouchProcessor:Lio/flutter/embedding/android/AndroidTouchProcessor;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/android/AndroidTouchProcessor;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public popRoute()V
    .locals 1

    .line 373
    iget-object v0, p0, Lio/flutter/view/FlutterView;->navigationChannel:Lio/flutter/embedding/engine/systemchannels/NavigationChannel;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/systemchannels/NavigationChannel;->popRoute()V

    return-void
.end method

.method public pushRoute(Ljava/lang/String;)V
    .locals 1

    .line 369
    iget-object v0, p0, Lio/flutter/view/FlutterView;->navigationChannel:Lio/flutter/embedding/engine/systemchannels/NavigationChannel;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/engine/systemchannels/NavigationChannel;->pushRoute(Ljava/lang/String;)V

    return-void
.end method

.method public registerSurfaceTexture(Landroid/graphics/SurfaceTexture;)Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;
    .locals 4

    .line 882
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V

    .line 883
    new-instance v0, Lio/flutter/view/FlutterView$SurfaceTextureRegistryEntry;

    iget-object v1, p0, Lio/flutter/view/FlutterView;->nextTextureId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 884
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v1

    invoke-direct {v0, p0, v1, v2, p1}, Lio/flutter/view/FlutterView$SurfaceTextureRegistryEntry;-><init>(Lio/flutter/view/FlutterView;JLandroid/graphics/SurfaceTexture;)V

    .line 885
    iget-object p1, p0, Lio/flutter/view/FlutterView;->mNativeView:Lio/flutter/view/FlutterNativeView;

    invoke-virtual {p1}, Lio/flutter/view/FlutterNativeView;->getFlutterJNI()Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object p1

    invoke-virtual {v0}, Lio/flutter/view/FlutterView$SurfaceTextureRegistryEntry;->id()J

    move-result-wide v1

    invoke-virtual {v0}, Lio/flutter/view/FlutterView$SurfaceTextureRegistryEntry;->textureWrapper()Lio/flutter/embedding/engine/renderer/SurfaceTextureWrapper;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lio/flutter/embedding/engine/FlutterJNI;->registerTexture(JLio/flutter/embedding/engine/renderer/SurfaceTextureWrapper;)V

    return-object v0
.end method

.method public removeFirstFrameListener(Lio/flutter/view/FlutterView$FirstFrameListener;)V
    .locals 1

    .line 347
    iget-object v0, p0, Lio/flutter/view/FlutterView;->mFirstFrameListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method resetAccessibilityTree()V
    .locals 1

    .line 710
    iget-object v0, p0, Lio/flutter/view/FlutterView;->mAccessibilityNodeProvider:Lio/flutter/view/AccessibilityBridge;

    if-eqz v0, :cond_0

    .line 711
    invoke-virtual {v0}, Lio/flutter/view/AccessibilityBridge;->reset()V

    :cond_0
    return-void
.end method

.method public runFromBundle(Lio/flutter/view/FlutterRunArguments;)V
    .locals 1

    .line 718
    invoke-virtual {p0}, Lio/flutter/view/FlutterView;->assertAttached()V

    .line 719
    invoke-direct {p0}, Lio/flutter/view/FlutterView;->preRun()V

    .line 720
    iget-object v0, p0, Lio/flutter/view/FlutterView;->mNativeView:Lio/flutter/view/FlutterNativeView;

    invoke-virtual {v0, p1}, Lio/flutter/view/FlutterNativeView;->runFromBundle(Lio/flutter/view/FlutterRunArguments;)V

    .line 721
    invoke-direct {p0}, Lio/flutter/view/FlutterView;->postRun()V

    return-void
.end method

.method public send(Ljava/lang/String;Ljava/nio/ByteBuffer;)V
    .locals 1

    const/4 v0, 0x0

    .line 843
    invoke-virtual {p0, p1, p2, v0}, Lio/flutter/view/FlutterView;->send(Ljava/lang/String;Ljava/nio/ByteBuffer;Lio/flutter/plugin/common/BinaryMessenger$BinaryReply;)V

    return-void
.end method

.method public send(Ljava/lang/String;Ljava/nio/ByteBuffer;Lio/flutter/plugin/common/BinaryMessenger$BinaryReply;)V
    .locals 1

    .line 849
    invoke-direct {p0}, Lio/flutter/view/FlutterView;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 850
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "FlutterView.send called on a detached view, channel="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FlutterView"

    invoke-static {p2, p1}, Lio/flutter/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 853
    :cond_0
    iget-object v0, p0, Lio/flutter/view/FlutterView;->mNativeView:Lio/flutter/view/FlutterNativeView;

    invoke-virtual {v0, p1, p2, p3}, Lio/flutter/view/FlutterNativeView;->send(Ljava/lang/String;Ljava/nio/ByteBuffer;Lio/flutter/plugin/common/BinaryMessenger$BinaryReply;)V

    return-void
.end method

.method public setInitialRoute(Ljava/lang/String;)V
    .locals 1

    .line 365
    iget-object v0, p0, Lio/flutter/view/FlutterView;->navigationChannel:Lio/flutter/embedding/engine/systemchannels/NavigationChannel;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/engine/systemchannels/NavigationChannel;->setInitialRoute(Ljava/lang/String;)V

    return-void
.end method

.method public setMessageHandler(Ljava/lang/String;Lio/flutter/plugin/common/BinaryMessenger$BinaryMessageHandler;)V
    .locals 1

    .line 859
    iget-object v0, p0, Lio/flutter/view/FlutterView;->mNativeView:Lio/flutter/view/FlutterNativeView;

    invoke-virtual {v0, p1, p2}, Lio/flutter/view/FlutterNativeView;->setMessageHandler(Ljava/lang/String;Lio/flutter/plugin/common/BinaryMessenger$BinaryMessageHandler;)V

    return-void
.end method

.method public setMessageHandler(Ljava/lang/String;Lio/flutter/plugin/common/BinaryMessenger$BinaryMessageHandler;Lio/flutter/plugin/common/BinaryMessenger$TaskQueue;)V
    .locals 1

    .line 865
    iget-object v0, p0, Lio/flutter/view/FlutterView;->mNativeView:Lio/flutter/view/FlutterNativeView;

    invoke-virtual {v0, p1, p2, p3}, Lio/flutter/view/FlutterNativeView;->setMessageHandler(Ljava/lang/String;Lio/flutter/plugin/common/BinaryMessenger$BinaryMessageHandler;Lio/flutter/plugin/common/BinaryMessenger$TaskQueue;)V

    return-void
.end method
