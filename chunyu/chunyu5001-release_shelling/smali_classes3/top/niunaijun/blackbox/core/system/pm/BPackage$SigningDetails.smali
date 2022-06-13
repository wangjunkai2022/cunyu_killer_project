.class public final Ltop/niunaijun/blackbox/core/system/pm/BPackage$SigningDetails;
.super Ljava/lang/Object;
.source "BPackage.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/core/system/pm/BPackage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SigningDetails"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ltop/niunaijun/blackbox/core/system/pm/BPackage$SigningDetails;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;


# instance fields
.field public signatures:[Landroid/content/pm/Signature;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 457
    new-instance v0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$SigningDetails$1;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/core/system/pm/BPackage$SigningDetails$1;-><init>()V

    sput-object v0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$SigningDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageParser$SigningDetails;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "signingDetails"
        }
    .end annotation

    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    iget-object p1, p1, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    iput-object p1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 454
    sget-object v0, Landroid/content/pm/Signature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/content/pm/Signature;

    iput-object p1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dest",
            "flags"
        }
    .end annotation

    .line 446
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return-void
.end method
