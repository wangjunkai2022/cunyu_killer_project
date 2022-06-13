.class public Ltop/niunaijun/blackbox/entity/ServiceRecord;
.super Ljava/lang/Object;
.source "ServiceRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackbox/entity/ServiceRecord$BoundInfo;
    }
.end annotation


# instance fields
.field private mBounds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/Intent$FilterComparison;",
            "Ltop/niunaijun/blackbox/entity/ServiceRecord$BoundInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Landroid/app/Service;

.field private mStartId:I

.field private rebind:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/entity/ServiceRecord;->mBounds:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Ltop/niunaijun/blackbox/entity/ServiceRecord;)Ljava/util/Map;
    .locals 0

    .line 20
    iget-object p0, p0, Ltop/niunaijun/blackbox/entity/ServiceRecord;->mBounds:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public addBinder(Landroid/content/Intent;Landroid/os/IBinder;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "intent",
            "iBinder"
        }
    .end annotation

    .line 74
    new-instance v0, Landroid/content/Intent$FilterComparison;

    invoke-direct {v0, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 75
    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/entity/ServiceRecord;->getOrCreateBoundInfo(Landroid/content/Intent;)Ltop/niunaijun/blackbox/entity/ServiceRecord$BoundInfo;

    move-result-object p1

    if-nez p1, :cond_0

    .line 77
    new-instance p1, Ltop/niunaijun/blackbox/entity/ServiceRecord$BoundInfo;

    invoke-direct {p1, p0}, Ltop/niunaijun/blackbox/entity/ServiceRecord$BoundInfo;-><init>(Ltop/niunaijun/blackbox/entity/ServiceRecord;)V

    .line 78
    iget-object v1, p0, Ltop/niunaijun/blackbox/entity/ServiceRecord;->mBounds:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_0
    invoke-virtual {p1, p2}, Ltop/niunaijun/blackbox/entity/ServiceRecord$BoundInfo;->setIBinder(Landroid/os/IBinder;)V

    .line 82
    :try_start_0
    new-instance p1, Ltop/niunaijun/blackbox/entity/ServiceRecord$1;

    invoke-direct {p1, p0, p2, v0}, Ltop/niunaijun/blackbox/entity/ServiceRecord$1;-><init>(Ltop/niunaijun/blackbox/entity/ServiceRecord;Landroid/os/IBinder;Landroid/content/Intent$FilterComparison;)V

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 90
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public decreaseConnectionCount(Landroid/content/Intent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 100
    new-instance v0, Landroid/content/Intent$FilterComparison;

    invoke-direct {v0, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 101
    iget-object p1, p0, Ltop/niunaijun/blackbox/entity/ServiceRecord;->mBounds:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltop/niunaijun/blackbox/entity/ServiceRecord$BoundInfo;

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 104
    :cond_0
    invoke-virtual {p1}, Ltop/niunaijun/blackbox/entity/ServiceRecord$BoundInfo;->decrementAndGetBindCount()I

    move-result p1

    if-gtz p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getBinder(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 64
    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/entity/ServiceRecord;->getOrCreateBoundInfo(Landroid/content/Intent;)Ltop/niunaijun/blackbox/entity/ServiceRecord$BoundInfo;

    move-result-object p1

    .line 65
    invoke-virtual {p1}, Ltop/niunaijun/blackbox/entity/ServiceRecord$BoundInfo;->getIBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public getOrCreateBoundInfo(Landroid/content/Intent;)Ltop/niunaijun/blackbox/entity/ServiceRecord$BoundInfo;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 113
    new-instance v0, Landroid/content/Intent$FilterComparison;

    invoke-direct {v0, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 114
    iget-object p1, p0, Ltop/niunaijun/blackbox/entity/ServiceRecord;->mBounds:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltop/niunaijun/blackbox/entity/ServiceRecord$BoundInfo;

    if-nez p1, :cond_0

    .line 116
    new-instance p1, Ltop/niunaijun/blackbox/entity/ServiceRecord$BoundInfo;

    invoke-direct {p1, p0}, Ltop/niunaijun/blackbox/entity/ServiceRecord$BoundInfo;-><init>(Ltop/niunaijun/blackbox/entity/ServiceRecord;)V

    .line 117
    iget-object v1, p0, Ltop/niunaijun/blackbox/entity/ServiceRecord;->mBounds:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method public getService()Landroid/app/Service;
    .locals 1

    .line 56
    iget-object v0, p0, Ltop/niunaijun/blackbox/entity/ServiceRecord;->mService:Landroid/app/Service;

    return-object v0
.end method

.method public getStartId()I
    .locals 1

    .line 48
    iget v0, p0, Ltop/niunaijun/blackbox/entity/ServiceRecord;->mStartId:I

    return v0
.end method

.method public hasBinder(Landroid/content/Intent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 69
    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/entity/ServiceRecord;->getOrCreateBoundInfo(Landroid/content/Intent;)Ltop/niunaijun/blackbox/entity/ServiceRecord$BoundInfo;

    move-result-object p1

    .line 70
    invoke-virtual {p1}, Ltop/niunaijun/blackbox/entity/ServiceRecord$BoundInfo;->getIBinder()Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public incrementAndGetBindCount(Landroid/content/Intent;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 95
    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/entity/ServiceRecord;->getOrCreateBoundInfo(Landroid/content/Intent;)Ltop/niunaijun/blackbox/entity/ServiceRecord$BoundInfo;

    move-result-object p1

    .line 96
    invoke-virtual {p1}, Ltop/niunaijun/blackbox/entity/ServiceRecord$BoundInfo;->incrementAndGetBindCount()I

    move-result p1

    return p1
.end method

.method public isRebind()Z
    .locals 1

    .line 123
    iget-boolean v0, p0, Ltop/niunaijun/blackbox/entity/ServiceRecord;->rebind:Z

    return v0
.end method

.method public setRebind(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rebind"
        }
    .end annotation

    .line 127
    iput-boolean p1, p0, Ltop/niunaijun/blackbox/entity/ServiceRecord;->rebind:Z

    return-void
.end method

.method public setService(Landroid/app/Service;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "service"
        }
    .end annotation

    .line 60
    iput-object p1, p0, Ltop/niunaijun/blackbox/entity/ServiceRecord;->mService:Landroid/app/Service;

    return-void
.end method

.method public setStartId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startId"
        }
    .end annotation

    .line 52
    iput p1, p0, Ltop/niunaijun/blackbox/entity/ServiceRecord;->mStartId:I

    return-void
.end method
