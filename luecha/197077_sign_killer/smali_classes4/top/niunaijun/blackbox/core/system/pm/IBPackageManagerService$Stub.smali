.class public abstract Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$Stub;
.super Landroid/os/Binder;
.source "IBPackageManagerService.java"

# interfaces
.implements Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "top.niunaijun.blackbox.core.system.pm.IBPackageManagerService"

.field static final TRANSACTION_deleteUser:I = 0x13

.field static final TRANSACTION_getActivityInfo:I = 0x9

.field static final TRANSACTION_getApplicationInfo:I = 0x5

.field static final TRANSACTION_getInstalledApplications:I = 0xb

.field static final TRANSACTION_getInstalledPackages:I = 0xc

.field static final TRANSACTION_getInstalledPackagesAsUser:I = 0x15

.field static final TRANSACTION_getPackageInfo:I = 0x6

.field static final TRANSACTION_getProviderInfo:I = 0xa

.field static final TRANSACTION_getReceiverInfo:I = 0x8

.field static final TRANSACTION_getServiceInfo:I = 0x7

.field static final TRANSACTION_installPackageAsUser:I = 0x10

.field static final TRANSACTION_isInstalled:I = 0x14

.field static final TRANSACTION_queryBroadcastReceivers:I = 0xe

.field static final TRANSACTION_queryContentProviders:I = 0xf

.field static final TRANSACTION_queryIntentActivities:I = 0xd

.field static final TRANSACTION_resolveActivity:I = 0x2

.field static final TRANSACTION_resolveContentProvider:I = 0x3

.field static final TRANSACTION_resolveIntent:I = 0x4

.field static final TRANSACTION_resolveService:I = 0x1

.field static final TRANSACTION_uninstallPackage:I = 0x12

.field static final TRANSACTION_uninstallPackageAsUser:I = 0x11


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 102
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "top.niunaijun.blackbox.core.system.pm.IBPackageManagerService"

    .line 103
    invoke-virtual {p0, p0, v0}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "top.niunaijun.blackbox.core.system.pm.IBPackageManagerService"

    .line 114
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 115
    instance-of v1, v0, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;

    if-eqz v1, :cond_1

    .line 116
    check-cast v0, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;

    return-object v0

    .line 118
    :cond_1
    new-instance v0, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$Stub$Proxy;

    invoke-direct {v0, p0}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;
    .locals 1

    .line 1179
    sget-object v0, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$Stub$Proxy;->sDefaultImpl:Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;

    return-object v0
.end method

