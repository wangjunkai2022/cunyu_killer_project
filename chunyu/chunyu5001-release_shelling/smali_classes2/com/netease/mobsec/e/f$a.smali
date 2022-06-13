.class Lcom/netease/mobsec/e/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mobsec/e/f;->a(ILcom/netease/mobsec/GetTokenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mobsec/GetTokenCallback;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:J

.field final synthetic d:Lcom/netease/mobsec/e/f;


# direct methods
.method constructor <init>(Lcom/netease/mobsec/e/f;Lcom/netease/mobsec/GetTokenCallback;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobsec/e/f$a;->d:Lcom/netease/mobsec/e/f;

    iput-object p2, p0, Lcom/netease/mobsec/e/f$a;->a:Lcom/netease/mobsec/GetTokenCallback;

    iput-object p3, p0, Lcom/netease/mobsec/e/f$a;->b:Ljava/lang/String;

    iput-wide p4, p0, Lcom/netease/mobsec/e/f$a;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/netease/mobsec/e/f;->d()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/netease/mobsec/e/f$a$a;

    invoke-direct {v1, p0}, Lcom/netease/mobsec/e/f$a$a;-><init>(Lcom/netease/mobsec/e/f$a;)V

    iget-wide v2, p0, Lcom/netease/mobsec/e/f$a;->c:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
