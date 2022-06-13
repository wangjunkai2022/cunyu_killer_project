.class public Lcom/tencent/thumbplayer/core/common/TPDetailInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/thumbplayer/core/common/TPDetailInfo$TPDetailInfoType;
    }
.end annotation


# static fields
.field public static final TP_DETAIL_INFO_TYPE_TRACKING_DEMUXER_FILE_OPEN_END:I = 0x4

.field public static final TP_DETAIL_INFO_TYPE_TRACKING_DEMUXER_FILE_OPEN_START:I = 0x3

.field public static final TP_DETAIL_INFO_TYPE_TRACKING_DEMUX_THREAD_ON_PREAPRED:I = 0x5

.field public static final TP_DETAIL_INFO_TYPE_TRACKING_DEMUX_THREAD_PREPARE_START:I = 0x2

.field public static final TP_DETAIL_INFO_TYPE_TRACKING_FIRST_AUDIO_DECODER_CREATE_START:I = 0x8

.field public static final TP_DETAIL_INFO_TYPE_TRACKING_FIRST_AUDIO_FRAME_RENDERED:I = 0xa

.field public static final TP_DETAIL_INFO_TYPE_TRACKING_FIRST_START:I = 0x0

.field public static final TP_DETAIL_INFO_TYPE_TRACKING_FIRST_VIDEO_DECODER_CREATE_START:I = 0x7

.field public static final TP_DETAIL_INFO_TYPE_TRACKING_FIRST_VIDEO_FRAME_RENDERED:I = 0x9

.field public static final TP_DETAIL_INFO_TYPE_TRACKING_PLAYER_SCHEDULING_THREAD_ON_PREAPRED:I = 0x6

.field public static final TP_DETAIL_INFO_TYPE_TRACKING_PLAYER_SCHEDULING_THREAD_PREPARE_START:I = 0x1

.field public static final TP_DETAIL_INFO_TYPE_UNKNOWN:I = -0x1


# instance fields
.field public timeSince1970Us:J

.field public type:I
    .annotation runtime Lcom/tencent/thumbplayer/core/common/TPDetailInfo$TPDetailInfoType;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
