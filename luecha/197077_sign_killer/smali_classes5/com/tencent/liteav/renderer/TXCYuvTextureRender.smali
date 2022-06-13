.class public Lcom/tencent/liteav/renderer/TXCYuvTextureRender;
.super Ljava/lang/Object;
.source "TXCYuvTextureRender.java"


# static fields
.field private static final BYTES_PER_FLOAT:I = 0x4

.field private static final INVALID_TEXTURE_ID:I = -0x3039

.field private static final POSITION_COMPONENT_COUNT:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field private static final TEXTURE_COORDINATES_COMPONENT_COUNT:I = 0x2

.field private static final mFragmentShaderCode:Ljava/lang/String; = "precision highp float;\nvarying vec2 textureCoordinate;\nuniform sampler2D yTexture;\nuniform sampler2D uTexture;\nuniform mat3 convertMatrix;\nuniform vec3 offset;\n\nvoid main()\n{\n    highp vec3 yuvColor;\n    highp vec3 rgbColor;\n\n    // Get the YUV values\n    yuvColor.x = texture2D(yTexture, textureCoordinate).r;\n    yuvColor.y = texture2D(uTexture, vec2(textureCoordinate.x * 0.5, textureCoordinate.y * 0.5)).r;\n    yuvColor.z = texture2D(uTexture, vec2(textureCoordinate.x * 0.5, textureCoordinate.y * 0.5 + 0.5)).r;\n\n    // Do the color transform   \n    yuvColor += offset;\n    rgbColor = convertMatrix * yuvColor; \n\n    gl_FragColor = vec4(rgbColor, 1.0);\n}\n"

.field private static final mVertexShaderCode:Ljava/lang/String; = "uniform mat4 uMatrix;uniform mat4 uTextureMatrix;attribute vec2 position;attribute vec2 inputTextureCoordinate;varying vec2 textureCoordinate;void main() {vec4 pos  = vec4(position, 0.0, 1.0);gl_Position = uMatrix * pos;textureCoordinate = (uTextureMatrix*vec4(inputTextureCoordinate, 0.0, 0.0)).xy;}"


