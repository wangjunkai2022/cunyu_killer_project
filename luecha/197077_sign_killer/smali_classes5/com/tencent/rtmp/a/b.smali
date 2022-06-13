.class public Lcom/tencent/rtmp/a/b;
.super Ljava/lang/Object;
.source "TXImageSpriteImpl.java"

# interfaces
.implements Lcom/tencent/rtmp/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/rtmp/a/b$b;,
        Lcom/tencent/rtmp/a/b$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/BitmapFactory$Options;

.field private b:Landroid/os/HandlerThread;

.field private c:Landroid/os/Handler;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/rtmp/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/tencent/rtmp/a/b;->a:Landroid/graphics/BitmapFactory$Options;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/rtmp/a/b;->d:Ljava/util/List;

    .line 42
    iget-object v0, p0, Lcom/tencent/rtmp/a/b;->d:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/rtmp/a/b;->d:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/rtmp/a/b;->e:Ljava/util/Map;

    .line 45
    iget-object v0, p0, Lcom/tencent/rtmp/a/b;->e:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/rtmp/a/b;->e:Ljava/util/Map;

    return-void
.end method

.method private a(IIF)Lcom/tencent/rtmp/a/c;
    .locals 2

    sub-int v0, p2, p1

    .line 109
    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    .line 110
    iget-object v1, p0, Lcom/tencent/rtmp/a/b;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/rtmp/a/c;

    iget v1, v1, Lcom/tencent/rtmp/a/c;->a:F

    cmpg-float v1, v1, p3

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/rtmp/a/b;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/rtmp/a/c;

    iget v1, v1, Lcom/tencent/rtmp/a/c;->b:F

    cmpl-float v1, v1, p3

    if-lez v1, :cond_0

    .line 111
    iget-object p1, p0, Lcom/tencent/rtmp/a/b;->d:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/rtmp/a/c;

    return-object p1

    :cond_0
    if-lt p1, p2, :cond_1

    .line 114
    iget-object p2, p0, Lcom/tencent/rtmp/a/b;->d:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/rtmp/a/c;

    return-object p1

    .line 115
    :cond_1
    iget-object v1, p0, Lcom/tencent/rtmp/a/b;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/rtmp/a/c;

    iget v1, v1, Lcom/tencent/rtmp/a/c;->b:F

    cmpl-float v1, p3, v1

    if-ltz v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 116
    invoke-direct {p0, v0, p2, p3}, Lcom/tencent/rtmp/a/b;->a(IIF)Lcom/tencent/rtmp/a/c;

    move-result-object p1

    return-object p1

    .line 117
    :cond_2
    iget-object p2, p0, Lcom/tencent/rtmp/a/b;->d:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tencent/rtmp/a/c;

    iget p2, p2, Lcom/tencent/rtmp/a/c;->a:F

    cmpg-float p2, p3, p2

    if-gez p2, :cond_3

    add-int/lit8 v0, v0, -0x1

    .line 118
    invoke-direct {p0, p1, v0, p3}, Lcom/tencent/rtmp/a/b;->a(IIF)Lcom/tencent/rtmp/a/c;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/rtmp/a/b;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1}, Lcom/tencent/rtmp/a/b;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 281
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    .line 283
    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    .line 284
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    const/16 v0, 0x3a98

    .line 285
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 286
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 287
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/rtmp/a/b;)Ljava/util/List;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/tencent/rtmp/a/b;->d:Ljava/util/List;

    return-object p0
.end method

.method private a()V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/tencent/rtmp/a/b;->b:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SuperVodThumbnailsWorkThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/rtmp/a/b;->b:Landroid/os/HandlerThread;

    .line 126
    iget-object v0, p0, Lcom/tencent/rtmp/a/b;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 127
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/rtmp/a/b;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/rtmp/a/b;->c:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/tencent/rtmp/a/b;)Ljava/util/Map;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/tencent/rtmp/a/b;->e:Ljava/util/Map;

    return-object p0
.end method

