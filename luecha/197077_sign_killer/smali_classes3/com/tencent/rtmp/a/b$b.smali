.class Lcom/tencent/rtmp/a/b$b;
.super Ljava/lang/Object;
.source "TXImageSpriteImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/rtmp/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tencent/rtmp/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tencent/rtmp/a/b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/rtmp/a/b$b;->a:Ljava/lang/ref/WeakReference;

    .line 300
    iput-object p2, p0, Lcom/tencent/rtmp/a/b$b;->b:Ljava/lang/String;

    .line 301
    iput-object p3, p0, Lcom/tencent/rtmp/a/b$b;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 306
    iget-object v0, p0, Lcom/tencent/rtmp/a/b$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/rtmp/a/b;

    .line 307
    iget-object v1, p0, Lcom/tencent/rtmp/a/b$b;->a:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 310
    :try_start_0
    iget-object v2, p0, Lcom/tencent/rtmp/a/b$b;->c:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/tencent/rtmp/a/b;->a(Lcom/tencent/rtmp/a/b;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 311
    iget-object v2, p0, Lcom/tencent/rtmp/a/b$b;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 312
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 313
    invoke-static {v0}, Lcom/tencent/rtmp/a/b;->b(Lcom/tencent/rtmp/a/b;)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 315
    invoke-static {v0}, Lcom/tencent/rtmp/a/b;->b(Lcom/tencent/rtmp/a/b;)Ljava/util/Map;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {v1, v3}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v1, :cond_2

    .line 321
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "TXImageSprite"

    const-string v3, "load bitmap from network failed."

    .line 317
    invoke-static {v2, v3, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_2

    goto :goto_0

    :goto_1
    if-eqz v1, :cond_1

    .line 321
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 326
    :catch_1
    :cond_1
    throw v0

    :catch_2
    :cond_2
    :goto_2
    return-void
.end method
