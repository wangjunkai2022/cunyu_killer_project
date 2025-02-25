.class public Lcom/tencent/liteav/renderer/d;
.super Ljava/lang/Object;
.source "TXCTextureViewWrapper.java"


# instance fields
.field private a:Landroid/view/TextureView;

.field private b:Landroid/os/Handler;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:F

.field private l:I


# direct methods
.method public constructor <init>(Landroid/view/TextureView;)V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/tencent/liteav/renderer/d;->c:I

    .line 41
    iput v0, p0, Lcom/tencent/liteav/renderer/d;->d:I

    const/16 v1, 0x280

    .line 42
    iput v1, p0, Lcom/tencent/liteav/renderer/d;->e:I

    const/16 v1, 0x1e0

    .line 43
    iput v1, p0, Lcom/tencent/liteav/renderer/d;->f:I

    .line 44
    iput v0, p0, Lcom/tencent/liteav/renderer/d;->g:I

    .line 45
    iput v0, p0, Lcom/tencent/liteav/renderer/d;->h:I

    const/4 v1, 0x1

    .line 46
    iput v1, p0, Lcom/tencent/liteav/renderer/d;->i:I

    .line 47
    iput v0, p0, Lcom/tencent/liteav/renderer/d;->j:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 48
    iput v1, p0, Lcom/tencent/liteav/renderer/d;->k:F

    .line 300
    iput v0, p0, Lcom/tencent/liteav/renderer/d;->l:I

    .line 51
    iput-object p1, p0, Lcom/tencent/liteav/renderer/d;->a:Landroid/view/TextureView;

    .line 52
    invoke-virtual {p1}, Landroid/view/TextureView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/tencent/liteav/renderer/d;->c:I

    .line 53
    invoke-virtual {p1}, Landroid/view/TextureView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/tencent/liteav/renderer/d;->d:I

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/liteav/renderer/d;->b:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/renderer/d;F)F
    .locals 0

    .line 16
    iput p1, p0, Lcom/tencent/liteav/renderer/d;->k:F

    return p1
.end method

.method static synthetic a(Lcom/tencent/liteav/renderer/d;)I
    .locals 0

    .line 16
    iget p0, p0, Lcom/tencent/liteav/renderer/d;->e:I

    return p0
.end method

.method private a()V
    .locals 3

    .line 182
    :try_start_0
    new-instance v0, Lcom/tencent/liteav/renderer/d$3;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/renderer/d$3;-><init>(Lcom/tencent/liteav/renderer/d;)V

    invoke-direct {p0, v0}, Lcom/tencent/liteav/renderer/d;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TXCTextureViewWrapper"

    const-string v2, "adjust video size failed."

    .line 191
    invoke-static {v1, v2, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/renderer/d;II)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/renderer/d;->c(II)V

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 2

    .line 293
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 294
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/renderer/d;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/tencent/liteav/renderer/d;)I
    .locals 0

    .line 16
    iget p0, p0, Lcom/tencent/liteav/renderer/d;->f:I

    return p0
.end method

.method static synthetic c(Lcom/tencent/liteav/renderer/d;)I
    .locals 0

    .line 16
    iget p0, p0, Lcom/tencent/liteav/renderer/d;->i:I

    return p0
.end method

