.class public final Ltop/niunaijun/blackbox/core/system/user/BUserHandle;
.super Ljava/lang/Object;
.source "BUserHandle.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final AID_APP_END:I = 0x4e1f

.field public static final AID_APP_START:I = 0x2710

.field public static final AID_CACHE_GID_START:I = 0x4e20

.field public static final AID_ROOT:I = 0x0

.field public static final AID_SHARED_GID_START:I = 0xc350

.field public static final ALL:Ltop/niunaijun/blackbox/core/system/user/BUserHandle;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ltop/niunaijun/blackbox/core/system/user/BUserHandle;",
            ">;"
        }
    .end annotation
.end field

.field public static final CURRENT:Ltop/niunaijun/blackbox/core/system/user/BUserHandle;

.field public static final CURRENT_OR_SELF:Ltop/niunaijun/blackbox/core/system/user/BUserHandle;

.field public static final ERR_GID:I = -0x1

.field public static final MU_ENABLED:Z = true

.field public static final OWNER:Ltop/niunaijun/blackbox/core/system/user/BUserHandle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PER_USER_RANGE:I = 0x186a0

.field public static final SYSTEM:Ltop/niunaijun/blackbox/core/system/user/BUserHandle;

.field public static final USER_ALL:I = -0x1

.field public static final USER_CURRENT:I = -0x2

.field public static final USER_CURRENT_OR_SELF:I = -0x3

.field public static final USER_NULL:I = -0x2710

.field public static final USER_OWNER:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final USER_SERIAL_SYSTEM:I = 0x0

.field public static final USER_SYSTEM:I = 0x0

.field public static final USER_XPOSED:I = -0x4


# instance fields
.field final mHandle:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    new-instance v0, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;-><init>(I)V

    sput-object v0, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->ALL:Ltop/niunaijun/blackbox/core/system/user/BUserHandle;

    .line 53
    new-instance v0, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;-><init>(I)V

    sput-object v0, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->CURRENT:Ltop/niunaijun/blackbox/core/system/user/BUserHandle;

    .line 70
    new-instance v0, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;

    const/4 v1, -0x3

    invoke-direct {v0, v1}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;-><init>(I)V

    sput-object v0, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->CURRENT_OR_SELF:Ltop/niunaijun/blackbox/core/system/user/BUserHandle;

    .line 91
    new-instance v0, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;-><init>(I)V

    sput-object v0, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->OWNER:Ltop/niunaijun/blackbox/core/system/user/BUserHandle;

    .line 106
    new-instance v0, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;

    invoke-direct {v0, v1}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;-><init>(I)V

    sput-object v0, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->SYSTEM:Ltop/niunaijun/blackbox/core/system/user/BUserHandle;

    .line 445
    new-instance v0, Ltop/niunaijun/blackbox/core/system/user/BUserHandle$1;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle$1;-><init>()V

    sput-object v0, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "h"
        }
    .end annotation

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 372
    iput p1, p0, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->mHandle:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 467
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->mHandle:I

    return-void
.end method

.method public static getAppId(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    const v0, 0x186a0

    .line 256
    rem-int/2addr p0, v0

    return p0
.end method

.method public static getCacheAppGid(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    .line 305
    invoke-static {p0}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->getUserId(I)I

    move-result v0

    invoke-static {p0}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->getAppId(I)I

    move-result p0

    invoke-static {v0, p0}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->getCacheAppGid(II)I

    move-result p0

    return p0
.end method

.method public static getCacheAppGid(II)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userId",
            "appId"
        }
    .end annotation

    const/16 v0, 0x2710

    if-lt p1, v0, :cond_0

    const/16 v1, 0x4e1f

    if-gt p1, v1, :cond_0

    sub-int/2addr p1, v0

    add-int/lit16 p1, p1, 0x4e20

    .line 313
    invoke-static {p0, p1}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->getUid(II)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static getCallingAppId()I
    .locals 1

    .line 227
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->getAppId(I)I

    move-result v0

    return v0
.end method

.method public static getCallingUserId()I
    .locals 1

    .line 220
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method public static getSharedAppGid(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    .line 272
    invoke-static {p0}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->getUserId(I)I

    move-result v0

    invoke-static {p0}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->getAppId(I)I

    move-result p0

    invoke-static {v0, p0}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->getSharedAppGid(II)I

    move-result p0

    return p0
.end method

.method public static getSharedAppGid(II)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userId",
            "appId"
        }
    .end annotation

    const/16 p0, 0x2710

    if-lt p1, p0, :cond_0

    const/16 v0, 0x4e1f

    if-gt p1, v0, :cond_0

    sub-int/2addr p1, p0

    const p0, 0xc350

    add-int/2addr p1, p0

    return p1

    :cond_0
    if-ltz p1, :cond_1

    if-gt p1, p0, :cond_1

    return p1

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static getUid(II)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userId",
            "appId"
        }
    .end annotation

    const v0, 0x186a0

    mul-int p0, p0, v0

    .line 244
    rem-int/2addr p1, v0

    add-int/2addr p0, p1

    return p0
