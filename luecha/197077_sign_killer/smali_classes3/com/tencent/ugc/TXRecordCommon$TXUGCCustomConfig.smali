.class public final Lcom/tencent/ugc/TXRecordCommon$TXUGCCustomConfig;
.super Ljava/lang/Object;
.source "TXRecordCommon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/ugc/TXRecordCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TXUGCCustomConfig"
.end annotation


# instance fields
.field public audioSampleRate:I

.field enableHighResolutionCapture:Z

.field public isFront:Z

.field public maxDuration:I

.field public minDuration:I

.field public needEdit:Z

.field public profile:I

.field public touchFocus:Z

.field public videoBitrate:I

.field public videoFps:I

.field public videoGop:I

.field public videoResolution:I

.field public watermark:Landroid/graphics/Bitmap;

.field public watermarkX:I

.field public watermarkY:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 207
    iput v0, p0, Lcom/tencent/ugc/TXRecordCommon$TXUGCCustomConfig;->videoResolution:I

    const/16 v0, 0x14

    .line 208
    iput v0, p0, Lcom/tencent/ugc/TXRecordCommon$TXUGCCustomConfig;->videoFps:I

    const/16 v0, 0x708

    .line 209
    iput v0, p0, Lcom/tencent/ugc/TXRecordCommon$TXUGCCustomConfig;->videoBitrate:I

    const/4 v0, 0x3

    .line 210
    iput v0, p0, Lcom/tencent/ugc/TXRecordCommon$TXUGCCustomConfig;->videoGop:I

    const/4 v0, 0x0

    .line 212
    iput-object v0, p0, Lcom/tencent/ugc/TXRecordCommon$TXUGCCustomConfig;->watermark:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    .line 213
    iput v0, p0, Lcom/tencent/ugc/TXRecordCommon$TXUGCCustomConfig;->watermarkX:I

    .line 214
    iput v0, p0, Lcom/tencent/ugc/TXRecordCommon$TXUGCCustomConfig;->watermarkY:I

    const/4 v1, 0x1

    .line 215
    iput-boolean v1, p0, Lcom/tencent/ugc/TXRecordCommon$TXUGCCustomConfig;->isFront:Z

    .line 216
    iput-boolean v0, p0, Lcom/tencent/ugc/TXRecordCommon$TXUGCCustomConfig;->touchFocus:Z

    .line 218
    iput-boolean v0, p0, Lcom/tencent/ugc/TXRecordCommon$TXUGCCustomConfig;->enableHighResolutionCapture:Z

    const/16 v2, 0x1388

    .line 219
    iput v2, p0, Lcom/tencent/ugc/TXRecordCommon$TXUGCCustomConfig;->minDuration:I

    const v2, 0xea60

    .line 220
    iput v2, p0, Lcom/tencent/ugc/TXRecordCommon$TXUGCCustomConfig;->maxDuration:I

    const v2, 0xbb80

    .line 221
    iput v2, p0, Lcom/tencent/ugc/TXRecordCommon$TXUGCCustomConfig;->audioSampleRate:I

    .line 222
    iput-boolean v1, p0, Lcom/tencent/ugc/TXRecordCommon$TXUGCCustomConfig;->needEdit:Z

    .line 223
    iput v0, p0, Lcom/tencent/ugc/TXRecordCommon$TXUGCCustomConfig;->profile:I

    return-void
.end method
