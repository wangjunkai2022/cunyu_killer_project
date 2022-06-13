.class public interface abstract Landroid/content/pm/IPackageDeleteObserver2;
.super Ljava/lang/Object;
.source "IPackageDeleteObserver2.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IPackageDeleteObserver2$Stub;,
        Landroid/content/pm/IPackageDeleteObserver2$Default;
    }
.end annotation


# virtual methods
.method public abstract onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "packageName",
            "returnCode",
            "msg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onUserActionRequired(Landroid/content/Intent;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
