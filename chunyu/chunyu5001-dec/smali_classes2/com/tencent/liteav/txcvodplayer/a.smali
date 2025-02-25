.class public interface abstract Lcom/tencent/liteav/txcvodplayer/a;
.super Ljava/lang/Object;
.source "IRenderView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/txcvodplayer/a$a;,
        Lcom/tencent/liteav/txcvodplayer/a$b;
    }
.end annotation


# virtual methods
.method public abstract addRenderCallback(Lcom/tencent/liteav/txcvodplayer/a$a;)V
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public abstract removeRenderCallback(Lcom/tencent/liteav/txcvodplayer/a$a;)V
.end method

.method public abstract setAspectRatio(I)V
.end method

.method public abstract setVideoRotation(I)V
.end method

.method public abstract setVideoSampleAspectRatio(II)V
.end method

.method public abstract setVideoSize(II)V
.end method

.method public abstract shouldWaitForResize()Z
.end method
