.class Lcom/tencent/liteav/e$1$1;
.super Ljava/lang/Object;
.source "TXCTimeShiftUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/e$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/tencent/liteav/e$1;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/e$1;J)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/tencent/liteav/e$1$1;->b:Lcom/tencent/liteav/e$1;

    iput-wide p2, p0, Lcom/tencent/liteav/e$1$1;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/tencent/liteav/e$1$1;->b:Lcom/tencent/liteav/e$1;

    iget-object v0, v0, Lcom/tencent/liteav/e$1;->d:Lcom/tencent/liteav/e$a;

    iget-wide v1, p0, Lcom/tencent/liteav/e$1$1;->a:J

    invoke-interface {v0, v1, v2}, Lcom/tencent/liteav/e$a;->a(J)V

    return-void
.end method
