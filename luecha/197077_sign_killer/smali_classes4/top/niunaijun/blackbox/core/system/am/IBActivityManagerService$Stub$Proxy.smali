.class Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IBActivityManagerService.java"

# interfaces
.implements Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "remote"
        }
    .end annotation

    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 406
    iput-object p1, p0, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 410
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public bindService(Landroid/content/Intent;Landroid/os/IBinder;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "service",
            "binder",
            "resolvedType",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 627
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 628
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "top.niunaijun.blackbox.core.system.am.IBActivityManagerService"

    .line 631
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 633
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 634
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 637
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 639
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 640
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 641
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 642
    iget-object v3, p0, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 643
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub;->getDefaultImpl()Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 644
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub;->getDefaultImpl()Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;->bindService(Landroid/content/Intent;Landroid/os/IBinder;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 655
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 656
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 646
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 647
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 648
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 655
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 656
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 655
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 656
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 657
    throw p1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "top.niunaijun.blackbox.core.system.am.IBActivityManagerService"

    return-object v0
.end method

.method public initProcess(Ljava/lang/String;Ljava/lang/String;I)Ltop/niunaijun/blackbox/entity/AppConfig;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "packageName",
            "processName",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 418
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 419
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "top.niunaijun.blackbox.core.system.am.IBActivityManagerService"

    .line 422
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 423
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 424
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 425
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 426
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 427
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub;->getDefaultImpl()Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 428
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub;->getDefaultImpl()Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;->initProcess(Ljava/lang/String;Ljava/lang/String;I)Ltop/niunaijun/blackbox/entity/AppConfig;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 439
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 440
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 430
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 431
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 432
    sget-object p1, Ltop/niunaijun/blackbox/entity/AppConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltop/niunaijun/blackbox/entity/AppConfig;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 439
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 440
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 439
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 440
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 441
    throw p1
.end method

.method public onActivityCreated(ILandroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "taskId",
            "token",
            "activityRecord"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 768
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 769
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "top.niunaijun.blackbox.core.system.am.IBActivityManagerService"

    .line 771
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 772
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 773
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 774
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 775
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 776
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub;->getDefaultImpl()Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 777
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub;->getDefaultImpl()Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;->onActivityCreated(ILandroid/os/IBinder;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 783
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 784
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 780
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 783
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 784
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 783
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 784
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 785
    throw p1
.end method

.method public onActivityDestroyed(Landroid/os/IBinder;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 808
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 809
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "top.niunaijun.blackbox.core.system.am.IBActivityManagerService"

    .line 811
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 812
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 813
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 814
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub;->getDefaultImpl()Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 815
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub;->getDefaultImpl()Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;

    move-result-object v2

    invoke-interface {v2, p1}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;->onActivityDestroyed(Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 821
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 822
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 818
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 821
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 822
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 821
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 822
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 823
    throw p1
.end method

.method public onActivityResumed(Landroid/os/IBinder;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 789
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 790
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "top.niunaijun.blackbox.core.system.am.IBActivityManagerService"

    .line 792
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 793
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 794
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 795
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub;->getDefaultImpl()Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 796
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub;->getDefaultImpl()Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;

    move-result-object v2

    invoke-interface {v2, p1}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;->onActivityResumed(Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 802
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 803
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 799
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 802
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 803
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 802
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 803
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 804
    throw p1
.end method

.method public onFinishActivity(Landroid/os/IBinder;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 827
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 828
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "top.niunaijun.blackbox.core.system.am.IBActivityManagerService"

    .line 830
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 831
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 832
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 833
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub;->getDefaultImpl()Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 834
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub;->getDefaultImpl()Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;

    move-result-object v2

    invoke-interface {v2, p1}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;->onFinishActivity(Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 840
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 841
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 837
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 840
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 841
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 840
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 841
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 842
    throw p1
.end method

.method public onServiceDestroy(Landroid/content/Intent;I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "proxyIntent",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 708
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 709
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "top.niunaijun.blackbox.core.system.am.IBActivityManagerService"

    .line 711
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 713
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 714
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 717
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 719
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 720
    iget-object v3, p0, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 721
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub;->getDefaultImpl()Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 722
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub;->getDefaultImpl()Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;->onServiceDestroy(Landroid/content/Intent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 728
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 729
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 725
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 728
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 729
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 728
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 729
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 730
    throw p1
.end method

.method public onStartCommand(Landroid/content/Intent;I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "proxyIntent",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 682
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 683
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "top.niunaijun.blackbox.core.system.am.IBActivityManagerService"

    .line 685
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 687
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 688
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 691
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 693
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 694
    iget-object v3, p0, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 695
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub;->getDefaultImpl()Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 696
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub;->getDefaultImpl()Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;->onStartCommand(Landroid/content/Intent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 702
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 703
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 699
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 702
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 703
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 702
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 703
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 704
    throw p1
.end method

.method public restartProcess(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "packageName",
            "processName",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 446
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 447
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "top.niunaijun.blackbox.core.system.am.IBActivityManagerService"

    .line 449
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 450
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 451
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 452
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 453
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 454
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub;->getDefaultImpl()Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 455
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub;->getDefaultImpl()Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;->restartProcess(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 462
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 458
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 461
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 462
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 461
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 462
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 463
    throw p1
.end method

.method public sendBroadcast(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "resolvedType",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 734
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 735
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "top.niunaijun.blackbox.core.system.am.IBActivityManagerService"

    .line 738
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 740
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 741
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 744
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 746
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 747
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 748
    iget-object v3, p0, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 749
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub;->getDefaultImpl()Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 750
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub;->getDefaultImpl()Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 761
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 762
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 752
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 753
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 754
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 761
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 762
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 761
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 762
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 763
    throw p1
.end method

.method public startActivities(I[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)I
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "userId",
            "intent",
            "resolvedType",
            "resultTo",
            "options"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 533
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 534
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "top.niunaijun.blackbox.core.system.am.IBActivityManagerService"

    .line 537
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 538
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    .line 539
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 540
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 541
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    if-eqz p5, :cond_0

    const/4 v3, 0x1

    .line 543
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 544
    invoke-virtual {p5, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 547
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 549
    :goto_0
    iget-object v3, p0, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 550
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub;->getDefaultImpl()Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 551
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub;->getDefaultImpl()Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;

    move-result-object v3

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-interface/range {v3 .. v8}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;->startActivities(I[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 557
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 558
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 553
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 554
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 557
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 558
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 557
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 558
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 559
    throw p1
.end method

.method public startActivity(Landroid/content/Intent;I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "intent",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 467
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 468
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "top.niunaijun.blackbox.core.system.am.IBActivityManagerService"

    .line 470
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 472
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 473
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 476
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 478
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 479
    iget-object v3, p0, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 480
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub;->getDefaultImpl()Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 481
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub;->getDefaultImpl()Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;->startActivity(Landroid/content/Intent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 487
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 488
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 484
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 487
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 488
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 487
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 488
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 489
    throw p1
.end method

.method public startActivityAms(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;)I
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "userId",
            "intent",
            "resolvedType",
            "resultTo",
            "resultWho",
            "requestCode",
            "flags",
            "options"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v9, p8

    .line 493
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v10

    .line 494
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v11

    :try_start_0
    const-string v1, "top.niunaijun.blackbox.core.system.am.IBActivityManagerService"

    .line 497
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move v2, p1

    .line 498
    invoke-virtual {v10, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 500
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 501
    invoke-virtual {v0, v10, v3}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 504
    :cond_0
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    move-object/from16 v4, p3

    .line 506
    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v5, p4

    .line 507
    invoke-virtual {v10, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move-object/from16 v6, p5

    .line 508
    invoke-virtual {v10, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move/from16 v7, p6

    .line 509
    invoke-virtual {v10, v7}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v8, p7

    .line 510
    invoke-virtual {v10, v8}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz v9, :cond_1

    .line 512
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 513
    invoke-virtual {v9, v10, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 516
    :cond_1
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_1
    move-object v12, p0

    .line 518
    :try_start_1
    iget-object v1, v12, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v13, 0x4

    invoke-interface {v1, v13, v10, v11, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 519
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub;->getDefaultImpl()Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 520
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub;->getDefaultImpl()Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;

    move-result-object v1

    move v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-interface/range {v1 .. v9}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;->startActivityAms(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 526
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    .line 527
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    return v0

    .line 522
    :cond_2
    :try_start_2
    invoke-virtual {v11}, Landroid/os/Parcel;->readException()V

    .line 523
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 526
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    .line 527
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v12, p0

    .line 526
    :goto_2
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    .line 527
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    .line 528
    throw v0
.end method

.method public startService(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/ComponentName;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "resolvedType",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 564
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 565
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "top.niunaijun.blackbox.core.system.am.IBActivityManagerService"

    .line 568
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 570
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 571
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 574
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 576
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 577
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 578
    iget-object v3, p0, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x6

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 579
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub;->getDefaultImpl()Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 580
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub;->getDefaultImpl()Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;->startService(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 591
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 592
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 582
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 583
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 584
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 591
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 592
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 591
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 592
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 593
    throw p1
.end method

.method public stopService(Landroid/content/Intent;Ljava/lang/String;I)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "resolvedType",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 598
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 599
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "top.niunaijun.blackbox.core.system.am.IBActivityManagerService"

    .line 602
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 604
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 605
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 608
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 610
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 611
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 612
    iget-object v3, p0, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x7

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 613
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub;->getDefaultImpl()Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 614
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub;->getDefaultImpl()Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;->stopService(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 620
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 621
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 616
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 617
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 620
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 621
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 620
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 621
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 622
    throw p1
.end method

.method public unbindService(Landroid/os/IBinder;I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "binder",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 662
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 663
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "top.niunaijun.blackbox.core.system.am.IBActivityManagerService"

    .line 665
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 666
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 667
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 668
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 669
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub;->getDefaultImpl()Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 670
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService$Stub;->getDefaultImpl()Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ltop/niunaijun/blackbox/core/system/am/IBActivityManagerService;->unbindService(Landroid/os/IBinder;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 676
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 677
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 673
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 676
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 677
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 676
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 677
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 678
    throw p1
.end method
