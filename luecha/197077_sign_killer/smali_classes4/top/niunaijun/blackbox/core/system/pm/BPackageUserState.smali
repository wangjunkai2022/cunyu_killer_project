.class public Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;
.super Ljava/lang/Object;
.source "BPackageUserState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public hidden:Z

.field public installed:Z

.field public stopped:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    new-instance v0, Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState$1;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState$1;-><init>()V

    sput-object v0, Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;->installed:Z

    const/4 v1, 0x1

    .line 21
    iput-boolean v1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;->stopped:Z

    .line 22
    iput-boolean v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;->hidden:Z

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;->installed:Z

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;->stopped:Z

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;->hidden:Z

    return-void
.end method

.method public constructor <init>(Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iget-boolean v0, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;->installed:Z

    iput-boolean v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;->installed:Z

    .line 51
    iget-boolean v0, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;->stopped:Z

    iput-boolean v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;->stopped:Z

    .line 52
    iget-boolean p1, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;->hidden:Z

    iput-boolean p1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;->hidden:Z

    return-void
.end method

.method public static create()Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;
    .locals 2

    .line 26
    new-instance v0, Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;-><init>()V

    const/4 v1, 0x1

    .line 27
    iput-boolean v1, v0, Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;->installed:Z

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
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

    .line 38
    iget-boolean p2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;->installed:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 39
    iget-boolean p2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;->stopped:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 40
    iget-boolean p2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;->hidden:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
