.class public interface abstract Lcom/tencent/liteav/videodecoder/b;
.super Ljava/lang/Object;
.source "IVideoDecoder.java"


# virtual methods
.method public abstract GetDecodeCost()I
.end method

.method public abstract config(Landroid/view/Surface;)I
.end method

.method public abstract decode(Lcom/tencent/liteav/basic/structs/TXSNALPacket;)V
.end method

.method public abstract enableLimitDecCache(Z)V
.end method

.method public abstract setListener(Lcom/tencent/liteav/videodecoder/g;)V
.end method

.method public abstract setNotifyListener(Ljava/lang/ref/WeakReference;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tencent/liteav/basic/c/b;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract start(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;ZZ)I
.end method

.method public abstract stop()V
.end method
