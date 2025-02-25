.class public Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;
.super Ljava/lang/Object;
.source "ActiveServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/core/system/am/ActiveServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RunningServiceRecord"
.end annotation


# instance fields
.field private mBindCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mConnectedServiceRecord:Ltop/niunaijun/blackbox/core/system/am/ActiveServices$ConnectedServiceRecord;

.field private mStartId:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;->mStartId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 93
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;->mBindCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method static synthetic access$000(Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 90
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;->mBindCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic access$100(Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 90
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;->mStartId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic access$300(Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;)Ltop/niunaijun/blackbox/core/system/am/ActiveServices$ConnectedServiceRecord;
    .locals 0

    .line 90
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;->mConnectedServiceRecord:Ltop/niunaijun/blackbox/core/system/am/ActiveServices$ConnectedServiceRecord;

    return-object p0
.end method

.method static synthetic access$302(Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;Ltop/niunaijun/blackbox/core/system/am/ActiveServices$ConnectedServiceRecord;)Ltop/niunaijun/blackbox/core/system/am/ActiveServices$ConnectedServiceRecord;
    .locals 0

    .line 90
    iput-object p1, p0, Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;->mConnectedServiceRecord:Ltop/niunaijun/blackbox/core/system/am/ActiveServices$ConnectedServiceRecord;

    return-object p1
.end method


# virtual methods
.method public decrementBindCountAndGet()I
    .locals 1

    .line 102
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;->mBindCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    return v0
.end method

.method public getAndIncrementStartId()I
    .locals 1

    .line 98
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;->mStartId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    return v0
.end method

.method public incrementBindCountAndGet()I
    .locals 1

    .line 106
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/ActiveServices$RunningServiceRecord;->mBindCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method
