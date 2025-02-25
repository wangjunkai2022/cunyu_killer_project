.class public Lcom/netease/mobsec/e/f$g;
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
    name = "g"
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
.field final synthetic a:Lcom/netease/mobsec/e/f;


# direct methods
.method public constructor <init>(Lcom/netease/mobsec/e/f;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobsec/e/f$g;->a:Lcom/netease/mobsec/e/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/netease/mobsec/e/a;
    .locals 7

    const-string v0, "pn=%s"

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/netease/mobsec/e/f$g;->a:Lcom/netease/mobsec/e/f;

    invoke-static {v4}, Lcom/netease/mobsec/e/f;->b(Lcom/netease/mobsec/e/f;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0xbb8

    invoke-static {v0, v3}, Lcom/netease/mobsec/e/e;->a(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v5, "msg"

    if-eqz v4, :cond_1

    :try_start_1
    invoke-static {}, Lcom/netease/mobsec/e/f;->g()Lcom/netease/mobsec/e/b;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/netease/mobsec/e/b;->a(Lorg/json/JSONObject;)I

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    const/16 v4, 0x1a4

    if-ne v6, v4, :cond_0

    invoke-static {v0, v3}, Lcom/netease/mobsec/e/e;->a(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netease/mobsec/e/f;->g()Lcom/netease/mobsec/e/b;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/netease/mobsec/e/b;->a(Lorg/json/JSONObject;)I

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :cond_0
    move v3, v6

    goto :goto_1

    :catch_0
    move v3, v6

    goto :goto_2

    :cond_1
    :try_start_3
    invoke-static {v0, v3}, Lcom/netease/mobsec/e/e;->a(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/netease/mobsec/e/f;->g()Lcom/netease/mobsec/e/b;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/netease/mobsec/e/b;->a(Lorg/json/JSONObject;)I

    move-result v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :goto_0
    :try_start_4
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    iget-object v0, p0, Lcom/netease/mobsec/e/f$g;->a:Lcom/netease/mobsec/e/f;

    invoke-static {v0}, Lcom/netease/mobsec/e/f;->c(Lcom/netease/mobsec/e/f;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netease/mobsec/e/f$g;->a:Lcom/netease/mobsec/e/f;

    invoke-static {v0}, Lcom/netease/mobsec/e/f;->d(Lcom/netease/mobsec/e/f;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_1
    move v3, v2

    :catch_2
    :cond_3
    :goto_2
    const/16 v0, 0x1d6

    if-ne v3, v0, :cond_4

    iget-object v0, p0, Lcom/netease/mobsec/e/f$g;->a:Lcom/netease/mobsec/e/f;

    invoke-static {v0, v2}, Lcom/netease/mobsec/e/f;->a(Lcom/netease/mobsec/e/f;Z)Z

    sget v0, Lcom/netease/mobsec/e/j;->b:I

    sget-object v1, Lcom/netease/mobsec/e/j;->g:Ljava/lang/String;

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/netease/mobsec/e/f$g;->a:Lcom/netease/mobsec/e/f;

    invoke-static {v0, v1}, Lcom/netease/mobsec/e/f;->a(Lcom/netease/mobsec/e/f;Z)Z

    sget v0, Lcom/netease/mobsec/e/j;->a:I

    sget-object v1, Lcom/netease/mobsec/e/j;->f:Ljava/lang/String;

    :goto_3
    new-instance v2, Lcom/netease/mobsec/e/a;

    invoke-direct {v2, v0, v1}, Lcom/netease/mobsec/e/a;-><init>(ILjava/lang/String;)V

    return-object v2
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/netease/mobsec/e/f$g;->a()Lcom/netease/mobsec/e/a;

    move-result-object v0

    return-object v0
.end method
