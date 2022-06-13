.class public Lcom/appinstall/sdk/bd;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Landroid/util/Pair;

.field private final d:Lcom/appinstall/sdk/cg;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AdIn"

    invoke-static {v0}, Lcom/appinstall/sdk/cg;->a(Ljava/lang/String;)Lcom/appinstall/sdk/cg;

    move-result-object v0

    iput-object v0, p0, Lcom/appinstall/sdk/bd;->d:Lcom/appinstall/sdk/cg;

    iput-object p1, p0, Lcom/appinstall/sdk/bd;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/appinstall/sdk/ce;->u:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/appinstall/sdk/ce;->v:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private b(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/appinstall/sdk/ce;->w:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 11

    iget-object v0, p0, Lcom/appinstall/sdk/bd;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/appinstall/sdk/bd;->a:Landroid/content/Context;

    sget-object v2, Lcom/appinstall/sdk/ce;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    move-object v1, v0

    :goto_0
    invoke-direct {p0, v1}, Lcom/appinstall/sdk/bd;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    return-object v1

    :cond_2
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/appinstall/sdk/ce;->s:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    invoke-direct {p0, v1}, Lcom/appinstall/sdk/bd;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    return-object v1

    :cond_3
    :try_start_2
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    sget-object v4, Lcom/appinstall/sdk/ce;->r:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v3

    if-eqz v3, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    array-length v5, v3

    const/4 v6, 0x0

    move v7, v6

    :goto_2
    const/4 v8, 0x1

    if-ge v7, v5, :cond_5

    aget-byte v9, v3, v7

    const-string v10, "%02X:"

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v10, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_6

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v8

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    :cond_7
    invoke-direct {p0, v1}, Lcom/appinstall/sdk/bd;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_3

    :cond_8
    move-object v0, v1

    :goto_3
    if-nez v0, :cond_9

    const-string v0, ""

    :cond_9
    iput-object v0, p0, Lcom/appinstall/sdk/bd;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/appinstall/sdk/bd;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Landroid/util/Pair;
    .locals 6

    iget-object v0, p0, Lcom/appinstall/sdk/bd;->c:Landroid/util/Pair;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/appinstall/sdk/bd;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/appinstall/sdk/ci;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/appinstall/sdk/bd;->a:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getImei()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v3

    :goto_0
    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_1

    :cond_2
    :try_start_2
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v1

    :goto_1
    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_2

    :catch_0
    move-object v2, v1

    :catch_1
    move-object v0, v1

    goto :goto_2

    :cond_3
    move-object v0, v1

    move-object v2, v0

    :goto_2
    invoke-direct {p0, v2}, Lcom/appinstall/sdk/bd;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v2, v1

    :cond_4
    invoke-direct {p0, v0}, Lcom/appinstall/sdk/bd;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v0, v1

    :cond_5
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/appinstall/sdk/bd;->c:Landroid/util/Pair;

    iget-object v0, p0, Lcom/appinstall/sdk/bd;->c:Landroid/util/Pair;

    return-object v0
.end method
