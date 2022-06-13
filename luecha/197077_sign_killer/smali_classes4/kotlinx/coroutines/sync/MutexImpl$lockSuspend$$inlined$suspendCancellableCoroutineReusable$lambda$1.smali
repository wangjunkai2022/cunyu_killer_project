.class final Lkotlinx/coroutines/sync/MutexImpl$lockSuspend$$inlined$suspendCancellableCoroutineReusable$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Mutex.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/sync/MutexImpl;->lockSuspend(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004\u00a8\u0006\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "invoke",
        "kotlinx/coroutines/sync/MutexImpl$lockSuspend$2$1$1",
        "kotlinx/coroutines/sync/MutexImpl$$special$$inlined$loop$lambda$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field final synthetic $cont$inlined:Lkotlinx/coroutines/CancellableContinuation;

.field final synthetic $owner$inlined:Ljava/lang/Object;

.field final synthetic $waiter$inlined:Lkotlinx/coroutines/sync/MutexImpl$LockCont;

.field final synthetic this$0:Lkotlinx/coroutines/sync/MutexImpl;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/CancellableContinuation;Lkotlinx/coroutines/sync/MutexImpl$LockCont;Lkotlinx/coroutines/sync/MutexImpl;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/sync/MutexImpl$lockSuspend$$inlined$suspendCancellableCoroutineReusable$lambda$1;->$cont$inlined:Lkotlinx/coroutines/CancellableContinuation;

    iput-object p2, p0, Lkotlinx/coroutines/sync/MutexImpl$lockSuspend$$inlined$suspendCancellableCoroutineReusable$lambda$1;->$waiter$inlined:Lkotlinx/coroutines/sync/MutexImpl$LockCont;

    iput-object p3, p0, Lkotlinx/coroutines/sync/MutexImpl$lockSuspend$$inlined$suspendCancellableCoroutineReusable$lambda$1;->this$0:Lkotlinx/coroutines/sync/MutexImpl;

    iput-object p4, p0, Lkotlinx/coroutines/sync/MutexImpl$lockSuspend$$inlined$suspendCancellableCoroutineReusable$lambda$1;->$owner$inlined:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 144
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/sync/MutexImpl$lockSuspend$$inlined$suspendCancellableCoroutineReusable$lambda$1;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 1

    .line 205
    iget-object p1, p0, Lkotlinx/coroutines/sync/MutexImpl$lockSuspend$$inlined$suspendCancellableCoroutineReusable$lambda$1;->this$0:Lkotlinx/coroutines/sync/MutexImpl;

    iget-object v0, p0, Lkotlinx/coroutines/sync/MutexImpl$lockSuspend$$inlined$suspendCancellableCoroutineReusable$lambda$1;->$owner$inlined:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/sync/MutexImpl;->unlock(Ljava/lang/Object;)V

    return-void
.end method
