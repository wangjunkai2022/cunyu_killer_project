.class Lcom/tencent/liteav/basic/f/c$1;
.super Ljava/lang/Thread;
.source "TXCConfigCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/basic/f/c;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/basic/f/c;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/basic/f/c;)V
    .locals 0

    .line 684
    iput-object p1, p0, Lcom/tencent/liteav/basic/f/c$1;->a:Lcom/tencent/liteav/basic/f/c;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 686
    iget-object v0, p0, Lcom/tencent/liteav/basic/f/c$1;->a:Lcom/tencent/liteav/basic/f/c;

    invoke-static {v0}, Lcom/tencent/liteav/basic/f/c;->a(Lcom/tencent/liteav/basic/f/c;)V

    return-void
.end method
