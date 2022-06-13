.class public Ltop/niunaijun/blackbox/core/system/os/BStorageManagerService;
.super Ltop/niunaijun/blackbox/core/system/os/IBStorageManagerService$Stub;
.source "BStorageManagerService.java"

# interfaces
.implements Ltop/niunaijun/blackbox/core/system/ISystemService;


# static fields
.field private static final sService:Ltop/niunaijun/blackbox/core/system/os/BStorageManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Ltop/niunaijun/blackbox/core/system/os/BStorageManagerService;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/core/system/os/BStorageManagerService;-><init>()V

    sput-object v0, Ltop/niunaijun/blackbox/core/system/os/BStorageManagerService;->sService:Ltop/niunaijun/blackbox/core/system/os/BStorageManagerService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ltop/niunaijun/blackbox/core/system/os/IBStorageManagerService$Stub;-><init>()V

    return-void
.end method

.method public static get()Ltop/niunaijun/blackbox/core/system/os/BStorageManagerService;
    .locals 1

    .line 24
    sget-object v0, Ltop/niunaijun/blackbox/core/system/os/BStorageManagerService;->sService:Ltop/niunaijun/blackbox/core/system/os/BStorageManagerService;

    return-object v0
.end method


# virtual methods
.method public getVolumeList(ILjava/lang/String;II)[Landroid/os/storage/StorageVolume;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "uid",
            "packageName",
            "flags",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    sget-object p1, Lreflection/android/os/storage/StorageManager;->getVolumeList:Lreflection/MirrorReflection$StaticMethodWrapper;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    .line 36
    :cond_0
    :try_start_0
    sget-object p1, Lreflection/android/os/storage/StorageManager;->getVolumeList:Lreflection/MirrorReflection$StaticMethodWrapper;

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->getUserId(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p3, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, p3, v2

    invoke-virtual {p1, p3}, Lreflection/MirrorReflection$StaticMethodWrapper;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/os/storage/StorageVolume;

    if-nez p1, :cond_1

    return-object p2

    .line 39
    :cond_1
    array-length p3, p1

    :goto_0
    if-ge v1, p3, :cond_3

    aget-object v0, p1, v1

    .line 40
    sget-object v2, Lreflection/android/os/storage/StorageVolume;->mPath:Lreflection/MirrorReflection$FieldWrapper;

    invoke-static {p4}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getExternalUserDir(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lreflection/MirrorReflection$FieldWrapper;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 41
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isPie()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 42
    sget-object v2, Lreflection/android/os/storage/StorageVolume;->mInternalPath:Lreflection/MirrorReflection$FieldWrapper;

    invoke-static {p4}, Ltop/niunaijun/blackbox/core/env/BEnvironment;->getExternalUserDir(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lreflection/MirrorReflection$FieldWrapper;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object p1

    :catch_0
    move-exception p1

    .line 47
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object p2
.end method

.method public systemReady()V
    .locals 0

    return-void
.end method
