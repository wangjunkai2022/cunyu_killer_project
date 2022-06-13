.class public final Lkotlinx/coroutines/CoroutineContextKt;
.super Ljava/lang/Object;
.source "CoroutineContext.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a8\u0010\u0006\u001a\u0002H\u0007\"\u0004\u0008\u0000\u0010\u00072\n\u0010\u0008\u001a\u0006\u0012\u0002\u0008\u00030\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u0002H\u00070\rH\u0080\u0008\u00a2\u0006\u0002\u0010\u000e\u001a4\u0010\u000f\u001a\u0002H\u0007\"\u0004\u0008\u0000\u0010\u00072\u0006\u0010\u0010\u001a\u00020\u00032\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u0002H\u00070\rH\u0080\u0008\u00a2\u0006\u0002\u0010\u0011\u001a\u000c\u0010\u0012\u001a\u00020\u0003*\u00020\u0003H\u0002\u001a\u0014\u0010\u0013\u001a\u00020\u0003*\u00020\u00142\u0006\u0010\u0010\u001a\u00020\u0003H\u0007\u001a\u0013\u0010\u0015\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0016*\u00020\u0017H\u0080\u0010\u001a(\u0010\u0018\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0016*\u0006\u0012\u0002\u0008\u00030\t2\u0006\u0010\u0010\u001a\u00020\u00032\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u000bH\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u00038@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u001a"
    }
    d2 = {
        "DEBUG_THREAD_NAME_SEPARATOR",
        "",
        "coroutineName",
        "Lkotlin/coroutines/CoroutineContext;",
        "getCoroutineName",
        "(Lkotlin/coroutines/CoroutineContext;)Ljava/lang/String;",
        "withContinuationContext",
        "T",
        "continuation",
        "Lkotlin/coroutines/Continuation;",
        "countOrElement",
        "",
        "block",
        "Lkotlin/Function0;",
        "(Lkotlin/coroutines/Continuation;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "withCoroutineContext",
        "context",
        "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "foldCopiesForChildCoroutine",
        "newCoroutineContext",
        "Lkotlinx/coroutines/CoroutineScope;",
        "undispatchedCompletion",
        "Lkotlinx/coroutines/UndispatchedCoroutine;",
        "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;",
        "updateUndispatchedCompletion",
        "oldValue",
        "kotlinx-coroutines-core"
    }
    k = 0x2
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final DEBUG_THREAD_NAME_SEPARATOR:Ljava/lang/String; = " @"


