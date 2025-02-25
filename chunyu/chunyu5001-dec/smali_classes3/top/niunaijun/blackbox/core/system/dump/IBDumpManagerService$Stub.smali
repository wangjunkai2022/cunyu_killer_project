.class public abstract Ltop/niunaijun/blackbox/core/system/dump/IBDumpManagerService$Stub;
.super Landroid/os/Binder;
.source "IBDumpManagerService.java"

# interfaces
.implements Ltop/niunaijun/blackbox/core/system/dump/IBDumpManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/core/system/dump/IBDumpManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackbox/core/system/dump/IBDumpManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "top.niunaijun.blackbox.core.system.dump.IBDumpManagerService"

.field static final TRANSACTION_noticeMonitor:I = 0x3

.field static final TRANSACTION_registerMonitor:I = 0x1

.field static final TRANSACTION_unregisterMonitor:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "top.niunaijun.blackbox.core.system.dump.IBDumpManagerService"

    .line 31
    invoke-virtual {p0, p0, v0}, Ltop/niunaijun/blackbox/core/system/dump/IBDumpManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Ltop/niunaijun/blackbox/core/system/dump/IBDumpManagerService;
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
    const-string v0, "top.niunaijun.blackbox.core.system.dump.IBDumpManagerService"

    .line 42
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 43
    instance-of v1, v0, Ltop/niunaijun/blackbox/core/system/dump/IBDumpManagerService;

    if-eqz v1, :cond_1

    .line 44
    check-cast v0, Ltop/niunaijun/blackbox/core/system/dump/IBDumpManagerService;

    return-object v0

    .line 46
    :cond_1
    new-instance v0, Ltop/niunaijun/blackbox/core/system/dump/IBDumpManagerService$Stub$Proxy;

    invoke-direct {v0, p0}, Ltop/niunaijun/blackbox/core/system/dump/IBDumpManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Ltop/niunaijun/blackbox/core/system/dump/IBDumpManagerService;
    .locals 1

    .line 197
    sget-object v0, Ltop/niunaijun/blackbox/core/system/dump/IBDumpManagerService$Stub$Proxy;->sDefaultImpl:Ltop/niunaijun/blackbox/core/system/dump/IBDumpManagerService;

    return-object v0
.end method

.method public static setDefaultImpl(Ltop/niunaijun/blackbox/core/system/dump/IBDumpManagerService;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impl"
        }
    .end annotation

    .line 187
    sget-object v0, Ltop/niunaijun/blackbox/core/system/dump/IBDumpManagerService$Stub$Proxy;->sDefaultImpl:Ltop/niunaijun/blackbox/core/system/dump/IBDumpManagerService;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 191
    sput-object p0, Ltop/niunaijun/blackbox/core/system/dump/IBDumpManagerService$Stub$Proxy;->sDefaultImpl:Ltop/niunaijun/blackbox/core/system/dump/IBDumpManagerService;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 188
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
    .locals 3
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

    const/4 v0, 0x1

    const-string v1, "top.niunaijun.blackbox.core.system.dump.IBDumpManagerService"

    if-eq p1, v0, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 96
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 59
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 82
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 85
    sget-object p1, Ltop/niunaijun/blackbox/entity/dump/DumpResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltop/niunaijun/blackbox/entity/dump/DumpResult;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 90
    :goto_0
    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/core/system/dump/IBDumpManagerService$Stub;->noticeMonitor(Ltop/niunaijun/blackbox/entity/dump/DumpResult;)V

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 73
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 76
    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/core/system/dump/IBDumpManagerService$Stub;->unregisterMonitor(Landroid/os/IBinder;)V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 64
    :cond_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 67
    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/core/system/dump/IBDumpManagerService$Stub;->registerMonitor(Landroid/os/IBinder;)V

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method
