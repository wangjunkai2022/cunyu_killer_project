.class public interface abstract Ltop/niunaijun/blackbox/core/IBActivityThread;
.super Ljava/lang/Object;
.source "IBActivityThread.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackbox/core/IBActivityThread$Stub;,
        Ltop/niunaijun/blackbox/core/IBActivityThread$Default;
    }
.end annotation


# virtual methods
.method public abstract bindApplication()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getActivityThread()Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
