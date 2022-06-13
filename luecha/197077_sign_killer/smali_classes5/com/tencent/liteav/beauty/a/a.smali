.class public Lcom/tencent/liteav/beauty/a/a;
.super Lcom/tencent/liteav/basic/e/f;
.source "TXCGPURGBA2I420Filter.java"


# static fields
.field private static C:[F

.field private static D:[F

.field private static E:[F


# instance fields
.field private A:Ljava/lang/String;

.field private B:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x9

    new-array v1, v0, [F

    .line 94
    fill-array-data v1, :array_0

    sput-object v1, Lcom/tencent/liteav/beauty/a/a;->C:[F

    new-array v0, v0, [F

    .line 101
    fill-array-data v0, :array_1

    sput-object v0, Lcom/tencent/liteav/beauty/a/a;->D:[F

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 108
    fill-array-data v0, :array_2

    sput-object v0, Lcom/tencent/liteav/beauty/a/a;->E:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3e3afb7f    # 0.1826f
        0x3f1d3c36    # 0.6142f
        0x3d7df3b6    # 0.062f
        -0x4231f8a1    # -0.1006f
        -0x4152a305    # -0.3386f
        0x3ee0ded3    # 0.4392f
        0x3ee0ded3    # 0.4392f
        -0x4133c361    # -0.3989f
        -0x42daee63    # -0.0403f
    .end array-data

    :array_1
    .array-data 4
        0x3e837d63    # 0.256816f
        0x3f01103d
        0x3dc886fa
        -0x41e83233
        -0x416aff6d    # -0.29102f
        0x3ee0e779
        0x3ee0e821
        -0x4143ab65
        -0x426db1ea    # -0.071438f
    .end array-data

    :array_2
    .array-data 4
        0x3d800000    # 0.0625f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 2

    const-string v0, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n \nvarying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate.xy;\n}"

    const-string v1, "varying lowp vec2 textureCoordinate;\n \nuniform sampler2D inputImageTexture;\n \nvoid main()\n{\n     gl_FragColor = texture2D(inputImageTexture, textureCoordinate);\n}"

    .line 20
    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/basic/e/f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 79
    iput v0, p0, Lcom/tencent/liteav/beauty/a/a;->r:I

    .line 80
    iput v0, p0, Lcom/tencent/liteav/beauty/a/a;->s:I

    .line 81
    iput v0, p0, Lcom/tencent/liteav/beauty/a/a;->t:I

    .line 82
    iput v0, p0, Lcom/tencent/liteav/beauty/a/a;->u:I

    .line 83
    iput v0, p0, Lcom/tencent/liteav/beauty/a/a;->v:I

    .line 84
    iput v0, p0, Lcom/tencent/liteav/beauty/a/a;->w:I

    .line 85
    iput v0, p0, Lcom/tencent/liteav/beauty/a/a;->x:I

    .line 86
    iput v0, p0, Lcom/tencent/liteav/beauty/a/a;->y:I

    .line 87
    iput v0, p0, Lcom/tencent/liteav/beauty/a/a;->z:I

    const-string v0, "RGBA2I420Filter"

    .line 89
    iput-object v0, p0, Lcom/tencent/liteav/beauty/a/a;->A:Ljava/lang/String;

    const/4 v0, 0x1

    .line 90
    iput v0, p0, Lcom/tencent/liteav/beauty/a/a;->B:I

    .line 21
    iput p1, p0, Lcom/tencent/liteav/beauty/a/a;->B:I

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 3

    if-lez p1, :cond_2

    if-gtz p2, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    iget v0, p0, Lcom/tencent/liteav/beauty/a/a;->f:I

    if-ne v0, p2, :cond_1

    iget v0, p0, Lcom/tencent/liteav/beauty/a/a;->e:I

    if-ne v0, p1, :cond_1

    return-void

    .line 67
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/tencent/liteav/basic/e/f;->a(II)V

    .line 68
    iget-object v0, p0, Lcom/tencent/liteav/beauty/a/a;->A:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RGBA2I420Filter width "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " height "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget v0, p0, Lcom/tencent/liteav/beauty/a/a;->r:I

    int-to-float p1, p1

    invoke-virtual {p0, v0, p1}, Lcom/tencent/liteav/beauty/a/a;->a(IF)V

    .line 71
    iget p1, p0, Lcom/tencent/liteav/beauty/a/a;->s:I

    int-to-float p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/tencent/liteav/beauty/a/a;->a(IF)V

    return-void

    .line 62
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/tencent/liteav/beauty/a/a;->A:Ljava/lang/String;

    const-string p2, "width or height is error!"

    invoke-static {p1, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a()Z
    .locals 5

    .line 31
    iget v0, p0, Lcom/tencent/liteav/beauty/a/a;->B:I

    const/16 v1, 0x8

    const/4 v2, 0x1

    if-ne v2, v0, :cond_0

    .line 32
    invoke-static {v1}, Lcom/tencent/liteav/beauty/NativeLoad;->nativeLoadGLProgram(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/liteav/beauty/a/a;->a:I

    .line 34
    iget-object v0, p0, Lcom/tencent/liteav/beauty/a/a;->A:Ljava/lang/String;

    const-string v1, "RGB-->I420 init!"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    if-ne v3, v0, :cond_1

    .line 36
    iget-object v0, p0, Lcom/tencent/liteav/beauty/a/a;->A:Ljava/lang/String;

    const-string v1, "RGB-->NV21 init!"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xb

    .line 37
    invoke-static {v0}, Lcom/tencent/liteav/beauty/NativeLoad;->nativeLoadGLProgram(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/liteav/beauty/a/a;->a:I

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    if-ne v3, v0, :cond_2

    .line 39
    iget-object v0, p0, Lcom/tencent/liteav/beauty/a/a;->A:Ljava/lang/String;

    const-string v1, "RGBA Format init!"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-super {p0}, Lcom/tencent/liteav/basic/e/f;->a()Z

    move-result v0

    return v0

    .line 42
    :cond_2
    iget-object v0, p0, Lcom/tencent/liteav/beauty/a/a;->A:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "don\'t support format "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/tencent/liteav/beauty/a/a;->B:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " use default I420"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-static {v1}, Lcom/tencent/liteav/beauty/NativeLoad;->nativeLoadGLProgram(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/liteav/beauty/a/a;->a:I

    .line 45
    :goto_0
    iget v0, p0, Lcom/tencent/liteav/beauty/a/a;->a:I

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/tencent/liteav/beauty/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 46
    iput-boolean v2, p0, Lcom/tencent/liteav/beauty/a/a;->g:Z

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/tencent/liteav/beauty/a/a;->g:Z

    .line 48
    :goto_1
    invoke-virtual {p0}, Lcom/tencent/liteav/beauty/a/a;->c()V

    .line 49
    iget-boolean v0, p0, Lcom/tencent/liteav/beauty/a/a;->g:Z

    return v0
.end method

.method public b()Z
    .locals 2

    .line 53
    invoke-super {p0}, Lcom/tencent/liteav/basic/e/f;->b()Z

    .line 54
    iget v0, p0, Lcom/tencent/liteav/beauty/a/a;->a:I

    const-string v1, "width"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/liteav/beauty/a/a;->r:I

    .line 55
    iget v0, p0, Lcom/tencent/liteav/beauty/a/a;->a:I

    const-string v1, "height"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/liteav/beauty/a/a;->s:I

    const/4 v0, 0x1

    return v0
.end method

.method public c()V
    .locals 0

    .line 75
    invoke-super {p0}, Lcom/tencent/liteav/basic/e/f;->c()V

    return-void
.end method
