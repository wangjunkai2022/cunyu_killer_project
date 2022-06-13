.class public Lcom/netease/mobsec/e/f$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mobsec/e/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/netease/mobsec/e/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Z

.field final synthetic b:Lcom/netease/mobsec/e/f;


# direct methods
.method public constructor <init>(Lcom/netease/mobsec/e/f;Z)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobsec/e/f$f;->b:Lcom/netease/mobsec/e/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/netease/mobsec/e/f$f;->a:Z

    return-void
.end method


# virtual methods
.method public a()Lcom/netease/mobsec/e/a;
    .locals 5

    :try_start_0
    iget-boolean v0, p0, Lcom/netease/mobsec/e/f$f;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/netease/mobsec/e/f$f;->b:Lcom/netease/mobsec/e/f;

    invoke-static {v0}, Lcom/netease/mobsec/e/f;->e(Lcom/netease/mobsec/e/f;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/netease/mobsec/e/f$f;->b:Lcom/netease/mobsec/e/f;

    invoke-static {v0}, Lcom/netease/mobsec/e/f;->f(Lcom/netease/mobsec/e/f;)Lcom/netease/mobsec/e/a;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/netease/mobsec/e/f$c;

    iget-object v2, p0, Lcom/netease/mobsec/e/f$f;->b:Lcom/netease/mobsec/e/f;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "4"

    const-string v4, "DynamicTask"

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/netease/mobsec/e/f$c;-><init>(Lcom/netease/mobsec/e/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/netease/mobsec/e/f$f;->a()Lcom/netease/mobsec/e/a;

    move-result-object v0

    return-object v0
.end method