# direct methods
.method private static final foldCopiesForChildCoroutine(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;
    .locals 2

    const/4 v0, 0x0

    .line 35
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/CoroutineContextKt$foldCopiesForChildCoroutine$hasToCopy$1;->INSTANCE:Lkotlinx/coroutines/CoroutineContextKt$foldCopiesForChildCoroutine$hasToCopy$1;

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-interface {p0, v0, v1}, Lkotlin/coroutines/CoroutineContext;->fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 39
    :cond_0
    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    sget-object v1, Lkotlinx/coroutines/CoroutineContextKt$foldCopiesForChildCoroutine$1;->INSTANCE:Lkotlinx/coroutines/CoroutineContextKt$foldCopiesForChildCoroutine$1;

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-interface {p0, v0, v1}, Lkotlin/coroutines/CoroutineContext;->fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/coroutines/CoroutineContext;

    return-object p0
.end method

.method public static final getCoroutineName(Lkotlin/coroutines/CoroutineContext;)Ljava/lang/String;
    .locals 2

    .line 153
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getDEBUG()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 154
    :cond_0
    sget-object v0, Lkotlinx/coroutines/CoroutineId;->Key:Lkotlinx/coroutines/CoroutineId$Key;

    check-cast v0, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {p0, v0}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CoroutineId;

    if-nez v0, :cond_1

    return-object v1

    .line 155
    :cond_1
    sget-object v1, Lkotlinx/coroutines/CoroutineName;->Key:Lkotlinx/coroutines/CoroutineName$Key;

    check-cast v1, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {p0, v1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/CoroutineName;

    const-string v1, "coroutine"

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lkotlinx/coroutines/CoroutineName;->getName()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    move-object v1, p0

    .line 156
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x23

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lkotlinx/coroutines/CoroutineId;->getId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final newCoroutineContext(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;
    .locals 2

    .line 19
    invoke-interface {p0}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    invoke-static {p0}, Lkotlinx/coroutines/CoroutineContextKt;->foldCopiesForChildCoroutine(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    invoke-interface {p0, p1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    .line 20
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getDEBUG()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lkotlinx/coroutines/CoroutineId;

    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getCOROUTINE_ID()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lkotlinx/coroutines/CoroutineId;-><init>(J)V

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    invoke-interface {p0, p1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p0

    .line 21
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    if-eq p0, v0, :cond_1

    sget-object v0, Lkotlin/coroutines/ContinuationInterceptor;->Key:Lkotlin/coroutines/ContinuationInterceptor$Key;

    check-cast v0, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {p0, v0}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object p0

    if-nez p0, :cond_1

    .line 22
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p0

    check-cast p0, Lkotlin/coroutines/CoroutineContext;

    invoke-interface {p1, p0}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public static final undispatchedCompletion(Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Lkotlinx/coroutines/UndispatchedCoroutine;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;",
            ")",
            "Lkotlinx/coroutines/UndispatchedCoroutine<",
            "*>;"
        }
    .end annotation

    .line 101
    :cond_0
    instance-of v0, p0, Lkotlinx/coroutines/DispatchedCoroutine;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return-object v1

    .line 102
    :cond_1
    invoke-interface {p0}, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;->getCallerFrame()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v1

    .line 104
    :cond_2
    instance-of v0, p0, Lkotlinx/coroutines/UndispatchedCoroutine;

    if-eqz v0, :cond_0

    check-cast p0, Lkotlinx/coroutines/UndispatchedCoroutine;

    return-object p0
.end method

.method public static final updateUndispatchedCompletion(Lkotlin/coroutines/Continuation;Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Lkotlinx/coroutines/UndispatchedCoroutine;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "*>;",
            "Lkotlin/coroutines/CoroutineContext;",
            "Ljava/lang/Object;",
            ")",
            "Lkotlinx/coroutines/UndispatchedCoroutine<",
            "*>;"
        }
    .end annotation

    .line 78
    instance-of v0, p0, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 91
    :cond_0
    sget-object v0, Lkotlinx/coroutines/UndispatchedMarker;->INSTANCE:Lkotlinx/coroutines/UndispatchedMarker;

    check-cast v0, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {p1, v0}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    return-object v1

    .line 93
    :cond_2
    check-cast p0, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    invoke-static {p0}, Lkotlinx/coroutines/CoroutineContextKt;->undispatchedCompletion(Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Lkotlinx/coroutines/UndispatchedCoroutine;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_1

    .line 94
    :cond_3
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/UndispatchedCoroutine;->saveThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    :goto_1
    return-object p0
.end method

.method public static final withContinuationContext(Lkotlin/coroutines/Continuation;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/coroutines/Continuation<",
            "*>;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 60
    invoke-interface {p0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 61
    invoke-static {v0, p1}, Lkotlinx/coroutines/internal/ThreadContextKt;->updateThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 62
    sget-object v1, Lkotlinx/coroutines/internal/ThreadContextKt;->NO_THREAD_ELEMENTS:Lkotlinx/coroutines/internal/Symbol;

    if-eq p1, v1, :cond_0

    .line 64
    invoke-static {p0, v0, p1}, Lkotlinx/coroutines/CoroutineContextKt;->updateUndispatchedCompletion(Lkotlin/coroutines/Continuation;Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Lkotlinx/coroutines/UndispatchedCoroutine;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 66
    check-cast p0, Lkotlinx/coroutines/UndispatchedCoroutine;

    :goto_0
    const/4 v1, 0x1

    .line 69
    :try_start_0
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    if-eqz p0, :cond_1

    .line 71
    invoke-virtual {p0}, Lkotlinx/coroutines/UndispatchedCoroutine;->clearThreadContext()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 72
    :cond_1
    invoke-static {v0, p1}, Lkotlinx/coroutines/internal/ThreadContextKt;->restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    return-object p2

    :catchall_0
    move-exception p2

    .line 70
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    if-eqz p0, :cond_3

    .line 71
    invoke-virtual {p0}, Lkotlinx/coroutines/UndispatchedCoroutine;->clearThreadContext()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 72
    :cond_3
    invoke-static {v0, p1}, Lkotlinx/coroutines/internal/ThreadContextKt;->restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw p2
.end method

.method public static final withCoroutineContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/coroutines/CoroutineContext;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 48
    invoke-static {p0, p1}, Lkotlinx/coroutines/internal/ThreadContextKt;->updateThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    .line 50
    :try_start_0
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 52
    invoke-static {p0, p1}, Lkotlinx/coroutines/internal/ThreadContextKt;->restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    return-object p2

    :catchall_0
    move-exception p2

    .line 51
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 52
    invoke-static {p0, p1}, Lkotlinx/coroutines/internal/ThreadContextKt;->restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw p2
.end method
