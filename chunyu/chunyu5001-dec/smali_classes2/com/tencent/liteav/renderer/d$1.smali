.class Lcom/tencent/liteav/renderer/d$1;
.super Ljava/lang/Object;
.source "TXCTextureViewWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/renderer/d;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/tencent/liteav/renderer/d;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/renderer/d;I)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/tencent/liteav/renderer/d$1;->b:Lcom/tencent/liteav/renderer/d;

    iput p2, p0, Lcom/tencent/liteav/renderer/d$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/tencent/liteav/renderer/d$1;->b:Lcom/tencent/liteav/renderer/d;

    iget v1, p0, Lcom/tencent/liteav/renderer/d$1;->a:I

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/renderer/d;->b(I)V

    return-void
.end method
