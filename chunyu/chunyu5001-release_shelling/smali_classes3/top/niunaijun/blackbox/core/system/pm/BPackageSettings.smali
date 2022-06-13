.class public Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;
.super Ljava/lang/Object;
.source "BPackageSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;",
            ">;"
        }
    .end annotation
.end field

.field static final DEFAULT_USER_STATE:Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;


# instance fields
.field public appId:I

.field public installOption:Ltop/niunaijun/blackbox/entity/pm/InstallOption;

.field public pkg:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

.field public userState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;-><init>()V

    sput-object v0, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->DEFAULT_USER_STATE:Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;

    .line 148
    new-instance v0, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings$1;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings$1;-><init>()V

    sput-object v0, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->userState:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->userState:Ljava/util/Map;

    .line 136
    const-class v0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->pkg:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->appId:I

    .line 138
    const-class v0, Ltop/niunaijun/blackbox/entity/pm/InstallOption;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Ltop/niunaijun/blackbox/entity/pm/InstallOption;

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->installOption:Ltop/niunaijun/blackbox/entity/pm/InstallOption;

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 140
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->userState:Ljava/util/Map;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 142
    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 143
    const-class v3, Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;

    .line 144
    iget-object v4, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->userState:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private modifyUserState(I)Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->userState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;-><init>()V

    .line 90
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->userState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getHidden(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .line 62
    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->readUserState(I)Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;

    move-result-object p1

    iget-boolean p1, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;->hidden:Z

    return p1
.end method

.method public getInstalled(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .line 50
    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->readUserState(I)Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;

    move-result-object p1

    iget-boolean p1, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;->installed:Z

    return p1
.end method

.method public getStopped(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->readUserState(I)Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;

    move-result-object p1

    iget-boolean p1, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;->stopped:Z

    return p1
.end method

.method public getUserIds()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->userState:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getUserState()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;",
            ">;"
        }
    .end annotation

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->userState:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public readUserState(I)Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->userState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;

    if-nez p1, :cond_0

    .line 76
    new-instance p1, Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;

    invoke-direct {p1}, Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;-><init>()V

    .line 78
    :cond_0
    new-instance v0, Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;

    invoke-direct {v0, p1}, Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;-><init>(Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;)V

    .line 80
    iget-object p1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->userState:Ljava/util/Map;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 81
    iput-boolean p1, v0, Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;->installed:Z

    :cond_1
    return-object v0
.end method

.method public removeUser(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->userState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public save()Z
    .locals 6

    .line 96
    monitor-enter p0

    .line 97
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 98
    new-instance v1, Landroid/util/AtomicFile;

    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->pkg:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    iget-object v2, v2, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->packageName:Ljava/lang/String;

    invoke-static {v2}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getPackageConf(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 101
    :try_start_1
    invoke-virtual {p0, v0, v4}, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->writeToParcel(Landroid/os/Parcel;I)V

    .line 102
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 103
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 104
    invoke-static {v0, v2}, Ltop/niunaijun/blackbox/utils/FileUtils;->writeParcelToOutput(Landroid/os/Parcel;Ljava/io/FileOutputStream;)V

    .line 105
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    :try_start_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    new-array v0, v3, [Ljava/io/Closeable;

    aput-object v2, v0, v4

    .line 113
    invoke-static {v0}, Ltop/niunaijun/blackbox/utils/CloseUtils;->close([Ljava/io/Closeable;)V

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return v3

    :catchall_0
    move-exception v5

    .line 108
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 109
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 112
    :try_start_4
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    new-array v0, v3, [Ljava/io/Closeable;

    aput-object v2, v0, v4

    .line 113
    invoke-static {v0}, Ltop/niunaijun/blackbox/utils/CloseUtils;->close([Ljava/io/Closeable;)V

    monitor-exit p0

    return v4

    :catchall_1
    move-exception v1

    .line 112
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    new-array v0, v3, [Ljava/io/Closeable;

    aput-object v2, v0, v4

    .line 113
    invoke-static {v0}, Ltop/niunaijun/blackbox/utils/CloseUtils;->close([Ljava/io/Closeable;)V

    .line 114
    throw v1

    :catchall_2
    move-exception v0

    .line 115
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method

.method public setHidden(ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "hidden",
            "userId"
        }
    .end annotation

    .line 66
    invoke-direct {p0, p2}, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->modifyUserState(I)Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;

    move-result-object p2

    iput-boolean p1, p2, Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;->hidden:Z

    return-void
.end method

.method public setInstalled(ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inst",
            "userId"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p2}, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->modifyUserState(I)Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;

    move-result-object p2

    iput-boolean p1, p2, Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;->installed:Z

    return-void
.end method

.method public setStopped(ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stop",
            "userId"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p2}, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->modifyUserState(I)Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;

    move-result-object p2

    iput-boolean p1, p2, Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;->stopped:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
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

    .line 125
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->pkg:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 126
    iget v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->appId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->installOption:Ltop/niunaijun/blackbox/entity/pm/InstallOption;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 128
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->userState:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->userState:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 130
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 131
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    :cond_0
    return-void
.end method
