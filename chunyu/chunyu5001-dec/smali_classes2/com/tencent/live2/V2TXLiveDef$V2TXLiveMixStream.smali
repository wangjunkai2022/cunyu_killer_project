.class public Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMixStream;
.super Ljava/lang/Object;
.source "V2TXLiveDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/live2/V2TXLiveDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "V2TXLiveMixStream"
.end annotation


# instance fields
.field public height:I

.field public inputType:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMixInputType;

.field public streamId:Ljava/lang/String;

.field public userId:Ljava/lang/String;

.field public width:I

.field public x:I

.field public y:I

.field public zOrder:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 444
    iput-object v0, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMixStream;->userId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 445
    iput v0, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMixStream;->x:I

    .line 446
    iput v0, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMixStream;->y:I

    .line 447
    iput v0, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMixStream;->width:I

    .line 448
    iput v0, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMixStream;->height:I

    .line 449
    iput v0, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMixStream;->zOrder:I

    .line 450
    sget-object v0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMixInputType;->V2TXLiveMixInputTypeAudioVideo:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMixInputType;

    iput-object v0, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMixStream;->inputType:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMixInputType;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMixStream;)V
    .locals 1

    .line 463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 464
    iget-object v0, p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMixStream;->userId:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMixStream;->userId:Ljava/lang/String;

    .line 465
    iget-object v0, p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMixStream;->streamId:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMixStream;->streamId:Ljava/lang/String;

    .line 466
    iget v0, p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMixStream;->x:I

    iput v0, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMixStream;->x:I

    .line 467
    iget v0, p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMixStream;->y:I

    iput v0, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMixStream;->y:I

    .line 468
    iget v0, p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMixStream;->width:I

    iput v0, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMixStream;->width:I

    .line 469
    iget v0, p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMixStream;->height:I

    iput v0, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMixStream;->height:I

    .line 470
    iget v0, p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMixStream;->zOrder:I

    iput v0, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMixStream;->zOrder:I

    .line 471
    iget-object p1, p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMixStream;->inputType:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMixInputType;

    iput-object p1, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMixStream;->inputType:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMixInputType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIII)V
    .locals 0

    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 454
    iput-object p1, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMixStream;->userId:Ljava/lang/String;

    .line 455
    iput p2, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMixStream;->x:I

    .line 456
    iput p3, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMixStream;->y:I

    .line 457
    iput p4, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMixStream;->width:I

    .line 458
    iput p5, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMixStream;->height:I

    .line 459
    iput p6, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMixStream;->zOrder:I

    .line 460
    sget-object p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMixInputType;->V2TXLiveMixInputTypeAudioVideo:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMixInputType;

    iput-object p1, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMixStream;->inputType:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMixInputType;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[userId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMixStream;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "][streamId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMixStream;->streamId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "][x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMixStream;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "][y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMixStream;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "][width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMixStream;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "][height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMixStream;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "][zOrder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMixStream;->zOrder:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "][inputType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMixStream;->inputType:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveMixInputType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
