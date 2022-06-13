.class public Lcom/tencent/liteav/renderer/e;
.super Lcom/tencent/liteav/basic/module/a;
.source "TXCVideoRender.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/renderer/e$a;
    }
.end annotation


# static fields
.field private static final a:[F


# instance fields
.field private A:J

.field private B:J

.field private C:J

.field private D:Z

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:Lcom/tencent/liteav/renderer/e$a;

.field private b:Landroid/graphics/SurfaceTexture;

.field private c:I

.field protected d:Landroid/view/TextureView;

.field protected e:Lcom/tencent/liteav/renderer/d;

.field protected f:I

.field protected g:I

.field protected h:I

.field protected i:I

.field protected j:I

.field protected k:I

.field protected volatile l:I

.field protected m:I

.field protected n:I

.field protected o:Lcom/tencent/liteav/renderer/f;

.field p:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tencent/liteav/basic/c/b;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lcom/tencent/liteav/basic/e/d;

.field private r:Lcom/tencent/liteav/renderer/h;

.field private s:Landroid/view/Surface;

.field private t:I

.field private u:I

.field private v:I

.field private w:[I

.field private x:I

.field private y:J

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 40
    fill-array-data v0, :array_0

    sput-object v0, Lcom/tencent/liteav/renderer/e;->a:[F

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 215
    invoke-direct {p0}, Lcom/tencent/liteav/basic/module/a;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/tencent/liteav/renderer/e;->f:I

    .line 52
    iput v0, p0, Lcom/tencent/liteav/renderer/e;->g:I

    .line 53
    iput v0, p0, Lcom/tencent/liteav/renderer/e;->h:I

    .line 54
    iput v0, p0, Lcom/tencent/liteav/renderer/e;->i:I

    .line 55
    iput v0, p0, Lcom/tencent/liteav/renderer/e;->j:I

    const/16 v1, 0x320

    .line 56
    iput v1, p0, Lcom/tencent/liteav/renderer/e;->c:I

    .line 61
    iput v0, p0, Lcom/tencent/liteav/renderer/e;->t:I

    .line 62
    iput v0, p0, Lcom/tencent/liteav/renderer/e;->k:I

    const/4 v1, 0x2

    .line 64
    iput v1, p0, Lcom/tencent/liteav/renderer/e;->v:I

    const/4 v1, -0x1

    .line 66
    iput v1, p0, Lcom/tencent/liteav/renderer/e;->l:I

    .line 67
    iput v0, p0, Lcom/tencent/liteav/renderer/e;->m:I

    .line 68
    iput v0, p0, Lcom/tencent/liteav/renderer/e;->n:I

    const/4 v1, 0x5

    new-array v1, v1, [I

    .line 69
    iput-object v1, p0, Lcom/tencent/liteav/renderer/e;->w:[I

    const/16 v1, 0x1f4

    .line 70
    iput v1, p0, Lcom/tencent/liteav/renderer/e;->x:I

    const-wide/16 v1, 0x0

    .line 71
    iput-wide v1, p0, Lcom/tencent/liteav/renderer/e;->y:J

    .line 72
    iput-wide v1, p0, Lcom/tencent/liteav/renderer/e;->z:J

    .line 73
    iput-wide v1, p0, Lcom/tencent/liteav/renderer/e;->A:J

    .line 74
    iput-wide v1, p0, Lcom/tencent/liteav/renderer/e;->B:J

    .line 75
    iput-wide v1, p0, Lcom/tencent/liteav/renderer/e;->C:J

    .line 76
    iput-boolean v0, p0, Lcom/tencent/liteav/renderer/e;->D:Z

    .line 77
    iput-boolean v0, p0, Lcom/tencent/liteav/renderer/e;->E:Z

    .line 307
    iput-boolean v0, p0, Lcom/tencent/liteav/renderer/e;->G:Z

    .line 732
    new-instance v1, Lcom/tencent/liteav/renderer/e$a;

    invoke-direct {v1}, Lcom/tencent/liteav/renderer/e$a;-><init>()V

    iput-object v1, p0, Lcom/tencent/liteav/renderer/e;->H:Lcom/tencent/liteav/renderer/e$a;

    .line 216
    iput-boolean v0, p0, Lcom/tencent/liteav/renderer/e;->F:Z

    .line 217
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->VersionInt()I

    move-result v1

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/tencent/liteav/renderer/e;->G:Z

    return-void
.end method

.method private a(J)J
    .locals 3

    .line 784
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    :cond_0
    sub-long/2addr v0, p1

    return-wide v0
.end method

.method private a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 7

    int-to-float p3, p3

    int-to-float p2, p2

    div-float v0, p3, p2

    .line 87
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 89
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p2, p3

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    int-to-float p2, p2

    div-float p2, p3, p2

    .line 93
    :goto_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 94
    invoke-virtual {v5, p2, p2}, Landroid/graphics/Matrix;->preScale(FF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 95
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 96
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-object p2
.end method

.method private a(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    .line 100
    iget v3, v0, Lcom/tencent/liteav/renderer/e;->t:I

    iget v4, v0, Lcom/tencent/liteav/renderer/e;->k:I

    add-int/2addr v3, v4

    rem-int/lit16 v3, v3, 0x168

    rsub-int v3, v3, 0x168

    .line 102
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x1

    move-object/from16 v4, p2

    move-object/from16 v9, p1

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 103
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->recycle()V

    if-eqz v3, :cond_0

    .line 108
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v3, v3

    .line 109
    invoke-virtual {v5, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 110
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    const/16 v17, 0x0

    move-object v11, v4

    move-object/from16 v16, v5

    invoke-static/range {v11 .. v17}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 111
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_0
    move-object v3, v4

    .line 115
    :goto_0
    iget v4, v0, Lcom/tencent/liteav/renderer/e;->u:I

    if-nez v4, :cond_5

    .line 116
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 117
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ge v1, v2, :cond_1

    move v6, v4

    goto :goto_1

    :cond_1
    move v6, v5

    :goto_1
    if-ge v8, v9, :cond_2

    goto :goto_2

    :cond_2
    move v4, v5

    :goto_2
    if-eq v6, v4, :cond_4

    const/high16 v4, 0x3f000000    # 0.5f

    if-eqz v6, :cond_3

    int-to-float v5, v9

    int-to-float v1, v1

    mul-float/2addr v5, v1

    int-to-float v2, v2

    div-float/2addr v5, v2

    int-to-float v2, v8

    sub-float/2addr v2, v5

    mul-float/2addr v2, v4

    .line 127
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    div-float/2addr v1, v5

    .line 128
    invoke-virtual {v10, v1, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    float-to-int v6, v2

    const/4 v7, 0x0

    float-to-int v8, v5

    const/4 v11, 0x0

    move-object v5, v3

    .line 130
    invoke-static/range {v5 .. v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 131
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :goto_3
    move-object v3, v1

    goto :goto_4

    :cond_3
    int-to-float v5, v8

    int-to-float v1, v1

    div-float/2addr v5, v1

    int-to-float v1, v2

    mul-float/2addr v5, v1

    int-to-float v2, v9

    sub-float/2addr v2, v5

    mul-float/2addr v2, v4

    .line 136
    new-instance v14, Landroid/graphics/Matrix;

    invoke-direct {v14}, Landroid/graphics/Matrix;-><init>()V

    div-float/2addr v1, v5

    .line 137
    invoke-virtual {v14, v1, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    const/4 v6, 0x0

    float-to-int v7, v2

    float-to-int v9, v5

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v5, v3

    .line 139
    invoke-static/range {v5 .. v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v10, 0x0

    .line 140
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    const/4 v15, 0x0

    move-object v9, v1

    invoke-static/range {v9 .. v15}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 141
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    move-object v3, v2

    goto :goto_4

    .line 145
    :cond_4
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-eq v1, v4, :cond_6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-eq v2, v4, :cond_6

    .line 146
    invoke-direct {v0, v3, v1, v2}, Lcom/tencent/liteav/renderer/e;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_3

    .line 151
    :cond_5
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-eq v1, v4, :cond_6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-eq v2, v4, :cond_6

    .line 152
    invoke-direct {v0, v3, v1, v2}, Lcom/tencent/liteav/renderer/e;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    :cond_6
    :goto_4
    return-object v3
.end method

.method static synthetic a(Lcom/tencent/liteav/renderer/e;Landroid/graphics/Matrix;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/liteav/renderer/e;->a(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/tencent/liteav/renderer/e;)Lcom/tencent/liteav/basic/e/d;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/tencent/liteav/renderer/e;->q:Lcom/tencent/liteav/basic/e/d;

    return-object p0
.end method

.method private a(III[FZ)[I
    .locals 5

    .line 636
    iget-object v0, p0, Lcom/tencent/liteav/renderer/e;->r:Lcom/tencent/liteav/renderer/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/liteav/renderer/h;->a()Z

    move-result v0

    if-eq v0, p5, :cond_0

    .line 638
    iget-object v0, p0, Lcom/tencent/liteav/renderer/e;->r:Lcom/tencent/liteav/renderer/h;

    invoke-virtual {v0}, Lcom/tencent/liteav/renderer/h;->c()V

    const/4 v0, 0x0

    .line 639
    iput-object v0, p0, Lcom/tencent/liteav/renderer/e;->r:Lcom/tencent/liteav/renderer/h;

    .line 641
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/renderer/e;->r:Lcom/tencent/liteav/renderer/h;

    if-nez v0, :cond_1

    .line 642
    new-instance v0, Lcom/tencent/liteav/renderer/h;

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/liteav/renderer/h;-><init>(Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/tencent/liteav/renderer/e;->r:Lcom/tencent/liteav/renderer/h;

    .line 643
    iget-object v0, p0, Lcom/tencent/liteav/renderer/e;->r:Lcom/tencent/liteav/renderer/h;

    invoke-virtual {v0}, Lcom/tencent/liteav/renderer/h;->b()V

    :cond_1
    if-eqz p4, :cond_2

    .line 646
    iget-object v0, p0, Lcom/tencent/liteav/renderer/e;->r:Lcom/tencent/liteav/renderer/h;

    invoke-virtual {v0, p4}, Lcom/tencent/liteav/renderer/h;->a([F)V

    goto :goto_0

    .line 648
    :cond_2
    iget-object p4, p0, Lcom/tencent/liteav/renderer/e;->r:Lcom/tencent/liteav/renderer/h;

    sget-object v0, Lcom/tencent/liteav/renderer/e;->a:[F

    invoke-virtual {p4, v0}, Lcom/tencent/liteav/renderer/h;->a([F)V

    .line 650
    :goto_0
    iget p4, p0, Lcom/tencent/liteav/renderer/e;->m:I

    .line 651
    iget v0, p0, Lcom/tencent/liteav/renderer/e;->n:I

    .line 654
    iget v1, p0, Lcom/tencent/liteav/renderer/e;->u:I

    if-nez v1, :cond_3

    .line 655
    iget-object v1, p0, Lcom/tencent/liteav/renderer/e;->r:Lcom/tencent/liteav/renderer/h;

    sget v2, Lcom/tencent/liteav/renderer/h;->a:I

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/renderer/h;->a(I)V

    goto :goto_1

    .line 657
    :cond_3
    iget-object v1, p0, Lcom/tencent/liteav/renderer/e;->r:Lcom/tencent/liteav/renderer/h;

    sget v2, Lcom/tencent/liteav/renderer/h;->b:I

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/renderer/h;->a(I)V

    .line 661
    :goto_1
    iget v1, p0, Lcom/tencent/liteav/renderer/e;->v:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    .line 662
    iget-object v1, p0, Lcom/tencent/liteav/renderer/e;->r:Lcom/tencent/liteav/renderer/h;

    invoke-virtual {v1, v3}, Lcom/tencent/liteav/renderer/h;->a(Z)V

    goto :goto_2

    .line 664
    :cond_4
    iget-object v1, p0, Lcom/tencent/liteav/renderer/e;->r:Lcom/tencent/liteav/renderer/h;

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/renderer/h;->a(Z)V

    .line 668
    :goto_2
    iget v1, p0, Lcom/tencent/liteav/renderer/e;->t:I

    iget v4, p0, Lcom/tencent/liteav/renderer/e;->k:I

    add-int/2addr v4, v1

    rem-int/lit16 v4, v4, 0x168

    if-eqz p5, :cond_6

    const/16 p5, 0x5a

    if-eq v1, p5, :cond_5

    const/16 p5, 0x10e

    if-ne v1, p5, :cond_6

    .line 672
    :cond_5
    iget p5, p0, Lcom/tencent/liteav/renderer/e;->t:I

    iget v1, p0, Lcom/tencent/liteav/renderer/e;->k:I

    add-int/2addr p5, v1

    add-int/lit16 p5, p5, 0xb4

    rem-int/lit16 v4, p5, 0x168

    .line 675
    :cond_6
    iget-object p5, p0, Lcom/tencent/liteav/renderer/e;->r:Lcom/tencent/liteav/renderer/h;

    invoke-virtual {p5, v4}, Lcom/tencent/liteav/renderer/h;->b(I)V

    .line 677
    iget-object p5, p0, Lcom/tencent/liteav/renderer/e;->r:Lcom/tencent/liteav/renderer/h;

    invoke-virtual {p5, p2, p3}, Lcom/tencent/liteav/renderer/h;->b(II)V

    .line 678
    iget-object p2, p0, Lcom/tencent/liteav/renderer/e;->r:Lcom/tencent/liteav/renderer/h;

    invoke-virtual {p2, p4, v0}, Lcom/tencent/liteav/renderer/h;->a(II)V

    const/4 p2, 0x3

    new-array p2, p2, [I

    .line 679
    iget-object p3, p0, Lcom/tencent/liteav/renderer/e;->r:Lcom/tencent/liteav/renderer/h;

    invoke-virtual {p3, p1}, Lcom/tencent/liteav/renderer/h;->d(I)I

    move-result p1

    aput p1, p2, v2

    aput p4, p2, v3

    const/4 p1, 0x2

    aput v0, p2, p1

    return-object p2
.end method

.method private b()V
    .locals 17

    move-object/from16 v0, p0

    .line 807
    iget-boolean v1, v0, Lcom/tencent/liteav/renderer/e;->F:Z

    const-string v2, "TXCVideoRender"

    const-wide/16 v3, 0x0

    if-nez v1, :cond_0

    .line 808
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 809
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/liteav/renderer/e;->getID()Ljava/lang/String;

    move-result-object v5

    const-string v6, "EVT_USERID"

    invoke-virtual {v1, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x7d3

    const-string v6, "EVT_ID"

    .line 810
    invoke-virtual {v1, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 811
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v6

    const-string v8, "EVT_TIME"

    invoke-virtual {v1, v8, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 812
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getUtcTimeTick()J

    move-result-wide v6

    const-string v8, "EVT_UTC_TIME"

    invoke-virtual {v1, v8, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v6, "EVT_MSG"

    const-string v7, "Render the first video frame(IDR)"

    .line 813
    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 814
    iget v6, v0, Lcom/tencent/liteav/renderer/e;->h:I

    const-string v7, "EVT_PARAM1"

    invoke-virtual {v1, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 815
    iget v6, v0, Lcom/tencent/liteav/renderer/e;->i:I

    const-string v7, "EVT_PARAM2"

    invoke-virtual {v1, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 816
    iget-object v6, v0, Lcom/tencent/liteav/renderer/e;->p:Ljava/lang/ref/WeakReference;

    invoke-static {v6, v5, v1}, Lcom/tencent/liteav/basic/util/h;->a(Ljava/lang/ref/WeakReference;ILandroid/os/Bundle;)V

    const/16 v1, 0x1771

    .line 817
    iget v5, v0, Lcom/tencent/liteav/renderer/e;->j:I

    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v1, v5, v6}, Lcom/tencent/liteav/renderer/e;->setStatusValue(IILjava/lang/Object;)Z

    const/16 v1, 0x177a

    .line 818
    iget v5, v0, Lcom/tencent/liteav/renderer/e;->j:I

    iget v6, v0, Lcom/tencent/liteav/renderer/e;->h:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v5, v6}, Lcom/tencent/liteav/renderer/e;->setStatusValue(IILjava/lang/Object;)Z

    const/16 v1, 0x177b

    .line 819
    iget v5, v0, Lcom/tencent/liteav/renderer/e;->j:I

    iget v6, v0, Lcom/tencent/liteav/renderer/e;->i:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v5, v6}, Lcom/tencent/liteav/renderer/e;->setStatusValue(IILjava/lang/Object;)Z

    .line 820
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FirstFramePath][Video][Render] TXCVideoRender: render first video frame. instance:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " id:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 821
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/liteav/renderer/e;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " type:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/tencent/liteav/renderer/e;->j:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 820
    invoke-static {v2, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 822
    iput-boolean v1, v0, Lcom/tencent/liteav/renderer/e;->F:Z

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 824
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/liteav/renderer/e;->getID()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    iget v1, v0, Lcom/tencent/liteav/renderer/e;->j:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v6, 0x2

    aput-object v1, v5, v6

    const-string v1, "Remote-VideoRender[%d]: Render first frame [tinyID:%s][streamType:%d]"

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "streamType: 2-big, 3-small, 7-sub"

    invoke-static {v6, v1, v5, v7}, Lcom/tencent/liteav/basic/module/Monitor;->a(ILjava/lang/String;Ljava/lang/String;I)V

    .line 825
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/liteav/renderer/e;->getID()Ljava/lang/String;

    move-result-object v1

    const v5, 0x9c56

    iget v6, v0, Lcom/tencent/liteav/renderer/e;->j:I

    invoke-static {v1, v5, v3, v4, v6}, Lcom/tencent/liteav/basic/module/TXCKeyPointReportProxy;->a(Ljava/lang/String;IJI)V

    .line 828
    :cond_0
    iget-object v1, v0, Lcom/tencent/liteav/renderer/e;->H:Lcom/tencent/liteav/renderer/e$a;

    iget-boolean v1, v1, Lcom/tencent/liteav/renderer/e$a;->o:Z

    if-nez v1, :cond_1

    return-void

    .line 831
    :cond_1
    iget-object v1, v0, Lcom/tencent/liteav/renderer/e;->H:Lcom/tencent/liteav/renderer/e$a;

    iget-wide v5, v1, Lcom/tencent/liteav/renderer/e$a;->c:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, v1, Lcom/tencent/liteav/renderer/e$a;->c:J

    .line 832
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/liteav/renderer/e;->o()V

    .line 834
    iget-object v1, v0, Lcom/tencent/liteav/renderer/e;->H:Lcom/tencent/liteav/renderer/e$a;

    iget-wide v5, v1, Lcom/tencent/liteav/renderer/e$a;->n:J

    invoke-direct {v0, v5, v6}, Lcom/tencent/liteav/renderer/e;->a(J)J

    move-result-wide v5

    .line 835
    iget-object v1, v0, Lcom/tencent/liteav/renderer/e;->H:Lcom/tencent/liteav/renderer/e$a;

    iget-wide v9, v1, Lcom/tencent/liteav/renderer/e$a;->d:J

    cmp-long v1, v9, v3

    if-eqz v1, :cond_6

    .line 836
    iget-object v1, v0, Lcom/tencent/liteav/renderer/e;->H:Lcom/tencent/liteav/renderer/e$a;

    iget-wide v9, v1, Lcom/tencent/liteav/renderer/e$a;->d:J

    invoke-direct {v0, v9, v10}, Lcom/tencent/liteav/renderer/e;->a(J)J

    move-result-wide v9

    iput-wide v9, v1, Lcom/tencent/liteav/renderer/e$a;->j:J

    .line 837
    iget-object v1, v0, Lcom/tencent/liteav/renderer/e;->H:Lcom/tencent/liteav/renderer/e$a;

    iget-wide v9, v1, Lcom/tencent/liteav/renderer/e$a;->k:J

    iget-object v11, v0, Lcom/tencent/liteav/renderer/e;->H:Lcom/tencent/liteav/renderer/e$a;

    iget-wide v11, v11, Lcom/tencent/liteav/renderer/e$a;->j:J

    add-long/2addr v9, v11

    iput-wide v9, v1, Lcom/tencent/liteav/renderer/e$a;->k:J

    .line 838
    iget-object v1, v0, Lcom/tencent/liteav/renderer/e;->H:Lcom/tencent/liteav/renderer/e$a;

    iget-wide v9, v1, Lcom/tencent/liteav/renderer/e$a;->j:J

    const-wide/16 v11, 0xc8

    cmp-long v1, v9, v11

    if-lez v1, :cond_2

    .line 839
    iget-object v1, v0, Lcom/tencent/liteav/renderer/e;->H:Lcom/tencent/liteav/renderer/e$a;

    iget-wide v9, v1, Lcom/tencent/liteav/renderer/e$a;->e:J

    add-long/2addr v9, v7

    iput-wide v9, v1, Lcom/tencent/liteav/renderer/e$a;->e:J

    const/16 v1, 0x1779

    .line 840
    iget v9, v0, Lcom/tencent/liteav/renderer/e;->j:I

    iget-object v10, v0, Lcom/tencent/liteav/renderer/e;->H:Lcom/tencent/liteav/renderer/e$a;

    iget-wide v10, v10, Lcom/tencent/liteav/renderer/e$a;->e:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v0, v1, v9, v10}, Lcom/tencent/liteav/renderer/e;->setStatusValue(IILjava/lang/Object;)Z

    .line 842
    :cond_2
    iget-object v1, v0, Lcom/tencent/liteav/renderer/e;->H:Lcom/tencent/liteav/renderer/e$a;

    iget-wide v9, v1, Lcom/tencent/liteav/renderer/e$a;->j:J

    iget v1, v0, Lcom/tencent/liteav/renderer/e;->x:I

    int-to-long v11, v1

    cmp-long v1, v9, v11

    const-string v9, " block time:"

    const-string v10, "render frame count:"

    if-lez v1, :cond_4

    .line 843
    iget-object v1, v0, Lcom/tencent/liteav/renderer/e;->H:Lcom/tencent/liteav/renderer/e$a;

    iget-wide v11, v1, Lcom/tencent/liteav/renderer/e$a;->f:J

    add-long/2addr v11, v7

    iput-wide v11, v1, Lcom/tencent/liteav/renderer/e$a;->f:J

    const/16 v1, 0x1773

    .line 844
    iget v11, v0, Lcom/tencent/liteav/renderer/e;->j:I

    iget-object v12, v0, Lcom/tencent/liteav/renderer/e;->H:Lcom/tencent/liteav/renderer/e$a;

    iget-wide v12, v12, Lcom/tencent/liteav/renderer/e$a;->f:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v0, v1, v11, v12}, Lcom/tencent/liteav/renderer/e;->setStatusValue(IILjava/lang/Object;)Z

    .line 845
    iget-object v1, v0, Lcom/tencent/liteav/renderer/e;->H:Lcom/tencent/liteav/renderer/e$a;

    iget-wide v11, v1, Lcom/tencent/liteav/renderer/e$a;->j:J

    iget-object v1, v0, Lcom/tencent/liteav/renderer/e;->H:Lcom/tencent/liteav/renderer/e$a;

    iget-wide v13, v1, Lcom/tencent/liteav/renderer/e$a;->i:J

    cmp-long v1, v11, v13

    if-lez v1, :cond_3

    .line 846
    iget-object v1, v0, Lcom/tencent/liteav/renderer/e;->H:Lcom/tencent/liteav/renderer/e$a;

    iget-wide v11, v1, Lcom/tencent/liteav/renderer/e$a;->j:J

    iput-wide v11, v1, Lcom/tencent/liteav/renderer/e$a;->i:J

    const/16 v1, 0x1775

    .line 847
    iget v11, v0, Lcom/tencent/liteav/renderer/e;->j:I

    iget-object v12, v0, Lcom/tencent/liteav/renderer/e;->H:Lcom/tencent/liteav/renderer/e$a;

    iget-wide v12, v12, Lcom/tencent/liteav/renderer/e$a;->i:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v0, v1, v11, v12}, Lcom/tencent/liteav/renderer/e;->setStatusValue(IILjava/lang/Object;)Z

    .line 850
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/tencent/liteav/renderer/e;->H:Lcom/tencent/liteav/renderer/e$a;

    iget-wide v11, v11, Lcom/tencent/liteav/renderer/e$a;->c:J

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/tencent/liteav/renderer/e;->H:Lcom/tencent/liteav/renderer/e$a;

    iget-wide v11, v11, Lcom/tencent/liteav/renderer/e$a;->j:J

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, "> 500"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    :cond_4
    iget-object v1, v0, Lcom/tencent/liteav/renderer/e;->H:Lcom/tencent/liteav/renderer/e$a;

    iget-wide v11, v1, Lcom/tencent/liteav/renderer/e$a;->j:J

    iget v1, v0, Lcom/tencent/liteav/renderer/e;->c:I

    int-to-long v13, v1

    cmp-long v1, v11, v13

    if-lez v1, :cond_5

    .line 854
    iget-wide v11, v0, Lcom/tencent/liteav/renderer/e;->z:J

    iget-object v1, v0, Lcom/tencent/liteav/renderer/e;->H:Lcom/tencent/liteav/renderer/e$a;

    iget-wide v13, v1, Lcom/tencent/liteav/renderer/e$a;->j:J

    add-long/2addr v11, v13

    iput-wide v11, v0, Lcom/tencent/liteav/renderer/e;->z:J

    .line 855
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/tencent/liteav/renderer/e;->H:Lcom/tencent/liteav/renderer/e$a;

    iget-wide v11, v11, Lcom/tencent/liteav/renderer/e$a;->c:J

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/tencent/liteav/renderer/e;->H:Lcom/tencent/liteav/renderer/e$a;

    iget-wide v11, v11, Lcom/tencent/liteav/renderer/e$a;->j:J

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, "> "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v0, Lcom/tencent/liteav/renderer/e;->c:I

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    iget-object v11, v0, Lcom/tencent/liteav/renderer/e;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/liteav/renderer/e;->getID()Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x839

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Current video block for "

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Lcom/tencent/liteav/renderer/e;->H:Lcom/tencent/liteav/renderer/e$a;

    iget-wide v14, v14, Lcom/tencent/liteav/renderer/e$a;->j:J

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, "ms"

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    iget-object v1, v0, Lcom/tencent/liteav/renderer/e;->H:Lcom/tencent/liteav/renderer/e$a;

    iget-wide v3, v1, Lcom/tencent/liteav/renderer/e$a;->j:J

    move-wide v15, v3

    invoke-static/range {v11 .. v16}, Lcom/tencent/liteav/basic/util/h;->a(Ljava/lang/ref/WeakReference;Ljava/lang/String;ILjava/lang/String;J)V

    .line 857
    iget-object v1, v0, Lcom/tencent/liteav/renderer/e;->H:Lcom/tencent/liteav/renderer/e$a;

    iget-wide v3, v1, Lcom/tencent/liteav/renderer/e$a;->h:J

    iget-object v11, v0, Lcom/tencent/liteav/renderer/e;->H:Lcom/tencent/liteav/renderer/e$a;

    iget-wide v11, v11, Lcom/tencent/liteav/renderer/e$a;->j:J

    add-long/2addr v3, v11

    iput-wide v3, v1, Lcom/tencent/liteav/renderer/e$a;->h:J

    const/16 v1, 0x1776

    .line 858
    iget v3, v0, Lcom/tencent/liteav/renderer/e;->j:I

    iget-object v4, v0, Lcom/tencent/liteav/renderer/e;->H:Lcom/tencent/liteav/renderer/e$a;

    iget-wide v11, v4, Lcom/tencent/liteav/renderer/e$a;->h:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Lcom/tencent/liteav/renderer/e;->setStatusValue(IILjava/lang/Object;)Z

    .line 860
    :cond_5
    iget-object v1, v0, Lcom/tencent/liteav/renderer/e;->H:Lcom/tencent/liteav/renderer/e$a;

    iget-wide v3, v1, Lcom/tencent/liteav/renderer/e$a;->j:J

    const-wide/16 v11, 0x3e8

    cmp-long v1, v3, v11

    if-lez v1, :cond_6

    .line 861
    iget-object v1, v0, Lcom/tencent/liteav/renderer/e;->H:Lcom/tencent/liteav/renderer/e$a;

    iget-wide v3, v1, Lcom/tencent/liteav/renderer/e$a;->g:J

    add-long/2addr v3, v7

    iput-wide v3, v1, Lcom/tencent/liteav/renderer/e$a;->g:J

    const/16 v1, 0x1774

    .line 862
    iget v3, v0, Lcom/tencent/liteav/renderer/e;->j:I

    iget-object v4, v0, Lcom/tencent/liteav/renderer/e;->H:Lcom/tencent/liteav/renderer/e$a;

    iget-wide v11, v4, Lcom/tencent/liteav/renderer/e$a;->g:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Lcom/tencent/liteav/renderer/e;->setStatusValue(IILjava/lang/Object;)Z

    .line 863
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/tencent/liteav/renderer/e;->H:Lcom/tencent/liteav/renderer/e$a;

    iget-wide v3, v3, Lcom/tencent/liteav/renderer/e$a;->c:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/tencent/liteav/renderer/e;->H:Lcom/tencent/liteav/renderer/e$a;

    iget-wide v3, v3, Lcom/tencent/liteav/renderer/e$a;->j:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "> 1000"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    :cond_6
    iget-object v1, v0, Lcom/tencent/liteav/renderer/e;->H:Lcom/tencent/liteav/renderer/e$a;

    iget-wide v1, v1, Lcom/tencent/liteav/renderer/e$a;->n:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_7

    .line 868
    iget v1, v0, Lcom/tencent/liteav/renderer/e;->c:I

    int-to-long v1, v1

    cmp-long v1, v5, v1

    if-lez v1, :cond_7

    .line 869
    iget-wide v1, v0, Lcom/tencent/liteav/renderer/e;->A:J

    add-long/2addr v1, v7

    iput-wide v1, v0, Lcom/tencent/liteav/renderer/e;->A:J

    .line 870
    iget-wide v1, v0, Lcom/tencent/liteav/renderer/e;->B:J

    add-long/2addr v1, v5

    iput-wide v1, v0, Lcom/tencent/liteav/renderer/e;->B:J

    .line 874
    :cond_7
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v1

    .line 875
    iget-wide v3, v0, Lcom/tencent/liteav/renderer/e;->y:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_8

    .line 876
    iput-wide v1, v0, Lcom/tencent/liteav/renderer/e;->y:J

    goto :goto_0

    :cond_8
    sub-long v3, v1, v3

    const-wide/16 v5, 0x7d0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_a

    const/16 v3, 0x4277

    .line 879
    iget v4, v0, Lcom/tencent/liteav/renderer/e;->j:I

    iget-wide v5, v0, Lcom/tencent/liteav/renderer/e;->A:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Lcom/tencent/liteav/renderer/e;->setStatusValue(IILjava/lang/Object;)Z

    const/16 v3, 0x4278

    .line 880
    iget v4, v0, Lcom/tencent/liteav/renderer/e;->j:I

    iget-wide v5, v0, Lcom/tencent/liteav/renderer/e;->B:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Lcom/tencent/liteav/renderer/e;->setStatusValue(IILjava/lang/Object;)Z

    .line 882
    iget-wide v3, v0, Lcom/tencent/liteav/renderer/e;->C:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_9

    .line 883
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/liteav/renderer/e;->getID()Ljava/lang/String;

    move-result-object v3

    const v4, 0x9c45

    iget-wide v5, v0, Lcom/tencent/liteav/renderer/e;->z:J

    long-to-int v5, v5

    int-to-long v5, v5

    iget v7, v0, Lcom/tencent/liteav/renderer/e;->j:I

    invoke-static {v3, v4, v5, v6, v7}, Lcom/tencent/liteav/basic/module/TXCKeyPointReportProxy;->a(Ljava/lang/String;IJI)V

    .line 884
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/liteav/renderer/e;->getID()Ljava/lang/String;

    move-result-object v3

    const v4, 0x9c81

    iget-wide v5, v0, Lcom/tencent/liteav/renderer/e;->B:J

    long-to-int v5, v5

    int-to-long v5, v5

    iget v7, v0, Lcom/tencent/liteav/renderer/e;->j:I

    invoke-static {v3, v4, v5, v6, v7}, Lcom/tencent/liteav/basic/module/TXCKeyPointReportProxy;->a(Ljava/lang/String;IJI)V

    .line 885
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/liteav/renderer/e;->getID()Ljava/lang/String;

    move-result-object v3

    const v4, 0x9c46

    iget-wide v5, v0, Lcom/tencent/liteav/renderer/e;->y:J

    sub-long v5, v1, v5

    long-to-int v5, v5

    int-to-long v5, v5

    iget v7, v0, Lcom/tencent/liteav/renderer/e;->j:I

    invoke-static {v3, v4, v5, v6, v7}, Lcom/tencent/liteav/basic/module/TXCKeyPointReportProxy;->a(Ljava/lang/String;IJI)V

    const/16 v3, 0x177c

    .line 886
    iget v4, v0, Lcom/tencent/liteav/renderer/e;->j:I

    iget-object v5, v0, Lcom/tencent/liteav/renderer/e;->H:Lcom/tencent/liteav/renderer/e$a;

    iget-wide v5, v5, Lcom/tencent/liteav/renderer/e$a;->k:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Lcom/tencent/liteav/renderer/e;->setStatusValue(IILjava/lang/Object;)Z

    :cond_9
    const-wide/16 v3, 0x0

    .line 889
    iput-wide v3, v0, Lcom/tencent/liteav/renderer/e;->z:J

    .line 890
    iput-wide v3, v0, Lcom/tencent/liteav/renderer/e;->A:J

    .line 891
    iput-wide v3, v0, Lcom/tencent/liteav/renderer/e;->B:J

    .line 892
    iput-wide v1, v0, Lcom/tencent/liteav/renderer/e;->y:J

    goto :goto_1

    :cond_a
    :goto_0
    const-wide/16 v3, 0x0

    .line 895
    :goto_1
    iget-object v1, v0, Lcom/tencent/liteav/renderer/e;->H:Lcom/tencent/liteav/renderer/e$a;

    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v5

    iput-wide v5, v1, Lcom/tencent/liteav/renderer/e$a;->d:J

    .line 896
    iget-object v1, v0, Lcom/tencent/liteav/renderer/e;->H:Lcom/tencent/liteav/renderer/e$a;

    iget-wide v5, v1, Lcom/tencent/liteav/renderer/e$a;->d:J

    iput-wide v5, v1, Lcom/tencent/liteav/renderer/e$a;->n:J

    .line 897
    iget-wide v1, v0, Lcom/tencent/liteav/renderer/e;->C:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_b

    .line 898
    iget-object v1, v0, Lcom/tencent/liteav/renderer/e;->H:Lcom/tencent/liteav/renderer/e$a;

    iget-wide v1, v1, Lcom/tencent/liteav/renderer/e$a;->d:J

    iput-wide v1, v0, Lcom/tencent/liteav/renderer/e;->C:J

    .line 901
    :cond_b
    iget-object v1, v0, Lcom/tencent/liteav/renderer/e;->H:Lcom/tencent/liteav/renderer/e$a;

    iget v2, v0, Lcom/tencent/liteav/renderer/e;->i:I

    iput v2, v1, Lcom/tencent/liteav/renderer/e$a;->m:I

    .line 902
    iget v2, v0, Lcom/tencent/liteav/renderer/e;->h:I

    iput v2, v1, Lcom/tencent/liteav/renderer/e$a;->l:I

    return-void
.end method

.method private b(Landroid/view/Surface;)V
    .locals 3

    .line 544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "surface-render: set surface "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCVideoRender"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    iget-object v0, p0, Lcom/tencent/liteav/renderer/e;->s:Landroid/view/Surface;

    if-ne v0, p1, :cond_0

    const-string p1, "TXCVideoRender"

    const-string v0, "surface-render: set the same surface, ignore "

    .line 546
    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 549
    :cond_0
    iput-object p1, p0, Lcom/tencent/liteav/renderer/e;->s:Landroid/view/Surface;

    const/4 v0, 0x1

    .line 550
    iput v0, p0, Lcom/tencent/liteav/renderer/e;->l:I

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 552
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surface-render: set surface start render thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TXCVideoRender"

    invoke-static {v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    invoke-virtual {p0, v0}, Lcom/tencent/liteav/renderer/e;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 555
    :cond_1
    monitor-enter p0

    .line 556
    :try_start_0
    iget-object p1, p0, Lcom/tencent/liteav/renderer/e;->q:Lcom/tencent/liteav/basic/e/d;

    if-eqz p1, :cond_2

    const-string p1, "TXCVideoRender"

    .line 557
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surface-render: set surface stop render thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/liteav/renderer/e;->q:Lcom/tencent/liteav/basic/e/d;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    iget-object p1, p0, Lcom/tencent/liteav/renderer/e;->q:Lcom/tencent/liteav/basic/e/d;

    invoke-virtual {p1}, Lcom/tencent/liteav/basic/e/d;->a()V

    .line 559
    iput-object v0, p0, Lcom/tencent/liteav/renderer/e;->q:Lcom/tencent/liteav/basic/e/d;

    .line 561
    :cond_2
    monitor-exit p0

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private b(Landroid/view/TextureView;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 402
    iput v0, p0, Lcom/tencent/liteav/renderer/e;->l:I

    .line 406
    :cond_0
    iget-object v1, p0, Lcom/tencent/liteav/renderer/e;->d:Landroid/view/TextureView;

    if-nez v1, :cond_1

    if-nez p1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/tencent/liteav/renderer/e;->d:Landroid/view/TextureView;

    if-eqz v1, :cond_3

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 409
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play:vrender: set video view @old="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/liteav/renderer/e;->d:Landroid/view/TextureView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",new="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/liteav/renderer/e;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/liteav/renderer/e;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TXCVideoRender"

    invoke-static {v2, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_9

    .line 411
    iget-object v0, p0, Lcom/tencent/liteav/renderer/e;->d:Landroid/view/TextureView;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/tencent/liteav/renderer/e;->b:Landroid/graphics/SurfaceTexture;

    if-nez v1, :cond_4

    .line 412
    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/renderer/e;->b(Landroid/graphics/SurfaceTexture;)V

    .line 413
    iget-object v0, p0, Lcom/tencent/liteav/renderer/e;->d:Landroid/view/TextureView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 415
    :cond_4
    iput-object p1, p0, Lcom/tencent/liteav/renderer/e;->d:Landroid/view/TextureView;

    .line 416
    iget-object p1, p0, Lcom/tencent/liteav/renderer/e;->d:Landroid/view/TextureView;

    if-eqz p1, :cond_9

    .line 417
    invoke-virtual {p1}, Landroid/view/TextureView;->getWidth()I

    move-result p1

    if-eqz p1, :cond_5

    .line 418
    iget-object p1, p0, Lcom/tencent/liteav/renderer/e;->d:Landroid/view/TextureView;

    invoke-virtual {p1}, Landroid/view/TextureView;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/tencent/liteav/renderer/e;->f:I

    .line 420
    :cond_5
    iget-object p1, p0, Lcom/tencent/liteav/renderer/e;->d:Landroid/view/TextureView;

    invoke-virtual {p1}, Landroid/view/TextureView;->getHeight()I

    move-result p1

    if-eqz p1, :cond_6

    .line 421
    iget-object p1, p0, Lcom/tencent/liteav/renderer/e;->d:Landroid/view/TextureView;

    invoke-virtual {p1}, Landroid/view/TextureView;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/tencent/liteav/renderer/e;->g:I

    .line 424
    :cond_6
    new-instance p1, Lcom/tencent/liteav/renderer/d;

    iget-object v0, p0, Lcom/tencent/liteav/renderer/e;->d:Landroid/view/TextureView;

    invoke-direct {p1, v0}, Lcom/tencent/liteav/renderer/d;-><init>(Landroid/view/TextureView;)V

    iput-object p1, p0, Lcom/tencent/liteav/renderer/e;->e:Lcom/tencent/liteav/renderer/d;

    .line 425
    iget-object p1, p0, Lcom/tencent/liteav/renderer/e;->e:Lcom/tencent/liteav/renderer/d;

    iget v0, p0, Lcom/tencent/liteav/renderer/e;->h:I

    iget v1, p0, Lcom/tencent/liteav/renderer/e;->i:I

    invoke-virtual {p1, v0, v1}, Lcom/tencent/liteav/renderer/d;->b(II)V

    .line 426
    iget-object p1, p0, Lcom/tencent/liteav/renderer/e;->e:Lcom/tencent/liteav/renderer/d;

    iget v0, p0, Lcom/tencent/liteav/renderer/e;->f:I

    iget v1, p0, Lcom/tencent/liteav/renderer/e;->g:I

    invoke-virtual {p1, v0, v1}, Lcom/tencent/liteav/renderer/d;->a(II)V

    .line 427
    iget-object p1, p0, Lcom/tencent/liteav/renderer/e;->e:Lcom/tencent/liteav/renderer/d;

    iget v0, p0, Lcom/tencent/liteav/renderer/e;->u:I

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/renderer/d;->a(I)V

    .line 428
    iget-object p1, p0, Lcom/tencent/liteav/renderer/e;->e:Lcom/tencent/liteav/renderer/d;

    iget v0, p0, Lcom/tencent/liteav/renderer/e;->t:I

    iget v1, p0, Lcom/tencent/liteav/renderer/e;->k:I

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/renderer/d;->c(I)V

    .line 429
    iget p1, p0, Lcom/tencent/liteav/renderer/e;->v:I

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/renderer/e;->d(I)V

    .line 430
    iget-object p1, p0, Lcom/tencent/liteav/renderer/e;->d:Landroid/view/TextureView;

    invoke-virtual {p1, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 432
    iget-object p1, p0, Lcom/tencent/liteav/renderer/e;->b:Landroid/graphics/SurfaceTexture;

    if-eqz p1, :cond_8

    .line 433
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->VersionInt()I

    move-result p1

    const/16 v0, 0x10

    if-lt p1, v0, :cond_7

    iget-object p1, p0, Lcom/tencent/liteav/renderer/e;->d:Landroid/view/TextureView;

    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/liteav/renderer/e;->b:Landroid/graphics/SurfaceTexture;

    if-eq p1, v0, :cond_7

    .line 434
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "play:vrender: setSurfaceTexture "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tencent/liteav/renderer/e;->d:Landroid/view/TextureView;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", surfaceTexture "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tencent/liteav/renderer/e;->b:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    :try_start_0
    iget-object p1, p0, Lcom/tencent/liteav/renderer/e;->d:Landroid/view/TextureView;

    iget-object v0, p0, Lcom/tencent/liteav/renderer/e;->b:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSurfaceTexture error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 441
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "play:vrender: not setSurfaceTexture old surfaceTexture "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tencent/liteav/renderer/e;->d:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", new surfaceTexture "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tencent/liteav/renderer/e;->b:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 444
    :cond_8
    iget-object p1, p0, Lcom/tencent/liteav/renderer/e;->d:Landroid/view/TextureView;

    invoke-virtual {p1}, Landroid/view/TextureView;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 445
    iget-object p1, p0, Lcom/tencent/liteav/renderer/e;->d:Landroid/view/TextureView;

    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/renderer/e;->a(Landroid/graphics/SurfaceTexture;)V

    :cond_9
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/tencent/liteav/renderer/e;)[I
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/tencent/liteav/renderer/e;->w:[I

    return-object p0
.end method


# virtual methods
.method public a()Landroid/graphics/SurfaceTexture;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .line 80
    iput p1, p0, Lcom/tencent/liteav/renderer/e;->j:I

    return-void
.end method

.method protected a(II)V
    .locals 1

    .line 453
    iget v0, p0, Lcom/tencent/liteav/renderer/e;->h:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/tencent/liteav/renderer/e;->i:I

    if-eq v0, p2, :cond_2

    .line 454
    :cond_0
    iget v0, p0, Lcom/tencent/liteav/renderer/e;->h:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/tencent/liteav/renderer/e;->i:I

    if-eq v0, p2, :cond_2

    .line 455
    :cond_1
    iput p1, p0, Lcom/tencent/liteav/renderer/e;->h:I

    .line 456
    iput p2, p0, Lcom/tencent/liteav/renderer/e;->i:I

    .line 457
    iget-object p1, p0, Lcom/tencent/liteav/renderer/e;->e:Lcom/tencent/liteav/renderer/d;

    if-eqz p1, :cond_2

    .line 458
    iget p2, p0, Lcom/tencent/liteav/renderer/e;->h:I

    iget v0, p0, Lcom/tencent/liteav/renderer/e;->i:I

    invoke-virtual {p1, p2, v0}, Lcom/tencent/liteav/renderer/d;->b(II)V

    :cond_2
    return-void
.end method

.method public a(IIIZI)V
    .locals 0

    .line 272
    invoke-virtual {p0, p2, p3}, Lcom/tencent/liteav/renderer/e;->a(II)V

    return-void
.end method

.method protected a(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    const/4 p1, 0x1

    .line 378
    iput-boolean p1, p0, Lcom/tencent/liteav/renderer/e;->D:Z

    return-void
.end method

.method public a(Landroid/view/Surface;)V
    .locals 0

    .line 250
    invoke-direct {p0, p1}, Lcom/tencent/liteav/renderer/e;->b(Landroid/view/Surface;)V

    return-void
.end method

.method public a(Landroid/view/TextureView;)V
    .locals 0

    .line 240
    invoke-direct {p0, p1}, Lcom/tencent/liteav/renderer/e;->b(Landroid/view/TextureView;)V

    return-void
.end method

.method public a(Lcom/tencent/liteav/basic/c/b;)V
    .locals 1

    .line 232
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/liteav/renderer/e;->p:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public a(Lcom/tencent/liteav/basic/e/k;)V
    .locals 7

    .line 159
    iget-object v4, p0, Lcom/tencent/liteav/renderer/e;->d:Landroid/view/TextureView;

    const/4 v0, 0x0

    if-eqz v4, :cond_0

    .line 163
    :try_start_0
    invoke-virtual {v4}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v1

    goto :goto_0

    :catch_0
    move-object v3, v0

    :goto_0
    if-eqz v3, :cond_2

    .line 171
    invoke-virtual {v4, v0}, Landroid/view/TextureView;->getTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v2

    .line 172
    new-instance v6, Lcom/tencent/liteav/renderer/e$1;

    move-object v0, v6

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/tencent/liteav/renderer/e$1;-><init>(Lcom/tencent/liteav/renderer/e;Landroid/graphics/Matrix;Landroid/graphics/Bitmap;Landroid/view/TextureView;Lcom/tencent/liteav/basic/e/k;)V

    invoke-static {v6}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 193
    :cond_0
    iget-object v1, p0, Lcom/tencent/liteav/renderer/e;->q:Lcom/tencent/liteav/basic/e/d;

    if-eqz v1, :cond_1

    .line 194
    new-instance v0, Lcom/tencent/liteav/renderer/e$2;

    invoke-direct {v0, p0, p1}, Lcom/tencent/liteav/renderer/e$2;-><init>(Lcom/tencent/liteav/renderer/e;Lcom/tencent/liteav/basic/e/k;)V

    invoke-virtual {v1, v0}, Lcom/tencent/liteav/basic/e/d;->a(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 204
    invoke-interface {p1, v0}, Lcom/tencent/liteav/basic/e/k;->a(Landroid/graphics/Bitmap;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public a(Lcom/tencent/liteav/basic/structs/TXSVideoFrame;III)V
    .locals 0

    .line 255
    iget p1, p0, Lcom/tencent/liteav/renderer/e;->k:I

    if-eq p4, p1, :cond_0

    .line 256
    iput p4, p0, Lcom/tencent/liteav/renderer/e;->k:I

    .line 257
    iget p1, p0, Lcom/tencent/liteav/renderer/e;->t:I

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/renderer/e;->e(I)V

    .line 260
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/tencent/liteav/renderer/e;->a(II)V

    .line 262
    invoke-direct {p0}, Lcom/tencent/liteav/renderer/e;->b()V

    return-void
.end method

.method public a(Lcom/tencent/liteav/renderer/f;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/tencent/liteav/renderer/e;->o:Lcom/tencent/liteav/renderer/f;

    return-void
.end method

.method protected a(Ljava/lang/Object;I[FZ)V
    .locals 19

    move-object/from16 v7, p0

    .line 584
    iget v0, v7, Lcom/tencent/liteav/renderer/e;->l:I

    const/4 v8, 0x1

    if-ne v0, v8, :cond_7

    .line 585
    iget v3, v7, Lcom/tencent/liteav/renderer/e;->h:I

    iget v4, v7, Lcom/tencent/liteav/renderer/e;->i:I

    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/tencent/liteav/renderer/e;->a(III[FZ)[I

    move-result-object v0

    const/4 v1, 0x0

    .line 586
    aget v10, v0, v1

    .line 587
    aget v15, v0, v8

    const/4 v2, 0x2

    .line 588
    aget v16, v0, v2

    .line 589
    iget-object v2, v7, Lcom/tencent/liteav/renderer/e;->w:[I

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x4

    if-eqz p4, :cond_0

    .line 591
    iget-object v1, v7, Lcom/tencent/liteav/renderer/e;->w:[I

    aput v8, v1, v3

    const/16 v2, 0xb4

    .line 592
    aput v2, v1, v0

    goto :goto_0

    .line 594
    :cond_0
    iget-object v2, v7, Lcom/tencent/liteav/renderer/e;->w:[I

    aput v1, v2, v3

    .line 595
    aput v1, v2, v0

    .line 597
    :goto_0
    monitor-enter p0

    .line 598
    :try_start_0
    iget-object v0, v7, Lcom/tencent/liteav/renderer/e;->s:Landroid/view/Surface;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 601
    iget-object v2, v7, Lcom/tencent/liteav/renderer/e;->q:Lcom/tencent/liteav/basic/e/d;

    if-eqz v2, :cond_2

    .line 602
    iget-object v2, v7, Lcom/tencent/liteav/renderer/e;->q:Lcom/tencent/liteav/basic/e/d;

    invoke-virtual {v2}, Lcom/tencent/liteav/basic/e/d;->b()Landroid/view/Surface;

    move-result-object v2

    if-ne v2, v0, :cond_1

    if-eqz v2, :cond_2

    .line 603
    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    const-string v3, "TXCVideoRender"

    .line 605
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "surface-render: onDrawTextureToSurface surface change stop render thread "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v7, Lcom/tencent/liteav/renderer/e;->q:Lcom/tencent/liteav/basic/e/d;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    iget-object v2, v7, Lcom/tencent/liteav/renderer/e;->q:Lcom/tencent/liteav/basic/e/d;

    invoke-virtual {v2}, Lcom/tencent/liteav/basic/e/d;->a()V

    .line 607
    iput-object v1, v7, Lcom/tencent/liteav/renderer/e;->q:Lcom/tencent/liteav/basic/e/d;

    .line 611
    :cond_2
    iget-object v1, v7, Lcom/tencent/liteav/renderer/e;->q:Lcom/tencent/liteav/basic/e/d;

    if-nez v1, :cond_3

    iget v1, v7, Lcom/tencent/liteav/renderer/e;->l:I

    if-ne v1, v8, :cond_3

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 612
    new-instance v1, Lcom/tencent/liteav/basic/e/d;

    invoke-direct {v1}, Lcom/tencent/liteav/basic/e/d;-><init>()V

    iput-object v1, v7, Lcom/tencent/liteav/renderer/e;->q:Lcom/tencent/liteav/basic/e/d;

    const-string v1, "TXCVideoRender"

    .line 613
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "surface-render: onDrawTextureToSurface start render thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/tencent/liteav/renderer/e;->q:Lcom/tencent/liteav/basic/e/d;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    iget-object v1, v7, Lcom/tencent/liteav/renderer/e;->q:Lcom/tencent/liteav/basic/e/d;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2, v0}, Lcom/tencent/liteav/basic/e/d;->a(Ljava/lang/Object;Landroid/view/Surface;)V

    .line 616
    :cond_3
    iget-object v0, v7, Lcom/tencent/liteav/renderer/e;->q:Lcom/tencent/liteav/basic/e/d;

    if-eqz v0, :cond_6

    iget v0, v7, Lcom/tencent/liteav/renderer/e;->l:I

    if-ne v0, v8, :cond_6

    if-eqz p4, :cond_4

    .line 618
    iget-object v9, v7, Lcom/tencent/liteav/renderer/e;->q:Lcom/tencent/liteav/basic/e/d;

    const/4 v11, 0x1

    const/16 v12, 0xb4

    iget v13, v7, Lcom/tencent/liteav/renderer/e;->m:I

    iget v14, v7, Lcom/tencent/liteav/renderer/e;->n:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v9 .. v18}, Lcom/tencent/liteav/basic/e/d;->a(IZIIIIIZZ)V

    goto :goto_1

    .line 620
    :cond_4
    iget-object v9, v7, Lcom/tencent/liteav/renderer/e;->q:Lcom/tencent/liteav/basic/e/d;

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget v13, v7, Lcom/tencent/liteav/renderer/e;->m:I

    iget v14, v7, Lcom/tencent/liteav/renderer/e;->n:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v9 .. v18}, Lcom/tencent/liteav/basic/e/d;->a(IZIIIIIZZ)V

    goto :goto_1

    .line 624
    :cond_5
    iget-object v0, v7, Lcom/tencent/liteav/renderer/e;->q:Lcom/tencent/liteav/basic/e/d;

    if-eqz v0, :cond_6

    const-string v0, "TXCVideoRender"

    .line 625
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "surface-render: onDrawTextureToSurface stop render thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/tencent/liteav/renderer/e;->q:Lcom/tencent/liteav/basic/e/d;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    iget-object v0, v7, Lcom/tencent/liteav/renderer/e;->q:Lcom/tencent/liteav/basic/e/d;

    invoke-virtual {v0}, Lcom/tencent/liteav/basic/e/d;->a()V

    .line 627
    iput-object v1, v7, Lcom/tencent/liteav/renderer/e;->q:Lcom/tencent/liteav/basic/e/d;

    .line 630
    :cond_6
    :goto_1
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_7
    :goto_2
    return-void
.end method

.method public a(Z)V
    .locals 6

    .line 285
    invoke-virtual {p0}, Lcom/tencent/liteav/renderer/e;->l()V

    .line 286
    iget-boolean v0, p0, Lcom/tencent/liteav/renderer/e;->E:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 287
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {p0}, Lcom/tencent/liteav/renderer/e;->getID()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    iget v3, p0, Lcom/tencent/liteav/renderer/e;->j:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v0, v4

    const/4 v3, 0x3

    if-eqz p1, :cond_0

    const-string v5, "true"

    goto :goto_0

    :cond_0
    const-string v5, "false"

    :goto_0
    aput-object v5, v0, v3

    const-string v3, "Remote-VideoRender[%d]: Stop [tinyID:%s][streamType:%d][stopRendThread:%s]"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "streamType: 2-big, 3-small, 7-sub"

    invoke-static {v4, v0, v3, v2}, Lcom/tencent/liteav/basic/module/Monitor;->a(ILjava/lang/String;Ljava/lang/String;I)V

    .line 289
    :cond_1
    iput-boolean v2, p0, Lcom/tencent/liteav/renderer/e;->E:Z

    .line 291
    iput-boolean v2, p0, Lcom/tencent/liteav/renderer/e;->F:Z

    if-eqz p1, :cond_3

    .line 293
    iget p1, p0, Lcom/tencent/liteav/renderer/e;->l:I

    if-ne p1, v1, :cond_3

    const/4 p1, -0x1

    .line 294
    iput p1, p0, Lcom/tencent/liteav/renderer/e;->l:I

    const-string p1, "TXCVideoRender"

    const-string v0, "play:vrender: quit render thread when stop"

    .line 295
    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-virtual {p0}, Lcom/tencent/liteav/renderer/e;->d()V

    .line 297
    monitor-enter p0

    .line 298
    :try_start_0
    iget-object p1, p0, Lcom/tencent/liteav/renderer/e;->q:Lcom/tencent/liteav/basic/e/d;

    if-eqz p1, :cond_2

    const-string p1, "TXCVideoRender"

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "surface-render:stop render thread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/liteav/renderer/e;->q:Lcom/tencent/liteav/basic/e/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object p1, p0, Lcom/tencent/liteav/renderer/e;->q:Lcom/tencent/liteav/basic/e/d;

    invoke-virtual {p1}, Lcom/tencent/liteav/basic/e/d;->a()V

    const/4 p1, 0x0

    .line 301
    iput-object p1, p0, Lcom/tencent/liteav/renderer/e;->q:Lcom/tencent/liteav/basic/e/d;

    .line 303
    :cond_2
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public b(I)V
    .locals 0

    if-lez p1, :cond_0

    .line 210
    iput p1, p0, Lcom/tencent/liteav/renderer/e;->c:I

    :cond_0
    return-void
.end method

.method protected b(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    const/4 p1, 0x0

    .line 382
    iput-boolean p1, p0, Lcom/tencent/liteav/renderer/e;->D:Z

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 309
    iput-boolean p1, p0, Lcom/tencent/liteav/renderer/e;->G:Z

    return-void
.end method

.method public c(I)V
    .locals 1

    .line 317
    iput p1, p0, Lcom/tencent/liteav/renderer/e;->u:I

    .line 318
    iget-object v0, p0, Lcom/tencent/liteav/renderer/e;->e:Lcom/tencent/liteav/renderer/d;

    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/renderer/d;->a(I)V

    :cond_0
    return-void
.end method

.method public c(II)V
    .locals 0

    .line 313
    invoke-virtual {p0, p1, p2}, Lcom/tencent/liteav/renderer/e;->a(II)V

    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 780
    iget-object v0, p0, Lcom/tencent/liteav/renderer/e;->H:Lcom/tencent/liteav/renderer/e$a;

    iput-boolean p1, v0, Lcom/tencent/liteav/renderer/e$a;->o:Z

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public d(I)V
    .locals 2

    .line 324
    iput p1, p0, Lcom/tencent/liteav/renderer/e;->v:I

    .line 325
    iget-object v0, p0, Lcom/tencent/liteav/renderer/e;->e:Lcom/tencent/liteav/renderer/d;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    .line 327
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/renderer/d;->a(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 329
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/renderer/d;->a(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public d(II)V
    .locals 2

    .line 683
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "surface-render: set setSurfaceSize "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCVideoRender"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    iget v0, p0, Lcom/tencent/liteav/renderer/e;->m:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/tencent/liteav/renderer/e;->n:I

    if-eq p2, v0, :cond_2

    .line 685
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/renderer/e;->q:Lcom/tencent/liteav/basic/e/d;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/tencent/liteav/renderer/e;->l:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/tencent/liteav/renderer/e;->w:[I

    if-eqz v0, :cond_1

    .line 686
    iget-object v0, p0, Lcom/tencent/liteav/renderer/e;->q:Lcom/tencent/liteav/basic/e/d;

    new-instance v1, Lcom/tencent/liteav/renderer/e$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/liteav/renderer/e$3;-><init>(Lcom/tencent/liteav/renderer/e;II)V

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/basic/e/d;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 700
    :cond_1
    iput p1, p0, Lcom/tencent/liteav/renderer/e;->m:I

    .line 701
    iput p2, p0, Lcom/tencent/liteav/renderer/e;->n:I

    :cond_2
    :goto_0
    return-void
.end method

.method public e()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 277
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/tencent/liteav/renderer/e;->getID()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iget v1, p0, Lcom/tencent/liteav/renderer/e;->j:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "Remote-VideoRender[%d]: Start [tinyID:%s] [streamType:%d]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "streamType: 2-big, 3-small, 7-sub"

    invoke-static {v4, v0, v1, v2}, Lcom/tencent/liteav/basic/module/Monitor;->a(ILjava/lang/String;Ljava/lang/String;I)V

    .line 278
    iput-boolean v3, p0, Lcom/tencent/liteav/renderer/e;->E:Z

    .line 280
    iput-boolean v2, p0, Lcom/tencent/liteav/renderer/e;->F:Z

    .line 281
    invoke-virtual {p0}, Lcom/tencent/liteav/renderer/e;->l()V

    return-void
.end method

.method public e(I)V
    .locals 2

    .line 335
    iput p1, p0, Lcom/tencent/liteav/renderer/e;->t:I

    .line 336
    iget-object v0, p0, Lcom/tencent/liteav/renderer/e;->e:Lcom/tencent/liteav/renderer/d;

    if-eqz v0, :cond_0

    .line 337
    iget v1, p0, Lcom/tencent/liteav/renderer/e;->k:I

    add-int/2addr p1, v1

    rem-int/lit16 p1, p1, 0x168

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/renderer/d;->c(I)V

    :cond_0
    return-void
.end method

.method public f()I
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/tencent/liteav/renderer/e;->d:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    .line 351
    invoke-virtual {v0}, Landroid/view/TextureView;->getWidth()I

    move-result v0

    return v0

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/renderer/e;->s:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 354
    iget v0, p0, Lcom/tencent/liteav/renderer/e;->m:I

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public f(I)V
    .locals 0

    .line 394
    iput p1, p0, Lcom/tencent/liteav/renderer/e;->x:I

    return-void
.end method

.method public g()I
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/tencent/liteav/renderer/e;->d:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {v0}, Landroid/view/TextureView;->getHeight()I

    move-result v0

    return v0

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/renderer/e;->s:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 364
    iget v0, p0, Lcom/tencent/liteav/renderer/e;->n:I

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public h()I
    .locals 1

    .line 370
    iget v0, p0, Lcom/tencent/liteav/renderer/e;->h:I

    return v0
.end method

.method public i()I
    .locals 1

    .line 374
    iget v0, p0, Lcom/tencent/liteav/renderer/e;->i:I

    return v0
.end method

.method protected j()V
    .locals 0

    return-void
.end method

.method protected k()V
    .locals 4

    .line 570
    monitor-enter p0

    .line 571
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/renderer/e;->q:Lcom/tencent/liteav/basic/e/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "TXCVideoRender"

    .line 572
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "surface-render: onRenderThreadEGLDestroy stop render thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tencent/liteav/renderer/e;->q:Lcom/tencent/liteav/basic/e/d;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    iget-object v0, p0, Lcom/tencent/liteav/renderer/e;->q:Lcom/tencent/liteav/basic/e/d;

    invoke-virtual {v0}, Lcom/tencent/liteav/basic/e/d;->a()V

    .line 574
    iput-object v1, p0, Lcom/tencent/liteav/renderer/e;->q:Lcom/tencent/liteav/basic/e/d;

    .line 576
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 577
    iget-object v0, p0, Lcom/tencent/liteav/renderer/e;->r:Lcom/tencent/liteav/renderer/h;

    if-eqz v0, :cond_1

    .line 578
    invoke-virtual {v0}, Lcom/tencent/liteav/renderer/h;->c()V

    .line 579
    iput-object v1, p0, Lcom/tencent/liteav/renderer/e;->r:Lcom/tencent/liteav/renderer/h;

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 576
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public l()V
    .locals 4

    .line 739
    invoke-virtual {p0}, Lcom/tencent/liteav/renderer/e;->m()V

    .line 740
    iget-object v0, p0, Lcom/tencent/liteav/renderer/e;->H:Lcom/tencent/liteav/renderer/e$a;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-wide v1, v0, Lcom/tencent/liteav/renderer/e$a;->b:J

    .line 741
    iput-wide v1, v0, Lcom/tencent/liteav/renderer/e$a;->c:J

    .line 742
    iput-wide v1, v0, Lcom/tencent/liteav/renderer/e$a;->e:J

    .line 743
    iput-wide v1, v0, Lcom/tencent/liteav/renderer/e$a;->f:J

    .line 744
    iput-wide v1, v0, Lcom/tencent/liteav/renderer/e$a;->g:J

    .line 745
    iput-wide v1, v0, Lcom/tencent/liteav/renderer/e$a;->h:J

    .line 746
    iput-wide v1, v0, Lcom/tencent/liteav/renderer/e$a;->i:J

    .line 747
    iput-wide v1, v0, Lcom/tencent/liteav/renderer/e$a;->k:J

    .line 748
    iput-wide v1, p0, Lcom/tencent/liteav/renderer/e;->C:J

    .line 750
    iget v0, p0, Lcom/tencent/liteav/renderer/e;->j:I

    const/16 v1, 0x1771

    invoke-virtual {p0, v1, v0, v3}, Lcom/tencent/liteav/renderer/e;->setStatusValue(IILjava/lang/Object;)Z

    .line 751
    iget v0, p0, Lcom/tencent/liteav/renderer/e;->j:I

    const/16 v1, 0x1773

    invoke-virtual {p0, v1, v0, v3}, Lcom/tencent/liteav/renderer/e;->setStatusValue(IILjava/lang/Object;)Z

    .line 752
    iget v0, p0, Lcom/tencent/liteav/renderer/e;->j:I

    const/16 v1, 0x1775

    invoke-virtual {p0, v1, v0, v3}, Lcom/tencent/liteav/renderer/e;->setStatusValue(IILjava/lang/Object;)Z

    .line 753
    iget v0, p0, Lcom/tencent/liteav/renderer/e;->j:I

    const/16 v1, 0x1776

    invoke-virtual {p0, v1, v0, v3}, Lcom/tencent/liteav/renderer/e;->setStatusValue(IILjava/lang/Object;)Z

    .line 754
    iget v0, p0, Lcom/tencent/liteav/renderer/e;->j:I

    const/16 v1, 0x1774

    invoke-virtual {p0, v1, v0, v3}, Lcom/tencent/liteav/renderer/e;->setStatusValue(IILjava/lang/Object;)Z

    .line 755
    iget v0, p0, Lcom/tencent/liteav/renderer/e;->j:I

    const/16 v1, 0x177c

    invoke-virtual {p0, v1, v0, v3}, Lcom/tencent/liteav/renderer/e;->setStatusValue(IILjava/lang/Object;)Z

    return-void
.end method

.method public m()V
    .locals 3

    .line 760
    invoke-virtual {p0}, Lcom/tencent/liteav/renderer/e;->n()V

    .line 761
    iget-object v0, p0, Lcom/tencent/liteav/renderer/e;->H:Lcom/tencent/liteav/renderer/e$a;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/tencent/liteav/renderer/e$a;->a:J

    .line 762
    iput-wide v1, v0, Lcom/tencent/liteav/renderer/e$a;->d:J

    .line 763
    iput-wide v1, v0, Lcom/tencent/liteav/renderer/e$a;->j:J

    .line 764
    iput-wide v1, p0, Lcom/tencent/liteav/renderer/e;->z:J

    return-void
.end method

.method public n()V
    .locals 3

    .line 769
    iget-object v0, p0, Lcom/tencent/liteav/renderer/e;->H:Lcom/tencent/liteav/renderer/e$a;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/tencent/liteav/renderer/e$a;->n:J

    .line 770
    iput-wide v1, p0, Lcom/tencent/liteav/renderer/e;->B:J

    .line 771
    iput-wide v1, p0, Lcom/tencent/liteav/renderer/e;->A:J

    const/4 v1, 0x0

    .line 772
    iput v1, v0, Lcom/tencent/liteav/renderer/e$a;->l:I

    .line 773
    iput v1, v0, Lcom/tencent/liteav/renderer/e$a;->m:I

    .line 775
    iget v0, p0, Lcom/tencent/liteav/renderer/e;->j:I

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/16 v2, 0x1772

    invoke-virtual {p0, v2, v0, v1}, Lcom/tencent/liteav/renderer/e;->setStatusValue(IILjava/lang/Object;)Z

    return-void
.end method

.method public o()V
    .locals 7

    .line 791
    iget-object v0, p0, Lcom/tencent/liteav/renderer/e;->H:Lcom/tencent/liteav/renderer/e$a;

    iget-wide v0, v0, Lcom/tencent/liteav/renderer/e$a;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 792
    iget-object v0, p0, Lcom/tencent/liteav/renderer/e;->H:Lcom/tencent/liteav/renderer/e$a;

    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/liteav/renderer/e$a;->a:J

    goto :goto_0

    .line 794
    :cond_0
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v0

    iget-object v2, p0, Lcom/tencent/liteav/renderer/e;->H:Lcom/tencent/liteav/renderer/e$a;

    iget-wide v2, v2, Lcom/tencent/liteav/renderer/e$a;->a:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3b6

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    .line 796
    iget-object v2, p0, Lcom/tencent/liteav/renderer/e;->H:Lcom/tencent/liteav/renderer/e$a;

    iget-wide v2, v2, Lcom/tencent/liteav/renderer/e$a;->c:J

    iget-object v4, p0, Lcom/tencent/liteav/renderer/e;->H:Lcom/tencent/liteav/renderer/e$a;

    iget-wide v4, v4, Lcom/tencent/liteav/renderer/e$a;->b:J

    sub-long/2addr v2, v4

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    long-to-double v4, v0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const/16 v4, 0x1772

    .line 797
    iget v5, p0, Lcom/tencent/liteav/renderer/e;->j:I

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {p0, v4, v5, v6}, Lcom/tencent/liteav/renderer/e;->setStatusValue(IILjava/lang/Object;)Z

    .line 798
    invoke-virtual {p0}, Lcom/tencent/liteav/renderer/e;->getID()Ljava/lang/String;

    move-result-object v4

    const v5, 0x9c41

    double-to-int v2, v2

    int-to-long v2, v2

    iget v6, p0, Lcom/tencent/liteav/renderer/e;->j:I

    invoke-static {v4, v5, v2, v3, v6}, Lcom/tencent/liteav/basic/module/TXCKeyPointReportProxy;->a(Ljava/lang/String;IJI)V

    .line 799
    iget-object v2, p0, Lcom/tencent/liteav/renderer/e;->H:Lcom/tencent/liteav/renderer/e$a;

    iget-wide v3, v2, Lcom/tencent/liteav/renderer/e$a;->c:J

    iput-wide v3, v2, Lcom/tencent/liteav/renderer/e$a;->b:J

    .line 800
    iget-object v2, p0, Lcom/tencent/liteav/renderer/e;->H:Lcom/tencent/liteav/renderer/e$a;

    iget-wide v3, v2, Lcom/tencent/liteav/renderer/e$a;->a:J

    add-long/2addr v3, v0

    iput-wide v3, v2, Lcom/tencent/liteav/renderer/e$a;->a:J

    :cond_1
    :goto_0
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "play:vrender: texture available @"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/liteav/renderer/e;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/liteav/renderer/e;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCVideoRender"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    iput p2, p0, Lcom/tencent/liteav/renderer/e;->f:I

    .line 472
    iput p3, p0, Lcom/tencent/liteav/renderer/e;->g:I

    if-eqz p1, :cond_0

    .line 475
    invoke-virtual {p1, p2, p3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 477
    :cond_0
    iget-object p2, p0, Lcom/tencent/liteav/renderer/e;->e:Lcom/tencent/liteav/renderer/d;

    if-eqz p2, :cond_1

    .line 478
    iget p3, p0, Lcom/tencent/liteav/renderer/e;->f:I

    iget v0, p0, Lcom/tencent/liteav/renderer/e;->g:I

    invoke-virtual {p2, p3, v0}, Lcom/tencent/liteav/renderer/d;->a(II)V

    .line 480
    :cond_1
    iget-object p2, p0, Lcom/tencent/liteav/renderer/e;->b:Landroid/graphics/SurfaceTexture;

    if-eqz p2, :cond_3

    .line 482
    :try_start_0
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->VersionInt()I

    move-result p2

    const/16 p3, 0x10

    if-lt p2, p3, :cond_2

    iget-object p2, p0, Lcom/tencent/liteav/renderer/e;->d:Landroid/view/TextureView;

    invoke-virtual {p2}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p2

    iget-object p3, p0, Lcom/tencent/liteav/renderer/e;->b:Landroid/graphics/SurfaceTexture;

    if-eq p2, p3, :cond_2

    .line 483
    iget-object p2, p0, Lcom/tencent/liteav/renderer/e;->d:Landroid/view/TextureView;

    iget-object p3, p0, Lcom/tencent/liteav/renderer/e;->b:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p2, p3}, Landroid/view/TextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string p3, "setSurfaceTexture failed."

    .line 486
    invoke-static {v1, p3, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 487
    invoke-virtual {p0, p1}, Lcom/tencent/liteav/renderer/e;->a(Landroid/graphics/SurfaceTexture;)V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 489
    iput-object p1, p0, Lcom/tencent/liteav/renderer/e;->b:Landroid/graphics/SurfaceTexture;

    goto :goto_1

    .line 491
    :cond_3
    invoke-virtual {p0, p1}, Lcom/tencent/liteav/renderer/e;->a(Landroid/graphics/SurfaceTexture;)V

    :goto_1
    const/4 p1, 0x1

    .line 493
    iput-boolean p1, p0, Lcom/tencent/liteav/renderer/e;->D:Z

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 5

    const-string v0, "TXCVideoRender"

    const/4 v1, 0x0

    .line 518
    :try_start_0
    iput-boolean v1, p0, Lcom/tencent/liteav/renderer/e;->D:Z

    .line 519
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "play:vrender:  onSurfaceTextureDestroyed when need save texture : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/tencent/liteav/renderer/e;->G:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/liteav/renderer/e;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/tencent/liteav/renderer/e;->j:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    iget-boolean v2, p0, Lcom/tencent/liteav/renderer/e;->G:Z

    if-eqz v2, :cond_0

    .line 521
    iput-object p1, p0, Lcom/tencent/liteav/renderer/e;->b:Landroid/graphics/SurfaceTexture;

    goto :goto_0

    .line 523
    :cond_0
    iget-object v2, p0, Lcom/tencent/liteav/renderer/e;->H:Lcom/tencent/liteav/renderer/e$a;

    const-wide/16 v3, 0x0

    iput-wide v3, v2, Lcom/tencent/liteav/renderer/e$a;->a:J

    .line 524
    invoke-virtual {p0, p1}, Lcom/tencent/liteav/renderer/e;->b(Landroid/graphics/SurfaceTexture;)V

    .line 525
    iget-object v2, p0, Lcom/tencent/liteav/renderer/e;->b:Landroid/graphics/SurfaceTexture;

    if-ne p1, v2, :cond_1

    const/4 p1, 0x0

    .line 526
    iput-object p1, p0, Lcom/tencent/liteav/renderer/e;->b:Landroid/graphics/SurfaceTexture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v2, "onSurfaceTextureDestroyed failed."

    .line 530
    invoke-static {v0, v2, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 532
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/tencent/liteav/renderer/e;->b:Landroid/graphics/SurfaceTexture;

    if-nez p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 3

    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "play:vrender: texture size change new:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " old:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/liteav/renderer/e;->f:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/liteav/renderer/e;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCVideoRender"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    iget-boolean v0, p0, Lcom/tencent/liteav/renderer/e;->D:Z

    if-nez v0, :cond_0

    const-string v0, "play:vrender: onSurfaceCreate on onSurfaceTextureSizeChanged when onSurfaceTextureAvailable is not trigger"

    .line 500
    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 501
    iput-boolean v0, p0, Lcom/tencent/liteav/renderer/e;->D:Z

    .line 503
    invoke-virtual {p1, p2, p3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 504
    invoke-virtual {p0, p1}, Lcom/tencent/liteav/renderer/e;->a(Landroid/graphics/SurfaceTexture;)V

    .line 507
    :cond_0
    iput p2, p0, Lcom/tencent/liteav/renderer/e;->f:I

    .line 508
    iput p3, p0, Lcom/tencent/liteav/renderer/e;->g:I

    .line 510
    iget-object p1, p0, Lcom/tencent/liteav/renderer/e;->e:Lcom/tencent/liteav/renderer/d;

    if-eqz p1, :cond_1

    .line 511
    iget p2, p0, Lcom/tencent/liteav/renderer/e;->f:I

    iget p3, p0, Lcom/tencent/liteav/renderer/e;->g:I

    invoke-virtual {p1, p2, p3}, Lcom/tencent/liteav/renderer/d;->a(II)V

    :cond_1
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
