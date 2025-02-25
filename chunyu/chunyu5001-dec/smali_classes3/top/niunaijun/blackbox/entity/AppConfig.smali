.class public Ltop/niunaijun/blackbox/entity/AppConfig;
.super Ljava/lang/Object;
.source "AppConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ltop/niunaijun/blackbox/entity/AppConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY:Ljava/lang/String; = "BlackBox_client_config"


# instance fields
.field public baseBUid:I

.field public bpid:I

.field public buid:I

.field public packageName:Ljava/lang/String;

.field public processName:Ljava/lang/String;

.field public token:Landroid/os/IBinder;

.field public uid:I

.field public userId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Ltop/niunaijun/blackbox/entity/AppConfig$1;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/entity/AppConfig$1;-><init>()V

    sput-object v0, Ltop/niunaijun/blackbox/entity/AppConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltop/niunaijun/blackbox/entity/AppConfig;->packageName:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltop/niunaijun/blackbox/entity/AppConfig;->processName:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltop/niunaijun/blackbox/entity/AppConfig;->bpid:I

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltop/niunaijun/blackbox/entity/AppConfig;->buid:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltop/niunaijun/blackbox/entity/AppConfig;->uid:I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltop/niunaijun/blackbox/entity/AppConfig;->userId:I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltop/niunaijun/blackbox/entity/AppConfig;->baseBUid:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Ltop/niunaijun/blackbox/entity/AppConfig;->token:Landroid/os/IBinder;

    return-void
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

    .line 35
    iget-object p2, p0, Ltop/niunaijun/blackbox/entity/AppConfig;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 36
    iget-object p2, p0, Ltop/niunaijun/blackbox/entity/AppConfig;->processName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    iget p2, p0, Ltop/niunaijun/blackbox/entity/AppConfig;->bpid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    iget p2, p0, Ltop/niunaijun/blackbox/entity/AppConfig;->buid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    iget p2, p0, Ltop/niunaijun/blackbox/entity/AppConfig;->uid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    iget p2, p0, Ltop/niunaijun/blackbox/entity/AppConfig;->userId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget p2, p0, Ltop/niunaijun/blackbox/entity/AppConfig;->baseBUid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    iget-object p2, p0, Ltop/niunaijun/blackbox/entity/AppConfig;->token:Landroid/os/IBinder;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void
.end method
