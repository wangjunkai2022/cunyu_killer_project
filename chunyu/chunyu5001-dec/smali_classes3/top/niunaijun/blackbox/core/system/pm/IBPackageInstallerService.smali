.class public interface abstract Ltop/niunaijun/blackbox/core/system/pm/IBPackageInstallerService;
.super Ljava/lang/Object;
.source "IBPackageInstallerService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackbox/core/system/pm/IBPackageInstallerService$Stub;,
        Ltop/niunaijun/blackbox/core/system/pm/IBPackageInstallerService$Default;
    }
.end annotation


# virtual methods
.method public abstract installPackageAsUser(Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;I)I
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
.end method

.method public abstract uninstallPackageAsUser(Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;ZI)I
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
.end method

.method public abstract updatePackage(Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;)I
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
.end method
