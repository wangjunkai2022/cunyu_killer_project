.class public Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerDrmParams;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TPPlayerDrmParams"
.end annotation


# instance fields
.field public mComponentName:Ljava/lang/String;

.field public mDrmAbility:I

.field public mDrmType:I
    .annotation runtime Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPDrmType;
    .end annotation
.end field

.field public mGetKeyReqETimeMs:J

.field public mGetKeyReqSTimeMs:J

.field public mGetProvisionReqETimeMs:J

.field public mGetProvisionReqSTimeMs:J

.field public mOpenSessionETimeMs:J

.field public mOpenSessionSTimeMs:J

.field public mPrepareETimeMs:J

.field public mPrepareSTimeMs:J

.field public mProvideKeyRespETimeMs:J

.field public mProvideKeyRespSTimeMs:J

.field public mProvideProvisionRespETimeMs:J

.field public mProvideProvisionRespSTimeMs:J

.field public mRecvKeyRespTimeMs:J

.field public mRecvProvisionRespTimeMs:J

.field public mSecureLevel:I

.field public mSendKeyReqTimeMs:J

.field public mSendProvisionReqTimeMs:J

.field public mSupportSecureDecoder:I

.field public mSupportSecureDecrypt:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerDrmParams;->mDrmAbility:I

    iput v0, p0, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerDrmParams;->mDrmType:I

    iput v0, p0, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerDrmParams;->mSecureLevel:I

    iput v0, p0, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerDrmParams;->mSupportSecureDecoder:I

    iput v0, p0, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerDrmParams;->mSupportSecureDecrypt:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/thumbplayer/core/player/TPGeneralPlayFlowParams$TPPlayerDrmParams;->mComponentName:Ljava/lang/String;

    return-void
.end method
