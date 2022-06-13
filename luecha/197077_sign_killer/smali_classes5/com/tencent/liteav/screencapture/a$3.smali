.class Lcom/tencent/liteav/screencapture/a$3;
.super Ljava/lang/Object;
.source "VirtualDisplayManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/screencapture/a;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/screencapture/a;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/screencapture/a;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/tencent/liteav/screencapture/a$3;->a:Lcom/tencent/liteav/screencapture/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/tencent/liteav/screencapture/a$3;->a:Lcom/tencent/liteav/screencapture/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/liteav/screencapture/a;->a(Lcom/tencent/liteav/screencapture/a;Z)V

    return-void
.end method
