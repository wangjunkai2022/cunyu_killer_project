.class Lcom/netease/mobsec/e/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mobsec/e/f;->a(Lcom/netease/mobsec/InitCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mobsec/InitCallback;

.field final synthetic b:Lcom/netease/mobsec/e/f;


# direct methods
.method constructor <init>(Lcom/netease/mobsec/e/f;Lcom/netease/mobsec/InitCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobsec/e/f$b;->b:Lcom/netease/mobsec/e/f;

    iput-object p2, p0, Lcom/netease/mobsec/e/f$b;->a:Lcom/netease/mobsec/InitCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/netease/mobsec/e/f$b;->b:Lcom/netease/mobsec/e/f;

    invoke-static {v0}, Lcom/netease/mobsec/e/f;->a(Lcom/netease/mobsec/e/f;)Lcom/netease/mobsec/e/a;

    move-result-object v0

    invoke-static {}, Lcom/netease/mobsec/e/f;->d()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/netease/mobsec/e/f$b$a;

    invoke-direct {v2, p0, v0}, Lcom/netease/mobsec/e/f$b$a;-><init>(Lcom/netease/mobsec/e/f$b;Lcom/netease/mobsec/e/a;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
