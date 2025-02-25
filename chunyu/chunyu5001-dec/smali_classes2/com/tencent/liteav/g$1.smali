.class Lcom/tencent/liteav/g$1;
.super Ljava/lang/Object;
.source "TXCVodPlayReportControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/g;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/tencent/liteav/g;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/g;Ljava/lang/String;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/tencent/liteav/g$1;->b:Lcom/tencent/liteav/g;

    iput-object p2, p0, Lcom/tencent/liteav/g$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/tencent/liteav/g$1;->b:Lcom/tencent/liteav/g;

    iget-object v1, p0, Lcom/tencent/liteav/g$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/liteav/g;->a(Lcom/tencent/liteav/g;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/tencent/liteav/g$1;->b:Lcom/tencent/liteav/g;

    invoke-static {v0}, Lcom/tencent/liteav/g;->a(Lcom/tencent/liteav/g;)V

    return-void
.end method
