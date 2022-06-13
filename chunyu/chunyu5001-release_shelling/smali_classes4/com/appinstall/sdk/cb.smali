.class public Lcom/appinstall/sdk/cb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appinstall/sdk/ca;


# instance fields
.field private final a:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/appinstall/sdk/cb;->a:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/appinstall/sdk/cb;->a()V

    return-void
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lcom/appinstall/sdk/cb;->a:Ljava/util/HashMap;

    const-string v1, "cF"

    const-string v2, "certFinger"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/appinstall/sdk/cb;->a:Ljava/util/HashMap;

    const-string v1, "aI"

    const-string v2, "apkInfo"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/appinstall/sdk/cb;->a:Ljava/util/HashMap;

    const-string v1, "pbR"

    const-string v2, "pbReaded"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/appinstall/sdk/cb;->a:Ljava/util/HashMap;

    const-string v1, "pbH"

    const-string v2, "pbHtml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/appinstall/sdk/cb;->a:Ljava/util/HashMap;

    const-string v1, "pbT"

    const-string v2, "pbText"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/appinstall/sdk/cb;->a:Ljava/util/HashMap;

    const-string v1, "gR"

    const-string v2, "gReferrer"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/appinstall/sdk/cb;->a:Ljava/util/HashMap;

    const-string v1, "Pk"

    const-string v2, "pkg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/appinstall/sdk/cb;->a:Ljava/util/HashMap;

    const-string/jumbo v1, "ul"

    const-string/jumbo v2, "url"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/appinstall/sdk/cb;->a:Ljava/util/HashMap;

    const-string/jumbo v1, "ts"

    const-string/jumbo v2, "timestamp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/appinstall/sdk/cb;->a:Ljava/util/HashMap;

    const-string v1, "iI"

    const-string v2, "installId"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/appinstall/sdk/cb;->a:Ljava/util/HashMap;

    const-string v1, "mA"

    const-string v2, "macAddress"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/appinstall/sdk/cb;->a:Ljava/util/HashMap;

    const-string v1, "sN"

    const-string v2, "serialNumber"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/appinstall/sdk/cb;->a:Ljava/util/HashMap;

    const-string v1, "andI"

    const-string v2, "androidId"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/appinstall/sdk/cb;->a:Ljava/util/HashMap;

    const-string v1, "md"

    const-string v2, "model"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/appinstall/sdk/cb;->a:Ljava/util/HashMap;

    const-string v1, "bI"

    const-string v2, "buildId"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/appinstall/sdk/cb;->a:Ljava/util/HashMap;

    const-string v1, "bd"

    const-string v2, "brand"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/appinstall/sdk/cb;->a:Ljava/util/HashMap;

    const-string v1, "buiD"

    const-string v2, "buildDisplay"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/appinstall/sdk/cb;->a:Ljava/util/HashMap;

    const-string/jumbo v1, "ver"

    const-string/jumbo v2, "version"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/appinstall/sdk/cb;->a:Ljava/util/HashMap;

    const-string/jumbo v1, "verI"

    const-string/jumbo v2, "versionCode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/appinstall/sdk/cb;->a:Ljava/util/HashMap;

    const-string v1, "apV"

    const-string v2, "apiVersion"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/appinstall/sdk/cb;->a:Ljava/util/HashMap;

    const-string v1, "im"

    const-string v2, "imei"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/appinstall/sdk/cb;->a:Ljava/util/HashMap;

    const-string v1, "oa"

    const-string v2, "oaid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/appinstall/sdk/cb;->a:Ljava/util/HashMap;

    const-string v1, "ga"

    const-string v2, "gaid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/appinstall/sdk/cb;->a:Ljava/util/HashMap;

    const-string v1, "loI"

    const-string v2, "localIP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/appinstall/sdk/cb;->a:Ljava/util/HashMap;

    const-string v1, "im2"

    const-string v2, "imei2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/appinstall/sdk/cb;->a:Ljava/util/HashMap;

    const-string v1, "si"

    const-string v2, "simulator"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/appinstall/sdk/cb;->a:Ljava/util/HashMap;

    const-string/jumbo v1, "waU"

    const-string/jumbo v2, "wakeupUrl"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/appinstall/sdk/cb;->a:Ljava/util/HashMap;

    const-string/jumbo v1, "verS"

    const-string/jumbo v2, "versionName"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/appinstall/sdk/cb;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    return-object v1
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    return-object v1
.end method
