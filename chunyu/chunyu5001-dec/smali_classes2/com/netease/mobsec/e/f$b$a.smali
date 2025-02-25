.class Lcom/netease/mobsec/e/f$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mobsec/e/f$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mobsec/e/a;

.field final synthetic b:Lcom/netease/mobsec/e/f$b;


# direct methods
.method constructor <init>(Lcom/netease/mobsec/e/f$b;Lcom/netease/mobsec/e/a;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobsec/e/f$b$a;->b:Lcom/netease/mobsec/e/f$b;

    iput-object p2, p0, Lcom/netease/mobsec/e/f$b$a;->a:Lcom/netease/mobsec/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/netease/mobsec/e/f$b$a;->a:Lcom/netease/mobsec/e/a;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netease/mobsec/e/f$b$a;->b:Lcom/netease/mobsec/e/f$b;

    iget-object v0, v0, Lcom/netease/mobsec/e/f$b;->a:Lcom/netease/mobsec/InitCallback;

    if-eqz v0, :cond_0

    sget v1, Lcom/netease/mobsec/e/j;->a:I

    sget-object v2, Lcom/netease/mobsec/e/j;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/netease/mobsec/InitCallback;->onResult(ILjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/netease/mobsec/e/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/netease/mobsec/e/f$b$a;->b:Lcom/netease/mobsec/e/f$b;

    iget-object v0, v0, Lcom/netease/mobsec/e/f$b;->a:Lcom/netease/mobsec/InitCallback;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/netease/mobsec/e/f$b$a;->a:Lcom/netease/mobsec/e/a;

    invoke-virtual {v1}, Lcom/netease/mobsec/e/a;->a()I

    move-result v1

    iget-object v2, p0, Lcom/netease/mobsec/e/f$b$a;->a:Lcom/netease/mobsec/e/a;

    invoke-virtual {v2}, Lcom/netease/mobsec/e/a;->b()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/netease/mobsec/e/f$b$a;->b:Lcom/netease/mobsec/e/f$b;

    iget-object v0, v0, Lcom/netease/mobsec/e/f$b;->a:Lcom/netease/mobsec/InitCallback;

    if-eqz v0, :cond_3

    sget v1, Lcom/netease/mobsec/e/j;->a:I

    sget-object v2, Lcom/netease/mobsec/e/j;->f:Ljava/lang/String;

    :goto_0
    invoke-interface {v0, v1, v2}, Lcom/netease/mobsec/InitCallback;->onResult(ILjava/lang/String;)V

    :cond_3
    return-void
.end method
