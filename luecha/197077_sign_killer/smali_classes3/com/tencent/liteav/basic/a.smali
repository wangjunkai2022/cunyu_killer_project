.class public Lcom/tencent/liteav/basic/a;
.super Ljava/lang/Object;
.source "TXLiteAVBasic.java"


# static fields
.field private static a:Lcom/tencent/liteav/TXLiteAVExternalDecoderFactoryInterface;


# direct methods
.method public static declared-synchronized a(Lcom/tencent/liteav/TXLiteAVExternalDecoderFactoryInterface;)V
    .locals 1

    const-class v0, Lcom/tencent/liteav/basic/a;

    monitor-enter v0

    .line 16
    :try_start_0
    sput-object p0, Lcom/tencent/liteav/basic/a;->a:Lcom/tencent/liteav/TXLiteAVExternalDecoderFactoryInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a()Z
    .locals 2

    const-class v0, Lcom/tencent/liteav/basic/a;

    monitor-enter v0

    .line 9
    :try_start_0
    sget-object v1, Lcom/tencent/liteav/basic/a;->a:Lcom/tencent/liteav/TXLiteAVExternalDecoderFactoryInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 10
    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x0

    .line 12
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized b()Lcom/tencent/liteav/TXLiteAVExternalDecoderFactoryInterface;
    .locals 2

    const-class v0, Lcom/tencent/liteav/basic/a;

    monitor-enter v0

    .line 20
    :try_start_0
    sget-object v1, Lcom/tencent/liteav/basic/a;->a:Lcom/tencent/liteav/TXLiteAVExternalDecoderFactoryInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
