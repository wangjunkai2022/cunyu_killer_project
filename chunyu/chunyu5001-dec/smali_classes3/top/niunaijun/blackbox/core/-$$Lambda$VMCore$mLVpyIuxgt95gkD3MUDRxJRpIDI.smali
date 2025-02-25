.class public final synthetic Ltop/niunaijun/blackbox/core/-$$Lambda$VMCore$mLVpyIuxgt95gkD3MUDRxJRpIDI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:Ljava/io/File;

.field public final synthetic f$2:Ltop/niunaijun/blackbox/entity/dump/DumpResult;

.field public final synthetic f$3:Ljava/util/List;

.field public final synthetic f$4:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic f$5:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(JLjava/io/File;Ltop/niunaijun/blackbox/entity/dump/DumpResult;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Ltop/niunaijun/blackbox/core/-$$Lambda$VMCore$mLVpyIuxgt95gkD3MUDRxJRpIDI;->f$0:J

    iput-object p3, p0, Ltop/niunaijun/blackbox/core/-$$Lambda$VMCore$mLVpyIuxgt95gkD3MUDRxJRpIDI;->f$1:Ljava/io/File;

    iput-object p4, p0, Ltop/niunaijun/blackbox/core/-$$Lambda$VMCore$mLVpyIuxgt95gkD3MUDRxJRpIDI;->f$2:Ltop/niunaijun/blackbox/entity/dump/DumpResult;

    iput-object p5, p0, Ltop/niunaijun/blackbox/core/-$$Lambda$VMCore$mLVpyIuxgt95gkD3MUDRxJRpIDI;->f$3:Ljava/util/List;

    iput-object p6, p0, Ltop/niunaijun/blackbox/core/-$$Lambda$VMCore$mLVpyIuxgt95gkD3MUDRxJRpIDI;->f$4:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p7, p0, Ltop/niunaijun/blackbox/core/-$$Lambda$VMCore$mLVpyIuxgt95gkD3MUDRxJRpIDI;->f$5:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-wide v0, p0, Ltop/niunaijun/blackbox/core/-$$Lambda$VMCore$mLVpyIuxgt95gkD3MUDRxJRpIDI;->f$0:J

    iget-object v2, p0, Ltop/niunaijun/blackbox/core/-$$Lambda$VMCore$mLVpyIuxgt95gkD3MUDRxJRpIDI;->f$1:Ljava/io/File;

    iget-object v3, p0, Ltop/niunaijun/blackbox/core/-$$Lambda$VMCore$mLVpyIuxgt95gkD3MUDRxJRpIDI;->f$2:Ltop/niunaijun/blackbox/entity/dump/DumpResult;

    iget-object v4, p0, Ltop/niunaijun/blackbox/core/-$$Lambda$VMCore$mLVpyIuxgt95gkD3MUDRxJRpIDI;->f$3:Ljava/util/List;

    iget-object v5, p0, Ltop/niunaijun/blackbox/core/-$$Lambda$VMCore$mLVpyIuxgt95gkD3MUDRxJRpIDI;->f$4:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v6, p0, Ltop/niunaijun/blackbox/core/-$$Lambda$VMCore$mLVpyIuxgt95gkD3MUDRxJRpIDI;->f$5:Ljava/util/concurrent/CountDownLatch;

    invoke-static/range {v0 .. v6}, Ltop/niunaijun/blackbox/core/VMCore;->lambda$cookieDumpDex$0(JLjava/io/File;Ltop/niunaijun/blackbox/entity/dump/DumpResult;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method
