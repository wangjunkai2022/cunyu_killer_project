.class public abstract Ltop/niunaijun/blackbox/core/system/user/IBUserManagerService$Stub;
.super Landroid/os/Binder;
.source "IBUserManagerService.java"

# interfaces
.implements Ltop/niunaijun/blackbox/core/system/user/IBUserManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/core/system/user/IBUserManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackbox/core/system/user/IBUserManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "top.niunaijun.blackbox.core.system.user.IBUserManagerService"

.field static final TRANSACTION_createUser:I = 0x3

.field static final TRANSACTION_deleteUser:I = 0x5

.field static final TRANSACTION_exists:I = 0x2

.field static final TRANSACTION_getUserInfo:I = 0x1

.field static final TRANSACTION_getUsers:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "top.niunaijun.blackbox.core.system.user.IBUserManagerService"

    .line 41
    invoke-virtual {p0, p0, v0}, Ltop/niunaijun/blackbox/core/system/user/IBUserManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Ltop/niunaijun/blackbox/core/system/user/IBUserManagerService;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "top.niunaijun.blackbox.core.system.user.IBUserManagerService"

    .line 52
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 53
    instance-of v1, v0, Ltop/niunaijun/blackbox/core/system/user/IBUserManagerService;

    if-eqz v1, :cond_1

    .line 54
    check-cast v0, Ltop/niunaijun/blackbox/core/system/user/IBUserManagerService;

    return-object v0

    .line 56
    :cond_1
    new-instance v0, Ltop/niunaijun/blackbox/core/system/user/IBUserManagerService$Stub$Proxy;

    invoke-direct {v0, p0}, Ltop/niunaijun/blackbox/core/system/user/IBUserManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Ltop/niunaijun/blackbox/core/system/user/IBUserManagerService;
    .locals 1

    .line 285
    sget-object v0, Ltop/niunaijun/blackbox/core/system/user/IBUserManagerService$Stub$Proxy;->sDefaultImpl:Ltop/niunaijun/blackbox/core/system/user/IBUserManagerService;

    return-object v0
.end method

.method public static setDefaultImpl(Ltop/niunaijun/blackbox/core/system/user/IBUserManagerService;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impl"
        }
    .end annotation

    .line 275
    sget-object v0, Ltop/niunaijun/blackbox/core/system/user/IBUserManagerService$Stub$Proxy;->sDefaultImpl:Ltop/niunaijun/blackbox/core/system/user/IBUserManagerService;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 279
    sput-object p0, Ltop/niunaijun/blackbox/core/system/user/IBUserManagerService$Stub$Proxy;->sDefaultImpl:Ltop/niunaijun/blackbox/core/system/user/IBUserManagerService;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 276
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setDefaultImpl() called twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "code",
            "data",
            "reply",
            "flags"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "top.niunaijun.blackbox.core.system.user.IBUserManagerService"

    if-eq p1, v1, :cond_6

    const/4 v3, 0x2

    if-eq p1, v3, :cond_5

    const/4 v3, 0x3

    if-eq p1, v3, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_0

    .line 133
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 69
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 124
    :cond_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 127
    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/core/system/user/IBUserManagerService$Stub;->deleteUser(I)V

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 116
    :cond_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/core/system/user/IBUserManagerService$Stub;->getUsers()Ljava/util/List;

    move-result-object p1

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    .line 100
    :cond_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 103
    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/core/system/user/IBUserManagerService$Stub;->createUser(I)Ltop/niunaijun/blackbox/core/system/user/BUserInfo;

    move-result-object p1

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_4

    .line 106
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    invoke-virtual {p1, p3, v1}, Ltop/niunaijun/blackbox/core/system/user/BUserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 110
    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v1

    .line 90
    :cond_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 93
    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/core/system/user/IBUserManagerService$Stub;->exists(I)Z

    move-result p1

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 74
    :cond_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 77
    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/core/system/user/IBUserManagerService$Stub;->getUserInfo(I)Ltop/niunaijun/blackbox/core/system/user/BUserInfo;

    move-result-object p1

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_7

    .line 80
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    invoke-virtual {p1, p3, v1}, Ltop/niunaijun/blackbox/core/system/user/BUserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 84
    :cond_7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v1
.end method