.method private c(II)V
    .locals 5

    .line 196
    iget-object v0, p0, Lcom/tencent/liteav/renderer/d;->a:Landroid/view/TextureView;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    .line 200
    :cond_0
    iget v0, p0, Lcom/tencent/liteav/renderer/d;->c:I

    if-eqz v0, :cond_3

    iget v1, p0, Lcom/tencent/liteav/renderer/d;->d:I

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    int-to-double v2, p2

    int-to-double p1, p1

    div-double/2addr v2, p1

    int-to-double p1, v0

    mul-double/2addr p1, v2

    double-to-int p1, p1

    if-le v1, p1, :cond_2

    .line 207
    iput v0, p0, Lcom/tencent/liteav/renderer/d;->g:I

    int-to-double p1, v0

    mul-double/2addr p1, v2

    double-to-int p1, p1

    .line 208
    iput p1, p0, Lcom/tencent/liteav/renderer/d;->h:I

    goto :goto_0

    :cond_2
    int-to-double p1, v1

    div-double/2addr p1, v2

    double-to-int p1, p1

    .line 210
    iput p1, p0, Lcom/tencent/liteav/renderer/d;->g:I

    .line 211
    iput v1, p0, Lcom/tencent/liteav/renderer/d;->h:I

    .line 214
    :goto_0
    iget p1, p0, Lcom/tencent/liteav/renderer/d;->c:I

    iget p2, p0, Lcom/tencent/liteav/renderer/d;->g:I

    sub-int v0, p1, p2

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 215
    iget v2, p0, Lcom/tencent/liteav/renderer/d;->d:I

    iget v3, p0, Lcom/tencent/liteav/renderer/d;->h:I

    sub-int v4, v2, v3

    int-to-float v4, v4

    div-float/2addr v4, v1

    int-to-float p2, p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    int-to-float p1, v3

    int-to-float v1, v2

    div-float/2addr p1, v1

    .line 219
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 220
    iget-object v2, p0, Lcom/tencent/liteav/renderer/d;->a:Landroid/view/TextureView;

    invoke-virtual {v2, v1}, Landroid/view/TextureView;->getTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    .line 221
    invoke-virtual {v1, p2, p1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 222
    invoke-virtual {v1, v0, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 223
    iget-object p1, p0, Lcom/tencent/liteav/renderer/d;->a:Landroid/view/TextureView;

    invoke-virtual {p1, v1}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 224
    iget-object p1, p0, Lcom/tencent/liteav/renderer/d;->a:Landroid/view/TextureView;

    invoke-virtual {p1}, Landroid/view/TextureView;->requestLayout()V

    :cond_3
    :goto_1
    return-void
.end method

.method static synthetic d(Lcom/tencent/liteav/renderer/d;)I
    .locals 0

    .line 16
    iget p0, p0, Lcom/tencent/liteav/renderer/d;->j:I

    return p0
.end method

.method static synthetic e(Lcom/tencent/liteav/renderer/d;)Landroid/view/TextureView;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/tencent/liteav/renderer/d;->a:Landroid/view/TextureView;

    return-object p0
.end method

.method static synthetic f(Lcom/tencent/liteav/renderer/d;)F
    .locals 0

    .line 16
    iget p0, p0, Lcom/tencent/liteav/renderer/d;->k:F

    return p0
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/renderer/d;->b:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/liteav/renderer/d$1;

    invoke-direct {v1, p0, p1}, Lcom/tencent/liteav/renderer/d$1;-><init>(Lcom/tencent/liteav/renderer/d;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "TXCTextureViewWrapper"

    const-string v1, "set render mode failed"

    .line 66
    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public a(II)V
    .locals 2

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vrender: set view size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCTextureViewWrapper"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iput p1, p0, Lcom/tencent/liteav/renderer/d;->c:I

    .line 251
    iput p2, p0, Lcom/tencent/liteav/renderer/d;->d:I

    .line 252
    invoke-direct {p0}, Lcom/tencent/liteav/renderer/d;->a()V

    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 229
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/renderer/d;->b:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/liteav/renderer/d$4;

    invoke-direct {v1, p0, p1}, Lcom/tencent/liteav/renderer/d$4;-><init>(Lcom/tencent/liteav/renderer/d;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "TXCTextureViewWrapper"

    const-string v1, "set mirror failed."

    .line 243
    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public b(I)V
    .locals 5

    .line 71
    iput p1, p0, Lcom/tencent/liteav/renderer/d;->i:I

    .line 72
    iget-object v0, p0, Lcom/tencent/liteav/renderer/d;->a:Landroid/view/TextureView;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    const/16 v1, 0x5a

    const/16 v2, 0x10e

    const/16 v3, 0xb4

    const/high16 v4, 0x3f800000    # 1.0f

    if-ne p1, v0, :cond_6

    .line 75
    iget p1, p0, Lcom/tencent/liteav/renderer/d;->j:I

    if-eqz p1, :cond_c

    if-ne p1, v3, :cond_0

    goto/16 :goto_4

    :cond_0
    if-eq p1, v2, :cond_1

    if-ne p1, v1, :cond_c

    .line 82
    :cond_1
    iget p1, p0, Lcom/tencent/liteav/renderer/d;->g:I

    if-eqz p1, :cond_5

    iget v0, p0, Lcom/tencent/liteav/renderer/d;->h:I

    if-nez v0, :cond_2

    goto :goto_0

    .line 85
    :cond_2
    iget v1, p0, Lcom/tencent/liteav/renderer/d;->d:I

    int-to-float v1, v1

    int-to-float p1, p1

    div-float/2addr v1, p1

    .line 86
    iget p1, p0, Lcom/tencent/liteav/renderer/d;->c:I

    int-to-float p1, p1

    int-to-float v0, v0

    div-float/2addr p1, v0

    cmpl-float v0, v1, p1

    if-lez v0, :cond_4

    :cond_3
    move v4, p1

    goto :goto_4

    :cond_4
    move v4, v1

    goto :goto_4

    :cond_5
    :goto_0
    return-void

    :cond_6
    if-nez p1, :cond_c

    .line 91
    iget p1, p0, Lcom/tencent/liteav/renderer/d;->g:I

    if-eqz p1, :cond_b

    iget p1, p0, Lcom/tencent/liteav/renderer/d;->h:I

    if-nez p1, :cond_7

    goto :goto_3

    .line 94
    :cond_7
    iget p1, p0, Lcom/tencent/liteav/renderer/d;->j:I

    if-eqz p1, :cond_a

    if-ne p1, v3, :cond_8

    goto :goto_2

    :cond_8
    if-eq p1, v2, :cond_9

    if-ne p1, v1, :cond_c

    .line 103
    :cond_9
    iget p1, p0, Lcom/tencent/liteav/renderer/d;->d:I

    int-to-float p1, p1

    iget v0, p0, Lcom/tencent/liteav/renderer/d;->g:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 104
    iget v0, p0, Lcom/tencent/liteav/renderer/d;->c:I

    int-to-float v0, v0

    iget v1, p0, Lcom/tencent/liteav/renderer/d;->h:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    cmpg-float v1, p1, v0

    if-gez v1, :cond_3

    :goto_1
    move v4, v0

    goto :goto_4

    .line 97
    :cond_a
    :goto_2
    iget p1, p0, Lcom/tencent/liteav/renderer/d;->d:I

    int-to-float p1, p1

    iget v0, p0, Lcom/tencent/liteav/renderer/d;->h:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 98
    iget v0, p0, Lcom/tencent/liteav/renderer/d;->c:I

    int-to-float v0, v0

    iget v1, p0, Lcom/tencent/liteav/renderer/d;->g:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    cmpg-float v1, p1, v0

    if-gez v1, :cond_3

    goto :goto_1

    :cond_b
    :goto_3
    return-void

    .line 109
    :cond_c
    :goto_4
    iget p1, p0, Lcom/tencent/liteav/renderer/d;->k:F

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_d

    neg-float v4, v4

    .line 110
    :cond_d
    iget-object p1, p0, Lcom/tencent/liteav/renderer/d;->a:Landroid/view/TextureView;

    invoke-virtual {p1, v4}, Landroid/view/TextureView;->setScaleX(F)V

    .line 111
    iget-object p1, p0, Lcom/tencent/liteav/renderer/d;->a:Landroid/view/TextureView;

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setScaleY(F)V

    .line 112
    iput v4, p0, Lcom/tencent/liteav/renderer/d;->k:F

    :cond_e
    return-void
.end method

.method public b(II)V
    .locals 2

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vrender: set video size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCTextureViewWrapper"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iput p1, p0, Lcom/tencent/liteav/renderer/d;->e:I

    .line 258
    iput p2, p0, Lcom/tencent/liteav/renderer/d;->f:I

    .line 259
    invoke-direct {p0}, Lcom/tencent/liteav/renderer/d;->a()V

    return-void
.end method

.method public c(I)V
    .locals 2

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/renderer/d;->b:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/liteav/renderer/d$2;

    invoke-direct {v1, p0, p1}, Lcom/tencent/liteav/renderer/d$2;-><init>(Lcom/tencent/liteav/renderer/d;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "TXCTextureViewWrapper"

    const-string v1, "set render rotation failed."

    .line 128
    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public d(I)V
    .locals 4

    .line 132
    rem-int/lit16 p1, p1, 0x168

    .line 136
    iput p1, p0, Lcom/tencent/liteav/renderer/d;->j:I

    .line 137
    iget-object v0, p0, Lcom/tencent/liteav/renderer/d;->a:Landroid/view/TextureView;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_6

    const/16 v2, 0xb4

    if-ne p1, v2, :cond_0

    goto :goto_2

    :cond_0
    const/16 v2, 0x10e

    if-eq p1, v2, :cond_1

    const/16 v2, 0x5a

    if-ne p1, v2, :cond_a

    .line 158
    :cond_1
    iget v2, p0, Lcom/tencent/liteav/renderer/d;->g:I

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/tencent/liteav/renderer/d;->h:I

    if-nez v2, :cond_2

    goto :goto_1

    .line 161
    :cond_2
    iget-object v2, p0, Lcom/tencent/liteav/renderer/d;->a:Landroid/view/TextureView;

    rsub-int p1, p1, 0x168

    int-to-float p1, p1

    invoke-virtual {v2, p1}, Landroid/view/TextureView;->setRotation(F)V

    .line 162
    iget p1, p0, Lcom/tencent/liteav/renderer/d;->d:I

    int-to-float p1, p1

    iget v2, p0, Lcom/tencent/liteav/renderer/d;->g:I

    int-to-float v2, v2

    div-float/2addr p1, v2

    .line 163
    iget v2, p0, Lcom/tencent/liteav/renderer/d;->c:I

    int-to-float v2, v2

    iget v3, p0, Lcom/tencent/liteav/renderer/d;->h:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 164
    iget v3, p0, Lcom/tencent/liteav/renderer/d;->i:I

    if-ne v3, v0, :cond_4

    cmpl-float v0, p1, v2

    if-lez v0, :cond_3

    :goto_0
    move v1, v2

    goto :goto_4

    :cond_3
    move v1, p1

    goto :goto_4

    :cond_4
    if-nez v3, :cond_a

    cmpg-float v0, p1, v2

    if-gez v0, :cond_3

    goto :goto_0

    :cond_5
    :goto_1
    return-void

    .line 141
    :cond_6
    :goto_2
    iget-object v2, p0, Lcom/tencent/liteav/renderer/d;->a:Landroid/view/TextureView;

    rsub-int p1, p1, 0x168

    int-to-float p1, p1

    invoke-virtual {v2, p1}, Landroid/view/TextureView;->setRotation(F)V

    .line 142
    iget p1, p0, Lcom/tencent/liteav/renderer/d;->i:I

    if-ne p1, v0, :cond_7

    goto :goto_4

    :cond_7
    if-nez p1, :cond_a

    .line 148
    iget p1, p0, Lcom/tencent/liteav/renderer/d;->g:I

    if-eqz p1, :cond_9

    iget v0, p0, Lcom/tencent/liteav/renderer/d;->h:I

    if-nez v0, :cond_8

    goto :goto_3

    .line 151
    :cond_8
    iget v1, p0, Lcom/tencent/liteav/renderer/d;->d:I

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 152
    iget v0, p0, Lcom/tencent/liteav/renderer/d;->c:I

    int-to-float v0, v0

    int-to-float p1, p1

    div-float/2addr v0, p1

    cmpg-float p1, v1, v0

    if-gez p1, :cond_a

    move v1, v0

    goto :goto_4

    :cond_9
    :goto_3
    return-void

    .line 174
    :cond_a
    :goto_4
    iget p1, p0, Lcom/tencent/liteav/renderer/d;->k:F

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_b

    neg-float v1, v1

    .line 175
    :cond_b
    iget-object p1, p0, Lcom/tencent/liteav/renderer/d;->a:Landroid/view/TextureView;

    invoke-virtual {p1, v1}, Landroid/view/TextureView;->setScaleX(F)V

    .line 176
    iget-object p1, p0, Lcom/tencent/liteav/renderer/d;->a:Landroid/view/TextureView;

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setScaleY(F)V

    .line 177
    iput v1, p0, Lcom/tencent/liteav/renderer/d;->k:F

    :cond_c
    return-void
.end method
