.class public Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerBaseMediaParams;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TPPlayerBaseMediaParams"
.end annotation


# instance fields
.field public mAudioDecoderType:I

.field public mAudioEncodeFormat:I

.field public mAudioRenderType:I

.field public mDemuxerType:I

.field public mDurationMs:J

.field public mFormatContainer:Ljava/lang/String;

.field public mHlsSourceType:I

.field public mSubtitleEncodeFormat:I

.field public mVideoDecoderType:I

.field public mVideoEncodeFormat:I

.field public mVideoFrameRate:F

.field public mVideoHeight:I

.field public mVideoRenderType:I

.field public mVideoStreamBitrateKBps:J

.field public mVideoWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
