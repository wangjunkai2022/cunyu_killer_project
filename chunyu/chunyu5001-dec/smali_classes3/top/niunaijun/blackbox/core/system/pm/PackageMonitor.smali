.class public interface abstract Ltop/niunaijun/blackbox/core/system/pm/PackageMonitor;
.super Ljava/lang/Object;
.source "PackageMonitor.java"


# virtual methods
.method public abstract onPackageInstalled(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageName",
            "userId"
        }
    .end annotation
.end method

.method public abstract onPackageUninstalled(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageName",
            "userId"
        }
    .end annotation
.end method
