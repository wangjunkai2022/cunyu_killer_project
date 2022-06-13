.class public interface abstract Ltop/niunaijun/blackbox/core/system/dump/IBDumpMonitor;
.super Ljava/lang/Object;
.source "IBDumpMonitor.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackbox/core/system/dump/IBDumpMonitor$Stub;,
        Ltop/niunaijun/blackbox/core/system/dump/IBDumpMonitor$Default;
    }
.end annotation


# virtual methods
.method public abstract onDump(Ltop/niunaijun/blackbox/entity/dump/DumpResult;)V
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
.end method
