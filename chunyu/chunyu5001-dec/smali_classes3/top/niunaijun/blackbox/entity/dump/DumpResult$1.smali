.class final Ltop/niunaijun/blackbox/entity/dump/DumpResult$1;
.super Ljava/lang/Object;
.source "DumpResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/entity/dump/DumpResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Ltop/niunaijun/blackbox/entity/dump/DumpResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 106
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

    .line 106
    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/entity/dump/DumpResult$1;->createFromParcel(Landroid/os/Parcel;)Ltop/niunaijun/blackbox/entity/dump/DumpResult;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Ltop/niunaijun/blackbox/entity/dump/DumpResult;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 109
    new-instance v0, Ltop/niunaijun/blackbox/entity/dump/DumpResult;

    invoke-direct {v0, p1}, Ltop/niunaijun/blackbox/entity/dump/DumpResult;-><init>(Landroid/os/Parcel;)V

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

    .line 106
    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/entity/dump/DumpResult$1;->newArray(I)[Ltop/niunaijun/blackbox/entity/dump/DumpResult;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Ltop/niunaijun/blackbox/entity/dump/DumpResult;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 114
    new-array p1, p1, [Ltop/niunaijun/blackbox/entity/dump/DumpResult;

    return-object p1
.end method
