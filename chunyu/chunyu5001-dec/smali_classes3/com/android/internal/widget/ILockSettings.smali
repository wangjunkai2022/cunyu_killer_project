.class public interface abstract Lcom/android/internal/widget/ILockSettings;
.super Ljava/lang/Object;
.source "ILockSettings.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ILockSettings$Stub;,
        Lcom/android/internal/widget/ILockSettings$Default;
    }
.end annotation


# virtual methods
.method public abstract getRecoverySecretTypes()[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setRecoverySecretTypes([I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "secretTypes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
