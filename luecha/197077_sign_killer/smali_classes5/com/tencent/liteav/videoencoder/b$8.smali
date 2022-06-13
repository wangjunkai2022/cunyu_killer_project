.class Lcom/tencent/liteav/videoencoder/b$8;
.super Ljava/lang/Object;
.source "TXCHWVideoEncoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/videoencoder/b;->pushVideoFrameAsync(IIIJ)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:J

.field final synthetic c:Lcom/tencent/liteav/videoencoder/b;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/videoencoder/b;IJ)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/tencent/liteav/videoencoder/b$8;->c:Lcom/tencent/liteav/videoencoder/b;

    iput p2, p0, Lcom/tencent/liteav/videoencoder/b$8;->a:I

    iput-wide p3, p0, Lcom/tencent/liteav/videoencoder/b$8;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 284
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b$8;->c:Lcom/tencent/liteav/videoencoder/b;

    invoke-static {v0}, Lcom/tencent/liteav/videoencoder/b;->b(Lcom/tencent/liteav/videoencoder/b;)Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_12

    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b$8;->c:Lcom/tencent/liteav/videoencoder/b;

    invoke-static {v0}, Lcom/tencent/liteav/videoencoder/b;->c(Lcom/tencent/liteav/videoencoder/b;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_7

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b$8;->c:Lcom/tencent/liteav/videoencoder/b;

    invoke-static {v0}, Lcom/tencent/liteav/videoencoder/b;->d(Lcom/tencent/liteav/videoencoder/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 287
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b$8;->c:Lcom/tencent/liteav/videoencoder/b;

    invoke-static {v0}, Lcom/tencent/liteav/videoencoder/b;->e(Lcom/tencent/liteav/videoencoder/b;)V

    .line 290
    :cond_1
    iget v0, p0, Lcom/tencent/liteav/videoencoder/b$8;->a:I

    .line 291
    iget-wide v2, p0, Lcom/tencent/liteav/videoencoder/b$8;->b:J

    .line 293
    iget-object v4, p0, Lcom/tencent/liteav/videoencoder/b$8;->c:Lcom/tencent/liteav/videoencoder/b;

    invoke-static {v4, v2, v3}, Lcom/tencent/liteav/videoencoder/b;->a(Lcom/tencent/liteav/videoencoder/b;J)V

    .line 294
    iget-object v4, p0, Lcom/tencent/liteav/videoencoder/b$8;->c:Lcom/tencent/liteav/videoencoder/b;

    iget v4, v4, Lcom/tencent/liteav/videoencoder/b;->mRotation:I

    rsub-int v4, v4, 0x2d0

    rem-int/lit16 v8, v4, 0x168

    const/16 v4, 0x10e

    const/16 v5, 0x5a

    if-eq v8, v5, :cond_3

    if-ne v8, v4, :cond_2

    goto :goto_0

    .line 295
    :cond_2
    iget-object v6, p0, Lcom/tencent/liteav/videoencoder/b$8;->c:Lcom/tencent/liteav/videoencoder/b;

    iget v6, v6, Lcom/tencent/liteav/videoencoder/b;->mOutputWidth:I

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v6, p0, Lcom/tencent/liteav/videoencoder/b$8;->c:Lcom/tencent/liteav/videoencoder/b;

    iget v6, v6, Lcom/tencent/liteav/videoencoder/b;->mOutputHeight:I

    :goto_1
    if-eq v8, v5, :cond_5

    if-ne v8, v4, :cond_4

    goto :goto_2

    .line 296
    :cond_4
    iget-object v4, p0, Lcom/tencent/liteav/videoencoder/b$8;->c:Lcom/tencent/liteav/videoencoder/b;

    iget v4, v4, Lcom/tencent/liteav/videoencoder/b;->mOutputHeight:I

    goto :goto_3

    :cond_5
    :goto_2
    iget-object v4, p0, Lcom/tencent/liteav/videoencoder/b$8;->c:Lcom/tencent/liteav/videoencoder/b;

    iget v4, v4, Lcom/tencent/liteav/videoencoder/b;->mOutputWidth:I

    .line 298
    :goto_3
    iget-object v5, p0, Lcom/tencent/liteav/videoencoder/b$8;->c:Lcom/tencent/liteav/videoencoder/b;

    iget-object v5, v5, Lcom/tencent/liteav/videoencoder/b;->mEncodeFilter:Lcom/tencent/liteav/basic/e/f;

    iget-object v7, p0, Lcom/tencent/liteav/videoencoder/b$8;->c:Lcom/tencent/liteav/videoencoder/b;

    iget v7, v7, Lcom/tencent/liteav/videoencoder/b;->mInputWidth:I

    iget-object v9, p0, Lcom/tencent/liteav/videoencoder/b$8;->c:Lcom/tencent/liteav/videoencoder/b;

    iget v9, v9, Lcom/tencent/liteav/videoencoder/b;->mInputHeight:I

    const/4 v10, 0x0

    int-to-float v6, v6

    int-to-float v4, v4

    div-float v4, v6, v4

    iget-object v6, p0, Lcom/tencent/liteav/videoencoder/b$8;->c:Lcom/tencent/liteav/videoencoder/b;

    iget-boolean v11, v6, Lcom/tencent/liteav/videoencoder/b;->mEnableXMirror:Z

    const/4 v12, 0x1

    move v6, v7

    move v7, v9

    move-object v9, v10

    move v10, v4

    invoke-virtual/range {v5 .. v12}, Lcom/tencent/liteav/basic/e/f;->a(III[FFZZ)V

    .line 299
    iget-object v4, p0, Lcom/tencent/liteav/videoencoder/b$8;->c:Lcom/tencent/liteav/videoencoder/b;

    iget-object v4, v4, Lcom/tencent/liteav/videoencoder/b;->mEncodeFilter:Lcom/tencent/liteav/basic/e/f;

    invoke-virtual {v4, v0}, Lcom/tencent/liteav/basic/e/f;->a(I)I

    .line 300
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b$8;->c:Lcom/tencent/liteav/videoencoder/b;

    invoke-static {v0}, Lcom/tencent/liteav/videoencoder/b;->c(Lcom/tencent/liteav/videoencoder/b;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/tencent/liteav/basic/e/b;

    if-eqz v0, :cond_6

    .line 301
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b$8;->c:Lcom/tencent/liteav/videoencoder/b;

    invoke-static {v0}, Lcom/tencent/liteav/videoencoder/b;->c(Lcom/tencent/liteav/videoencoder/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/basic/e/b;

    const-wide/32 v4, 0xf4240

    mul-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/tencent/liteav/basic/e/b;->a(J)V

    .line 302
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b$8;->c:Lcom/tencent/liteav/videoencoder/b;

    invoke-static {v0}, Lcom/tencent/liteav/videoencoder/b;->c(Lcom/tencent/liteav/videoencoder/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/basic/e/b;

    invoke-virtual {v0}, Lcom/tencent/liteav/basic/e/b;->e()Z

    .line 304
    :cond_6
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b$8;->c:Lcom/tencent/liteav/videoencoder/b;

    invoke-static {v0}, Lcom/tencent/liteav/videoencoder/b;->c(Lcom/tencent/liteav/videoencoder/b;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/tencent/liteav/basic/e/a;

    if-eqz v0, :cond_7

    .line 305
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b$8;->c:Lcom/tencent/liteav/videoencoder/b;

    invoke-static {v0}, Lcom/tencent/liteav/videoencoder/b;->c(Lcom/tencent/liteav/videoencoder/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/basic/e/a;

    invoke-virtual {v0}, Lcom/tencent/liteav/basic/e/a;->a()Z

    .line 307
    :cond_7
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b$8;->c:Lcom/tencent/liteav/videoencoder/b;

    invoke-static {v0}, Lcom/tencent/liteav/videoencoder/b;->f(Lcom/tencent/liteav/videoencoder/b;)I

    .line 309
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b$8;->c:Lcom/tencent/liteav/videoencoder/b;

    invoke-static {v0}, Lcom/tencent/liteav/videoencoder/b;->g(Lcom/tencent/liteav/videoencoder/b;)V

    .line 312
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b$8;->c:Lcom/tencent/liteav/videoencoder/b;

    invoke-static {v0}, Lcom/tencent/liteav/videoencoder/b;->h(Lcom/tencent/liteav/videoencoder/b;)I

    move-result v0

    const/4 v2, 0x2

    const-string v3, "TXCHWVideoEncoder"

    const/4 v4, 0x0

    if-le v0, v2, :cond_8

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "needWait\uff1amEncodingCount :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/liteav/videoencoder/b$8;->c:Lcom/tencent/liteav/videoencoder/b;

    invoke-static {v2}, Lcom/tencent/liteav/videoencoder/b;->h(Lcom/tencent/liteav/videoencoder/b;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_4

    :cond_8
    move v0, v4

    :goto_4
    if-nez v0, :cond_9

    .line 317
    iget-object v2, p0, Lcom/tencent/liteav/videoencoder/b$8;->c:Lcom/tencent/liteav/videoencoder/b;

    iget-object v2, v2, Lcom/tencent/liteav/videoencoder/b;->mListener:Lcom/tencent/liteav/videoencoder/d;

    if-eqz v2, :cond_9

    .line 318
    iget-object v2, p0, Lcom/tencent/liteav/videoencoder/b$8;->c:Lcom/tencent/liteav/videoencoder/b;

    iget-object v2, v2, Lcom/tencent/liteav/videoencoder/b;->mListener:Lcom/tencent/liteav/videoencoder/d;

    iget-object v5, p0, Lcom/tencent/liteav/videoencoder/b$8;->c:Lcom/tencent/liteav/videoencoder/b;

    iget v5, v5, Lcom/tencent/liteav/videoencoder/b;->mStreamType:I

    invoke-interface {v2, v5}, Lcom/tencent/liteav/videoencoder/d;->b(I)V

    :cond_9
    const/4 v2, -0x1

    move v5, v2

    .line 324
    :cond_a
    iget-object v6, p0, Lcom/tencent/liteav/videoencoder/b$8;->c:Lcom/tencent/liteav/videoencoder/b;

    invoke-static {v6}, Lcom/tencent/liteav/videoencoder/b;->i(Lcom/tencent/liteav/videoencoder/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-eqz v6, :cond_b

    goto :goto_5

    .line 327
    :cond_b
    iget-object v5, p0, Lcom/tencent/liteav/videoencoder/b$8;->c:Lcom/tencent/liteav/videoencoder/b;

    const/16 v6, 0xa

    invoke-static {v5, v6}, Lcom/tencent/liteav/videoencoder/b;->c(Lcom/tencent/liteav/videoencoder/b;I)I

    move-result v5

    if-nez v5, :cond_c

    add-int/lit8 v4, v4, 0x1

    :cond_c
    if-gtz v5, :cond_a

    .line 331
    iget-object v6, p0, Lcom/tencent/liteav/videoencoder/b$8;->c:Lcom/tencent/liteav/videoencoder/b;

    invoke-static {v6}, Lcom/tencent/liteav/videoencoder/b;->h(Lcom/tencent/liteav/videoencoder/b;)I

    move-result v6

    if-lez v6, :cond_d

    if-eqz v0, :cond_d

    if-nez v5, :cond_d

    const/4 v6, 0x5

    if-lt v4, v6, :cond_a

    :cond_d
    :goto_5
    if-eqz v0, :cond_e

    .line 333
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b$8;->c:Lcom/tencent/liteav/videoencoder/b;

    iget-object v0, v0, Lcom/tencent/liteav/videoencoder/b;->mListener:Lcom/tencent/liteav/videoencoder/d;

    if-eqz v0, :cond_e

    .line 334
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b$8;->c:Lcom/tencent/liteav/videoencoder/b;

    iget-object v0, v0, Lcom/tencent/liteav/videoencoder/b;->mListener:Lcom/tencent/liteav/videoencoder/d;

    iget-object v4, p0, Lcom/tencent/liteav/videoencoder/b$8;->c:Lcom/tencent/liteav/videoencoder/b;

    iget v4, v4, Lcom/tencent/liteav/videoencoder/b;->mStreamType:I

    invoke-interface {v0, v4}, Lcom/tencent/liteav/videoencoder/d;->b(I)V

    :cond_e
    if-eq v5, v2, :cond_10

    const/4 v0, -0x2

    if-ne v5, v0, :cond_f

    goto :goto_6

    .line 347
    :cond_f
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b$8;->c:Lcom/tencent/liteav/videoencoder/b;

    invoke-static {v0}, Lcom/tencent/liteav/videoencoder/b;->j(Lcom/tencent/liteav/videoencoder/b;)I

    return-void

    .line 339
    :cond_10
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Encoder] dequeEncoder ret = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v5, v2, :cond_11

    .line 341
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b$8;->c:Lcom/tencent/liteav/videoencoder/b;

    const v2, 0x989685

    invoke-virtual {v0, v2}, Lcom/tencent/liteav/videoencoder/b;->callDelegate(I)V

    .line 343
    :cond_11
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b$8;->c:Lcom/tencent/liteav/videoencoder/b;

    invoke-static {v0, v1}, Lcom/tencent/liteav/videoencoder/b;->a(Lcom/tencent/liteav/videoencoder/b;Z)Z

    .line 344
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/b$8;->c:Lcom/tencent/liteav/videoencoder/b;

    invoke-static {v0}, Lcom/tencent/liteav/videoencoder/b;->a(Lcom/tencent/liteav/videoencoder/b;)V

    :cond_12
    :goto_7
    return-void
.end method