# instance fields
.field bt601_fullrage_ffmpeg_matrix:[F

.field bt601_fullrange_ffmpeg_offset:[F

.field bt601_videorage_ffmpeg_matrix:[F

.field bt601_videorange_ffmpeg_offset:[F

.field private final def_InputType_YUVJ420:I

.field private mConvertMatrixUniform:I

.field private mConvertOffsetUniform:I

.field private mFrameBufferID:I

.field private mFrameBufferTextureID:I

.field private mHeight:I

.field private mIndices:[S

.field private mIndicesBuffer:Ljava/nio/ShortBuffer;

.field private mMVPMatrix:[F

.field private mNeedReLoadFrameBuffer:Z

.field private mPositionHandle:I

.field private mProgram:I

.field private mRawDataFrameType:I

.field private mTextureBuffer:Ljava/nio/FloatBuffer;

.field private mTextureCoordinatesHandle:I

.field private mTextureIds:[I

.field private mTextureMatrix:[F

.field private mTextureMatrixHandle:I

.field private mTextureUnitHandle0:I

.field private mTextureUnitHandle1:I

.field private mVertexBuffer:Ljava/nio/FloatBuffer;

.field private mVertexMatrixHandle:I

.field private mVerticesCoordinates:[F

.field private mVideoHeight:I

.field private mVideoWidth:I

.field private mWidth:I

.field private mbt601_fullRange_matrix3:[F

.field private mbt601_offset_matrix:[F

.field private mbt601_videoRange_matrix3:[F

.field private mbt709_videoRange_matrix3:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->TAG:Ljava/lang/String;

    .line 420
    invoke-static {}, Lcom/tencent/liteav/basic/util/h;->f()Z

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [F

    .line 68
    iput-object v1, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mMVPMatrix:[F

    new-array v0, v0, [F

    .line 69
    iput-object v0, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mTextureMatrix:[F

    const/4 v0, -0x1

    .line 81
    iput v0, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mConvertMatrixUniform:I

    .line 82
    iput v0, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mConvertOffsetUniform:I

    const/4 v1, 0x0

    .line 84
    iput-boolean v1, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mNeedReLoadFrameBuffer:Z

    const/16 v2, -0x3039

    .line 88
    iput v2, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mFrameBufferTextureID:I

    .line 89
    iput v2, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mFrameBufferID:I

    .line 91
    iput v1, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mVideoWidth:I

    .line 92
    iput v1, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mVideoHeight:I

    const/4 v2, 0x4

    .line 95
    iput v2, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->def_InputType_YUVJ420:I

    .line 96
    iput v0, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mRawDataFrameType:I

    const/16 v0, 0x9

    new-array v3, v0, [F

    .line 98
    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mbt601_fullRange_matrix3:[F

    new-array v3, v0, [F

    .line 103
    fill-array-data v3, :array_1

    iput-object v3, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mbt601_videoRange_matrix3:[F

    const/4 v3, 0x3

    new-array v4, v3, [F

    .line 109
    fill-array-data v4, :array_2

    iput-object v4, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mbt601_offset_matrix:[F

    new-array v4, v0, [F

    .line 113
    fill-array-data v4, :array_3

    iput-object v4, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mbt709_videoRange_matrix3:[F

    new-array v4, v3, [F

    .line 120
    fill-array-data v4, :array_4

    iput-object v4, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->bt601_videorange_ffmpeg_offset:[F

    new-array v4, v0, [F

    .line 125
    fill-array-data v4, :array_5

    iput-object v4, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->bt601_videorage_ffmpeg_matrix:[F

    new-array v3, v3, [F

    .line 132
    fill-array-data v3, :array_6

    iput-object v3, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->bt601_fullrange_ffmpeg_offset:[F

    new-array v0, v0, [F

    .line 137
    fill-array-data v0, :array_7

    iput-object v0, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->bt601_fullrage_ffmpeg_matrix:[F

    const/16 v0, 0x8

    new-array v3, v0, [F

    .line 144
    fill-array-data v3, :array_8

    const/4 v4, 0x6

    new-array v4, v4, [S

    .line 149
    fill-array-data v4, :array_9

    iput-object v4, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mIndices:[S

    new-array v0, v0, [F

    .line 151
    fill-array-data v0, :array_a

    iput-object v0, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mVerticesCoordinates:[F

    .line 159
    array-length v0, v3

    mul-int/2addr v0, v2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mTextureBuffer:Ljava/nio/FloatBuffer;

    .line 160
    iget-object v0, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 161
    iget-object v0, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 163
    iget-object v0, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mVerticesCoordinates:[F

    array-length v0, v0

    mul-int/2addr v0, v2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 164
    iget-object v0, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mVerticesCoordinates:[F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 165
    iget-object v0, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 167
    iget-object v0, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mIndices:[S

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mIndicesBuffer:Ljava/nio/ShortBuffer;

    .line 168
    iget-object v0, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mIndicesBuffer:Ljava/nio/ShortBuffer;

    iget-object v2, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mIndices:[S

    invoke-virtual {v0, v2}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 169
    iget-object v0, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mIndicesBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        -0x4150624e    # -0.343f
        0x3fe1eb85    # 1.765f
        0x3fb33333    # 1.4f
        -0x40c9fbe7    # -0.711f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f94fdf4    # 1.164f
        0x3f94fdf4    # 1.164f
        0x3f94fdf4    # 1.164f
        0x0
        -0x41374bc7    # -0.392f
        0x40011687    # 2.017f
        0x3fcc49ba    # 1.596f
        -0x40afdf3b    # -0.813f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        -0x41000000    # -0.5f
        -0x41000000    # -0.5f
    .end array-data

    :array_3
    .array-data 4
        0x3f94fdf4    # 1.164f
        0x3f94fdf4    # 1.164f
        0x3f94fdf4    # 1.164f
        0x0
        -0x41a5e354    # -0.213f
        0x40072b02    # 2.112f
        0x3fe58106    # 1.793f
        -0x40f78d50    # -0.533f
        0x0
    .end array-data

    :array_4
    .array-data 4
        -0x427f7f7f
        -0x40ff7f7f
        -0x40ff7f7f
    .end array-data

    :array_5
    .array-data 4
        0x3f950b0f    # 1.1644f
        0x3f950b0f    # 1.1644f
        0x3f950b0f    # 1.1644f
        0x0
        -0x413765fe    # -0.3918f
        0x400119ce    # 2.0172f
        0x3fcc49ba    # 1.596f
        -0x40afdf3b    # -0.813f
        0x0
    .end array-data

    :array_6
    .array-data 4
        0x0
        -0x40ff7f7f
        -0x40ff7f7f
    .end array-data

    :array_7
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        -0x414fd220    # -0.3441f
        0x3fe2d0e5    # 1.772f
        0x3fb374bc    # 1.402f
        -0x40c930be    # -0.7141f
        0x0
    .end array-data

    :array_8
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_9
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x1s
        0x3s
        0x2s
    .end array-data

    :array_a
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private destroyFrameBuffer()V
    .locals 5

    .line 309
    iget v0, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mFrameBufferID:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, -0x3039

    if-eq v0, v3, :cond_0

    new-array v4, v2, [I

    aput v0, v4, v1

    .line 312
    invoke-static {v2, v4, v1}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 313
    iput v3, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mFrameBufferID:I

    .line 315
    :cond_0
    iget v0, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mFrameBufferTextureID:I

    if-eq v0, v3, :cond_1

    new-array v4, v2, [I

    aput v0, v4, v1

    .line 318
    invoke-static {v2, v4, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 319
    iput v3, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mFrameBufferTextureID:I

    :cond_1
    return-void
.end method

.method public static native nativeLoadTexture(Ljava/nio/ByteBuffer;II[I)V
.end method

.method private reloadFrameBuffer()V
    .locals 13

    .line 273
    iget-boolean v0, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mNeedReLoadFrameBuffer:Z

    if-nez v0, :cond_0

    return-void

    .line 276
    :cond_0
    sget-object v0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reloadFrameBuffer. size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-direct {p0}, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->destroyFrameBuffer()V

    const/4 v0, 0x1

    new-array v1, v0, [I

    new-array v2, v0, [I

    const/4 v3, 0x0

    .line 281
    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 282
    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 284
    aget v0, v1, v3

    iput v0, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mFrameBufferTextureID:I

    .line 285
    aget v0, v2, v3

    iput v0, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mFrameBufferID:I

    .line 286
    sget-object v0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "frameBuffer id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mFrameBufferID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", texture id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mFrameBufferTextureID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget v0, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mFrameBufferTextureID:I

    const/16 v1, 0xde1

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v4, 0xde1

    const/4 v5, 0x0

    const/16 v6, 0x1908

    .line 288
    iget v7, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mWidth:I

    iget v8, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mHeight:I

    const/4 v9, 0x0

    const/16 v10, 0x1908

    const/16 v11, 0x1401

    const/4 v12, 0x0

    invoke-static/range {v4 .. v12}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/16 v0, 0x2801

    const v2, 0x46180400    # 9729.0f

    .line 290
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2800

    .line 292
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2802

    const v2, 0x812f

    .line 294
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2803

    .line 296
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 299
    iget v0, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mFrameBufferID:I

    const v2, 0x8d40

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v0, 0x8ce0

    .line 300
    iget v4, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mFrameBufferTextureID:I

    invoke-static {v2, v0, v1, v4, v3}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 302
    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 303
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 305
    iput-boolean v3, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mNeedReLoadFrameBuffer:Z

    return-void
.end method


# virtual methods
.method public checkError()I
    .locals 4

    .line 410
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-nez v0, :cond_0

    return v0

    .line 412
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gl error="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public createTexture()V
    .locals 4

    const v0, 0x8b31

    .line 180
    invoke-static {v0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    .line 181
    invoke-virtual {p0}, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->checkError()I

    const-string v1, "uniform mat4 uMatrix;uniform mat4 uTextureMatrix;attribute vec2 position;attribute vec2 inputTextureCoordinate;varying vec2 textureCoordinate;void main() {vec4 pos  = vec4(position, 0.0, 1.0);gl_Position = uMatrix * pos;textureCoordinate = (uTextureMatrix*vec4(inputTextureCoordinate, 0.0, 0.0)).xy;}"

    .line 182
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->checkError()I

    .line 184
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 185
    invoke-virtual {p0}, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->checkError()I

    const v1, 0x8b30

    .line 187
    invoke-static {v1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 188
    invoke-virtual {p0}, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->checkError()I

    const-string v2, "precision highp float;\nvarying vec2 textureCoordinate;\nuniform sampler2D yTexture;\nuniform sampler2D uTexture;\nuniform mat3 convertMatrix;\nuniform vec3 offset;\n\nvoid main()\n{\n    highp vec3 yuvColor;\n    highp vec3 rgbColor;\n\n    // Get the YUV values\n    yuvColor.x = texture2D(yTexture, textureCoordinate).r;\n    yuvColor.y = texture2D(uTexture, vec2(textureCoordinate.x * 0.5, textureCoordinate.y * 0.5)).r;\n    yuvColor.z = texture2D(uTexture, vec2(textureCoordinate.x * 0.5, textureCoordinate.y * 0.5 + 0.5)).r;\n\n    // Do the color transform   \n    yuvColor += offset;\n    rgbColor = convertMatrix * yuvColor; \n\n    gl_FragColor = vec4(rgbColor, 1.0);\n}\n"

    .line 189
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->checkError()I

    .line 191
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 193
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    iput v2, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mProgram:I

    .line 194
    invoke-virtual {p0}, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->checkError()I

    .line 195
    iget v2, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mProgram:I

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 196
    invoke-virtual {p0}, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->checkError()I

    .line 197
    iget v2, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mProgram:I

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 198
    invoke-virtual {p0}, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->checkError()I

    .line 199
    iget v2, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mProgram:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 200
    invoke-virtual {p0}, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->checkError()I

    .line 202
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 203
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 205
    iget v0, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mProgram:I

    const-string v1, "uMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mVertexMatrixHandle:I

    .line 206
    invoke-virtual {p0}, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->checkError()I

    .line 207
    iget v0, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mProgram:I

    const-string v1, "uTextureMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mTextureMatrixHandle:I

    .line 208
    invoke-virtual {p0}, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->checkError()I

    .line 209
    iget v0, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mProgram:I

    const-string v1, "position"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mPositionHandle:I

    .line 210
    invoke-virtual {p0}, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->checkError()I

    .line 211
    iget v0, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mProgram:I

    const-string v1, "inputTextureCoordinate"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mTextureCoordinatesHandle:I

    .line 212
    invoke-virtual {p0}, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->checkError()I

    .line 213
    iget v0, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mProgram:I

    const-string v1, "yTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mTextureUnitHandle0:I

    .line 214
    invoke-virtual {p0}, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->checkError()I

    .line 215
    iget v0, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mProgram:I

    const-string v1, "uTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mTextureUnitHandle1:I

    .line 216
    invoke-virtual {p0}, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->checkError()I

    .line 217
    iget v0, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mProgram:I

    const-string v1, "offset"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mConvertOffsetUniform:I

    .line 218
    iget v0, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mConvertOffsetUniform:I

    iget-object v1, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->bt601_fullrange_ffmpeg_offset:[F

    invoke-static {v1}, Ljava/nio/FloatBuffer;->wrap([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glUniform3fv(IILjava/nio/FloatBuffer;)V

    .line 220
    iget v0, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mProgram:I

    const-string v1, "convertMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mConvertMatrixUniform:I

    .line 221
    iget v0, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mConvertMatrixUniform:I

    iget-object v1, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->bt601_fullrage_ffmpeg_matrix:[F

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 223
    iput-object v1, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mTextureIds:[I

    .line 224
    iget-object v1, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mTextureIds:[I

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    return-void
.end method

.method public drawFrame(Lcom/tencent/liteav/basic/structs/TXSVideoFrame;)V
    .locals 8

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 341
    invoke-static {v0, v0, v0, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v0, 0x4100

    .line 342
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 344
    iget-object v0, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mMVPMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 346
    iget-object v0, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mTextureMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 348
    iget v0, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 349
    invoke-virtual {p0}, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->checkError()I

    .line 351
    iget v0, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 352
    invoke-virtual {p0}, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->checkError()I

    .line 353
    iget-object v0, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 354
    iget v2, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mPositionHandle:I

    iget-object v7, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/16 v6, 0x8

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 355
    invoke-virtual {p0}, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->checkError()I

    .line 357
    iget v0, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mTextureCoordinatesHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 358
    invoke-virtual {p0}, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->checkError()I

    .line 359
    iget-object v0, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 360
    iget v2, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mTextureCoordinatesHandle:I

    iget-object v7, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 361
    invoke-virtual {p0}, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->checkError()I

    .line 363
    iget v0, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mVertexMatrixHandle:I

    iget-object v2, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mMVPMatrix:[F

    const/4 v3, 0x1

    invoke-static {v0, v3, v1, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 364
    invoke-virtual {p0}, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->checkError()I

    .line 366
    iget v0, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mTextureMatrixHandle:I

    iget-object v2, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mTextureMatrix:[F

    invoke-static {v0, v3, v1, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 367
    invoke-virtual {p0}, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->checkError()I

    .line 369
    iget v0, p1, Lcom/tencent/liteav/basic/structs/TXSVideoFrame;->frameType:I

    const-string v2, " frame type "

    const/4 v4, 0x4

    if-ne v4, v0, :cond_0

    .line 372
    iget v5, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mConvertOffsetUniform:I

    iget-object v6, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->bt601_fullrange_ffmpeg_offset:[F

    invoke-static {v6}, Ljava/nio/FloatBuffer;->wrap([F)Ljava/nio/FloatBuffer;

    move-result-object v6

    invoke-static {v5, v3, v6}, Landroid/opengl/GLES20;->glUniform3fv(IILjava/nio/FloatBuffer;)V

    .line 373
    iget v5, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mConvertMatrixUniform:I

    iget-object v6, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->bt601_fullrage_ffmpeg_matrix:[F

    invoke-static {v5, v3, v1, v6, v1}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    .line 375
    iget v5, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mRawDataFrameType:I

    if-eq v0, v5, :cond_1

    .line 376
    iput v0, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mRawDataFrameType:I

    .line 377
    sget-object v5, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " matrix_test fullRange"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 381
    :cond_0
    iget v5, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mConvertOffsetUniform:I

    iget-object v6, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->bt601_videorange_ffmpeg_offset:[F

    invoke-static {v6}, Ljava/nio/FloatBuffer;->wrap([F)Ljava/nio/FloatBuffer;

    move-result-object v6

    invoke-static {v5, v3, v6}, Landroid/opengl/GLES20;->glUniform3fv(IILjava/nio/FloatBuffer;)V

    .line 382
    iget v5, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mConvertMatrixUniform:I

    iget-object v6, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->bt601_videorage_ffmpeg_matrix:[F

    invoke-static {v5, v3, v1, v6, v1}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    .line 384
    iget v5, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mRawDataFrameType:I

    if-eq v0, v5, :cond_1

    .line 385
    iput v0, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mRawDataFrameType:I

    .line 386
    sget-object v5, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " matrix_test videoRange"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    :cond_1
    :goto_0
    iget v0, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mTextureUnitHandle0:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 392
    invoke-virtual {p0}, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->checkError()I

    .line 394
    iget v0, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mTextureUnitHandle1:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 395
    invoke-virtual {p0}, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->checkError()I

    .line 397
    iget-object v0, p1, Lcom/tencent/liteav/basic/structs/TXSVideoFrame;->buffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mTextureIds:[I

    if-eqz v0, :cond_2

    .line 398
    iget-object v0, p1, Lcom/tencent/liteav/basic/structs/TXSVideoFrame;->buffer:Ljava/nio/ByteBuffer;

    iget v1, p1, Lcom/tencent/liteav/basic/structs/TXSVideoFrame;->width:I

    iget v2, p1, Lcom/tencent/liteav/basic/structs/TXSVideoFrame;->height:I

    iget-object v3, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mTextureIds:[I

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->nativeLoadTexture(Ljava/nio/ByteBuffer;II[I)V

    .line 400
    :cond_2
    invoke-virtual {p1}, Lcom/tencent/liteav/basic/structs/TXSVideoFrame;->release()V

    .line 402
    iget-object p1, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mIndices:[S

    array-length p1, p1

    const/16 v0, 0x1403

    iget-object v1, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mIndicesBuffer:Ljava/nio/ShortBuffer;

    invoke-static {v4, p1, v0, v1}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 405
    iget p1, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mPositionHandle:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 406
    iget p1, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mTextureCoordinatesHandle:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    return-void
.end method

.method public drawToTexture(Lcom/tencent/liteav/basic/structs/TXSVideoFrame;)I
    .locals 4

    .line 324
    invoke-direct {p0}, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->reloadFrameBuffer()V

    .line 325
    iget v0, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mFrameBufferID:I

    const/16 v1, -0x3039

    if-ne v0, v1, :cond_0

    .line 326
    sget-object p1, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->TAG:Ljava/lang/String;

    const-string v0, "invalid frame buffer id"

    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    const v1, 0x8d40

    .line 329
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 330
    iget v0, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mWidth:I

    iget v2, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mHeight:I

    const/4 v3, 0x0

    invoke-static {v3, v3, v0, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 332
    invoke-virtual {p0, p1}, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->drawFrame(Lcom/tencent/liteav/basic/structs/TXSVideoFrame;)V

    .line 334
    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 336
    iget p1, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mFrameBufferTextureID:I

    return p1
.end method

.method public flipVertical(Z)V
    .locals 2

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    new-array p1, v0, [F

    .line 252
    fill-array-data p1, :array_0

    goto :goto_0

    :cond_0
    new-array p1, v0, [F

    .line 260
    fill-array-data p1, :array_1

    .line 267
    :goto_0
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mTextureBuffer:Ljava/nio/FloatBuffer;

    .line 268
    iget-object v0, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 269
    iget-object p1, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mTextureBuffer:Ljava/nio/FloatBuffer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onSurfaceDestroy()V
    .locals 3

    .line 229
    iget-object v0, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mTextureIds:[I

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 230
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    const/4 v0, 0x0

    .line 231
    iput-object v0, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mTextureIds:[I

    .line 233
    :cond_0
    invoke-direct {p0}, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->destroyFrameBuffer()V

    .line 235
    iget v0, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    return-void
.end method

.method public setHasFrameBuffer(II)V
    .locals 1

    .line 239
    iget v0, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mHeight:I

    if-ne v0, p2, :cond_0

    return-void

    .line 241
    :cond_0
    iput p1, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mWidth:I

    .line 242
    iput p2, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mHeight:I

    const/4 p1, 0x1

    .line 243
    iput-boolean p1, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mNeedReLoadFrameBuffer:Z

    return-void
.end method

.method public setVideoSize(II)V
    .locals 0

    .line 175
    iput p1, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mVideoWidth:I

    .line 176
    iput p2, p0, Lcom/tencent/liteav/renderer/TXCYuvTextureRender;->mVideoHeight:I

    return-void
.end method
