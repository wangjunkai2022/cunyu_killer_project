.class public final synthetic Lkotlinx/coroutines/android/-$$Lambda$HandlerContext$AYyJ57IpsQxcbmCNx8xF14_GmdI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lkotlinx/coroutines/DisposableHandle;


# instance fields
.field private final synthetic f$0:Lkotlinx/coroutines/android/HandlerContext;

.field private final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/android/HandlerContext;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/android/-$$Lambda$HandlerContext$AYyJ57IpsQxcbmCNx8xF14_GmdI;->f$0:Lkotlinx/coroutines/android/HandlerContext;

    iput-object p2, p0, Lkotlinx/coroutines/android/-$$Lambda$HandlerContext$AYyJ57IpsQxcbmCNx8xF14_GmdI;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 2

    iget-object v0, p0, Lkotlinx/coroutines/android/-$$Lambda$HandlerContext$AYyJ57IpsQxcbmCNx8xF14_GmdI;->f$0:Lkotlinx/coroutines/android/HandlerContext;

    iget-object v1, p0, Lkotlinx/coroutines/android/-$$Lambda$HandlerContext$AYyJ57IpsQxcbmCNx8xF14_GmdI;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lkotlinx/coroutines/android/HandlerContext;->lambda$AYyJ57IpsQxcbmCNx8xF14_GmdI(Lkotlinx/coroutines/android/HandlerContext;Ljava/lang/Runnable;)V

    return-void
.end method
