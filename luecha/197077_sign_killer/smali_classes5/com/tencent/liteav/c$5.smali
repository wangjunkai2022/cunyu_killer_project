.class Lcom/tencent/liteav/c$5;
.super Ljava/lang/Object;
.source "TXCLivePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/c;->a(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/os/Bundle;

.field final synthetic c:Lcom/tencent/liteav/c;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/c;ILandroid/os/Bundle;)V
    .locals 0

    .line 928
    iput-object p1, p0, Lcom/tencent/liteav/c$5;->c:Lcom/tencent/liteav/c;

    iput p2, p0, Lcom/tencent/liteav/c$5;->a:I

    iput-object p3, p0, Lcom/tencent/liteav/c$5;->b:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 931
    iget-object v0, p0, Lcom/tencent/liteav/c$5;->c:Lcom/tencent/liteav/c;

    iget-object v0, v0, Lcom/tencent/liteav/c;->e:Ljava/lang/ref/WeakReference;

    iget v1, p0, Lcom/tencent/liteav/c$5;->a:I

    iget-object v2, p0, Lcom/tencent/liteav/c$5;->b:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Lcom/tencent/liteav/basic/util/h;->a(Ljava/lang/ref/WeakReference;ILandroid/os/Bundle;)V

    return-void
.end method
