.class synthetic Lcom/tencent/live2/impl/V2TXLiveUtils$1;
.super Ljava/lang/Object;
.source "V2TXLiveUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/live2/impl/V2TXLiveUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I

.field static final synthetic c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 117
    invoke-static {}, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolution;->values()[Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolution;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/tencent/live2/impl/V2TXLiveUtils$1;->c:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/tencent/live2/impl/V2TXLiveUtils$1;->c:[I

    sget-object v2, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolution;->V2TXLiveVideoResolution160x160:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolution;

    invoke-virtual {v2}, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolution;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lcom/tencent/live2/impl/V2TXLiveUtils$1;->c:[I

    sget-object v3, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolution;->V2TXLiveVideoResolution270x270:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolution;

    invoke-virtual {v3}, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolution;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/tencent/live2/impl/V2TXLiveUtils$1;->c:[I

    sget-object v4, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolution;->V2TXLiveVideoResolution480x480:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolution;

    invoke-virtual {v4}, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolution;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/tencent/live2/impl/V2TXLiveUtils$1;->c:[I

    sget-object v5, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolution;->V2TXLiveVideoResolution320x240:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolution;

    invoke-virtual {v5}, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolution;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v4, Lcom/tencent/live2/impl/V2TXLiveUtils$1;->c:[I

    sget-object v5, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolution;->V2TXLiveVideoResolution480x360:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolution;

    invoke-virtual {v5}, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolution;->ordinal()I

    move-result v5

    const/4 v6, 0x5

    aput v6, v4, v5
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v4, Lcom/tencent/live2/impl/V2TXLiveUtils$1;->c:[I

    sget-object v5, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolution;->V2TXLiveVideoResolution640x480:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolution;

    invoke-virtual {v5}, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolution;->ordinal()I

    move-result v5

    const/4 v6, 0x6

    aput v6, v4, v5
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v4, Lcom/tencent/live2/impl/V2TXLiveUtils$1;->c:[I

    sget-object v5, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolution;->V2TXLiveVideoResolution320x180:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolution;

    invoke-virtual {v5}, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolution;->ordinal()I

    move-result v5

    const/4 v6, 0x7

    aput v6, v4, v5
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v4, Lcom/tencent/live2/impl/V2TXLiveUtils$1;->c:[I

    sget-object v5, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolution;->V2TXLiveVideoResolution480x270:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolution;

    invoke-virtual {v5}, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolution;->ordinal()I

    move-result v5

    const/16 v6, 0x8

    aput v6, v4, v5
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v4, Lcom/tencent/live2/impl/V2TXLiveUtils$1;->c:[I

    sget-object v5, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolution;->V2TXLiveVideoResolution640x360:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolution;

    invoke-virtual {v5}, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolution;->ordinal()I

    move-result v5

    const/16 v6, 0x9

    aput v6, v4, v5
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v4, Lcom/tencent/live2/impl/V2TXLiveUtils$1;->c:[I

    sget-object v5, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolution;->V2TXLiveVideoResolution960x540:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolution;

    invoke-virtual {v5}, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolution;->ordinal()I

    move-result v5

    const/16 v6, 0xa

    aput v6, v4, v5
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v4, Lcom/tencent/live2/impl/V2TXLiveUtils$1;->c:[I

    sget-object v5, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolution;->V2TXLiveVideoResolution1280x720:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolution;

    invoke-virtual {v5}, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolution;->ordinal()I

    move-result v5

    const/16 v6, 0xb

    aput v6, v4, v5
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v4, Lcom/tencent/live2/impl/V2TXLiveUtils$1;->c:[I

    sget-object v5, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolution;->V2TXLiveVideoResolution1920x1080:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolution;

    invoke-virtual {v5}, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoResolution;->ordinal()I

    move-result v5

    const/16 v6, 0xc

    aput v6, v4, v5
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    .line 94
    :catch_b
    invoke-static {}, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;->values()[Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/tencent/live2/impl/V2TXLiveUtils$1;->b:[I

    :try_start_c
    sget-object v4, Lcom/tencent/live2/impl/V2TXLiveUtils$1;->b:[I

    sget-object v5, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;->V2TXLiveFillModeFill:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;

    invoke-virtual {v5}, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v4, Lcom/tencent/live2/impl/V2TXLiveUtils$1;->b:[I

    sget-object v5, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;->V2TXLiveFillModeFit:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;

    invoke-virtual {v5}, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    .line 72
    :catch_d
    invoke-static {}, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveRotation;->values()[Lcom/tencent/live2/V2TXLiveDef$V2TXLiveRotation;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/tencent/live2/impl/V2TXLiveUtils$1;->a:[I

    :try_start_e
    sget-object v4, Lcom/tencent/live2/impl/V2TXLiveUtils$1;->a:[I

    sget-object v5, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveRotation;->V2TXLiveRotation270:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveRotation;

    invoke-virtual {v5}, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveRotation;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v0, Lcom/tencent/live2/impl/V2TXLiveUtils$1;->a:[I

    sget-object v4, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveRotation;->V2TXLiveRotation180:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveRotation;

    invoke-virtual {v4}, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveRotation;->ordinal()I

    move-result v4

    aput v1, v0, v4
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v0, Lcom/tencent/live2/impl/V2TXLiveUtils$1;->a:[I

    sget-object v1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveRotation;->V2TXLiveRotation90:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveRotation;

    invoke-virtual {v1}, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveRotation;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v0, Lcom/tencent/live2/impl/V2TXLiveUtils$1;->a:[I

    sget-object v1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveRotation;->V2TXLiveRotation0:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveRotation;

    invoke-virtual {v1}, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveRotation;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    return-void
.end method
