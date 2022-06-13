.class Ltop/niunaijun/blackbox/core/system/pm/IBPackageInstallerService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IBPackageInstallerService.java"

# interfaces
.implements Ltop/niunaijun/blackbox/core/system/pm/IBPackageInstallerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/core/system/pm/IBPackageInstallerService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Ltop/niunaijun/blackbox/core/system/pm/IBPackageInstallerService;


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

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Ltop/niunaijun/blackbox/core/system/pm/IBPackageInstallerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 133
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/IBPackageInstallerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "top.niunaijun.blackbox.core.system.pm.IBPackageInstallerService"

    return-object v0
.end method

.method public installPackageAsUser(Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;I)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 141
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 142
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "top.niunaijun.blackbox.core.system.pm.IBPackageInstallerService"

    .line 145
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 147
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    invoke-virtual {p1, v0, v3}, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 151
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget-object v4, p0, Ltop/niunaijun/blackbox/core/system/pm/IBPackageInstallerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v4, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 155
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageInstallerService$Stub;->getDefaultImpl()Ltop/niunaijun/blackbox/core/system/pm/IBPackageInstallerService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 156
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageInstallerService$Stub;->getDefaultImpl()Ltop/niunaijun/blackbox/core/system/pm/IBPackageInstallerService;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageInstallerService;->installPackageAsUser(Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 163
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 158
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 159
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 163
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 162
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 163
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 164
    throw p1
.end method

.method public uninstallPackageAsUser(Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;ZI)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "file",
            "removeApp",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 169
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 170
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "top.niunaijun.blackbox.core.system.pm.IBPackageInstallerService"

    .line 173
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 175
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    invoke-virtual {p1, v0, v3}, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 179
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 181
    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/pm/IBPackageInstallerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 184
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageInstallerService$Stub;->getDefaultImpl()Ltop/niunaijun/blackbox/core/system/pm/IBPackageInstallerService;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 185
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageInstallerService$Stub;->getDefaultImpl()Ltop/niunaijun/blackbox/core/system/pm/IBPackageInstallerService;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageInstallerService;->uninstallPackageAsUser(Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;ZI)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 192
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 187
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 188
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 192
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 191
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 192
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 193
    throw p1
.end method

.method public updatePackage(Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 198
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 199
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "top.niunaijun.blackbox.core.system.pm.IBPackageInstallerService"

    .line 202
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 204
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    invoke-virtual {p1, v0, v2}, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 208
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    :goto_0
    iget-object v3, p0, Ltop/niunaijun/blackbox/core/system/pm/IBPackageInstallerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 211
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageInstallerService$Stub;->getDefaultImpl()Ltop/niunaijun/blackbox/core/system/pm/IBPackageInstallerService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 212
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageInstallerService$Stub;->getDefaultImpl()Ltop/niunaijun/blackbox/core/system/pm/IBPackageInstallerService;

    move-result-object v2

    invoke-interface {v2, p1}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageInstallerService;->updatePackage(Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 219
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 214
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 215
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 218
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 219
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 218
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 219
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 220
    throw p1
.end method
