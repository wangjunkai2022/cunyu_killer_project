.class public Lio/flutter/embedding/engine/renderer/SurfaceTextureWrapper;
.super Ljava/lang/Object;
.source "SurfaceTextureWrapper.java"


# instance fields
.field private attached:Z

.field private released:Z

.field private surfaceTexture:Landroid/graphics/SurfaceTexture;


# direct methods
.method public constructor <init>(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lio/flutter/embedding/engine/renderer/SurfaceTextureWrapper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Lio/flutter/embedding/engine/renderer/SurfaceTextureWrapper;->released:Z

    return-void
.end method


# virtual methods
.method public attachToGLContext(I)V
    .locals 1

    .line 57
    monitor-enter p0

    .line 58
    :try_start_0
    iget-boolean v0, p0, Lio/flutter/embedding/engine/renderer/SurfaceTextureWrapper;->released:Z

    if-eqz v0, :cond_0

    .line 59
    monitor-exit p0

    return-void

    .line 68
    :cond_0
    iget-boolean v0, p0, Lio/flutter/embedding/engine/renderer/SurfaceTextureWrapper;->attached:Z

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/SurfaceTextureWrapper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V

    .line 71
    :cond_1
    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/SurfaceTextureWrapper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p1}, Landroid/graphics/SurfaceTexture;->attachToGLContext(I)V

    const/4 p1, 0x1

    .line 72
    iput-boolean p1, p0, Lio/flutter/embedding/engine/renderer/SurfaceTextureWrapper;->attached:Z

    .line 73
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public detachFromGLContext()V
    .locals 1

    .line 79
    monitor-enter p0

    .line 80
    :try_start_0
    iget-boolean v0, p0, Lio/flutter/embedding/engine/renderer/SurfaceTextureWrapper;->attached:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/flutter/embedding/engine/renderer/SurfaceTextureWrapper;->released:Z

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/SurfaceTextureWrapper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lio/flutter/embedding/engine/renderer/SurfaceTextureWrapper;->attached:Z

    .line 84
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getTransformMatrix([F)V
    .locals 1

    .line 90
    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/SurfaceTextureWrapper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    return-void
.end method

.method public release()V
    .locals 1

    .line 45
    monitor-enter p0

    .line 46
    :try_start_0
    iget-boolean v0, p0, Lio/flutter/embedding/engine/renderer/SurfaceTextureWrapper;->released:Z

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/SurfaceTextureWrapper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lio/flutter/embedding/engine/renderer/SurfaceTextureWrapper;->released:Z

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lio/flutter/embedding/engine/renderer/SurfaceTextureWrapper;->attached:Z

    .line 51
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public surfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .line 31
    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/SurfaceTextureWrapper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public updateTexImage()V
    .locals 1

    .line 37
    monitor-enter p0

    .line 38
    :try_start_0
    iget-boolean v0, p0, Lio/flutter/embedding/engine/renderer/SurfaceTextureWrapper;->released:Z

    if-nez v0, :cond_0

    .line 39
    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/SurfaceTextureWrapper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 41
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
