.class public Lio/flutter/embedding/android/FlutterTextureView;
.super Landroid/view/TextureView;
.source "FlutterTextureView.java"

# interfaces
.implements Lio/flutter/embedding/engine/renderer/RenderSurface;


# static fields
.field private static final TAG:Ljava/lang/String; = "FlutterTextureView"


# instance fields
.field private flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

.field private isAttachedToFlutterRenderer:Z

.field private isPaused:Z

.field private isSurfaceAvailableForRendering:Z

.field private renderSurface:Landroid/view/Surface;

.field private final surfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 103
    invoke-direct {p0, p1, v0}, Lio/flutter/embedding/android/FlutterTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 108
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 37
    iput-boolean p1, p0, Lio/flutter/embedding/android/FlutterTextureView;->isSurfaceAvailableForRendering:Z

    .line 38
    iput-boolean p1, p0, Lio/flutter/embedding/android/FlutterTextureView;->isAttachedToFlutterRenderer:Z

    .line 39
    iput-boolean p1, p0, Lio/flutter/embedding/android/FlutterTextureView;->isPaused:Z

    .line 47
    new-instance p1, Lio/flutter/embedding/android/FlutterTextureView$1;

    invoke-direct {p1, p0}, Lio/flutter/embedding/android/FlutterTextureView$1;-><init>(Lio/flutter/embedding/android/FlutterTextureView;)V

    iput-object p1, p0, Lio/flutter/embedding/android/FlutterTextureView;->surfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 109
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterTextureView;->init()V

    return-void
.end method

