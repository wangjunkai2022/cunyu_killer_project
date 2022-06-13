.class public Lio/flutter/embedding/android/FlutterSurfaceView;
.super Landroid/view/SurfaceView;
.source "FlutterSurfaceView.java"

# interfaces
.implements Lio/flutter/embedding/engine/renderer/RenderSurface;


# static fields
.field private static final TAG:Ljava/lang/String; = "FlutterSurfaceView"


# instance fields
.field private flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

.field private final flutterUiDisplayListener:Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;

.field private isAttachedToFlutterRenderer:Z

.field private isPaused:Z

.field private isSurfaceAvailableForRendering:Z

.field private final renderTransparently:Z

.field private final surfaceCallback:Landroid/view/SurfaceHolder$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 100
    invoke-direct {p0, p1, v0, v1}, Lio/flutter/embedding/android/FlutterSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 113
    invoke-direct {p0, p1, p2, v0}, Lio/flutter/embedding/android/FlutterSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V
    .locals 0

    .line 118
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 39
    iput-boolean p1, p0, Lio/flutter/embedding/android/FlutterSurfaceView;->isSurfaceAvailableForRendering:Z

    .line 40
    iput-boolean p1, p0, Lio/flutter/embedding/android/FlutterSurfaceView;->isPaused:Z

    .line 41
    iput-boolean p1, p0, Lio/flutter/embedding/android/FlutterSurfaceView;->isAttachedToFlutterRenderer:Z

    .line 47
    new-instance p1, Lio/flutter/embedding/android/FlutterSurfaceView$1;

    invoke-direct {p1, p0}, Lio/flutter/embedding/android/FlutterSurfaceView$1;-><init>(Lio/flutter/embedding/android/FlutterSurfaceView;)V

    iput-object p1, p0, Lio/flutter/embedding/android/FlutterSurfaceView;->surfaceCallback:Landroid/view/SurfaceHolder$Callback;

    .line 79
    new-instance p1, Lio/flutter/embedding/android/FlutterSurfaceView$2;

    invoke-direct {p1, p0}, Lio/flutter/embedding/android/FlutterSurfaceView$2;-><init>(Lio/flutter/embedding/android/FlutterSurfaceView;)V

    iput-object p1, p0, Lio/flutter/embedding/android/FlutterSurfaceView;->flutterUiDisplayListener:Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;

    .line 119
    iput-boolean p3, p0, Lio/flutter/embedding/android/FlutterSurfaceView;->renderTransparently:Z

    .line 120
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterSurfaceView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 108
    invoke-direct {p0, p1, v0, p2}, Lio/flutter/embedding/android/FlutterSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    return-void
.end method

