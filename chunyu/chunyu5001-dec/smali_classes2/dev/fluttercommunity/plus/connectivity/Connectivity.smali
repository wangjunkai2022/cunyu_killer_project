.class public Ldev/fluttercommunity/plus/connectivity/Connectivity;
.super Ljava/lang/Object;
.source "Connectivity.java"


# static fields
.field static final CONNECTIVITY_BLUETOOTH:Ljava/lang/String; = "bluetooth"

.field static final CONNECTIVITY_ETHERNET:Ljava/lang/String; = "ethernet"

.field static final CONNECTIVITY_MOBILE:Ljava/lang/String; = "mobile"

.field static final CONNECTIVITY_NONE:Ljava/lang/String; = "none"

.field static final CONNECTIVITY_WIFI:Ljava/lang/String; = "wifi"


# instance fields
.field private final connectivityManager:Landroid/net/ConnectivityManager;


# direct methods
.method public constructor <init>(Landroid/net/ConnectivityManager;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Ldev/fluttercommunity/plus/connectivity/Connectivity;->connectivityManager:Landroid/net/ConnectivityManager;

    return-void
.end method

.method private getNetworkTypeLegacy()Ljava/lang/String;
    .locals 3

    .line 52
    iget-object v0, p0, Ldev/fluttercommunity/plus/connectivity/Connectivity;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    const-string v1, "none"

    if-eqz v0, :cond_5

    .line 53
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_4

    const/4 v2, 0x5

    if-eq v0, v2, :cond_4

    const/4 v2, 0x6

    if-eq v0, v2, :cond_3

    const/4 v2, 0x7

    if-eq v0, v2, :cond_2

    const/16 v2, 0x9

    if-eq v0, v2, :cond_1

    return-object v1

    :cond_1
    const-string v0, "ethernet"

    return-object v0

    :cond_2
    const-string v0, "bluetooth"

    return-object v0

    :cond_3
    const-string v0, "wifi"

    return-object v0

    :cond_4
    const-string v0, "mobile"

    return-object v0

    :cond_5
    :goto_0
    return-object v1
.end method


# virtual methods
.method public getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 1

    .line 75
    iget-object v0, p0, Ldev/fluttercommunity/plus/connectivity/Connectivity;->connectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method getNetworkType()Ljava/lang/String;
    .locals 2

    .line 26
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_4

    .line 27
    iget-object v0, p0, Ldev/fluttercommunity/plus/connectivity/Connectivity;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    .line 28
    iget-object v1, p0, Ldev/fluttercommunity/plus/connectivity/Connectivity;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "none"

    return-object v0

    :cond_0
    const/4 v1, 0x1

    .line 32
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "wifi"

    return-object v0

    :cond_1
    const/4 v1, 0x3

    .line 35
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "ethernet"

    return-object v0

    :cond_2
    const/4 v1, 0x0

    .line 38
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "mobile"

    return-object v0

    :cond_3
    const/4 v1, 0x2

    .line 41
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "bluetooth"

    return-object v0

    .line 46
    :cond_4
    invoke-direct {p0}, Ldev/fluttercommunity/plus/connectivity/Connectivity;->getNetworkTypeLegacy()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