.method public static setDefaultImpl(Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impl"
        }
    .end annotation

    .line 1169
    sget-object v0, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$Stub$Proxy;->sDefaultImpl:Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 1173
    sput-object p0, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$Stub$Proxy;->sDefaultImpl:Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 1170
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setDefaultImpl() called twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "code",
            "data",
            "reply",
            "flags"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "top.niunaijun.blackbox.core.system.pm.IBPackageManagerService"

    if-eq p1, v0, :cond_15

    const/4 v0, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 535
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 525
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 527
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 528
    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$Stub;->getInstalledPackagesAsUser(I)Ljava/util/List;

    move-result-object p1

    .line 529
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 530
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    .line 513
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 515
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 517
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 518
    invoke-virtual {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$Stub;->isInstalled(Ljava/lang/String;I)Z

    move-result p1

    .line 519
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 520
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 504
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 506
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 507
    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$Stub;->deleteUser(I)V

    .line 508
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 495
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 497
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 498
    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$Stub;->uninstallPackage(Ljava/lang/String;)V

    .line 499
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 484
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 486
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 488
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 489
    invoke-virtual {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$Stub;->uninstallPackageAsUser(Ljava/lang/String;I)V

    .line 490
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 459
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 461
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 463
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_0

    .line 464
    sget-object p4, Ltop/niunaijun/blackbox/entity/pm/InstallOption;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    move-object v0, p4

    check-cast v0, Ltop/niunaijun/blackbox/entity/pm/InstallOption;

    .line 470
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 471
    invoke-virtual {p0, p1, v0, p2}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$Stub;->installPackageAsUser(Ljava/lang/String;Ltop/niunaijun/blackbox/entity/pm/InstallOption;I)Ltop/niunaijun/blackbox/entity/pm/InstallResult;

    move-result-object p1

    .line 472
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_1

    .line 474
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 475
    invoke-virtual {p1, p3, v1}, Ltop/niunaijun/blackbox/entity/pm/InstallResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 478
    :cond_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v1

    .line 443
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 445
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 447
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 449
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 451
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 452
    invoke-virtual {p0, p1, p4, v0, p2}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$Stub;->queryContentProviders(Ljava/lang/String;III)Ljava/util/List;

    move-result-object p1

    .line 453
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 454
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    .line 422
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 424
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 425
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/content/Intent;

    .line 431
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 433
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 435
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 436
    invoke-virtual {p0, v0, p1, p4, p2}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$Stub;->queryBroadcastReceivers(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;

    move-result-object p1

    .line 437
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 438
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    .line 401
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    .line 404
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/content/Intent;

    .line 410
    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 412
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 414
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 415
    invoke-virtual {p0, v0, p1, p4, p2}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$Stub;->queryIntentActivities(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;

    move-result-object p1

    .line 416
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 417
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    .line 389
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 393
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 394
    invoke-virtual {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$Stub;->getInstalledPackages(II)Ljava/util/List;

    move-result-object p1

    .line 395
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    .line 377
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 379
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 381
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 382
    invoke-virtual {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$Stub;->getInstalledApplications(II)Ljava/util/List;

    move-result-object p1

    .line 383
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    .line 352
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    .line 355
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/content/ComponentName;

    .line 361
    :cond_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 363
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 364
    invoke-virtual {p0, v0, p1, p2}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$Stub;->getProviderInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ProviderInfo;

    move-result-object p1

    .line 365
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_5

    .line 367
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 368
    invoke-virtual {p1, p3, v1}, Landroid/content/pm/ProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 371
    :cond_5
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v1

    .line 327
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6

    .line 330
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/content/ComponentName;

    .line 336
    :cond_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 338
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 339
    invoke-virtual {p0, v0, p1, p2}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$Stub;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    .line 340
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_7

    .line 342
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 343
    invoke-virtual {p1, p3, v1}, Landroid/content/pm/ActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 346
    :cond_7
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    return v1

    .line 302
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_8

    .line 305
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/content/ComponentName;

    .line 311
    :cond_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 313
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 314
    invoke-virtual {p0, v0, p1, p2}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$Stub;->getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    .line 315
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_9

    .line 317
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    invoke-virtual {p1, p3, v1}, Landroid/content/pm/ActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 321
    :cond_9
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    return v1

    .line 277
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_a

    .line 280
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/content/ComponentName;

    .line 286
    :cond_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 288
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 289
    invoke-virtual {p0, v0, p1, p2}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$Stub;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object p1

    .line 290
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_b

    .line 292
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    invoke-virtual {p1, p3, v1}, Landroid/content/pm/ServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    .line 296
    :cond_b
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4
    return v1

    .line 257
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 261
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 263
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 264
    invoke-virtual {p0, p1, p4, p2}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$Stub;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 265
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_c

    .line 267
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    invoke-virtual {p1, p3, v1}, Landroid/content/pm/PackageInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5

    .line 271
    :cond_c
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5
    return v1

    .line 237
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 243
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 244
    invoke-virtual {p0, p1, p4, p2}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$Stub;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 245
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_d

    .line 247
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 248
    invoke-virtual {p1, p3, v1}, Landroid/content/pm/ApplicationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_6

    .line 251
    :cond_d
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_6
    return v1

    .line 210
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_e

    .line 213
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/content/Intent;

    .line 219
    :cond_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 224
    invoke-virtual {p0, v0, p1, p4, p2}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$Stub;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    .line 225
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_f

    .line 227
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 228
    invoke-virtual {p1, p3, v1}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_7

    .line 231
    :cond_f
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_7
    return v1

    .line 190
    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 197
    invoke-virtual {p0, p1, p4, p2}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$Stub;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object p1

    .line 198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_10

    .line 200
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    invoke-virtual {p1, p3, v1}, Landroid/content/pm/ProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_8

    .line 204
    :cond_10
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_8
    return v1

    .line 163
    :pswitch_13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_11

    .line 166
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/content/Intent;

    .line 172
    :cond_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 177
    invoke-virtual {p0, v0, p1, p4, p2}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$Stub;->resolveActivity(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    .line 178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_12

    .line 180
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    invoke-virtual {p1, p3, v1}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 184
    :cond_12
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_9
    return v1

    .line 136
    :pswitch_14
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_13

    .line 139
    sget-object p1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/content/Intent;

    .line 145
    :cond_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 150
    invoke-virtual {p0, v0, p1, p4, p2}, Ltop/niunaijun/blackbox/core/system/pm/IBPackageManagerService$Stub;->resolveService(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    .line 151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_14

    .line 153
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    invoke-virtual {p1, p3, v1}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_a

    .line 157
    :cond_14
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_a
    return v1

    .line 131
    :cond_15
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
