.class final Ltop/niunaijun/blackbox/core/system/pm/BPackage$SigningDetails$1;
.super Ljava/lang/Object;
.source "BPackage.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/core/system/pm/BPackage$SigningDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Ltop/niunaijun/blackbox/core/system/pm/BPackage$SigningDetails;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "source"
        }
    .end annotation

    .line 457
    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/core/system/pm/BPackage$SigningDetails$1;->createFromParcel(Landroid/os/Parcel;)Ltop/niunaijun/blackbox/core/system/pm/BPackage$SigningDetails;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Ltop/niunaijun/blackbox/core/system/pm/BPackage$SigningDetails;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 460
    new-instance v0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$SigningDetails;

    invoke-direct {v0, p1}, Ltop/niunaijun/blackbox/core/system/pm/BPackage$SigningDetails;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "size"
        }
    .end annotation

    .line 457
    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/core/system/pm/BPackage$SigningDetails$1;->newArray(I)[Ltop/niunaijun/blackbox/core/system/pm/BPackage$SigningDetails;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Ltop/niunaijun/blackbox/core/system/pm/BPackage$SigningDetails;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 465
    new-array p1, p1, [Ltop/niunaijun/blackbox/core/system/pm/BPackage$SigningDetails;

    return-object p1
.end method
