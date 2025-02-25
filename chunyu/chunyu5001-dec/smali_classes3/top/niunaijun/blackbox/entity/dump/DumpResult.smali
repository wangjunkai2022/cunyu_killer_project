.class public Ltop/niunaijun/blackbox/entity/dump/DumpResult;
.super Ljava/lang/Object;
.source "DumpResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ltop/niunaijun/blackbox/entity/dump/DumpResult;",
            ">;"
        }
    .end annotation
.end field

.field private static final STATUS_FAIL:I = 0x2

.field private static final STATUS_RUNNING:I = 0x0

.field private static final STATUS_SUCCESS:I = 0x1

.field public static final TAG:Ljava/lang/String; = "DumpResult"


# instance fields
.field public currProcess:I

.field public dir:Ljava/lang/String;

.field public msg:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field private status:I

.field public totalProcess:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 106
    new-instance v0, Ltop/niunaijun/blackbox/entity/dump/DumpResult$1;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/entity/dump/DumpResult$1;-><init>()V

    sput-object v0, Ltop/niunaijun/blackbox/entity/dump/DumpResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Ltop/niunaijun/blackbox/entity/dump/DumpResult;->status:I

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

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Ltop/niunaijun/blackbox/entity/dump/DumpResult;->status:I

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltop/niunaijun/blackbox/entity/dump/DumpResult;->packageName:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltop/niunaijun/blackbox/entity/dump/DumpResult;->msg:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltop/niunaijun/blackbox/entity/dump/DumpResult;->dir:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltop/niunaijun/blackbox/entity/dump/DumpResult;->status:I

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltop/niunaijun/blackbox/entity/dump/DumpResult;->totalProcess:I

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Ltop/niunaijun/blackbox/entity/dump/DumpResult;->currProcess:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dumpError(Ljava/lang/String;)Ltop/niunaijun/blackbox/entity/dump/DumpResult;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Ltop/niunaijun/blackbox/entity/dump/DumpResult;->msg:Ljava/lang/String;

    const/4 p1, 0x2

    .line 30
    iput p1, p0, Ltop/niunaijun/blackbox/entity/dump/DumpResult;->status:I

    return-object p0
.end method

.method public dumpProcess(II)Ltop/niunaijun/blackbox/entity/dump/DumpResult;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "totalProcess",
            "currProcess"
        }
    .end annotation

    .line 35
    iput p1, p0, Ltop/niunaijun/blackbox/entity/dump/DumpResult;->totalProcess:I

    .line 36
    iput p2, p0, Ltop/niunaijun/blackbox/entity/dump/DumpResult;->currProcess:I

    const/4 p1, 0x0

    .line 37
    iput p1, p0, Ltop/niunaijun/blackbox/entity/dump/DumpResult;->status:I

    return-object p0
.end method

.method public dumpSuccess()Ltop/niunaijun/blackbox/entity/dump/DumpResult;
    .locals 1

    const/4 v0, 0x1

    .line 42
    iput v0, p0, Ltop/niunaijun/blackbox/entity/dump/DumpResult;->status:I

    return-object p0
.end method

.method public isFail()Z
    .locals 2

    .line 51
    iget v0, p0, Ltop/niunaijun/blackbox/entity/dump/DumpResult;->status:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 55
    iget v0, p0, Ltop/niunaijun/blackbox/entity/dump/DumpResult;->status:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSuccess()Z
    .locals 2

    .line 47
    iget v0, p0, Ltop/niunaijun/blackbox/entity/dump/DumpResult;->status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltop/niunaijun/blackbox/entity/dump/DumpResult;->packageName:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltop/niunaijun/blackbox/entity/dump/DumpResult;->msg:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltop/niunaijun/blackbox/entity/dump/DumpResult;->dir:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltop/niunaijun/blackbox/entity/dump/DumpResult;->status:I

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltop/niunaijun/blackbox/entity/dump/DumpResult;->totalProcess:I

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Ltop/niunaijun/blackbox/entity/dump/DumpResult;->currProcess:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DumpResult{packageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltop/niunaijun/blackbox/entity/dump/DumpResult;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", msg=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltop/niunaijun/blackbox/entity/dump/DumpResult;->msg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", dir=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltop/niunaijun/blackbox/entity/dump/DumpResult;->dir:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ltop/niunaijun/blackbox/entity/dump/DumpResult;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", totalProcess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ltop/niunaijun/blackbox/entity/dump/DumpResult;->totalProcess:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", currProcess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ltop/niunaijun/blackbox/entity/dump/DumpResult;->currProcess:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 77
    iget-object p2, p0, Ltop/niunaijun/blackbox/entity/dump/DumpResult;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget-object p2, p0, Ltop/niunaijun/blackbox/entity/dump/DumpResult;->msg:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget-object p2, p0, Ltop/niunaijun/blackbox/entity/dump/DumpResult;->dir:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget p2, p0, Ltop/niunaijun/blackbox/entity/dump/DumpResult;->status:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget p2, p0, Ltop/niunaijun/blackbox/entity/dump/DumpResult;->totalProcess:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget p2, p0, Ltop/niunaijun/blackbox/entity/dump/DumpResult;->currProcess:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