.method static synthetic access$002(Lio/flutter/embedding/android/FlutterSurfaceView;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lio/flutter/embedding/android/FlutterSurfaceView;->isSurfaceAvailableForRendering:Z

    return p1
.end method

.method static synthetic access$100(Lio/flutter/embedding/android/FlutterSurfaceView;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lio/flutter/embedding/android/FlutterSurfaceView;->isAttachedToFlutterRenderer:Z

    return p0
.end method

.method static synthetic access$200(Lio/flutter/embedding/android/FlutterSurfaceView;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterSurfaceView;->connectSurfaceToRenderer()V

    return-void
.end method

.method static synthetic access$300(Lio/flutter/embedding/android/FlutterSurfaceView;II)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lio/flutter/embedding/android/FlutterSurfaceView;->changeSurfaceSize(II)V

    return-void
.end method

.method static synthetic access$400(Lio/flutter/embedding/android/FlutterSurfaceView;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterSurfaceView;->disconnectSurfaceFromRenderer()V

    return-void
.end method

.method static synthetic access$500(Lio/flutter/embedding/android/FlutterSurfaceView;)Lio/flutter/embedding/engine/renderer/FlutterRenderer;
    .locals 0

    .line 35
    iget-object p0, p0, Lio/flutter/embedding/android/FlutterSurfaceView;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    return-object p0
.end method

.method private changeSurfaceSize(II)V
    .locals 2

    .line 270
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterSurfaceView;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    if-eqz v0, :cond_0

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Notifying FlutterRenderer that Android surface size has changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlutterSurfaceView"

    invoke-static {v1, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterSurfaceView;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    invoke-virtual {v0, p1, p2}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->surfaceChanged(II)V

    return-void

    .line 271
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "changeSurfaceSize() should only be called when flutterRenderer is non-null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private connectSurfaceToRenderer()V
    .locals 3

    .line 255
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterSurfaceView;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterSurfaceView;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    iget-boolean v2, p0, Lio/flutter/embedding/android/FlutterSurfaceView;->isPaused:Z

    invoke-virtual {v0, v1, v2}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->startRenderingToSurface(Landroid/view/Surface;Z)V

    return-void

    .line 256
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "connectSurfaceToRenderer() should only be called when flutterRenderer and getHolder() are non-null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private disconnectSurfaceFromRenderer()V
    .locals 2

    .line 286
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterSurfaceView;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {v0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->stopRenderingToSurface()V

    return-void

    .line 287
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "disconnectSurfaceFromRenderer() should only be called when flutterRenderer is non-null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private init()V
    .locals 2

    .line 126
    iget-boolean v0, p0, Lio/flutter/embedding/android/FlutterSurfaceView;->renderTransparently:Z

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    const/4 v0, 0x1

    .line 128
    invoke-virtual {p0, v0}, Lio/flutter/embedding/android/FlutterSurfaceView;->setZOrderOnTop(Z)V

    .line 133
    :cond_0
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterSurfaceView;->surfaceCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    const/4 v0, 0x0

    .line 137
    invoke-virtual {p0, v0}, Lio/flutter/embedding/android/FlutterSurfaceView;->setAlpha(F)V

    return-void
.end method


# virtual methods
.method public attachToRenderer(Lio/flutter/embedding/engine/renderer/FlutterRenderer;)V
    .locals 3

    const-string v0, "FlutterSurfaceView"

    const-string v1, "Attaching to FlutterRenderer."

    .line 182
    invoke-static {v0, v1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterSurfaceView;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    if-eqz v1, :cond_0

    const-string v1, "Already connected to a FlutterRenderer. Detaching from old one and attaching to new one."

    .line 184
    invoke-static {v0, v1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterSurfaceView;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    invoke-virtual {v1}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->stopRenderingToSurface()V

    .line 188
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterSurfaceView;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    iget-object v2, p0, Lio/flutter/embedding/android/FlutterSurfaceView;->flutterUiDisplayListener:Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;

    invoke-virtual {v1, v2}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->removeIsDisplayingFlutterUiListener(Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;)V

    .line 191
    :cond_0
    iput-object p1, p0, Lio/flutter/embedding/android/FlutterSurfaceView;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    const/4 p1, 0x1

    .line 192
    iput-boolean p1, p0, Lio/flutter/embedding/android/FlutterSurfaceView;->isAttachedToFlutterRenderer:Z

    .line 194
    iget-object p1, p0, Lio/flutter/embedding/android/FlutterSurfaceView;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterSurfaceView;->flutterUiDisplayListener:Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;

    invoke-virtual {p1, v1}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->addIsDisplayingFlutterUiListener(Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;)V

    .line 198
    iget-boolean p1, p0, Lio/flutter/embedding/android/FlutterSurfaceView;->isSurfaceAvailableForRendering:Z

    if-eqz p1, :cond_1

    const-string p1, "Surface is available for rendering. Connecting FlutterRenderer to Android surface."

    .line 199
    invoke-static {v0, p1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterSurfaceView;->connectSurfaceToRenderer()V

    :cond_1
    const/4 p1, 0x0

    .line 204
    iput-boolean p1, p0, Lio/flutter/embedding/android/FlutterSurfaceView;->isPaused:Z

    return-void
.end method

.method public detachFromRenderer()V
    .locals 2

    .line 215
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterSurfaceView;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    const-string v1, "FlutterSurfaceView"

    if-eqz v0, :cond_1

    .line 220
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterSurfaceView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "Disconnecting FlutterRenderer from Android surface."

    .line 221
    invoke-static {v1, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterSurfaceView;->disconnectSurfaceFromRenderer()V

    :cond_0
    const/4 v0, 0x0

    .line 226
    invoke-virtual {p0, v0}, Lio/flutter/embedding/android/FlutterSurfaceView;->setAlpha(F)V

    .line 228
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterSurfaceView;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterSurfaceView;->flutterUiDisplayListener:Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->removeIsDisplayingFlutterUiListener(Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;)V

    const/4 v0, 0x0

    .line 230
    iput-object v0, p0, Lio/flutter/embedding/android/FlutterSurfaceView;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    const/4 v0, 0x0

    .line 231
    iput-boolean v0, p0, Lio/flutter/embedding/android/FlutterSurfaceView;->isAttachedToFlutterRenderer:Z

    goto :goto_0

    :cond_1
    const-string v0, "detachFromRenderer() invoked when no FlutterRenderer was attached."

    .line 233
    invoke-static {v1, v0}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 9

    .line 148
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterSurfaceView;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 152
    invoke-virtual {p0, v0}, Lio/flutter/embedding/android/FlutterSurfaceView;->getLocationInWindow([I)V

    .line 153
    aget v3, v0, v1

    const/4 v8, 0x1

    aget v4, v0, v8

    aget v1, v0, v1

    .line 156
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterSurfaceView;->getRight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterSurfaceView;->getLeft()I

    move-result v2

    sub-int v5, v1, v2

    aget v0, v0, v8

    .line 157
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterSurfaceView;->getBottom()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterSurfaceView;->getTop()I

    move-result v1

    sub-int v6, v0, v1

    sget-object v7, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v2, p1

    .line 153
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    return v8
.end method

.method public getAttachedRenderer()Lio/flutter/embedding/engine/renderer/FlutterRenderer;
    .locals 1

    .line 165
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterSurfaceView;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    return-object v0
.end method

.method public pause()V
    .locals 2

    .line 242
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterSurfaceView;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 245
    iput-object v0, p0, Lio/flutter/embedding/android/FlutterSurfaceView;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    const/4 v0, 0x1

    .line 246
    iput-boolean v0, p0, Lio/flutter/embedding/android/FlutterSurfaceView;->isPaused:Z

    const/4 v0, 0x0

    .line 247
    iput-boolean v0, p0, Lio/flutter/embedding/android/FlutterSurfaceView;->isAttachedToFlutterRenderer:Z

    goto :goto_0

    :cond_0
    const-string v0, "FlutterSurfaceView"

    const-string v1, "pause() invoked when no FlutterRenderer was attached."

    .line 249
    invoke-static {v0, v1}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