.end method

.method public static getUserGid(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    const/16 v0, 0x270d

    .line 265
    invoke-static {p0, v0}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->getUid(II)I

    move-result p0

    return p0
.end method

.method public static getUserHandleForUid(I)Ltop/niunaijun/blackbox/core/system/user/BUserHandle;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    .line 200
    invoke-static {p0}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->getUserId(I)I

    move-result p0

    invoke-static {p0}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->of(I)Ltop/niunaijun/blackbox/core/system/user/BUserHandle;

    move-result-object p0

    return-object p0
.end method

.method public static getUserId(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    const v0, 0x186a0

    .line 210
    div-int/2addr p0, v0

    return p0
.end method

.method public static isApp(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    const/4 v0, 0x0

    if-lez p0, :cond_0

    .line 172
    invoke-static {p0}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->getAppId(I)I

    move-result p0

    const/16 v1, 0x2710

    if-lt p0, v1, :cond_0

    const/16 v1, 0x4e1f

    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isCore(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    const/4 v0, 0x0

    if-ltz p0, :cond_0

    .line 186
    invoke-static {p0}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->getAppId(I)I

    move-result p0

    const/16 v1, 0x2710

    if-ge p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isSameApp(II)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid1",
            "uid2"
        }
    .end annotation

    .line 161
    invoke-static {p0}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->getAppId(I)I

    move-result p0

    invoke-static {p1}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->getAppId(I)I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSameUser(II)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid1",
            "uid2"
        }
    .end annotation

    .line 148
    invoke-static {p0}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->getUserId(I)I

    move-result p0

    invoke-static {p1}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->getUserId(I)I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static myUserId()I
    .locals 1

    .line 345
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method public static of(I)Ltop/niunaijun/blackbox/core/system/user/BUserHandle;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 234
    sget-object p0, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->SYSTEM:Ltop/niunaijun/blackbox/core/system/user/BUserHandle;

    goto :goto_0

    :cond_0
    new-instance v0, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;

    invoke-direct {v0, p0}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;-><init>(I)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static parseUserArg(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg"
        }
    .end annotation

    const-string v0, "all"

    .line 324
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    goto :goto_1

    :cond_0
    const-string v0, "current"

    .line 326
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "cur"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 330
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 332
    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad user number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    const/4 p0, -0x2

    :goto_1
    return p0
.end method

.method public static readFromParcel(Landroid/os/Parcel;)Ltop/niunaijun/blackbox/core/system/user/BUserHandle;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 441
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    const/16 v0, -0x2710

    if-eq p0, v0, :cond_0

    .line 442
    new-instance v0, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;

    invoke-direct {v0, p0}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;-><init>(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static writeToParcel(Ltop/niunaijun/blackbox/core/system/user/BUserHandle;Landroid/os/Parcel;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "h",
            "out"
        }
    .end annotation

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 424
    invoke-virtual {p0, p1, v0}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    const/16 p0, -0x2710

    .line 426
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 393
    :try_start_0
    check-cast p1, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;

    .line 394
    iget v1, p0, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->mHandle:I

    iget p1, p1, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->mHandle:I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, p1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public getIdentifier()I
    .locals 1

    .line 381
    iget v0, p0, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->mHandle:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 403
    iget v0, p0, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->mHandle:I

    return v0
.end method

.method public isOwner()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 357
    sget-object v0, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->OWNER:Ltop/niunaijun/blackbox/core/system/user/BUserHandle;

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSystem()Z
    .locals 1

    .line 365
    sget-object v0, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->SYSTEM:Ltop/niunaijun/blackbox/core/system/user/BUserHandle;

    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserHandle{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->mHandle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
            "out",
            "flags"
        }
    .end annotation

    .line 411
    iget p2, p0, Ltop/niunaijun/blackbox/core/system/user/BUserHandle;->mHandle:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