.method static synthetic access$002(Lio/flutter/embedding/android/FlutterTextureView;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lio/flutter/embedding/android/FlutterTextureView;->isSurfaceAvailableForRendering:Z

    return p1
.end method

.method static synthetic access$100(Lio/flutter/embedding/android/FlutterTextureView;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lio/flutter/embedding/android/FlutterTextureView;->isAttachedToFlutterRenderer:Z

    return p0
.end method

.method static synthetic access$200(Lio/flutter/embedding/android/FlutterTextureView;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterTextureView;->connectSurfaceToRenderer()V

    return-void
.end method

.method static synthetic access$300(Lio/flutter/embedding/android/FlutterTextureView;II)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lio/flutter/embedding/android/FlutterTextureView;->changeSurfaceSize(II)V

    return-void
.end method

.method static synthetic access$400(Lio/flutter/embedding/android/FlutterTextureView;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterTextureView;->disconnectSurfaceFromRenderer()V

    return-void
.end method

.method static synthetic access$500(Lio/flutter/embedding/android/FlutterTextureView;)Landroid/view/Surface;
    .locals 0

    .line 34
    iget-object p0, p0, Lio/flutter/embedding/android/FlutterTextureView;->renderSurface:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic access$502(Lio/flutter/embedding/android/FlutterTextureView;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0

    .line 34
    iput-object p1, p0, Lio/flutter/embedding/android/FlutterTextureView;->renderSurface:Landroid/view/Surface;

    return-object p1
.end method

.method private changeSurfaceSize(II)V
    .locals 2

    .line 228
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterTextureView;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    if-eqz v0, :cond_0

    .line 233
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

    const-string v1, "FlutterTextureView"

    invoke-static {v1, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterTextureView;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    invoke-virtual {v0, p1, p2}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->surfaceChanged(II)V

    return-void

    .line 229
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "changeSurfaceSize() should only be called when flutterRenderer is non-null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private connectSurfaceToRenderer()V
    .locals 3

    .line 210
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterTextureView;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterTextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterTextureView;->renderSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    .line 218
    iput-object v0, p0, Lio/flutter/embedding/android/FlutterTextureView;->renderSurface:Landroid/view/Surface;

    .line 221
    :cond_0
    new-instance v0, Landroid/view/Surface;

    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterTextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterTextureView;->renderSurface:Landroid/view/Surface;

    .line 222
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterTextureView;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterTextureView;->renderSurface:Landroid/view/Surface;

    iget-boolean v2, p0, Lio/flutter/embedding/android/FlutterTextureView;->isPaused:Z

    invoke-virtual {v0, v1, v2}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->startRenderingToSurface(Landroid/view/Surface;Z)V

    const/4 v0, 0x0

    .line 223
    iput-boolean v0, p0, Lio/flutter/embedding/android/FlutterTextureView;->isPaused:Z

    return-void

    .line 211
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "connectSurfaceToRenderer() should only be called when flutterRenderer and getSurfaceTexture() are non-null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private disconnectSurfaceFromRenderer()V
    .locals 2

    .line 244
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterTextureView;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    if-eqz v0, :cond_1

    .line 249
    invoke-virtual {v0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->stopRenderingToSurface()V

    .line 250
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterTextureView;->renderSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    .line 252
    iput-object v0, p0, Lio/flutter/embedding/android/FlutterTextureView;->renderSurface:Landroid/view/Surface;

    :cond_0
    return-void

    .line 245
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "disconnectSurfaceFromRenderer() should only be called when flutterRenderer is non-null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private init()V
    .locals 1

    .line 115
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterTextureView;->surfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {p0, v0}, Lio/flutter/embedding/android/FlutterTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method


# virtual methods
.method public attachToRenderer(Lio/flutter/embedding/engine/renderer/FlutterRenderer;)V
    .locals 2

    const-string v0, "FlutterTextureView"

    const-string v1, "Attaching to FlutterRenderer."

    .line 138
    invoke-static {v0, v1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterTextureView;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    if-eqz v1, :cond_0

    const-string v1, "Already connected to a FlutterRenderer. Detaching from old one and attaching to new one."

    .line 140
    invoke-static {v0, v1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterTextureView;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    invoke-virtual {v1}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->stopRenderingToSurface()V

    .line 146
    :cond_0
    iput-object p1, p0, Lio/flutter/embedding/android/FlutterTextureView;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    const/4 p1, 0x1

    .line 147
    iput-boolean p1, p0, Lio/flutter/embedding/android/FlutterTextureView;->isAttachedToFlutterRenderer:Z

    .line 151
    iget-boolean p1, p0, Lio/flutter/embedding/android/FlutterTextureView;->isSurfaceAvailableForRendering:Z

    if-eqz p1, :cond_1

    const-string p1, "Surface is available for rendering. Connecting FlutterRenderer to Android surface."

    .line 152
    invoke-static {v0, p1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterTextureView;->connectSurfaceToRenderer()V

    :cond_1
    return-void
.end method

.method public detachFromRenderer()V
    .locals 2

    .line 167
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterTextureView;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    const-string v1, "FlutterTextureView"

    if-eqz v0, :cond_1

    .line 172
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterTextureView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "Disconnecting FlutterRenderer from Android surface."

    .line 173
    invoke-static {v1, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterTextureView;->disconnectSurfaceFromRenderer()V

    :cond_0
    const/4 v0, 0x0

    .line 177
    iput-object v0, p0, Lio/flutter/embedding/android/FlutterTextureView;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    const/4 v0, 0x0

    .line 178
    iput-boolean v0, p0, Lio/flutter/embedding/android/FlutterTextureView;->isAttachedToFlutterRenderer:Z

    goto :goto_0

    :cond_1
    const-string v0, "detachFromRenderer() invoked when no FlutterRenderer was attached."

    .line 180
    invoke-static {v1, v0}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getAttachedRenderer()Lio/flutter/embedding/engine/renderer/FlutterRenderer;
    .locals 1

    .line 121
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterTextureView;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    return-object v0
.end method

.method public pause()V
    .locals 2

    .line 189
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterTextureView;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 190
    iput-object v0, p0, Lio/flutter/embedding/android/FlutterTextureView;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    const/4 v0, 0x1

    .line 191
    iput-boolean v0, p0, Lio/flutter/embedding/android/FlutterTextureView;->isPaused:Z

    const/4 v0, 0x0

    .line 192
    iput-boolean v0, p0, Lio/flutter/embedding/android/FlutterTextureView;->isAttachedToFlutterRenderer:Z

    goto :goto_0

    :cond_0
    const-string v0, "FlutterTextureView"

    const-string v1, "pause() invoked when no FlutterRenderer was attached."

    .line 194
    invoke-static {v0, v1}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setRenderSurface(Landroid/view/Surface;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lio/flutter/embedding/android/FlutterTextureView;->renderSurface:Landroid/view/Surface;

    return-void
.end method
