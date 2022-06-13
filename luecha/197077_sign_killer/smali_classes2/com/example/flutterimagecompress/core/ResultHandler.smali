.class public abstract Lcom/example/flutterimagecompress/core/ResultHandler;
.super Ljava/lang/Object;
.source "ResultHandler.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/flutterimagecompress/core/ResultHandler$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008&\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\u0001J&\u0010\n\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u000c2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0001R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/example/flutterimagecompress/core/ResultHandler;",
        "",
        "result",
        "Lio/flutter/plugin/common/MethodChannel$Result;",
        "(Lio/flutter/plugin/common/MethodChannel$Result;)V",
        "isReply",
        "",
        "reply",
        "",
        "any",
        "replyError",
        "code",
        "",
        "message",
        "obj",
        "Companion",
        "flutter_image_compress_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/example/flutterimagecompress/core/ResultHandler$Companion;

.field private static final handler:Landroid/os/Handler;

.field private static final threadPool:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private isReply:Z

.field private result:Lio/flutter/plugin/common/MethodChannel$Result;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/example/flutterimagecompress/core/ResultHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/example/flutterimagecompress/core/ResultHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/example/flutterimagecompress/core/ResultHandler;->Companion:Lcom/example/flutterimagecompress/core/ResultHandler$Companion;

    .line 13
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/example/flutterimagecompress/core/ResultHandler;->handler:Landroid/os/Handler;

    const/16 v0, 0x8

    .line 16
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const-string v1, "newFixedThreadPool(8)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/example/flutterimagecompress/core/ResultHandler;->threadPool:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/example/flutterimagecompress/core/ResultHandler;->result:Lio/flutter/plugin/common/MethodChannel$Result;

    return-void
.end method

.method public static final synthetic access$getThreadPool$cp()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 9
    sget-object v0, Lcom/example/flutterimagecompress/core/ResultHandler;->threadPool:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static final getThreadPool()Ljava/util/concurrent/ExecutorService;
    .locals 1

    sget-object v0, Lcom/example/flutterimagecompress/core/ResultHandler;->Companion:Lcom/example/flutterimagecompress/core/ResultHandler$Companion;

    invoke-virtual {v0}, Lcom/example/flutterimagecompress/core/ResultHandler$Companion;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$P1Hm55vc1xPCht2mzCVjY-jMYto(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/example/flutterimagecompress/core/ResultHandler;->replyError$lambda-1(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$XZIUhs0LoF8is4lTjiov0oczSBw(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/example/flutterimagecompress/core/ResultHandler;->reply$lambda-0(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V

    return-void
.end method

.method private static final reply$lambda-0(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V
    .locals 0

    if-nez p0, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    invoke-interface {p0, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static synthetic replyError$default(Lcom/example/flutterimagecompress/core/ResultHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 1

    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    .line 33
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/example/flutterimagecompress/core/ResultHandler;->replyError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: replyError"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final replyError$lambda-1(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p0, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final reply(Ljava/lang/Object;)V
    .locals 3

    .line 22
    iget-boolean v0, p0, Lcom/example/flutterimagecompress/core/ResultHandler;->isReply:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/example/flutterimagecompress/core/ResultHandler;->isReply:Z

    .line 26
    iget-object v0, p0, Lcom/example/flutterimagecompress/core/ResultHandler;->result:Lio/flutter/plugin/common/MethodChannel$Result;

    const/4 v1, 0x0

    .line 27
    iput-object v1, p0, Lcom/example/flutterimagecompress/core/ResultHandler;->result:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 28
    sget-object v1, Lcom/example/flutterimagecompress/core/ResultHandler;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/example/flutterimagecompress/core/-$$Lambda$ResultHandler$XZIUhs0LoF8is4lTjiov0oczSBw;

    invoke-direct {v2, v0, p1}, Lcom/example/flutterimagecompress/core/-$$Lambda$ResultHandler$XZIUhs0LoF8is4lTjiov0oczSBw;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final replyError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-boolean v0, p0, Lcom/example/flutterimagecompress/core/ResultHandler;->isReply:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/example/flutterimagecompress/core/ResultHandler;->isReply:Z

    .line 38
    iget-object v0, p0, Lcom/example/flutterimagecompress/core/ResultHandler;->result:Lio/flutter/plugin/common/MethodChannel$Result;

    const/4 v1, 0x0

    .line 39
    iput-object v1, p0, Lcom/example/flutterimagecompress/core/ResultHandler;->result:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 40
    sget-object v1, Lcom/example/flutterimagecompress/core/ResultHandler;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/example/flutterimagecompress/core/-$$Lambda$ResultHandler$P1Hm55vc1xPCht2mzCVjY-jMYto;

    invoke-direct {v2, v0, p1, p2, p3}, Lcom/example/flutterimagecompress/core/-$$Lambda$ResultHandler$P1Hm55vc1xPCht2mzCVjY-jMYto;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
