.class public interface abstract Ltop/niunaijun/blackbox/core/system/user/IBUserManagerService;
.super Ljava/lang/Object;
.source "IBUserManagerService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackbox/core/system/user/IBUserManagerService$Stub;,
        Ltop/niunaijun/blackbox/core/system/user/IBUserManagerService$Default;
    }
.end annotation


# virtual methods
.method public abstract createUser(I)Ltop/niunaijun/blackbox/core/system/user/BUserInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract deleteUser(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract exists(I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getUserInfo(I)Ltop/niunaijun/blackbox/core/system/user/BUserInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getUsers()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ltop/niunaijun/blackbox/core/system/user/BUserInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
