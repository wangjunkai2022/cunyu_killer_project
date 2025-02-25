.class Lio/flutter/embedding/engine/dart/DartMessenger$SerialTaskQueue;
.super Ljava/lang/Object;
.source "DartMessenger.java"

# interfaces
.implements Lio/flutter/embedding/engine/dart/DartMessenger$DartMessengerTaskQueue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/dart/DartMessenger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SerialTaskQueue"
.end annotation


# instance fields
.field private final executor:Ljava/util/concurrent/ExecutorService;

.field private final isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final queue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput-object p1, p0, Lio/flutter/embedding/engine/dart/DartMessenger$SerialTaskQueue;->executor:Ljava/util/concurrent/ExecutorService;

    .line 154
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lio/flutter/embedding/engine/dart/DartMessenger$SerialTaskQueue;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 155
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/flutter/embedding/engine/dart/DartMessenger$SerialTaskQueue;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private flush()V
    .locals 3

    .line 169
    iget-object v0, p0, Lio/flutter/embedding/engine/dart/DartMessenger$SerialTaskQueue;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 171
    :try_start_0
    iget-object v0, p0, Lio/flutter/embedding/engine/dart/DartMessenger$SerialTaskQueue;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 173
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    :cond_0
    iget-object v0, p0, Lio/flutter/embedding/engine/dart/DartMessenger$SerialTaskQueue;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 177
    iget-object v0, p0, Lio/flutter/embedding/engine/dart/DartMessenger$SerialTaskQueue;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 179
    iget-object v0, p0, Lio/flutter/embedding/engine/dart/DartMessenger$SerialTaskQueue;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lio/flutter/embedding/engine/dart/-$$Lambda$DartMessenger$SerialTaskQueue$O8TwszznzpMFqoLY-EwrfKO4uC0;

    invoke-direct {v1, p0}, Lio/flutter/embedding/engine/dart/-$$Lambda$DartMessenger$SerialTaskQueue$O8TwszznzpMFqoLY-EwrfKO4uC0;-><init>(Lio/flutter/embedding/engine/dart/DartMessenger$SerialTaskQueue;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 176
    iget-object v2, p0, Lio/flutter/embedding/engine/dart/DartMessenger$SerialTaskQueue;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 177
    iget-object v1, p0, Lio/flutter/embedding/engine/dart/DartMessenger$SerialTaskQueue;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 179
    iget-object v1, p0, Lio/flutter/embedding/engine/dart/DartMessenger$SerialTaskQueue;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lio/flutter/embedding/engine/dart/-$$Lambda$DartMessenger$SerialTaskQueue$O8TwszznzpMFqoLY-EwrfKO4uC0;

    invoke-direct {v2, p0}, Lio/flutter/embedding/engine/dart/-$$Lambda$DartMessenger$SerialTaskQueue$O8TwszznzpMFqoLY-EwrfKO4uC0;-><init>(Lio/flutter/embedding/engine/dart/DartMessenger$SerialTaskQueue;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 184
    :cond_1
    throw v0

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public dispatch(Ljava/lang/Runnable;)V
    .locals 1

    .line 160
    iget-object v0, p0, Lio/flutter/embedding/engine/dart/DartMessenger$SerialTaskQueue;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 161
    iget-object p1, p0, Lio/flutter/embedding/engine/dart/DartMessenger$SerialTaskQueue;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lio/flutter/embedding/engine/dart/-$$Lambda$DartMessenger$SerialTaskQueue$j5tXW8vV8VVZyrJZi8V7g1aYvD0;

    invoke-direct {v0, p0}, Lio/flutter/embedding/engine/dart/-$$Lambda$DartMessenger$SerialTaskQueue$j5tXW8vV8VVZyrJZi8V7g1aYvD0;-><init>(Lio/flutter/embedding/engine/dart/DartMessenger$SerialTaskQueue;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$dispatch$0$DartMessenger$SerialTaskQueue()V
    .locals 0

    .line 163
    invoke-direct {p0}, Lio/flutter/embedding/engine/dart/DartMessenger$SerialTaskQueue;->flush()V

    return-void
.end method

.method public synthetic lambda$flush$1$DartMessenger$SerialTaskQueue()V
    .locals 0

    .line 181
    invoke-direct {p0}, Lio/flutter/embedding/engine/dart/DartMessenger$SerialTaskQueue;->flush()V

    return-void
.end method
