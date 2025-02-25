.class public Lcom/tencent/live2/impl/V2TXLiveUtils;
.super Ljava/lang/Object;
.source "V2TXLiveUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/live2/impl/V2TXLiveUtils$a;,
        Lcom/tencent/live2/impl/V2TXLiveUtils$b;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "V2TXLiveUtils"

.field public static final TRTC_ADDRESS1:Ljava/lang/String; = "room://cloud.tencent.com/rtc"

.field public static final TRTC_ADDRESS2:Ljava/lang/String; = "room://rtc.tencent.com"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertResolution(I)Lcom/tencent/liteav/basic/enums/c;
    .locals 1

    if-eqz p0, :cond_7

    const/4 v0, 0x1

    if-eq p0, v0, :cond_6

    const/4 v0, 0x2

    if-eq p0, v0, :cond_5

    const/4 v0, 0x3

    if-eq p0, v0, :cond_4

    const/4 v0, 0x4

    if-eq p0, v0, :cond_3

    const/4 v0, 0x5

    if-eq p0, v0, :cond_2

    const/16 v0, 0x1e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1f

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 208
    sget-object p0, Lcom/tencent/liteav/basic/enums/c;->c:Lcom/tencent/liteav/basic/enums/c;

    return-object p0

    .line 202
    :pswitch_0
    sget-object p0, Lcom/tencent/liteav/basic/enums/c;->u:Lcom/tencent/liteav/basic/enums/c;

    return-object p0

    .line 200
    :pswitch_1
    sget-object p0, Lcom/tencent/liteav/basic/enums/c;->t:Lcom/tencent/liteav/basic/enums/c;

    return-object p0

    .line 198
    :pswitch_2
    sget-object p0, Lcom/tencent/liteav/basic/enums/c;->s:Lcom/tencent/liteav/basic/enums/c;

    return-object p0

    .line 196
    :pswitch_3
    sget-object p0, Lcom/tencent/liteav/basic/enums/c;->r:Lcom/tencent/liteav/basic/enums/c;

    return-object p0

    .line 194
    :pswitch_4
    sget-object p0, Lcom/tencent/liteav/basic/enums/c;->q:Lcom/tencent/liteav/basic/enums/c;

    return-object p0

    .line 192
    :pswitch_5
    sget-object p0, Lcom/tencent/liteav/basic/enums/c;->p:Lcom/tencent/liteav/basic/enums/c;

    return-object p0

    .line 190
    :pswitch_6
    sget-object p0, Lcom/tencent/liteav/basic/enums/c;->o:Lcom/tencent/liteav/basic/enums/c;

    return-object p0

    .line 188
    :pswitch_7
    sget-object p0, Lcom/tencent/liteav/basic/enums/c;->n:Lcom/tencent/liteav/basic/enums/c;

    return-object p0

    .line 186
    :pswitch_8
    sget-object p0, Lcom/tencent/liteav/basic/enums/c;->m:Lcom/tencent/liteav/basic/enums/c;

    return-object p0

    .line 184
    :pswitch_9
    sget-object p0, Lcom/tencent/liteav/basic/enums/c;->l:Lcom/tencent/liteav/basic/enums/c;

    return-object p0

    .line 182
    :pswitch_a
    sget-object p0, Lcom/tencent/liteav/basic/enums/c;->k:Lcom/tencent/liteav/basic/enums/c;

    return-object p0

    .line 180
    :pswitch_b
    sget-object p0, Lcom/tencent/liteav/basic/enums/c;->j:Lcom/tencent/liteav/basic/enums/c;

    return-object p0

    .line 178
    :pswitch_c
    sget-object p0, Lcom/tencent/liteav/basic/enums/c;->i:Lcom/tencent/liteav/basic/enums/c;

    return-object p0

    .line 206
    :cond_0
    sget-object p0, Lcom/tencent/liteav/basic/enums/c;->x:Lcom/tencent/liteav/basic/enums/c;

    return-object p0

    .line 204
    :cond_1
    sget-object p0, Lcom/tencent/liteav/basic/enums/c;->w:Lcom/tencent/liteav/basic/enums/c;

    return-object p0

    .line 176
    :cond_2
    sget-object p0, Lcom/tencent/liteav/basic/enums/c;->g:Lcom/tencent/liteav/basic/enums/c;

    return-object p0

    .line 174
    :cond_3
    sget-object p0, Lcom/tencent/liteav/basic/enums/c;->f:Lcom/tencent/liteav/basic/enums/c;

    return-object p0

    .line 172
    :cond_4
    sget-object p0, Lcom/tencent/liteav/basic/enums/c;->e:Lcom/tencent/liteav/basic/enums/c;

    return-object p0

    .line 170
    :cond_5
    sget-object p0, Lcom/tencent/liteav/basic/enums/c;->d:Lcom/tencent/liteav/basic/enums/c;

    return-object p0

    .line 168
    :cond_6
    sget-object p0, Lcom/tencent/liteav/basic/enums/c;->c:Lcom/tencent/liteav/basic/enums/c;

    return-object p0

    .line 166
    :cond_7
    sget-object p0, Lcom/tencent/liteav/basic/enums/c;->b:Lcom/tencent/liteav/basic/enums/c;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getBitrateByResolution(Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolution;)Lcom/tencent/live2/impl/V2TXLiveUtils$a;
    .locals 7

    .line 346
    sget-object v0, Lcom/tencent/live2/impl/V2TXLiveUtils$1;->c:[I

    invoke-virtual {p0}, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolution;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/16 v0, 0x384

    const/16 v1, 0x258

    const/16 v2, 0x190

    const/16 v3, 0xfa

    const/16 v4, 0x15e

    const/16 v5, 0x5dc

    const/16 v6, 0x320

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    move v0, v5

    move v1, v6

    goto :goto_2

    :pswitch_1
    const/16 v1, 0x9c4

    const/16 v0, 0xbb8

    goto :goto_2

    :pswitch_2
    const/16 v1, 0x3e8

    const/16 v0, 0x708

    goto :goto_2

    :pswitch_3
    const/16 v1, 0x1f4

    goto :goto_2

    :pswitch_4
    const/16 v0, 0x226

    goto :goto_1

    :pswitch_5
    move v0, v2

    goto :goto_0

    :pswitch_6
    move v0, v1

    move v1, v2

    goto :goto_2

    :pswitch_7
    const/16 v0, 0x177

    :goto_0
    move v1, v3

    goto :goto_2

    :pswitch_8
    const/16 v0, 0x20d

    :goto_1
    move v1, v4

    goto :goto_2

    :pswitch_9
    const/16 v1, 0xc8

    const/16 v0, 0x12c

    goto :goto_2

    :pswitch_a
    const/16 v1, 0x64

    const/16 v0, 0x96

    .line 396
    :goto_2
    :pswitch_b
    new-instance p0, Lcom/tencent/live2/impl/V2TXLiveUtils$a;

    invoke-direct {p0, v1, v0}, Lcom/tencent/live2/impl/V2TXLiveUtils$a;-><init>(II)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_b
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static getFinalResolution(IZZ)I
    .locals 5

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    move p1, v0

    :cond_0
    const/16 p2, 0x1e

    const/16 v1, 0x8

    const/4 v2, 0x7

    const/4 v3, 0x2

    const/4 v4, -0x1

    if-eqz p0, :cond_e

    if-eq p0, v0, :cond_c

    if-eq p0, v3, :cond_a

    if-eq p0, v2, :cond_8

    if-eq p0, v1, :cond_6

    if-eq p0, p2, :cond_4

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    move p1, v4

    goto :goto_0

    :pswitch_0
    move p1, p0

    goto :goto_0

    :pswitch_1
    if-eqz p1, :cond_1

    const/16 p1, 0xd

    goto :goto_0

    :cond_1
    const/16 p1, 0x10

    goto :goto_0

    :pswitch_2
    if-eqz p1, :cond_2

    const/16 p1, 0xc

    goto :goto_0

    :cond_2
    const/16 p1, 0xf

    goto :goto_0

    :pswitch_3
    if-eqz p1, :cond_3

    const/16 p1, 0xb

    goto :goto_0

    :cond_3
    const/16 p1, 0xe

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    move p1, p2

    goto :goto_0

    :cond_5
    const/16 p1, 0x1f

    goto :goto_0

    :cond_6
    if-eqz p1, :cond_7

    move p1, v1

    goto :goto_0

    :cond_7
    const/16 p1, 0xa

    goto :goto_0

    :cond_8
    if-eqz p1, :cond_9

    move p1, v2

    goto :goto_0

    :cond_9
    const/16 p1, 0x9

    goto :goto_0

    :cond_a
    if-eqz p1, :cond_b

    move p1, v3

    goto :goto_0

    :cond_b
    const/4 p1, 0x5

    goto :goto_0

    :cond_c
    if-eqz p1, :cond_d

    move p1, v0

    goto :goto_0

    :cond_d
    const/4 p1, 0x4

    goto :goto_0

    :cond_e
    if-eqz p1, :cond_f

    const/4 p1, 0x0

    goto :goto_0

    :cond_f
    const/4 p1, 0x3

    :goto_0
    const-string p2, "V2TXLiveUtils"

    if-ne p1, v4, :cond_10

    const-string p1, "getFinalResolution: seriously error!!! can\'t map resolution, use original resolution."

    .line 510
    invoke-static {p2, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move p1, p0

    .line 513
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFinalResolution: [old res:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "][new res:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x11
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getRTMPFillMode(Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 94
    :cond_0
    sget-object v1, Lcom/tencent/live2/impl/V2TXLiveUtils$1;->b:[I

    invoke-virtual {p0}, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v2, 0x2

    if-eq p0, v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :cond_2
    :goto_0
    return v0
.end method

.method public static getRTMPResolution(Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolution;)I
    .locals 1

    .line 117
    sget-object v0, Lcom/tencent/live2/impl/V2TXLiveUtils$1;->c:[I

    invoke-virtual {p0}, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolution;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x1e

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x8

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x7

    goto :goto_0

    :pswitch_5
    const/16 v0, 0xd

    goto :goto_0

    :pswitch_6
    const/16 v0, 0xc

    goto :goto_0

    :pswitch_7
    const/16 v0, 0xb

    goto :goto_0

    :pswitch_8
    const/16 v0, 0x11

    goto :goto_0

    :pswitch_9
    const/16 v0, 0x12

    goto :goto_0

    :pswitch_a
    const/16 v0, 0x13

    :goto_0
    :pswitch_b
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_b
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getRTMPRotation(Lcom/tencent/live2/V2TXLiveDef$V2TXLiveRotation;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 72
    :cond_0
    sget-object v1, Lcom/tencent/live2/impl/V2TXLiveUtils$1;->a:[I

    invoke-virtual {p0}, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveRotation;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/16 v0, 0x5a

    goto :goto_0

    :cond_2
    const/16 v0, 0xb4

    goto :goto_0

    :cond_3
    const/16 v0, 0x10e

    :goto_0
    return v0
.end method

.method public static getVideoSize(Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolution;Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolutionMode;)Lcom/tencent/live2/impl/V2TXLiveUtils$b;
    .locals 7

    .line 212
    new-instance v0, Lcom/tencent/live2/impl/V2TXLiveUtils$b;

    const/16 v1, 0x3c0

    const/16 v2, 0x220

    invoke-direct {v0, v2, v1}, Lcom/tencent/live2/impl/V2TXLiveUtils$b;-><init>(II)V

    .line 213
    sget-object v3, Lcom/tencent/live2/impl/V2TXLiveUtils$1;->c:[I

    invoke-virtual {p0}, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolution;->ordinal()I

    move-result p0

    aget p0, v3, p0

    const/16 v3, 0x280

    const/16 v4, 0x170

    const/16 v5, 0x140

    const/16 v6, 0x1e0

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_1

    .line 280
    :pswitch_0
    sget-object p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolutionMode;->V2TXLiveVideoResolutionModePortrait:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolutionMode;

    const/16 v0, 0x440

    const/16 v1, 0x780

    if-ne p1, p0, :cond_0

    .line 281
    new-instance p0, Lcom/tencent/live2/impl/V2TXLiveUtils$b;

    invoke-direct {p0, v0, v1}, Lcom/tencent/live2/impl/V2TXLiveUtils$b;-><init>(II)V

    goto/16 :goto_0

    .line 283
    :cond_0
    new-instance p0, Lcom/tencent/live2/impl/V2TXLiveUtils$b;

    invoke-direct {p0, v1, v0}, Lcom/tencent/live2/impl/V2TXLiveUtils$b;-><init>(II)V

    goto/16 :goto_0

    .line 273
    :pswitch_1
    sget-object p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolutionMode;->V2TXLiveVideoResolutionModePortrait:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolutionMode;

    const/16 v0, 0x2d0

    const/16 v1, 0x500

    if-ne p1, p0, :cond_1

    .line 274
    new-instance p0, Lcom/tencent/live2/impl/V2TXLiveUtils$b;

    invoke-direct {p0, v0, v1}, Lcom/tencent/live2/impl/V2TXLiveUtils$b;-><init>(II)V

    goto/16 :goto_0

    .line 276
    :cond_1
    new-instance p0, Lcom/tencent/live2/impl/V2TXLiveUtils$b;

    invoke-direct {p0, v1, v0}, Lcom/tencent/live2/impl/V2TXLiveUtils$b;-><init>(II)V

    goto/16 :goto_0

    .line 266
    :pswitch_2
    sget-object p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolutionMode;->V2TXLiveVideoResolutionModePortrait:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolutionMode;

    if-ne p1, p0, :cond_2

    .line 267
    new-instance v0, Lcom/tencent/live2/impl/V2TXLiveUtils$b;

    invoke-direct {v0, v2, v1}, Lcom/tencent/live2/impl/V2TXLiveUtils$b;-><init>(II)V

    goto/16 :goto_1

    .line 269
    :cond_2
    new-instance v0, Lcom/tencent/live2/impl/V2TXLiveUtils$b;

    invoke-direct {v0, v1, v2}, Lcom/tencent/live2/impl/V2TXLiveUtils$b;-><init>(II)V

    goto/16 :goto_1

    .line 259
    :pswitch_3
    sget-object p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolutionMode;->V2TXLiveVideoResolutionModePortrait:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolutionMode;

    if-ne p1, p0, :cond_3

    .line 260
    new-instance v0, Lcom/tencent/live2/impl/V2TXLiveUtils$b;

    invoke-direct {v0, v4, v3}, Lcom/tencent/live2/impl/V2TXLiveUtils$b;-><init>(II)V

    goto/16 :goto_1

    .line 262
    :cond_3
    new-instance v0, Lcom/tencent/live2/impl/V2TXLiveUtils$b;

    invoke-direct {v0, v3, v4}, Lcom/tencent/live2/impl/V2TXLiveUtils$b;-><init>(II)V

    goto/16 :goto_1

    .line 252
    :pswitch_4
    sget-object p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolutionMode;->V2TXLiveVideoResolutionModePortrait:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolutionMode;

    const/16 v0, 0x110

    if-ne p1, p0, :cond_4

    .line 253
    new-instance p0, Lcom/tencent/live2/impl/V2TXLiveUtils$b;

    invoke-direct {p0, v0, v6}, Lcom/tencent/live2/impl/V2TXLiveUtils$b;-><init>(II)V

    goto :goto_0

    .line 255
    :cond_4
    new-instance p0, Lcom/tencent/live2/impl/V2TXLiveUtils$b;

    invoke-direct {p0, v6, v0}, Lcom/tencent/live2/impl/V2TXLiveUtils$b;-><init>(II)V

    goto :goto_0

    .line 245
    :pswitch_5
    sget-object p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolutionMode;->V2TXLiveVideoResolutionModePortrait:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolutionMode;

    const/16 v0, 0xc0

    if-ne p1, p0, :cond_5

    .line 246
    new-instance p0, Lcom/tencent/live2/impl/V2TXLiveUtils$b;

    invoke-direct {p0, v0, v5}, Lcom/tencent/live2/impl/V2TXLiveUtils$b;-><init>(II)V

    goto :goto_0

    .line 248
    :cond_5
    new-instance p0, Lcom/tencent/live2/impl/V2TXLiveUtils$b;

    invoke-direct {p0, v5, v0}, Lcom/tencent/live2/impl/V2TXLiveUtils$b;-><init>(II)V

    goto :goto_0

    .line 238
    :pswitch_6
    sget-object p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolutionMode;->V2TXLiveVideoResolutionModePortrait:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolutionMode;

    if-ne p1, p0, :cond_6

    .line 239
    new-instance v0, Lcom/tencent/live2/impl/V2TXLiveUtils$b;

    invoke-direct {v0, v6, v3}, Lcom/tencent/live2/impl/V2TXLiveUtils$b;-><init>(II)V

    goto :goto_1

    .line 241
    :cond_6
    new-instance v0, Lcom/tencent/live2/impl/V2TXLiveUtils$b;

    invoke-direct {v0, v3, v6}, Lcom/tencent/live2/impl/V2TXLiveUtils$b;-><init>(II)V

    goto :goto_1

    .line 231
    :pswitch_7
    sget-object p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolutionMode;->V2TXLiveVideoResolutionModePortrait:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolutionMode;

    if-ne p1, p0, :cond_7

    .line 232
    new-instance v0, Lcom/tencent/live2/impl/V2TXLiveUtils$b;

    invoke-direct {v0, v4, v6}, Lcom/tencent/live2/impl/V2TXLiveUtils$b;-><init>(II)V

    goto :goto_1

    .line 234
    :cond_7
    new-instance v0, Lcom/tencent/live2/impl/V2TXLiveUtils$b;

    invoke-direct {v0, v6, v4}, Lcom/tencent/live2/impl/V2TXLiveUtils$b;-><init>(II)V

    goto :goto_1

    .line 224
    :pswitch_8
    sget-object p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolutionMode;->V2TXLiveVideoResolutionModePortrait:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolutionMode;

    const/16 v0, 0xf0

    if-ne p1, p0, :cond_8

    .line 225
    new-instance p0, Lcom/tencent/live2/impl/V2TXLiveUtils$b;

    invoke-direct {p0, v0, v5}, Lcom/tencent/live2/impl/V2TXLiveUtils$b;-><init>(II)V

    goto :goto_0

    .line 227
    :cond_8
    new-instance p0, Lcom/tencent/live2/impl/V2TXLiveUtils$b;

    invoke-direct {p0, v5, v0}, Lcom/tencent/live2/impl/V2TXLiveUtils$b;-><init>(II)V

    :goto_0
    move-object v0, p0

    goto :goto_1

    .line 221
    :pswitch_9
    new-instance v0, Lcom/tencent/live2/impl/V2TXLiveUtils$b;

    invoke-direct {v0, v6, v6}, Lcom/tencent/live2/impl/V2TXLiveUtils$b;-><init>(II)V

    goto :goto_1

    .line 218
    :pswitch_a
    new-instance v0, Lcom/tencent/live2/impl/V2TXLiveUtils$b;

    const/16 p0, 0x10e

    invoke-direct {v0, p0, p0}, Lcom/tencent/live2/impl/V2TXLiveUtils$b;-><init>(II)V

    goto :goto_1

    .line 215
    :pswitch_b
    new-instance v0, Lcom/tencent/live2/impl/V2TXLiveUtils$b;

    const/16 p0, 0xa0

    invoke-direct {v0, p0, p0}, Lcom/tencent/live2/impl/V2TXLiveUtils$b;-><init>(II)V

    :goto_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isPortraitResolution(I)Z
    .locals 2

    const/16 v0, 0x1e

    const/4 v1, 0x1

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1f

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    return v1

    :cond_0
    :pswitch_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :pswitch_1
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static parseLiveMode(Ljava/lang/String;)Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMode;
    .locals 2

    const-string v0, "trtc://"

    .line 41
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "V2TXLiveUtils"

    if-nez v0, :cond_1

    const-string v0, "room://cloud.tencent.com/rtc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "room://rtc.tencent.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "parseLiveMode: rtmp."

    .line 45
    invoke-static {v1, p0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    sget-object p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMode;->TXLiveMode_RTMP:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMode;

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "parseLiveMode: rtc."

    .line 42
    invoke-static {v1, p0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    sget-object p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMode;->TXLiveMode_RTC:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMode;

    return-object p0
.end method

.method public static parsePlayerType(Ljava/lang/String;)Lcom/tencent/live2/impl/a$c;
    .locals 2

    const-string v0, "trtc://"

    .line 52
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "V2TXLiveUtils"

    if-eqz v0, :cond_0

    const-string p0, "parsePlayerType: rtc."

    .line 53
    invoke-static {v1, p0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    sget-object p0, Lcom/tencent/live2/impl/a$c;->b:Lcom/tencent/live2/impl/a$c;

    return-object p0

    :cond_0
    const-string v0, "room://cloud.tencent.com/rtc"

    .line 55
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "room://rtc.tencent.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "webrtc://"

    .line 58
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "parsePlayerType: webrtc."

    .line 59
    invoke-static {v1, p0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    sget-object p0, Lcom/tencent/live2/impl/a$c;->d:Lcom/tencent/live2/impl/a$c;

    return-object p0

    :cond_2
    const-string p0, "parsePlayerType: rtmp."

    .line 62
    invoke-static {v1, p0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    sget-object p0, Lcom/tencent/live2/impl/a$c;->c:Lcom/tencent/live2/impl/a$c;

    return-object p0

    :cond_3
    :goto_0
    const-string p0, "parsePlayerType: room."

    .line 56
    invoke-static {v1, p0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    sget-object p0, Lcom/tencent/live2/impl/a$c;->a:Lcom/tencent/live2/impl/a$c;

    return-object p0
.end method

.method public static removeURLSensitiveInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 400
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    :try_start_0
    const-string v0, "roomsig"

    const-string v1, "privatemapkey"

    const-string v2, "usersig"

    .line 404
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    move-object v2, p0

    move p0, v1

    .line 405
    :goto_0
    :try_start_1
    array-length v3, v0

    if-ge p0, v3, :cond_3

    .line 406
    aget-object v3, v0, p0

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 407
    aget-object v3, v0, p0

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    const-string v5, "&"

    .line 410
    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v4, :cond_1

    .line 413
    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 416
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v2, p0

    move-object p0, v0

    :goto_2
    const-string v0, "V2TXLiveUtils"

    const-string v1, "remove url sensitive info failed."

    .line 422
    invoke-static {v0, v1, p0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    return-object v2
.end method
