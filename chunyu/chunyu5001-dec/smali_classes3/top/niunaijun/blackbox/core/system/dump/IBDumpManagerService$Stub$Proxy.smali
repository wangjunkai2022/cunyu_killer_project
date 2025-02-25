.class Ltop/niunaijun/blackbox/core/system/dump/IBDumpManagerService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IBDumpManagerService.java"

# interfaces
.implements Ltop/niunaijun/blackbox/core/system/dump/IBDumpManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/core/system/dump/IBDumpManagerService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Ltop/niunaijun/blackbox/core/system/dump/IBDumpManagerService;


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

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Ltop/niunaijun/blackbox/core/system/dump/IBDumpManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 109
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/dump/IBDumpManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "top.niunaijun.blackbox.core.system.dump.IBDumpManagerService"

    return-object v0
.end method

.method public noticeMonitor(Ltop/niunaijun/blackbox/entity/dump/DumpResult;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 155
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 156
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "top.niunaijun.blackbox.core.system.dump.IBDumpManagerService"

    .line 158
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 160
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    invoke-virtual {p1, v0, v2}, Ltop/niunaijun/blackbox/entity/dump/DumpResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 164
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    :goto_0
    iget-object v3, p0, Ltop/niunaijun/blackbox/core/system/dump/IBDumpManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 167
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/dump/IBDumpManagerService$Stub;->getDefaultImpl()Ltop/niunaijun/blackbox/core/system/dump/IBDumpManagerService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 168
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/dump/IBDumpManagerService$Stub;->getDefaultImpl()Ltop/niunaijun/blackbox/core/system/dump/IBDumpManagerService;

    move-result-object v2

    invoke-interface {v2, p1}, Ltop/niunaijun/blackbox/core/system/dump/IBDumpManagerService;->noticeMonitor(Ltop/niunaijun/blackbox/entity/dump/DumpResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 175
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 171
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 175
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 174
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 175
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 176
    throw p1
.end method

.method public registerMonitor(Landroid/os/IBinder;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "monitor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 117
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 118
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "top.niunaijun.blackbox.core.system.dump.IBDumpManagerService"

    .line 120
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 122
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/dump/IBDumpManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 123
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/dump/IBDumpManagerService$Stub;->getDefaultImpl()Ltop/niunaijun/blackbox/core/system/dump/IBDumpManagerService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 124
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/dump/IBDumpManagerService$Stub;->getDefaultImpl()Ltop/niunaijun/blackbox/core/system/dump/IBDumpManagerService;

    move-result-object v2

    invoke-interface {v2, p1}, Ltop/niunaijun/blackbox/core/system/dump/IBDumpManagerService;->registerMonitor(Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 131
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 127
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 131
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 130
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 131
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 132
    throw p1
.end method

.method public unregisterMonitor(Landroid/os/IBinder;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "monitor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 136
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 137
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "top.niunaijun.blackbox.core.system.dump.IBDumpManagerService"

    .line 139
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 141
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/dump/IBDumpManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 142
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/dump/IBDumpManagerService$Stub;->getDefaultImpl()Ltop/niunaijun/blackbox/core/system/dump/IBDumpManagerService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 143
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/dump/IBDumpManagerService$Stub;->getDefaultImpl()Ltop/niunaijun/blackbox/core/system/dump/IBDumpManagerService;

    move-result-object v2

    invoke-interface {v2, p1}, Ltop/niunaijun/blackbox/core/system/dump/IBDumpManagerService;->unregisterMonitor(Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 150
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 146
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 150
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 149
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 150
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 151
    throw p1
.end method
