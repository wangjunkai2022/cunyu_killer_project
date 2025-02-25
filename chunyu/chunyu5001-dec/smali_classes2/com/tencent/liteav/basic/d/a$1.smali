.class Lcom/tencent/liteav/basic/d/a$1;
.super Ljava/lang/Object;
.source "MediaCodecHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/basic/d/a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/basic/d/a;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/basic/d/a;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/tencent/liteav/basic/d/a$1;->a:Lcom/tencent/liteav/basic/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 32
    iget-object v0, p0, Lcom/tencent/liteav/basic/d/a$1;->a:Lcom/tencent/liteav/basic/d/a;

    const/16 v1, 0x14

    const/16 v2, 0x438

    const/16 v3, 0x780

    invoke-static {v3, v2, v1}, Lcom/tencent/liteav/basic/d/b;->a(III)Z

    move-result v4

    invoke-static {v0, v4}, Lcom/tencent/liteav/basic/d/a;->a(Lcom/tencent/liteav/basic/d/a;Z)Z

    .line 33
    iget-object v0, p0, Lcom/tencent/liteav/basic/d/a$1;->a:Lcom/tencent/liteav/basic/d/a;

    invoke-static {v3, v2, v1}, Lcom/tencent/liteav/basic/d/c;->a(III)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/d/a;->b(Lcom/tencent/liteav/basic/d/a;Z)Z

    .line 34
    invoke-static {}, Lcom/tencent/liteav/basic/util/g;->a()Lcom/tencent/liteav/basic/util/g;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/basic/d/a$1;->a:Lcom/tencent/liteav/basic/d/a;

    .line 36
    invoke-static {v1}, Lcom/tencent/liteav/basic/d/a;->a(Lcom/tencent/liteav/basic/d/a;)Z

    move-result v1

    const-string v2, "cached_h265_decode_capability"

    .line 35
    invoke-virtual {v0, v2, v1}, Lcom/tencent/liteav/basic/util/g;->a(Ljava/lang/String;Z)V

    .line 37
    invoke-static {}, Lcom/tencent/liteav/basic/util/g;->a()Lcom/tencent/liteav/basic/util/g;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/basic/d/a$1;->a:Lcom/tencent/liteav/basic/d/a;

    .line 39
    invoke-static {v1}, Lcom/tencent/liteav/basic/d/a;->b(Lcom/tencent/liteav/basic/d/a;)Z

    move-result v1

    const-string v2, "cached_h265_encode_capability"

    .line 38
    invoke-virtual {v0, v2, v1}, Lcom/tencent/liteav/basic/util/g;->a(Ljava/lang/String;Z)V

    return-void
.end method
