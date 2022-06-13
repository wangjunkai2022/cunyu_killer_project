.class public Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;
.super Ljava/lang/Object;
.source "TXSVideoEncoderParam.java"


# instance fields
.field public annexb:Z

.field public appendSpsPps:Z

.field public bLimitFps:Z

.field public bMultiRef:Z

.field public baseFrameIndex:J

.field public baseGopIndex:J

.field public bitrate:I

.field public enableBFrame:Z

.field public enableBlackList:Z

.field public enableEGL14:Z

.field public encFmt:Lorg/json/JSONArray;

.field public encodeType:I

.field public encoderMode:I

.field public encoderProfile:I

.field public encoderSceneMode:I

.field public forceSetBitrateMode:Z

.field public fps:I

.field public fullIFrame:Z

.field public glContext:Ljava/lang/Object;

.field public gop:I

.field public height:I

.field public isH265EncoderEnabled:Z

.field public realTime:Z

.field public record:Z

.field public streamType:I

.field public syncOutput:Z

.field public usageType:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->width:I

    .line 16
    iput v0, p0, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->height:I

    const/16 v1, 0x14

    .line 17
    iput v1, p0, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->fps:I

    const/4 v1, 0x3

    .line 18
    iput v1, p0, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->gop:I

    const/4 v1, 0x1

    .line 19
    iput v1, p0, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->encoderProfile:I

    .line 20
    iput v1, p0, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->encoderMode:I

    .line 21
    iput-boolean v0, p0, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->enableBFrame:Z

    const/4 v2, 0x0

    .line 22
    iput-object v2, p0, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->glContext:Ljava/lang/Object;

    .line 23
    iput-boolean v0, p0, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->realTime:Z

    .line 24
    iput-boolean v0, p0, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->annexb:Z

    .line 25
    iput-boolean v1, p0, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->appendSpsPps:Z

    .line 26
    iput-boolean v0, p0, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->fullIFrame:Z

    .line 27
    iput-boolean v0, p0, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->syncOutput:Z

    .line 28
    iput-boolean v0, p0, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->enableEGL14:Z

    .line 29
    iput-boolean v1, p0, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->enableBlackList:Z

    .line 30
    iput-boolean v0, p0, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->record:Z

    const-wide/16 v3, 0x0

    .line 31
    iput-wide v3, p0, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->baseFrameIndex:J

    .line 32
    iput-wide v3, p0, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->baseGopIndex:J

    .line 33
    iput v0, p0, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->streamType:I

    .line 34
    iput-boolean v0, p0, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->bMultiRef:Z

    .line 35
    iput v0, p0, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->bitrate:I

    .line 36
    iput-boolean v0, p0, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->bLimitFps:Z

    .line 37
    iput v0, p0, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->encodeType:I

    .line 38
    iput-boolean v0, p0, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->forceSetBitrateMode:Z

    .line 39
    iput-object v2, p0, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->encFmt:Lorg/json/JSONArray;

    .line 40
    iput-boolean v0, p0, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->isH265EncoderEnabled:Z

    .line 41
    iput v0, p0, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->usageType:I

    .line 42
    iput v0, p0, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->encoderSceneMode:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TXSVideoEncoderParam{width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->fps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->gop:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", encoderProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->encoderProfile:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", encoderMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->encoderMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", enableBFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->enableBFrame:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", glContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->glContext:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", realTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->realTime:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", annexb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->annexb:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", appendSpsPps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->appendSpsPps:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", fullIFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->fullIFrame:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", syncOutput="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->syncOutput:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", enableEGL14="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->enableEGL14:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", enableBlackList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->enableBlackList:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", record="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->record:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", baseFrameIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->baseFrameIndex:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", baseGopIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->baseGopIndex:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", streamType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->streamType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bMultiRef="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->bMultiRef:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", bitrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->bitrate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bLimitFps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->bLimitFps:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", encodeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->encodeType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", forceSetBitrateMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->forceSetBitrateMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", encFmt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->encFmt:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isH265EncoderEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->isH265EncoderEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", usageType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->usageType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", encoderSceneMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->encoderSceneMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
