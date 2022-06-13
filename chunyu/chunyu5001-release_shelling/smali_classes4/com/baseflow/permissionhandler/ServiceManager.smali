.class final Lcom/baseflow/permissionhandler/ServiceManager;
.super Ljava/lang/Object;
.source "ServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baseflow/permissionhandler/ServiceManager$SuccessCallback;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isBluetoothServiceEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 157
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    .line 158
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p1

    return p1

    :cond_0
    const-string v0, "bluetooth"

    .line 161
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothManager;

    .line 162
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    .line 163
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p1

    return p1
.end method

.method private static isLocationServiceEnablePreKitKat(Landroid/content/Context;)Z
    .locals 2

    .line 145
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 149
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "location_providers_allowed"

    .line 148
    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 151
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private isLocationServiceEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 103
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    .line 104
    const-class v0, Landroid/location/LocationManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 109
    :cond_0
    invoke-virtual {p1}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result p1

    return p1

    .line 110
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 111
    invoke-static {p1}, Lcom/baseflow/permissionhandler/ServiceManager;->isLocationServiceEnabledKitKat(Landroid/content/Context;)Z

    move-result p1

    return p1

    .line 113
    :cond_2
    invoke-static {p1}, Lcom/baseflow/permissionhandler/ServiceManager;->isLocationServiceEnablePreKitKat(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method private static isLocationServiceEnabledKitKat(Landroid/content/Context;)Z
    .locals 3

    .line 122
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x13

    if-ge v0, v2, :cond_0

    return v1

    .line 130
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "location_mode"

    .line 129
    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :catch_0
    move-exception p0

    .line 133
    invoke-virtual {p0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    return v1
.end method


# virtual methods
.method checkServiceStatus(ILandroid/content/Context;Lcom/baseflow/permissionhandler/ServiceManager$SuccessCallback;Lcom/baseflow/permissionhandler/ErrorCallback;)V
    .locals 4

    if-nez p2, :cond_0

    const-string p1, "permissions_handler"

    const-string p2, "Context cannot be null."

    .line 35
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "PermissionHandler.ServiceManager"

    const-string p2, "Android context cannot be null."

    .line 36
    invoke-interface {p4, p1, p2}, Lcom/baseflow/permissionhandler/ErrorCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p4, 0x3

    if-eq p1, p4, :cond_b

    const/4 p4, 0x4

    if-eq p1, p4, :cond_b

    const/4 p4, 0x5

    if-ne p1, p4, :cond_1

    goto/16 :goto_2

    :cond_1
    const/16 v0, 0x15

    if-ne p1, v0, :cond_2

    .line 51
    invoke-direct {p0, p2}, Lcom/baseflow/permissionhandler/ServiceManager;->isBluetoothServiceEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 55
    invoke-interface {p3, v0}, Lcom/baseflow/permissionhandler/ServiceManager$SuccessCallback;->onSuccess(I)V

    :cond_2
    const/16 v0, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne p1, v0, :cond_8

    .line 59
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "android.hardware.telephony"

    .line 60
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 61
    invoke-interface {p3, v2}, Lcom/baseflow/permissionhandler/ServiceManager$SuccessCallback;->onSuccess(I)V

    return-void

    :cond_3
    const-string v0, "phone"

    .line 66
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    if-eqz p2, :cond_7

    .line 68
    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    .line 73
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "tel:123123"

    .line 74
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v3, 0x0

    .line 75
    invoke-virtual {p1, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 77
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 78
    invoke-interface {p3, v2}, Lcom/baseflow/permissionhandler/ServiceManager$SuccessCallback;->onSuccess(I)V

    return-void

    .line 82
    :cond_5
    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result p1

    if-eq p1, p4, :cond_6

    .line 83
    invoke-interface {p3, v3}, Lcom/baseflow/permissionhandler/ServiceManager$SuccessCallback;->onSuccess(I)V

    return-void

    .line 87
    :cond_6
    invoke-interface {p3, v1}, Lcom/baseflow/permissionhandler/ServiceManager$SuccessCallback;->onSuccess(I)V

    return-void

    .line 69
    :cond_7
    :goto_0
    invoke-interface {p3, v2}, Lcom/baseflow/permissionhandler/ServiceManager$SuccessCallback;->onSuccess(I)V

    return-void

    :cond_8
    const/16 p2, 0x10

    if-ne p1, p2, :cond_a

    .line 92
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-lt p1, p2, :cond_9

    goto :goto_1

    :cond_9
    move v1, v2

    .line 95
    :goto_1
    invoke-interface {p3, v1}, Lcom/baseflow/permissionhandler/ServiceManager$SuccessCallback;->onSuccess(I)V

    return-void

    .line 99
    :cond_a
    invoke-interface {p3, v2}, Lcom/baseflow/permissionhandler/ServiceManager$SuccessCallback;->onSuccess(I)V

    return-void

    .line 43
    :cond_b
    :goto_2
    invoke-direct {p0, p2}, Lcom/baseflow/permissionhandler/ServiceManager;->isLocationServiceEnabled(Landroid/content/Context;)Z

    move-result p1

    .line 47
    invoke-interface {p3, p1}, Lcom/baseflow/permissionhandler/ServiceManager$SuccessCallback;->onSuccess(I)V

    return-void
.end method
