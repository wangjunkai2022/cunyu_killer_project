.class public Lcom/tencent/thumbplayer/core/common/TPMediaTrackInfo;
.super Ljava/lang/Object;


# static fields
.field public static final TP_NATIVE_MEDIA_TRACK_TYPE_AUDIO:I = 0x2

.field public static final TP_NATIVE_MEDIA_TRACK_TYPE_SUBTITLE:I = 0x3

.field public static final TP_NATIVE_MEDIA_TRACK_TYPE_UNKNOW:I = 0x0

.field public static final TP_NATIVE_MEDIA_TRACK_TYPE_VIDEO:I = 0x1


# instance fields
.field public hlsTag:Lcom/tencent/thumbplayer/core/common/TPMediaTrackHlsTag;

.field public isExclusive:Z

.field public isInternal:Z

.field public isSelected:Z

.field public trackName:Ljava/lang/String;

.field public trackType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/thumbplayer/core/common/TPMediaTrackInfo;->trackType:I

    iput-boolean v0, p0, Lcom/tencent/thumbplayer/core/common/TPMediaTrackInfo;->isSelected:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/thumbplayer/core/common/TPMediaTrackInfo;->isExclusive:Z

    iput-boolean v0, p0, Lcom/tencent/thumbplayer/core/common/TPMediaTrackInfo;->isInternal:Z

    new-instance v0, Lcom/tencent/thumbplayer/core/common/TPMediaTrackHlsTag;

    invoke-direct {v0}, Lcom/tencent/thumbplayer/core/common/TPMediaTrackHlsTag;-><init>()V

    iput-object v0, p0, Lcom/tencent/thumbplayer/core/common/TPMediaTrackInfo;->hlsTag:Lcom/tencent/thumbplayer/core/common/TPMediaTrackHlsTag;

    return-void
.end method
