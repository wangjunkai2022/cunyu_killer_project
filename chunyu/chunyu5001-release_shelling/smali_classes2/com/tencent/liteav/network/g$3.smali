.class Lcom/tencent/liteav/network/g$3;
.super Ljava/lang/Object;
.source "TXCPlayInfoProtocolV4.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/network/g;->a(Ljava/lang/String;Lcom/tencent/liteav/network/g$a;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/network/g$a;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/tencent/liteav/network/g;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/network/g;Lcom/tencent/liteav/network/g$a;ILjava/lang/String;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/tencent/liteav/network/g$3;->d:Lcom/tencent/liteav/network/g;

    iput-object p2, p0, Lcom/tencent/liteav/network/g$3;->a:Lcom/tencent/liteav/network/g$a;

    iput p3, p0, Lcom/tencent/liteav/network/g$3;->b:I

    iput-object p4, p0, Lcom/tencent/liteav/network/g$3;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/tencent/liteav/network/g$3;->a:Lcom/tencent/liteav/network/g$a;

    iget v1, p0, Lcom/tencent/liteav/network/g$3;->b:I

    iget-object v2, p0, Lcom/tencent/liteav/network/g$3;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/tencent/liteav/network/g$a;->a(ILjava/lang/String;)V

    return-void
.end method
