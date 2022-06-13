.class public Ltop/niunaijun/blackbox/entity/pm/InstallOption;
.super Ljava/lang/Object;
.source "InstallOption.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ltop/niunaijun/blackbox/entity/pm/InstallOption;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_STORAGE:I = 0x2

.field public static final FLAG_SYSTEM:I = 0x1

.field public static final FLAG_URI_FILE:I = 0x8


# instance fields
.field public flags:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Ltop/niunaijun/blackbox/entity/pm/InstallOption$1;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/entity/pm/InstallOption$1;-><init>()V

    sput-object v0, Ltop/niunaijun/blackbox/entity/pm/InstallOption;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Ltop/niunaijun/blackbox/entity/pm/InstallOption;->flags:I

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

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Ltop/niunaijun/blackbox/entity/pm/InstallOption;->flags:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Ltop/niunaijun/blackbox/entity/pm/InstallOption;->flags:I

    return-void
.end method

.method public static installByStorage()Ltop/niunaijun/blackbox/entity/pm/InstallOption;
    .locals 2

    .line 28
    new-instance v0, Ltop/niunaijun/blackbox/entity/pm/InstallOption;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/entity/pm/InstallOption;-><init>()V

    .line 29
    iget v1, v0, Ltop/niunaijun/blackbox/entity/pm/InstallOption;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Ltop/niunaijun/blackbox/entity/pm/InstallOption;->flags:I

    return-object v0
.end method

.method public static installBySystem()Ltop/niunaijun/blackbox/entity/pm/InstallOption;
    .locals 2

    .line 22
    new-instance v0, Ltop/niunaijun/blackbox/entity/pm/InstallOption;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/entity/pm/InstallOption;-><init>()V

    .line 23
    iget v1, v0, Ltop/niunaijun/blackbox/entity/pm/InstallOption;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Ltop/niunaijun/blackbox/entity/pm/InstallOption;->flags:I

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isFlag(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flag"
        }
    .end annotation

    .line 39
    iget v0, p0, Ltop/niunaijun/blackbox/entity/pm/InstallOption;->flags:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public makeUriFile()Ltop/niunaijun/blackbox/entity/pm/InstallOption;
    .locals 1

    .line 34
    iget v0, p0, Ltop/niunaijun/blackbox/entity/pm/InstallOption;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Ltop/niunaijun/blackbox/entity/pm/InstallOption;->flags:I

    return-object p0
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

    .line 49
    iget p2, p0, Ltop/niunaijun/blackbox/entity/pm/InstallOption;->flags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
