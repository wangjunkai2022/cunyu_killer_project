.class Lcom/netease/mobsec/e/f$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mobsec/e/f$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mobsec/e/f$a;


# direct methods
.method constructor <init>(Lcom/netease/mobsec/e/f$a;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobsec/e/f$a$a;->a:Lcom/netease/mobsec/e/f$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/netease/mobsec/e/f$a$a;->a:Lcom/netease/mobsec/e/f$a;

    iget-object v1, v0, Lcom/netease/mobsec/e/f$a;->a:Lcom/netease/mobsec/GetTokenCallback;

    sget v2, Lcom/netease/mobsec/e/j;->a:I

    sget-object v3, Lcom/netease/mobsec/e/j;->f:Ljava/lang/String;

    iget-object v0, v0, Lcom/netease/mobsec/e/f$a;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/netease/mobsec/GetTokenCallback;->onResult(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
