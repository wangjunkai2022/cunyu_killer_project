.class public Lcom/tencent/thumbplayer/core/config/TPPlayerCoreConfig;
.super Ljava/lang/Object;


# static fields
.field private static mMediaDrmReuseEnable:Z

.field private static mVideoMediaCodecCoexistMaxCnt:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMediaDrmReuseEnable()Z
    .locals 1

    sget-boolean v0, Lcom/tencent/thumbplayer/core/config/TPPlayerCoreConfig;->mMediaDrmReuseEnable:Z

    return v0
.end method

.method public static getVideoMediaCodecCoexistMaxCnt()I
    .locals 1

    sget v0, Lcom/tencent/thumbplayer/core/config/TPPlayerCoreConfig;->mVideoMediaCodecCoexistMaxCnt:I

    return v0
.end method

.method public static setMediaDrmReuseEnable(Z)V
    .locals 0

    sput-boolean p0, Lcom/tencent/thumbplayer/core/config/TPPlayerCoreConfig;->mMediaDrmReuseEnable:Z

    return-void
.end method

.method public static setVideoMediaCodecCoexistMaxCnt(I)V
    .locals 0

    sput p0, Lcom/tencent/thumbplayer/core/config/TPPlayerCoreConfig;->mVideoMediaCodecCoexistMaxCnt:I

    return-void
.end method