.method private b()V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/tencent/rtmp/a/b;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const-string v0, "TXImageSprite"

    const-string v1, " remove all tasks!"

    .line 138
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/tencent/rtmp/a/b;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 141
    iget-object v0, p0, Lcom/tencent/rtmp/a/b;->c:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/rtmp/a/b$1;

    invoke-direct {v1, p0}, Lcom/tencent/rtmp/a/b$1;-><init>(Lcom/tencent/rtmp/a/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/tencent/rtmp/a/b;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/tencent/rtmp/a/b;->b()V

    return-void
.end method


# virtual methods
.method public getThumbnail(F)Landroid/graphics/Bitmap;
    .locals 4

    .line 73
    iget-object v0, p0, Lcom/tencent/rtmp/a/b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 74
    iget-object v2, p0, Lcom/tencent/rtmp/a/b;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v0, v2, p1}, Lcom/tencent/rtmp/a/b;->a(IIF)Lcom/tencent/rtmp/a/c;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    .line 78
    :cond_1
    iget-object v0, p1, Lcom/tencent/rtmp/a/c;->d:Ljava/lang/String;

    .line 79
    iget-object v2, p0, Lcom/tencent/rtmp/a/b;->e:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/BitmapRegionDecoder;

    if-nez v0, :cond_2

    return-object v1

    .line 83
    :cond_2
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 84
    iget v2, p1, Lcom/tencent/rtmp/a/c;->e:I

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 85
    iget v2, p1, Lcom/tencent/rtmp/a/c;->f:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 86
    iget v2, p1, Lcom/tencent/rtmp/a/c;->e:I

    iget v3, p1, Lcom/tencent/rtmp/a/c;->g:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 87
    iget v2, p1, Lcom/tencent/rtmp/a/c;->f:I

    iget p1, p1, Lcom/tencent/rtmp/a/c;->h:I

    add-int/2addr v2, p1

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 88
    iget-object p1, p0, Lcom/tencent/rtmp/a/b;->a:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v0, v1, p1}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public release()V
    .locals 2

    .line 95
    invoke-direct {p0}, Lcom/tencent/rtmp/a/b;->b()V

    .line 96
    iget-object v0, p0, Lcom/tencent/rtmp/a/b;->b:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/rtmp/a/b;->c:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 97
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->VersionInt()I

    move-result v0

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 98
    iget-object v0, p0, Lcom/tencent/rtmp/a/b;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    goto :goto_0

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/tencent/rtmp/a/b;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :goto_0
    const/4 v0, 0x0

    .line 102
    iput-object v0, p0, Lcom/tencent/rtmp/a/b;->c:Landroid/os/Handler;

    .line 103
    iput-object v0, p0, Lcom/tencent/rtmp/a/b;->b:Landroid/os/HandlerThread;

    :cond_1
    return-void
.end method

.method public setVTTUrlAndImageUrls(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 50
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "TXImageSprite"

    const-string p2, "setVTTUrlAndImageUrls: vttUrl can\'t be null!"

    .line 51
    invoke-static {p1, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 55
    :cond_0
    invoke-direct {p0}, Lcom/tencent/rtmp/a/b;->b()V

    .line 58
    invoke-direct {p0}, Lcom/tencent/rtmp/a/b;->a()V

    .line 61
    iget-object v0, p0, Lcom/tencent/rtmp/a/b;->c:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/rtmp/a/b$a;

    invoke-direct {v1, p0, p1}, Lcom/tencent/rtmp/a/b$a;-><init>(Lcom/tencent/rtmp/a/b;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-eqz p2, :cond_1

    .line 64
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 66
    iget-object v1, p0, Lcom/tencent/rtmp/a/b;->c:Landroid/os/Handler;

    new-instance v2, Lcom/tencent/rtmp/a/b$b;

    invoke-direct {v2, p0, p1, v0}, Lcom/tencent/rtmp/a/b$b;-><init>(Lcom/tencent/rtmp/a/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    return-void
.end method
