.class final Lcom/baseflow/permissionhandler/PermissionManager;
.super Ljava/lang/Object;
.source "PermissionManager.java"

# interfaces
.implements Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;
.implements Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baseflow/permissionhandler/PermissionManager$ShouldShowRequestPermissionRationaleSuccessCallback;,
        Lcom/baseflow/permissionhandler/PermissionManager$CheckPermissionsSuccessCallback;,
        Lcom/baseflow/permissionhandler/PermissionManager$RequestPermissionsSuccessCallback;
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private ongoing:Z

.field private requestResults:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private successCallback:Lcom/baseflow/permissionhandler/PermissionManager$RequestPermissionsSuccessCallback;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 192
    iput-boolean v0, p0, Lcom/baseflow/permissionhandler/PermissionManager;->ongoing:Z

    return-void
.end method

.method private checkBluetoothPermissionStatus(Landroid/content/Context;)I
    .locals 2

    const/16 v0, 0x15

    .line 477
    invoke-static {p1, v0}, Lcom/baseflow/permissionhandler/PermissionUtils;->getManifestNames(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 478
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v1

    :goto_1
    if-eqz p1, :cond_2

    const-string p1, "permissions_handler"

    const-string v1, "Bluetooth permission missing in manifest"

    .line 480
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    return v1
.end method

.method private checkNotificationPermissionStatus(Landroid/content/Context;)I
    .locals 0

    .line 468
    invoke-static {p1}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object p1

    .line 469
    invoke-virtual {p1}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private determinePermissionStatus(ILandroid/content/Context;)I
    .locals 12

    const/16 v0, 0x11

    if-ne p1, v0, :cond_0

    .line 311
    invoke-direct {p0, p2}, Lcom/baseflow/permissionhandler/PermissionManager;->checkNotificationPermissionStatus(Landroid/content/Context;)I

    move-result p1

    return p1

    :cond_0
    const/16 v0, 0x15

    if-ne p1, v0, :cond_1

    .line 315
    invoke-direct {p0, p2}, Lcom/baseflow/permissionhandler/PermissionManager;->checkBluetoothPermissionStatus(Landroid/content/Context;)I

    move-result p1

    return p1

    :cond_1
    const/16 v0, 0x1e

    if-eq p1, v0, :cond_2

    const/16 v1, 0x1c

    if-eq p1, v1, :cond_2

    const/16 v1, 0x1d

    if-ne p1, v1, :cond_3

    .line 321
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-ge v1, v2, :cond_3

    .line 322
    invoke-direct {p0, p2}, Lcom/baseflow/permissionhandler/PermissionManager;->checkBluetoothPermissionStatus(Landroid/content/Context;)I

    move-result p1

    return p1

    .line 326
    :cond_3
    invoke-static {p2, p1}, Lcom/baseflow/permissionhandler/PermissionUtils;->getManifestNames(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v1

    const-string v2, "permissions_handler"

    const/4 v3, 0x1

    if-nez v1, :cond_4

    .line 329
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No android specific permissions needed for: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 335
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0x16

    const/16 v6, 0x10

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/16 v9, 0x17

    if-nez v4, :cond_8

    .line 336
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No permissions found in manifest for: "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v6, :cond_5

    .line 341
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p2, v9, :cond_5

    return v7

    :cond_5
    if-ne p1, v5, :cond_6

    .line 349
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p1, v0, :cond_6

    return v7

    .line 354
    :cond_6
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p1, v9, :cond_7

    goto :goto_0

    :cond_7
    move v3, v8

    :goto_0
    return v3

    .line 359
    :cond_8
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v2, v9, :cond_9

    move v2, v3

    goto :goto_1

    :cond_9
    move v2, v8

    .line 361
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v2, :cond_a

    if-ne p1, v6, :cond_d

    .line 365
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "power"

    .line 366
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    .line 368
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v9, :cond_c

    if-eqz p2, :cond_b

    .line 369
    invoke-virtual {p2, p1}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    return v3

    :cond_b
    return v8

    :cond_c
    return v7

    :cond_d
    if-ne p1, v5, :cond_f

    .line 380
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p1, v0, :cond_e

    return v7

    .line 384
    :cond_e
    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result p1

    return p1

    :cond_f
    if-ne p1, v9, :cond_10

    .line 390
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v10, v9, :cond_10

    .line 391
    invoke-static {p2}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result p1

    return p1

    :cond_10
    const/16 v10, 0x18

    if-ne p1, v10, :cond_11

    .line 398
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x1a

    if-lt v10, v11, :cond_11

    .line 399
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->canRequestPackageInstalls()Z

    move-result p1

    return p1

    :cond_11
    const/16 v10, 0x1b

    if-ne p1, v10, :cond_12

    .line 406
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v10, v9, :cond_12

    const-string p1, "notification"

    .line 407
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    .line 408
    invoke-virtual {p1}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGranted()Z

    move-result p1

    return p1

    .line 414
    :cond_12
    invoke-static {p2, v4}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_a

    return v8

    :cond_13
    return v3
.end method

.method private executeIntent(Ljava/lang/String;I)V
    .locals 3

    .line 424
    iget-object v0, p0, Lcom/baseflow/permissionhandler/PermissionManager;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 425
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 426
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 427
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 428
    iget-object p1, p0, Lcom/baseflow/permissionhandler/PermissionManager;->activity:Landroid/app/Activity;

    invoke-virtual {p1, v1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private executeSimpleIntent(Ljava/lang/String;I)V
    .locals 2

    .line 432
    iget-object v0, p0, Lcom/baseflow/permissionhandler/PermissionManager;->activity:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method checkPermissionStatus(ILandroid/content/Context;Lcom/baseflow/permissionhandler/PermissionManager$CheckPermissionsSuccessCallback;)V
    .locals 0

    .line 199
    invoke-direct {p0, p1, p2}, Lcom/baseflow/permissionhandler/PermissionManager;->determinePermissionStatus(ILandroid/content/Context;)I

    move-result p1

    invoke-interface {p3, p1}, Lcom/baseflow/permissionhandler/PermissionManager$CheckPermissionsSuccessCallback;->onSuccess(I)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 7

    const/16 p3, 0xd5

    const/16 v0, 0xd4

    const/16 v1, 0xd3

    const/16 v2, 0xd2

    const/16 v3, 0xd1

    const/4 v4, 0x0

    if-eq p1, v3, :cond_0

    if-eq p1, v2, :cond_0

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_0

    if-eq p1, p3, :cond_0

    return v4

    :cond_0
    const/4 v5, -0x1

    const/4 v6, 0x1

    if-ne p2, v5, :cond_1

    move p2, v6

    goto :goto_0

    :cond_1
    move p2, v4

    :goto_0
    const/16 v5, 0x17

    if-ne p1, v3, :cond_2

    const/16 v5, 0x10

    goto :goto_1

    :cond_2
    if-ne p1, v2, :cond_4

    .line 58
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1e

    if-lt p1, p2, :cond_3

    .line 59
    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result p2

    const/16 v5, 0x16

    goto :goto_1

    :cond_3
    return v4

    :cond_4
    if-ne p1, v1, :cond_6

    .line 67
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v5, :cond_5

    .line 68
    iget-object p1, p0, Lcom/baseflow/permissionhandler/PermissionManager;->activity:Landroid/app/Activity;

    invoke-static {p1}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result p2

    goto :goto_1

    :cond_5
    return v4

    :cond_6
    if-ne p1, v0, :cond_8

    .line 76
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1a

    if-lt p1, p2, :cond_7

    .line 77
    iget-object p1, p0, Lcom/baseflow/permissionhandler/PermissionManager;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->canRequestPackageInstalls()Z

    move-result p2

    const/16 v5, 0x18

    goto :goto_1

    :cond_7
    return v4

    :cond_8
    if-ne p1, p3, :cond_9

    .line 85
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v5, :cond_9

    .line 86
    iget-object p1, p0, Lcom/baseflow/permissionhandler/PermissionManager;->activity:Landroid/app/Activity;

    const-string p2, "notification"

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    .line 87
    invoke-virtual {p1}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGranted()Z

    move-result p2

    const/16 v5, 0x1b

    .line 98
    :goto_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 99
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object p2, p0, Lcom/baseflow/permissionhandler/PermissionManager;->successCallback:Lcom/baseflow/permissionhandler/PermissionManager$RequestPermissionsSuccessCallback;

    invoke-interface {p2, p1}, Lcom/baseflow/permissionhandler/PermissionManager$RequestPermissionsSuccessCallback;->onSuccess(Ljava/util/Map;)V

    return v6

    :cond_9
    return v4
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)Z
    .locals 7

    const/4 v0, 0x0

    const/16 v1, 0x18

    if-eq p1, v1, :cond_0

    .line 107
    iput-boolean v0, p0, Lcom/baseflow/permissionhandler/PermissionManager;->ongoing:Z

    return v0

    .line 111
    :cond_0
    iget-object p1, p0, Lcom/baseflow/permissionhandler/PermissionManager;->requestResults:Ljava/util/Map;

    if-nez p1, :cond_1

    return v0

    :cond_1
    move p1, v0

    .line 115
    :goto_0
    array-length v1, p2

    if-ge p1, v1, :cond_a

    .line 116
    aget-object v1, p2, p1

    .line 119
    invoke-static {v1}, Lcom/baseflow/permissionhandler/PermissionUtils;->parseManifestName(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x14

    if-ne v2, v3, :cond_2

    goto/16 :goto_2

    .line 124
    :cond_2
    aget v3, p3, p1

    const/4 v4, 0x7

    if-ne v2, v4, :cond_4

    .line 127
    iget-object v5, p0, Lcom/baseflow/permissionhandler/PermissionManager;->requestResults:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 128
    iget-object v5, p0, Lcom/baseflow/permissionhandler/PermissionManager;->requestResults:Ljava/util/Map;

    .line 129
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v6, p0, Lcom/baseflow/permissionhandler/PermissionManager;->activity:Landroid/app/Activity;

    .line 130
    invoke-static {v6, v1, v3}, Lcom/baseflow/permissionhandler/PermissionUtils;->toPermissionStatus(Landroid/app/Activity;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 128
    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :cond_3
    iget-object v4, p0, Lcom/baseflow/permissionhandler/PermissionManager;->requestResults:Ljava/util/Map;

    const/16 v5, 0xe

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 133
    iget-object v4, p0, Lcom/baseflow/permissionhandler/PermissionManager;->requestResults:Ljava/util/Map;

    .line 134
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/baseflow/permissionhandler/PermissionManager;->activity:Landroid/app/Activity;

    .line 135
    invoke-static {v6, v1, v3}, Lcom/baseflow/permissionhandler/PermissionUtils;->toPermissionStatus(Landroid/app/Activity;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 133
    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_4
    const/4 v4, 0x4

    if-ne v2, v4, :cond_5

    .line 138
    iget-object v5, p0, Lcom/baseflow/permissionhandler/PermissionManager;->activity:Landroid/app/Activity;

    .line 139
    invoke-static {v5, v1, v3}, Lcom/baseflow/permissionhandler/PermissionUtils;->toPermissionStatus(Landroid/app/Activity;Ljava/lang/String;I)I

    move-result v1

    .line 141
    iget-object v3, p0, Lcom/baseflow/permissionhandler/PermissionManager;->requestResults:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 142
    iget-object v3, p0, Lcom/baseflow/permissionhandler/PermissionManager;->requestResults:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    const/4 v5, 0x3

    if-ne v2, v5, :cond_8

    .line 145
    iget-object v5, p0, Lcom/baseflow/permissionhandler/PermissionManager;->activity:Landroid/app/Activity;

    .line 146
    invoke-static {v5, v1, v3}, Lcom/baseflow/permissionhandler/PermissionUtils;->toPermissionStatus(Landroid/app/Activity;Ljava/lang/String;I)I

    move-result v1

    .line 148
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1d

    if-ge v3, v5, :cond_6

    .line 149
    iget-object v3, p0, Lcom/baseflow/permissionhandler/PermissionManager;->requestResults:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 150
    iget-object v3, p0, Lcom/baseflow/permissionhandler/PermissionManager;->requestResults:Ljava/util/Map;

    .line 151
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 152
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 150
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    :cond_6
    iget-object v3, p0, Lcom/baseflow/permissionhandler/PermissionManager;->requestResults:Ljava/util/Map;

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 157
    iget-object v3, p0, Lcom/baseflow/permissionhandler/PermissionManager;->requestResults:Ljava/util/Map;

    .line 158
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 159
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 157
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    :cond_7
    iget-object v3, p0, Lcom/baseflow/permissionhandler/PermissionManager;->requestResults:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 163
    :cond_8
    iget-object v4, p0, Lcom/baseflow/permissionhandler/PermissionManager;->requestResults:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 164
    iget-object v4, p0, Lcom/baseflow/permissionhandler/PermissionManager;->requestResults:Ljava/util/Map;

    .line 165
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/baseflow/permissionhandler/PermissionManager;->activity:Landroid/app/Activity;

    .line 166
    invoke-static {v6, v1, v3}, Lcom/baseflow/permissionhandler/PermissionUtils;->toPermissionStatus(Landroid/app/Activity;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 164
    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    :cond_9
    :goto_1
    iget-object v1, p0, Lcom/baseflow/permissionhandler/PermissionManager;->activity:Landroid/app/Activity;

    invoke-static {v1, v2}, Lcom/baseflow/permissionhandler/PermissionUtils;->updatePermissionShouldShowStatus(Landroid/app/Activity;I)V

    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    .line 172
    :cond_a
    iget-object p1, p0, Lcom/baseflow/permissionhandler/PermissionManager;->successCallback:Lcom/baseflow/permissionhandler/PermissionManager$RequestPermissionsSuccessCallback;

    iget-object p2, p0, Lcom/baseflow/permissionhandler/PermissionManager;->requestResults:Ljava/util/Map;

    invoke-interface {p1, p2}, Lcom/baseflow/permissionhandler/PermissionManager$RequestPermissionsSuccessCallback;->onSuccess(Ljava/util/Map;)V

    .line 173
    iput-boolean v0, p0, Lcom/baseflow/permissionhandler/PermissionManager;->ongoing:Z

    const/4 p1, 0x1

    return p1
.end method

.method requestPermissions(Ljava/util/List;Landroid/app/Activity;Lcom/baseflow/permissionhandler/PermissionManager$RequestPermissionsSuccessCallback;Lcom/baseflow/permissionhandler/ErrorCallback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/app/Activity;",
            "Lcom/baseflow/permissionhandler/PermissionManager$RequestPermissionsSuccessCallback;",
            "Lcom/baseflow/permissionhandler/ErrorCallback;",
            ")V"
        }
    .end annotation

    .line 209
    iget-boolean v0, p0, Lcom/baseflow/permissionhandler/PermissionManager;->ongoing:Z

    const-string v1, "PermissionHandler.PermissionManager"

    if-eqz v0, :cond_0

    const-string p1, "A request for permissions is already running, please wait for it to finish before doing another request (note that you can request multiple permissions at the same time)."

    .line 210
    invoke-interface {p4, v1, p1}, Lcom/baseflow/permissionhandler/ErrorCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    const-string p1, "permissions_handler"

    const-string p2, "Unable to detect current Activity."

    .line 217
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "Unable to detect current Android Activity."

    .line 219
    invoke-interface {p4, v1, p1}, Lcom/baseflow/permissionhandler/ErrorCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 225
    :cond_1
    iput-object p3, p0, Lcom/baseflow/permissionhandler/PermissionManager;->successCallback:Lcom/baseflow/permissionhandler/PermissionManager$RequestPermissionsSuccessCallback;

    .line 226
    iput-object p2, p0, Lcom/baseflow/permissionhandler/PermissionManager;->activity:Landroid/app/Activity;

    .line 227
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    iput-object p4, p0, Lcom/baseflow/permissionhandler/PermissionManager;->requestResults:Ljava/util/Map;

    .line 229
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 230
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/16 v1, 0x18

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 231
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4, p2}, Lcom/baseflow/permissionhandler/PermissionManager;->determinePermissionStatus(ILandroid/content/Context;)I

    move-result v4

    if-ne v4, v2, :cond_3

    .line 233
    iget-object v1, p0, Lcom/baseflow/permissionhandler/PermissionManager;->requestResults:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 234
    iget-object v1, p0, Lcom/baseflow/permissionhandler/PermissionManager;->requestResults:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 239
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {p2, v2}, Lcom/baseflow/permissionhandler/PermissionUtils;->getManifestNames(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v2

    const/16 v4, 0x16

    const/16 v5, 0x1e

    const/16 v6, 0x10

    const/16 v7, 0x17

    if-eqz v2, :cond_a

    .line 243
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_1

    .line 264
    :cond_4
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v7, :cond_5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v6, :cond_5

    const/16 v0, 0xd1

    const-string v1, "android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS"

    .line 265
    invoke-direct {p0, v1, v0}, Lcom/baseflow/permissionhandler/PermissionManager;->executeIntent(Ljava/lang/String;I)V

    goto :goto_0

    .line 268
    :cond_5
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v5, :cond_6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v4, :cond_6

    const/16 v0, 0xd2

    const-string v1, "android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION"

    .line 269
    invoke-direct {p0, v1, v0}, Lcom/baseflow/permissionhandler/PermissionManager;->executeIntent(Ljava/lang/String;I)V

    goto :goto_0

    .line 272
    :cond_6
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v7, :cond_7

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v7, :cond_7

    const/16 v0, 0xd3

    const-string v1, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    .line 273
    invoke-direct {p0, v1, v0}, Lcom/baseflow/permissionhandler/PermissionManager;->executeIntent(Ljava/lang/String;I)V

    goto :goto_0

    .line 276
    :cond_7
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_8

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v1, :cond_8

    const/16 v0, 0xd4

    const-string v1, "android.settings.MANAGE_UNKNOWN_APP_SOURCES"

    .line 277
    invoke-direct {p0, v1, v0}, Lcom/baseflow/permissionhandler/PermissionManager;->executeIntent(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 280
    :cond_8
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v7, :cond_9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_9

    const/16 v0, 0xd5

    const-string v1, "android.settings.NOTIFICATION_POLICY_ACCESS_SETTINGS"

    .line 281
    invoke-direct {p0, v1, v0}, Lcom/baseflow/permissionhandler/PermissionManager;->executeSimpleIntent(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 285
    :cond_9
    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 244
    :cond_a
    :goto_1
    iget-object v1, p0, Lcom/baseflow/permissionhandler/PermissionManager;->requestResults:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 247
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v6, :cond_b

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v7, :cond_b

    .line 248
    iget-object v1, p0, Lcom/baseflow/permissionhandler/PermissionManager;->requestResults:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 250
    :cond_b
    iget-object v1, p0, Lcom/baseflow/permissionhandler/PermissionManager;->requestResults:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v4, :cond_c

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v5, :cond_c

    .line 255
    iget-object v1, p0, Lcom/baseflow/permissionhandler/PermissionManager;->requestResults:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 257
    :cond_c
    iget-object v1, p0, Lcom/baseflow/permissionhandler/PermissionManager;->requestResults:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_d
    new-array p1, v3, [Ljava/lang/String;

    .line 289
    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 290
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-lez p4, :cond_e

    .line 291
    iput-boolean v2, p0, Lcom/baseflow/permissionhandler/PermissionManager;->ongoing:Z

    .line 293
    invoke-static {p2, p1, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_3

    .line 298
    :cond_e
    iput-boolean v3, p0, Lcom/baseflow/permissionhandler/PermissionManager;->ongoing:Z

    .line 299
    iget-object p1, p0, Lcom/baseflow/permissionhandler/PermissionManager;->requestResults:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_f

    .line 300
    iget-object p1, p0, Lcom/baseflow/permissionhandler/PermissionManager;->requestResults:Ljava/util/Map;

    invoke-interface {p3, p1}, Lcom/baseflow/permissionhandler/PermissionManager$RequestPermissionsSuccessCallback;->onSuccess(Ljava/util/Map;)V

    :cond_f
    :goto_3
    return-void
.end method

.method shouldShowRequestPermissionRationale(ILandroid/app/Activity;Lcom/baseflow/permissionhandler/PermissionManager$ShouldShowRequestPermissionRationaleSuccessCallback;Lcom/baseflow/permissionhandler/ErrorCallback;)V
    .locals 3

    const-string v0, "permissions_handler"

    if-nez p2, :cond_0

    const-string p1, "Unable to detect current Activity."

    .line 441
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "PermissionHandler.PermissionManager"

    const-string p2, "Unable to detect current Android Activity."

    .line 443
    invoke-interface {p4, p1, p2}, Lcom/baseflow/permissionhandler/ErrorCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 449
    :cond_0
    invoke-static {p2, p1}, Lcom/baseflow/permissionhandler/PermissionUtils;->getManifestNames(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p4

    const/4 v1, 0x0

    if-nez p4, :cond_1

    .line 453
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "No android specific permissions needed for: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    invoke-interface {p3, v1}, Lcom/baseflow/permissionhandler/PermissionManager$ShouldShowRequestPermissionRationaleSuccessCallback;->onSuccess(Z)V

    return-void

    .line 458
    :cond_1
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 459
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "No permissions found in manifest for: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " no need to show request rationale"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    invoke-interface {p3, v1}, Lcom/baseflow/permissionhandler/PermissionManager$ShouldShowRequestPermissionRationaleSuccessCallback;->onSuccess(Z)V

    return-void

    .line 464
    :cond_2
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p2, p1}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    invoke-interface {p3, p1}, Lcom/baseflow/permissionhandler/PermissionManager$ShouldShowRequestPermissionRationaleSuccessCallback;->onSuccess(Z)V

    return-void
.end method
