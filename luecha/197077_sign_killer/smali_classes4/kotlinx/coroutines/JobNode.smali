.class public abstract Lkotlinx/coroutines/JobNode;
.super Lkotlinx/coroutines/CompletionHandlerBase;
.source "JobSupport.kt"

# interfaces
.implements Lkotlinx/coroutines/DisposableHandle;
.implements Lkotlinx/coroutines/Incomplete;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<J::",
        "Lkotlinx/coroutines/Job;",
        ">",
        "Lkotlinx/coroutines/CompletionHandlerBase;",
        "Lkotlinx/coroutines/DisposableHandle;",
        "Lkotlinx/coroutines/Incomplete;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008 \u0018\u0000*\n\u0008\u0000\u0010\u0001 \u0001*\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u0005B\r\u0012\u0006\u0010\u0006\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016R\u0014\u0010\u0008\u001a\u00020\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\nR\u0012\u0010\u0006\u001a\u00028\u00008\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000bR\u0016\u0010\u000c\u001a\u0004\u0018\u00010\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0014"
    }
    d2 = {
        "Lkotlinx/coroutines/JobNode;",
        "J",
        "Lkotlinx/coroutines/Job;",
        "Lkotlinx/coroutines/CompletionHandlerBase;",
        "Lkotlinx/coroutines/DisposableHandle;",
        "Lkotlinx/coroutines/Incomplete;",
        "job",
        "(Lkotlinx/coroutines/Job;)V",
        "isActive",
        "",
        "()Z",
        "Lkotlinx/coroutines/Job;",
        "list",
        "Lkotlinx/coroutines/NodeList;",
        "getList",
        "()Lkotlinx/coroutines/NodeList;",
        "dispose",
        "",
        "toString",
        "",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field public final job:Lkotlinx/coroutines/Job;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TJ;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/Job;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TJ;)V"
        }
    .end annotation

    .line 1347
    invoke-direct {p0}, Lkotlinx/coroutines/CompletionHandlerBase;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/JobNode;->job:Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 1350
    iget-object v0, p0, Lkotlinx/coroutines/JobNode;->job:Lkotlinx/coroutines/Job;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.JobSupport"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/JobSupport;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/JobSupport;->removeNode$kotlinx_coroutines_core(Lkotlinx/coroutines/JobNode;)V

    return-void
.end method

.method public getList()Lkotlinx/coroutines/NodeList;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lkotlinx/coroutines/DebugStringsKt;->getClassSimpleName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lkotlinx/coroutines/DebugStringsKt;->getHexAddress(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[job@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/JobNode;->job:Lkotlinx/coroutines/Job;

    invoke-static {v1}, Lkotlinx/coroutines/DebugStringsKt;->getHexAddress(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
