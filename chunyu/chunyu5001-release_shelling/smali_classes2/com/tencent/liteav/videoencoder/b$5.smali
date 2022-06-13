.class Lcom/tencent/liteav/videoencoder/b$5;
.super Ljava/lang/Object;
.source "TXCHWVideoEncoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/videoencoder/b;->setFPS(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/tencent/liteav/videoencoder/b;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/videoencoder/b;I)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/tencent/liteav/videoencoder/b$5;->b:Lcom/tencent/liteav/videoencoder/b;

    iput p2, p0, Lcom/tencent/liteav/videoencoder/b$5;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b$5;->b:Lcom/tencent/liteav/videoencoder/b;

    iget v1, p0, Lcom/tencent/liteav/videoencoder/b$5;->a:I

    invoke-static {v0, v1}, Lcom/tencent/liteav/videoencoder/b;->a(Lcom/tencent/liteav/videoencoder/b;I)V

    return-void
.end method
