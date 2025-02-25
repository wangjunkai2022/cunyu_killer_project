.class public interface abstract Ltop/niunaijun/blackbox/core/system/os/IBStorageManagerService;
.super Ljava/lang/Object;
.source "IBStorageManagerService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackbox/core/system/os/IBStorageManagerService$Stub;,
        Ltop/niunaijun/blackbox/core/system/os/IBStorageManagerService$Default;
    }
.end annotation


# virtual methods
.method public abstract getVolumeList(ILjava/lang/String;II)[Landroid/os/storage/StorageVolume;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "uid",
            "packageName",
            "flags",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
