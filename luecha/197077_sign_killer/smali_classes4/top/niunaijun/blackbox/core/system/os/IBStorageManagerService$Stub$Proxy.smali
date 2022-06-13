.class Ltop/niunaijun/blackbox/core/system/os/IBStorageManagerService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IBStorageManagerService.java"

# interfaces
.implements Ltop/niunaijun/blackbox/core/system/os/IBStorageManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/core/system/os/IBStorageManagerService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Ltop/niunaijun/blackbox/core/system/os/IBStorageManagerService;


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

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Ltop/niunaijun/blackbox/core/system/os/IBStorageManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 90
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/os/IBStorageManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "top.niunaijun.blackbox.core.system.os.IBStorageManagerService"

    return-object v0
.end method

.method public getVolumeList(ILjava/lang/String;II)[Landroid/os/storage/StorageVolume;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "uid",
            "packageName",
            "flags",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 99
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "top.niunaijun.blackbox.core.system.os.IBStorageManagerService"

    .line 102
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/os/IBStorageManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 108
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/os/IBStorageManagerService$Stub;->getDefaultImpl()Ltop/niunaijun/blackbox/core/system/os/IBStorageManagerService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 109
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/os/IBStorageManagerService$Stub;->getDefaultImpl()Ltop/niunaijun/blackbox/core/system/os/IBStorageManagerService;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Ltop/niunaijun/blackbox/core/system/os/IBStorageManagerService;->getVolumeList(ILjava/lang/String;II)[Landroid/os/storage/StorageVolume;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 116
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 111
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 112
    sget-object p1, Landroid/os/storage/StorageVolume;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/os/storage/StorageVolume;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 116
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 115
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 116
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 117
    throw p1
.end method
