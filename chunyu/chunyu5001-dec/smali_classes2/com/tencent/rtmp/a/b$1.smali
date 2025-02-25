.class Lcom/tencent/rtmp/a/b$1;
.super Ljava/lang/Object;
.source "TXImageSpriteImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/rtmp/a/b;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/rtmp/a/b;


# direct methods
.method constructor <init>(Lcom/tencent/rtmp/a/b;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/tencent/rtmp/a/b$1;->a:Lcom/tencent/rtmp/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/tencent/rtmp/a/b$1;->a:Lcom/tencent/rtmp/a/b;

    invoke-static {v0}, Lcom/tencent/rtmp/a/b;->a(Lcom/tencent/rtmp/a/b;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/tencent/rtmp/a/b$1;->a:Lcom/tencent/rtmp/a/b;

    invoke-static {v0}, Lcom/tencent/rtmp/a/b;->a(Lcom/tencent/rtmp/a/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/tencent/rtmp/a/b$1;->a:Lcom/tencent/rtmp/a/b;

    invoke-static {v0}, Lcom/tencent/rtmp/a/b;->b(Lcom/tencent/rtmp/a/b;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 148
    iget-object v0, p0, Lcom/tencent/rtmp/a/b$1;->a:Lcom/tencent/rtmp/a/b;

    invoke-static {v0}, Lcom/tencent/rtmp/a/b;->b(Lcom/tencent/rtmp/a/b;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/BitmapRegionDecoder;

    if-eqz v1, :cond_1

    .line 150
    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    goto :goto_0

    .line 152
    :cond_2
    iget-object v0, p0, Lcom/tencent/rtmp/a/b$1;->a:Lcom/tencent/rtmp/a/b;

    invoke-static {v0}, Lcom/tencent/rtmp/a/b;->b(Lcom/tencent/rtmp/a/b;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_3
    return-void
.end method
