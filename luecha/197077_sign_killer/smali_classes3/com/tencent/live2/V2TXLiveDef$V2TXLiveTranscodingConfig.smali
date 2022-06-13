.class public final Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTranscodingConfig;
.super Ljava/lang/Object;
.source "V2TXLiveDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/live2/V2TXLiveDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "V2TXLiveTranscodingConfig"
.end annotation


# instance fields
.field public audioBitrate:I

.field public audioChannels:I

.field public audioSampleRate:I

.field public backgroundColor:I

.field public backgroundImage:Ljava/lang/String;

.field public mixStreams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMixStream;",
            ">;"
        }
    .end annotation
.end field

.field public outputStreamId:Ljava/lang/String;

.field public videoBitrate:I

.field public videoFramerate:I

.field public videoGOP:I

.field public videoHeight:I

.field public videoWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 536
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 537
    iput v0, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTranscodingConfig;->videoWidth:I

    .line 538
    iput v0, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTranscodingConfig;->videoHeight:I

    .line 539
    iput v0, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTranscodingConfig;->videoBitrate:I

    const/16 v1, 0xf

    .line 540
    iput v1, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTranscodingConfig;->videoFramerate:I

    const/4 v1, 0x2

    .line 541
    iput v1, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTranscodingConfig;->videoGOP:I

    .line 542
    iput v0, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTranscodingConfig;->backgroundColor:I

    const v0, 0xbb80

    .line 543
    iput v0, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTranscodingConfig;->audioSampleRate:I

    const/16 v0, 0x40

    .line 544
    iput v0, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTranscodingConfig;->audioBitrate:I

    const/4 v0, 0x1

    .line 545
    iput v0, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTranscodingConfig;->audioChannels:I

    const/4 v0, 0x0

    .line 546
    iput-object v0, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTranscodingConfig;->outputStreamId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTranscodingConfig;)V
    .locals 1

    .line 549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 550
    iget v0, p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTranscodingConfig;->videoWidth:I

    iput v0, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTranscodingConfig;->videoWidth:I

    .line 551
    iget v0, p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTranscodingConfig;->videoHeight:I

    iput v0, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTranscodingConfig;->videoHeight:I

    .line 552
    iget v0, p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTranscodingConfig;->videoBitrate:I

    iput v0, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTranscodingConfig;->videoBitrate:I

    .line 553
    iget v0, p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTranscodingConfig;->videoFramerate:I

    iput v0, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTranscodingConfig;->videoFramerate:I

    .line 554
    iget v0, p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTranscodingConfig;->videoGOP:I

    iput v0, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTranscodingConfig;->videoGOP:I

    .line 555
    iget v0, p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTranscodingConfig;->backgroundColor:I

    iput v0, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTranscodingConfig;->backgroundColor:I

    .line 556
    iget-object v0, p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTranscodingConfig;->backgroundImage:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTranscodingConfig;->backgroundImage:Ljava/lang/String;

    .line 557
    iget v0, p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTranscodingConfig;->audioSampleRate:I

    iput v0, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTranscodingConfig;->audioSampleRate:I

    .line 558
    iget v0, p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTranscodingConfig;->audioBitrate:I

    iput v0, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTranscodingConfig;->audioBitrate:I

    .line 559
    iget v0, p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTranscodingConfig;->audioChannels:I

    iput v0, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTranscodingConfig;->audioChannels:I

    .line 560
    iget-object v0, p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTranscodingConfig;->outputStreamId:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTranscodingConfig;->outputStreamId:Ljava/lang/String;

    .line 561
    new-instance v0, Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTranscodingConfig;->mixStreams:Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTranscodingConfig;->mixStreams:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[videoWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTranscodingConfig;->videoWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "][videoHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTranscodingConfig;->videoHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "][videoBitrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTranscodingConfig;->videoBitrate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "][videoFramerate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTranscodingConfig;->videoFramerate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "][videoGOP="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTranscodingConfig;->videoGOP:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "][backgroundColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTranscodingConfig;->backgroundColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "][backgroundImage=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTranscodingConfig;->backgroundImage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "][audioSampleRate="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTranscodingConfig;->audioSampleRate:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "][audioBitrate="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTranscodingConfig;->audioBitrate:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "][audioChannels="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTranscodingConfig;->audioChannels:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "][mixStreams="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTranscodingConfig;->mixStreams:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "][outputStreamId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveTranscodingConfig;->outputStreamId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
