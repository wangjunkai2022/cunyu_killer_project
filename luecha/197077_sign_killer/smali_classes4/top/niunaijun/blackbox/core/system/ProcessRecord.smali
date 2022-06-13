.class public Ltop/niunaijun/blackbox/core/system/ProcessRecord;
.super Landroid/os/Binder;
.source "ProcessRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ltop/niunaijun/blackbox/core/system/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public appThread:Landroid/os/IInterface;

.field public bActivityThread:Ltop/niunaijun/blackbox/core/IBActivityThread;

.field public baseBUid:I

.field public bpid:I

.field public buid:I

.field public callingVUid:I

.field public final info:Landroid/content/pm/ApplicationInfo;

.field public initLock:Landroid/os/ConditionVariable;

.field public pid:I

.field public final processName:Ljava/lang/String;

.field public uid:I

.field public userId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 127
    new-instance v0, Ltop/niunaijun/blackbox/core/system/ProcessRecord$1;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/core/system/ProcessRecord$1;-><init>()V

    sput-object v0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;III)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "info",
            "processName",
            "buid",
            "bpid",
            "callingVUid"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 32
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->initLock:Landroid/os/ConditionVariable;

    .line 35
    iput-object p1, p0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 36
    iput p3, p0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->buid:I

    .line 37
    iput p4, p0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->bpid:I

    const/4 p1, 0x0

    .line 38
    iput p1, p0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->userId:I

    .line 39
    iput p5, p0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->callingVUid:I

    .line 40
    iput-object p2, p0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->processName:Ljava/lang/String;

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

    .line 115
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 32
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->initLock:Landroid/os/ConditionVariable;

    .line 116
    const-class v0, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->processName:Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->pid:I

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->buid:I

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->bpid:I

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->uid:I

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->callingVUid:I

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->userId:I

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->baseBUid:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 51
    :cond_1
    check-cast p1, Ltop/niunaijun/blackbox/core/system/ProcessRecord;

    .line 52
    iget v2, p0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->pid:I

    iget v3, p1, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->pid:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->buid:I

    iget v3, p1, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->buid:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->bpid:I

    iget v3, p1, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->bpid:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->uid:I

    iget v3, p1, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->uid:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->userId:I

    iget v3, p1, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->userId:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->baseBUid:I

    iget v3, p1, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->baseBUid:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->processName:Ljava/lang/String;

    iget-object p1, p1, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->processName:Ljava/lang/String;

    .line 58
    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getCallingBUid()I
    .locals 1

    .line 44
    iget v0, p0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->callingVUid:I

    return v0
.end method

.method public getClientConfig()Ltop/niunaijun/blackbox/entity/AppConfig;
    .locals 2

    .line 71
    new-instance v0, Ltop/niunaijun/blackbox/entity/AppConfig;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/entity/AppConfig;-><init>()V

    .line 72
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, v0, Ltop/niunaijun/blackbox/entity/AppConfig;->packageName:Ljava/lang/String;

    .line 73
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v1, v0, Ltop/niunaijun/blackbox/entity/AppConfig;->processName:Ljava/lang/String;

    .line 74
    iget v1, p0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->bpid:I

    iput v1, v0, Ltop/niunaijun/blackbox/entity/AppConfig;->bpid:I

    .line 75
    iget v1, p0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->buid:I

    iput v1, v0, Ltop/niunaijun/blackbox/entity/AppConfig;->buid:I

    .line 76
    iget v1, p0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->uid:I

    iput v1, v0, Ltop/niunaijun/blackbox/entity/AppConfig;->uid:I

    .line 77
    iget v1, p0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->userId:I

    iput v1, v0, Ltop/niunaijun/blackbox/entity/AppConfig;->userId:I

    .line 78
    iput-object p0, v0, Ltop/niunaijun/blackbox/entity/AppConfig;->token:Landroid/os/IBinder;

    .line 79
    iget v1, p0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->baseBUid:I

    iput v1, v0, Ltop/niunaijun/blackbox/entity/AppConfig;->baseBUid:I

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderAuthority()Ljava/lang/String;
    .locals 1

    .line 67
    iget v0, p0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->bpid:I

    invoke-static {v0}, Ltop/niunaijun/blackbox/proxy/ProxyManifest;->getProxyAuthorities(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    .line 63
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->processName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->pid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->buid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->bpid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->pid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->userId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public kill()V
    .locals 1

    .line 84
    iget v0, p0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->pid:I

    if-lez v0, :cond_0

    .line 86
    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 88
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
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

    .line 104
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 105
    iget-object p2, p0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget p2, p0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->pid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget p2, p0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->buid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget p2, p0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->bpid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget p2, p0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->uid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget p2, p0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->callingVUid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget p2, p0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->userId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget p2, p0, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->baseBUid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
