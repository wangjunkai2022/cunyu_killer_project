.class public Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;
.super Ljava/lang/Object;
.source "BPackage.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/core/system/pm/BPackage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntentInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public banner:I

.field public hasDefault:Z

.field public icon:I

.field public intentFilter:Landroid/content/IntentFilter;

.field public labelRes:I

.field public logo:I

.field public nonLocalizedLabel:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 525
    new-instance v0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo$1;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo$1;-><init>()V

    sput-object v0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageParser$IntentInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intentInfo"
        }
    .end annotation

    .line 479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 480
    iput-object p1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->intentFilter:Landroid/content/IntentFilter;

    .line 481
    iget-boolean v0, p1, Landroid/content/pm/PackageParser$IntentInfo;->hasDefault:Z

    iput-boolean v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->hasDefault:Z

    .line 482
    iget v0, p1, Landroid/content/pm/PackageParser$IntentInfo;->labelRes:I

    iput v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->labelRes:I

    .line 483
    iget-object v0, p1, Landroid/content/pm/PackageParser$IntentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroid/content/pm/PackageParser$IntentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->nonLocalizedLabel:Ljava/lang/String;

    .line 484
    iget v0, p1, Landroid/content/pm/PackageParser$IntentInfo;->icon:I

    iput v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->icon:I

    .line 485
    iget v0, p1, Landroid/content/pm/PackageParser$IntentInfo;->logo:I

    iput v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->logo:I

    .line 486
    iget p1, p1, Landroid/content/pm/PackageParser$IntentInfo;->banner:I

    iput p1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->banner:I

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

    .line 515
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 516
    const-class v0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/IntentFilter;

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->intentFilter:Landroid/content/IntentFilter;

    .line 517
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->hasDefault:Z

    .line 518
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->labelRes:I

    .line 519
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->nonLocalizedLabel:Ljava/lang/String;

    .line 520
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->icon:I

    .line 521
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->logo:I

    .line 522
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->banner:I

    return-void
.end method

.method public constructor <init>(Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intentInfo"
        }
    .end annotation

    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 490
    iget-object v0, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->intentFilter:Landroid/content/IntentFilter;

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->intentFilter:Landroid/content/IntentFilter;

    .line 491
    iget-boolean v0, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->hasDefault:Z

    iput-boolean v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->hasDefault:Z

    .line 492
    iget v0, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->labelRes:I

    iput v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->labelRes:I

    .line 493
    iget-object v0, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->nonLocalizedLabel:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->nonLocalizedLabel:Ljava/lang/String;

    .line 494
    iget v0, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->icon:I

    iput v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->icon:I

    .line 495
    iget v0, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->logo:I

    iput v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->logo:I

    .line 496
    iget p1, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->banner:I

    iput p1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->banner:I

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

    .line 506
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 507
    iget-boolean p2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->hasDefault:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 508
    iget p2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->labelRes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 509
    iget-object p2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->nonLocalizedLabel:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 510
    iget p2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->icon:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 511
    iget p2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->logo:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 512
    iget p2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->banner:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
