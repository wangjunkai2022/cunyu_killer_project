.class public Lcom/tencent/liteav/basic/license/LicenceCheck;
.super Ljava/lang/Object;
.source "LicenceCheck.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/basic/license/LicenceCheck$a;,
        Lcom/tencent/liteav/basic/license/LicenceCheck$b;
    }
.end annotation


# static fields
.field private static d:Lcom/tencent/liteav/basic/license/LicenceCheck;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private e:Lcom/tencent/liteav/basic/license/LicenceCheck$a;

.field private f:I

.field private g:Lcom/tencent/liteav/basic/license/LicenceCheck$b;

.field private h:Lcom/tencent/liteav/basic/license/LicenceCheck$b;

.field private i:Lcom/tencent/liteav/basic/license/LicenceCheck$b;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "YTFaceSDK.licence"

    .line 62
    iput-object v0, p0, Lcom/tencent/liteav/basic/license/LicenceCheck;->b:Ljava/lang/String;

    const-string v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAq4teqkW/TUruU89ElNVd\nKrpSL+HCITruyb6BS9mW6M4mqmxDhazDmQgMKNfsA0d2kxFucCsXTyesFNajaisk\nrAzVJpNGO75bQFap4jYzJYskIuas6fgIS7zSmGXgRcp6i0ZBH3pkVCXcgfLfsVCO\n+sN01jFhFgOC0LY2f1pJ+3jqktAlMIxy8Q9t7XwwL5/n8/Sledp7TwuRdnl2OPl3\nycCTRkXtOIoRNB9vgd9XooTKiEdCXC7W9ryvtwCiAB82vEfHWXXgzhsPC13URuFy\n1JqbWJtTCCcfsCVxuBplhVJAQ7JsF5SMntdJDkp7rJLhprgsaim2CRjcVseNmw97\nbwIDAQAB"

    .line 64
    iput-object v0, p0, Lcom/tencent/liteav/basic/license/LicenceCheck;->c:Ljava/lang/String;

    const/4 v0, -0x1

    .line 103
    iput v0, p0, Lcom/tencent/liteav/basic/license/LicenceCheck;->f:I

    .line 129
    new-instance v0, Lcom/tencent/liteav/basic/license/LicenceCheck$b;

    const-string v1, "TXUgcSDK.licence"

    invoke-direct {v0, p0, v1}, Lcom/tencent/liteav/basic/license/LicenceCheck$b;-><init>(Lcom/tencent/liteav/basic/license/LicenceCheck;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/liteav/basic/license/LicenceCheck;->g:Lcom/tencent/liteav/basic/license/LicenceCheck$b;

    .line 130
    new-instance v0, Lcom/tencent/liteav/basic/license/LicenceCheck$b;

    const-string v1, "TXLiveSDK.licence"

    invoke-direct {v0, p0, v1}, Lcom/tencent/liteav/basic/license/LicenceCheck$b;-><init>(Lcom/tencent/liteav/basic/license/LicenceCheck;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/liteav/basic/license/LicenceCheck;->h:Lcom/tencent/liteav/basic/license/LicenceCheck$b;

    .line 131
    new-instance v0, Lcom/tencent/liteav/basic/license/LicenceCheck$b;

    invoke-direct {v0, p0, v1}, Lcom/tencent/liteav/basic/license/LicenceCheck$b;-><init>(Lcom/tencent/liteav/basic/license/LicenceCheck;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/liteav/basic/license/LicenceCheck;->i:Lcom/tencent/liteav/basic/license/LicenceCheck$b;

    return-void
.end method

.method private a(Lcom/tencent/liteav/basic/license/LicenceCheck$b;Landroid/content/Context;)I
    .locals 2

    .line 341
    iget-boolean v0, p1, Lcom/tencent/liteav/basic/license/LicenceCheck$b;->g:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/basic/license/LicenceCheck;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 345
    iput-object p2, p0, Lcom/tencent/liteav/basic/license/LicenceCheck;->a:Landroid/content/Context;

    .line 348
    :cond_1
    invoke-direct {p0, p1}, Lcom/tencent/liteav/basic/license/LicenceCheck;->e(Lcom/tencent/liteav/basic/license/LicenceCheck$b;)I

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_2

    .line 350
    iput-boolean v0, p1, Lcom/tencent/liteav/basic/license/LicenceCheck$b;->g:Z

    return v1

    .line 354
    :cond_2
    invoke-direct {p0, p1}, Lcom/tencent/liteav/basic/license/LicenceCheck;->d(Lcom/tencent/liteav/basic/license/LicenceCheck$b;)I

    move-result p2

    if-nez p2, :cond_3

    .line 356
    iput-boolean v0, p1, Lcom/tencent/liteav/basic/license/LicenceCheck$b;->g:Z

    return v1

    :cond_3
    return p2
.end method

.method private a(Lcom/tencent/liteav/basic/license/LicenceCheck$b;Lcom/tencent/liteav/basic/license/e;Landroid/content/Context;)I
    .locals 0

    .line 328
    invoke-direct {p0, p1, p3}, Lcom/tencent/liteav/basic/license/LicenceCheck;->a(Lcom/tencent/liteav/basic/license/LicenceCheck$b;Landroid/content/Context;)I

    move-result p3

    if-eqz p3, :cond_0

    .line 331
    invoke-virtual {p0, p1}, Lcom/tencent/liteav/basic/license/LicenceCheck;->a(Lcom/tencent/liteav/basic/license/LicenceCheck$b;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 335
    iget-object p1, p1, Lcom/tencent/liteav/basic/license/LicenceCheck$b;->i:Ljava/lang/String;

    iput-object p1, p2, Lcom/tencent/liteav/basic/license/e;->a:Ljava/lang/String;

    :cond_1
    return p3
.end method

.method private a(Lcom/tencent/liteav/basic/license/LicenceCheck$b;Ljava/lang/String;Ljava/lang/String;)I
    .locals 12

    const-string v0, "licence check failed!! json error"

    const-string v1, "LicenceCheck"

    const/4 v2, 0x0

    .line 509
    :try_start_0
    iget-object v3, p0, Lcom/tencent/liteav/basic/license/LicenceCheck;->c:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/tencent/liteav/basic/license/LicenceCheck;->a(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v3

    .line 510
    invoke-static {p2, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    .line 511
    invoke-static {p3, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p3

    .line 512
    invoke-static {v4, p3, v3}, Lcom/tencent/liteav/basic/license/LicenceCheck;->a([B[BLjava/security/PublicKey;)Z

    move-result p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 514
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    .line 515
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "verifyLicence, exception is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move p3, v2

    :goto_0
    if-nez p3, :cond_1

    const/4 p1, -0x2

    .line 519
    invoke-direct {p0, p1}, Lcom/tencent/liteav/basic/license/LicenceCheck;->a(I)V

    .line 520
    iget-object p2, p0, Lcom/tencent/liteav/basic/license/LicenceCheck;->e:Lcom/tencent/liteav/basic/license/LicenceCheck$a;

    if-eqz p2, :cond_0

    const-string p3, "licence check failed!! verify signature failed"

    .line 521
    invoke-interface {p2, p1, p3}, Lcom/tencent/liteav/basic/license/LicenceCheck$a;->a(ILjava/lang/String;)V

    :cond_0
    const-string p2, "verifyLicence, signature not pass!"

    .line 523
    invoke-static {v1, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    .line 527
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/basic/license/LicenceCheck;->d(Lcom/tencent/liteav/basic/license/LicenceCheck$b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 528
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_3

    const/4 p1, -0x3

    .line 529
    invoke-direct {p0, p1}, Lcom/tencent/liteav/basic/license/LicenceCheck;->a(I)V

    .line 530
    iget-object p2, p0, Lcom/tencent/liteav/basic/license/LicenceCheck;->e:Lcom/tencent/liteav/basic/license/LicenceCheck$a;

    if-eqz p2, :cond_2

    const-string p3, "licence check failed!! decryption failed"

    .line 531
    invoke-interface {p2, p1, p3}, Lcom/tencent/liteav/basic/license/LicenceCheck$a;->a(ILjava/lang/String;)V

    :cond_2
    const-string p2, "verifyLicence, decodeValue is empty!"

    .line 533
    invoke-static {v1, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    .line 537
    :cond_3
    iput-object p2, p1, Lcom/tencent/liteav/basic/license/LicenceCheck$b;->i:Ljava/lang/String;

    const/4 p3, -0x1

    .line 540
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 541
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "verifyLicence, object "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "pituLicense"

    .line 542
    invoke-virtual {v3, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v4, "appData"

    .line 543
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-nez v3, :cond_5

    const-string p1, "verifyLicence, appDataArray is null!"

    .line 545
    invoke-static {v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    invoke-direct {p0, p3}, Lcom/tencent/liteav/basic/license/LicenceCheck;->a(I)V

    .line 547
    iget-object p1, p0, Lcom/tencent/liteav/basic/license/LicenceCheck;->e:Lcom/tencent/liteav/basic/license/LicenceCheck$a;

    if-eqz p1, :cond_4

    .line 548
    iget-object p1, p0, Lcom/tencent/liteav/basic/license/LicenceCheck;->e:Lcom/tencent/liteav/basic/license/LicenceCheck$a;

    invoke-interface {p1, p3, v0}, Lcom/tencent/liteav/basic/license/LicenceCheck$a;->a(ILjava/lang/String;)V

    :cond_4
    return p3

    .line 555
    :cond_5
    iput p3, p0, Lcom/tencent/liteav/basic/license/LicenceCheck;->f:I

    move v4, v2

    move v5, v4

    move v6, v5

    move v7, v6

    .line 556
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v4, v8, :cond_9

    .line 557
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "packageName"

    .line 558
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 560
    iget-object v10, p0, Lcom/tencent/liteav/basic/license/LicenceCheck;->a:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/4 v11, 0x1

    if-nez v10, :cond_6

    .line 561
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "verifyLicence, checkPackageName not match! license packageName: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", current app packageName: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/tencent/liteav/basic/license/LicenceCheck;->a:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const-string v5, "startDate"

    .line 565
    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v9, "endDate"

    .line 566
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 568
    invoke-direct {p0, v5, v9}, Lcom/tencent/liteav/basic/license/LicenceCheck;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 569
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "verifyLicence, checkDateExpire! appDataJsonObject "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v11

    goto :goto_2

    .line 574
    :cond_7
    invoke-direct {p0, p1, v8, p2}, Lcom/tencent/liteav/basic/license/LicenceCheck;->a(Lcom/tencent/liteav/basic/license/LicenceCheck$b;Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 575
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "verifyLicence, checkFeature inValid! appDataJsonObject "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v11

    move v6, v5

    goto :goto_2

    :cond_8
    move v5, v11

    move v6, v5

    move v7, v6

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_9
    if-nez v5, :cond_b

    const/4 p1, -0x4

    .line 581
    invoke-direct {p0, p1}, Lcom/tencent/liteav/basic/license/LicenceCheck;->a(I)V

    .line 582
    iget-object p2, p0, Lcom/tencent/liteav/basic/license/LicenceCheck;->e:Lcom/tencent/liteav/basic/license/LicenceCheck$a;

    if-eqz p2, :cond_a

    .line 583
    iget-object p2, p0, Lcom/tencent/liteav/basic/license/LicenceCheck;->e:Lcom/tencent/liteav/basic/license/LicenceCheck$a;

    const-string v2, "licence check failed!! packagename error"

    invoke-interface {p2, p1, v2}, Lcom/tencent/liteav/basic/license/LicenceCheck$a;->a(ILjava/lang/String;)V

    :cond_a
    return p1

    :cond_b
    if-nez v6, :cond_d

    const/16 p1, -0xb

    .line 588
    invoke-direct {p0, p1}, Lcom/tencent/liteav/basic/license/LicenceCheck;->a(I)V

    .line 589
    iget-object p2, p0, Lcom/tencent/liteav/basic/license/LicenceCheck;->e:Lcom/tencent/liteav/basic/license/LicenceCheck$a;

    if-eqz p2, :cond_c

    .line 590
    iget-object p2, p0, Lcom/tencent/liteav/basic/license/LicenceCheck;->e:Lcom/tencent/liteav/basic/license/LicenceCheck$a;

    const-string v2, "licence check failed!! licence expired"

    invoke-interface {p2, p1, v2}, Lcom/tencent/liteav/basic/license/LicenceCheck$a;->a(ILjava/lang/String;)V

    :cond_c
    return p1

    :cond_d
    if-nez v7, :cond_f

    const/4 p1, -0x5

    .line 595
    invoke-direct {p0, p1}, Lcom/tencent/liteav/basic/license/LicenceCheck;->a(I)V

    .line 596
    iget-object p2, p0, Lcom/tencent/liteav/basic/license/LicenceCheck;->e:Lcom/tencent/liteav/basic/license/LicenceCheck$a;

    if-eqz p2, :cond_e

    .line 597
    iget-object p2, p0, Lcom/tencent/liteav/basic/license/LicenceCheck;->e:Lcom/tencent/liteav/basic/license/LicenceCheck$a;

    const-string v2, "licence check failed!! feature verification failed"

    invoke-interface {p2, p1, v2}, Lcom/tencent/liteav/basic/license/LicenceCheck$a;->a(ILjava/lang/String;)V

    :cond_e
    return p1

    .line 601
    :cond_f
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    if-nez p1, :cond_10

    .line 604
    :try_start_2
    invoke-static {p2, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 605
    new-instance p2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/liteav/basic/license/LicenceCheck;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/tencent/liteav/basic/license/LicenceCheck;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 606
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/tencent/liteav/basic/util/c;->a(Ljava/lang/String;[B)V

    .line 608
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->setPituLicencePath(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_1
    move-exception p1

    .line 610
    :try_start_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decode pitu license error:"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    :cond_10
    :goto_3
    iget-object p1, p0, Lcom/tencent/liteav/basic/license/LicenceCheck;->a:Landroid/content/Context;

    sget p2, Lcom/tencent/liteav/basic/datareport/a;->aK:I

    invoke-static {p1, p2}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txReportDAU(Landroid/content/Context;I)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    .line 626
    iget-object p1, p0, Lcom/tencent/liteav/basic/license/LicenceCheck;->e:Lcom/tencent/liteav/basic/license/LicenceCheck$a;

    if-eqz p1, :cond_11

    const-string p2, "licence check success!!"

    .line 627
    invoke-interface {p1, v2, p2}, Lcom/tencent/liteav/basic/license/LicenceCheck$a;->a(ILjava/lang/String;)V

    :cond_11
    return v2

    :catch_2
    move-exception p1

    .line 617
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 618
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "verifyLicence, json format error ! exception = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    invoke-direct {p0, p3}, Lcom/tencent/liteav/basic/license/LicenceCheck;->a(I)V

    .line 621
    iget-object p1, p0, Lcom/tencent/liteav/basic/license/LicenceCheck;->e:Lcom/tencent/liteav/basic/license/LicenceCheck$a;

    if-eqz p1, :cond_12

    .line 622
    invoke-interface {p1, p3, v0}, Lcom/tencent/liteav/basic/license/LicenceCheck$a;->a(ILjava/lang/String;)V

    :cond_12
    return p3
.end method

.method public static a()Lcom/tencent/liteav/basic/license/LicenceCheck;
    .locals 1

    .line 134
    sget-object v0, Lcom/tencent/liteav/basic/license/LicenceCheck;->d:Lcom/tencent/liteav/basic/license/LicenceCheck;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Lcom/tencent/liteav/basic/license/LicenceCheck;

    invoke-direct {v0}, Lcom/tencent/liteav/basic/license/LicenceCheck;-><init>()V

    sput-object v0, Lcom/tencent/liteav/basic/license/LicenceCheck;->d:Lcom/tencent/liteav/basic/license/LicenceCheck;

    .line 137
    :cond_0
    sget-object v0, Lcom/tencent/liteav/basic/license/LicenceCheck;->d:Lcom/tencent/liteav/basic/license/LicenceCheck;

    return-object v0
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 769
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const-string v1, "activity"

    .line 770
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 771
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    .line 772
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 773
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, v0, :cond_0

    .line 774
    iget-object p0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method static synthetic a(Lcom/tencent/liteav/basic/license/LicenceCheck;Lcom/tencent/liteav/basic/license/LicenceCheck$b;)Ljava/lang/String;
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/tencent/liteav/basic/license/LicenceCheck;->i(Lcom/tencent/liteav/basic/license/LicenceCheck$b;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(I)V
    .locals 3

    .line 700
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFail ret "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LicenceCheck"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    iget-object v0, p0, Lcom/tencent/liteav/basic/license/LicenceCheck;->a:Landroid/content/Context;

    sget v1, Lcom/tencent/liteav/basic/datareport/a;->aL:I

    const-string v2, ""

    invoke-static {v0, v1, p1, v2}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txReportDAU(Landroid/content/Context;IILjava/lang/String;)V

    return-void
.end method

.method private a(Lcom/tencent/liteav/basic/license/LicenceCheck$b;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 190
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/basic/license/LicenceCheck;->a:Landroid/content/Context;

    .line 191
    invoke-static {p2}, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->setAppContext(Landroid/content/Context;)V

    .line 193
    :cond_0
    iput-object p4, p1, Lcom/tencent/liteav/basic/license/LicenceCheck$b;->d:Ljava/lang/String;

    .line 194
    iput-object p3, p1, Lcom/tencent/liteav/basic/license/LicenceCheck$b;->e:Ljava/lang/String;

    .line 196
    iget-object p2, p0, Lcom/tencent/liteav/basic/license/LicenceCheck;->a:Landroid/content/Context;

    if-eqz p2, :cond_2

    .line 197
    invoke-virtual {p0}, Lcom/tencent/liteav/basic/license/LicenceCheck;->c()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/tencent/liteav/basic/license/LicenceCheck$b;->c:Ljava/lang/String;

    .line 198
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p1, Lcom/tencent/liteav/basic/license/LicenceCheck$b;->c:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p1, Lcom/tencent/liteav/basic/license/LicenceCheck$b;->a:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/liteav/basic/util/c;->a(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "LicenceCheck"

    const-string p3, "setLicense, file not exist, to download"

    .line 199
    invoke-static {p2, p3}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, ""

    .line 201
    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/basic/license/LicenceCheck;->b(Lcom/tencent/liteav/basic/license/LicenceCheck$b;Ljava/lang/String;)V

    .line 203
    :cond_1
    invoke-virtual {p0, p1}, Lcom/tencent/liteav/basic/license/LicenceCheck;->a(Lcom/tencent/liteav/basic/license/LicenceCheck$b;)V

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/basic/license/LicenceCheck;Lcom/tencent/liteav/basic/license/LicenceCheck$b;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/basic/license/LicenceCheck;->b(Lcom/tencent/liteav/basic/license/LicenceCheck$b;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/tencent/liteav/basic/license/LicenceCheck$b;Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 7

    const-string v0, "feature"

    .line 634
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    .line 635
    iget-object v0, p0, Lcom/tencent/liteav/basic/license/LicenceCheck;->h:Lcom/tencent/liteav/basic/license/LicenceCheck$b;

    const/4 v1, 0x2

    const-string v2, ", isValid: "

    const-string v3, "LicenceCheck"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne p1, v0, :cond_1

    shr-int/lit8 p2, p2, 0x4

    and-int/lit8 p2, p2, 0xf

    if-lt p2, v4, :cond_0

    if-gt p2, v1, :cond_0

    move v5, v4

    .line 641
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "live parseVersionType, featureCode = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v3, p3}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 642
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/basic/license/LicenceCheck;->g:Lcom/tencent/liteav/basic/license/LicenceCheck$b;

    if-ne p1, v0, :cond_6

    and-int/lit8 v0, p2, 0xf

    const/4 v6, 0x5

    if-gt v0, v4, :cond_4

    if-eq v0, v4, :cond_2

    if-nez p2, :cond_5

    .line 649
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v6, 0x3

    :goto_0
    move v5, v4

    move p2, v6

    goto :goto_1

    :cond_4
    if-lt v0, v1, :cond_5

    if-gt v0, v6, :cond_5

    move p2, v0

    move v5, v4

    goto :goto_1

    :cond_5
    move p2, v0

    .line 662
    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ugc parseVersionType, featureCode = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v3, p3}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 663
    :cond_6
    iget-object p3, p0, Lcom/tencent/liteav/basic/license/LicenceCheck;->i:Lcom/tencent/liteav/basic/license/LicenceCheck$b;

    if-ne p1, p3, :cond_8

    shr-int/lit8 p2, p2, 0x8

    and-int/lit8 p2, p2, 0xf

    if-lt p2, v4, :cond_7

    move v5, v4

    .line 669
    :cond_7
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "vod parseVersionType, featureCode = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v3, p3}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_2
    if-eqz v5, :cond_a

    .line 673
    iget p3, p0, Lcom/tencent/liteav/basic/license/LicenceCheck;->f:I

    if-le p2, p3, :cond_9

    .line 674
    iput p2, p0, Lcom/tencent/liteav/basic/license/LicenceCheck;->f:I

    .line 676
    :cond_9
    iget p2, p0, Lcom/tencent/liteav/basic/license/LicenceCheck;->f:I

    iput p2, p1, Lcom/tencent/liteav/basic/license/LicenceCheck$b;->h:I

    .line 678
    :cond_a
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "parseVersionType, finalFeatureCode = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/tencent/liteav/basic/license/LicenceCheck$b;->h:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v5
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    .line 709
    invoke-static {p1}, Lcom/tencent/liteav/basic/license/LicenceCheck;->b(Ljava/lang/String;)J

    move-result-wide v0

    .line 710
    invoke-static {p2}, Lcom/tencent/liteav/basic/license/LicenceCheck;->b(Ljava/lang/String;)J

    move-result-wide p1

    .line 711
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    const/4 v7, 0x0

    const-string v8, ", endDate: "

    const-string v9, "LicenceCheck"

    if-ltz v6, :cond_3

    cmp-long v4, p1, v4

    if-gez v4, :cond_0

    goto :goto_1

    :cond_0
    cmp-long v4, p1, v2

    if-ltz v4, :cond_2

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    .line 717
    :cond_2
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "check date expire! currentDate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", startDate: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v9, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v7

    .line 713
    :cond_3
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check date millis < 0! stateDate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v9, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v7
.end method

.method public static a([B[BLjava/security/PublicKey;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    const-string v0, "SHA256WithRSA"

    .line 800
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 801
    invoke-virtual {v0, p2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 802
    invoke-virtual {v0, p0}, Ljava/security/Signature;->update([B)V

    .line 803
    invoke-virtual {v0, p1}, Ljava/security/Signature;->verify([B)Z

    move-result p0

    return p0
.end method

.method private static b(Ljava/lang/String;)J
    .locals 2

    .line 435
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 436
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    const-string v0, "LicenceCheck"

    const-string v1, "time str to millsecond failed."

    .line 439
    invoke-static {v0, v1, p0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private b(Lcom/tencent/liteav/basic/license/LicenceCheck$b;)Ljava/lang/String;
    .locals 4

    .line 288
    iget-object v0, p0, Lcom/tencent/liteav/basic/license/LicenceCheck;->a:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    const-string v3, "LicenceCheck.lastModified"

    .line 291
    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 292
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/tencent/liteav/basic/license/LicenceCheck$b;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".lastModified"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b(Lcom/tencent/liteav/basic/license/LicenceCheck$b;Ljava/lang/String;)V
    .locals 3

    .line 296
    iget-object v0, p0, Lcom/tencent/liteav/basic/license/LicenceCheck;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const-string v2, "LicenceCheck.lastModified"

    .line 299
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/tencent/liteav/basic/license/LicenceCheck$b;->a:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".lastModified"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 301
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method static synthetic b(Lcom/tencent/liteav/basic/license/LicenceCheck;Lcom/tencent/liteav/basic/license/LicenceCheck$b;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/tencent/liteav/basic/license/LicenceCheck;->g(Lcom/tencent/liteav/basic/license/LicenceCheck$b;)V

    return-void
.end method

.method static synthetic b(Lcom/tencent/liteav/basic/license/LicenceCheck;Lcom/tencent/liteav/basic/license/LicenceCheck$b;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/basic/license/LicenceCheck;->c(Lcom/tencent/liteav/basic/license/LicenceCheck$b;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/tencent/liteav/basic/license/LicenceCheck;Lcom/tencent/liteav/basic/license/LicenceCheck$b;Ljava/lang/String;)I
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/basic/license/LicenceCheck;->e(Lcom/tencent/liteav/basic/license/LicenceCheck$b;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private c(Lcom/tencent/liteav/basic/license/LicenceCheck$b;)Ljava/lang/String;
    .locals 4

    .line 305
    iget-object v0, p0, Lcom/tencent/liteav/basic/license/LicenceCheck;->a:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    const-string v3, "LicenceCheck.licenceUrl"

    .line 308
    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 309
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/tencent/liteav/basic/license/LicenceCheck$b;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".licenceUrl"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 783
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/liteav/basic/license/LicenceCheck;->nativeRSAKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 784
    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 785
    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/license/f;->b([B[B)[B

    move-result-object p1

    .line 786
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 788
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 789
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "decryptLicenceStr, exception is : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LicenceCheck"

    invoke-static {v0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private c(Lcom/tencent/liteav/basic/license/LicenceCheck$b;Ljava/lang/String;)V
    .locals 3

    .line 313
    iget-object v0, p0, Lcom/tencent/liteav/basic/license/LicenceCheck;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const-string v2, "LicenceCheck.licenceUrl"

    .line 316
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/tencent/liteav/basic/license/LicenceCheck$b;->a:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".licenceUrl"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 318
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private d(Lcom/tencent/liteav/basic/license/LicenceCheck$b;)I
    .locals 3

    const-string v0, "LicenceCheck"

    .line 363
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/liteav/basic/license/LicenceCheck;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/tencent/liteav/basic/license/LicenceCheck$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 364
    invoke-static {v1}, Lcom/tencent/liteav/basic/util/c;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p1, -0x7

    return p1

    .line 369
    :cond_0
    :try_start_0
    invoke-static {v1}, Lcom/tencent/liteav/basic/util/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "read licence file error: "

    .line 371
    invoke-static {v0, v2, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v1, ""

    .line 373
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p1, "checkLocalLicence, licenceStr is empty"

    .line 374
    invoke-static {v0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x8

    return p1

    .line 377
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/tencent/liteav/basic/license/LicenceCheck;->a(Lcom/tencent/liteav/basic/license/LicenceCheck$b;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private d(Lcom/tencent/liteav/basic/license/LicenceCheck$b;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 453
    iget-object v0, p1, Lcom/tencent/liteav/basic/license/LicenceCheck$b;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "LicenceCheck"

    if-eqz v0, :cond_0

    const-string p1, "decodeLicence, mKey is empty!!!"

    .line 454
    invoke-static {v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ""

    return-object p1

    .line 458
    :cond_0
    iget-object p1, p1, Lcom/tencent/liteav/basic/license/LicenceCheck$b;->d:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 459
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v0, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 460
    invoke-direct {p0, p1}, Lcom/tencent/liteav/basic/license/LicenceCheck;->nativeIvParameterSpec([B)[B

    move-result-object p1

    .line 461
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, p1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 p1, 0x0

    .line 462
    invoke-static {p2, p1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    :try_start_0
    const-string p2, "AES/CBC/PKCS5Padding"

    .line 464
    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p2

    const/4 v3, 0x2

    .line 465
    invoke-virtual {p2, v3, v0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 466
    invoke-virtual {p2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 467
    new-instance p2, Ljava/lang/String;

    const-string v0, "UTF-8"

    invoke-direct {p2, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 468
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "decodeLicence : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 470
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method

.method private e(Lcom/tencent/liteav/basic/license/LicenceCheck$b;)I
    .locals 2

    .line 382
    invoke-direct {p0, p1}, Lcom/tencent/liteav/basic/license/LicenceCheck;->f(Lcom/tencent/liteav/basic/license/LicenceCheck$b;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x6

    return p1

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/basic/license/LicenceCheck;->a:Landroid/content/Context;

    iget-object v1, p1, Lcom/tencent/liteav/basic/license/LicenceCheck$b;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/util/c;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 387
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "LicenceCheck"

    const-string v0, "checkAssetLicence, licenceAssetStr is empty"

    .line 388
    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x8

    return p1

    .line 391
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/tencent/liteav/basic/license/LicenceCheck;->a(Lcom/tencent/liteav/basic/license/LicenceCheck$b;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private e(Lcom/tencent/liteav/basic/license/LicenceCheck$b;Ljava/lang/String;)I
    .locals 5

    const-string v0, "LicenceCheck"

    .line 484
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "appId"

    .line 485
    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    const-string v2, "encryptedLicense"

    .line 486
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "signature"

    .line 487
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 488
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "appid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encryptedLicense:"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "signature:"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    invoke-direct {p0, p1, v2, v1}, Lcom/tencent/liteav/basic/license/LicenceCheck;->a(Lcom/tencent/liteav/basic/license/LicenceCheck$b;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    :catch_0
    move-exception p1

    .line 492
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p1, -0x1

    .line 494
    invoke-direct {p0, p1}, Lcom/tencent/liteav/basic/license/LicenceCheck;->a(I)V

    .line 495
    iget-object p2, p0, Lcom/tencent/liteav/basic/license/LicenceCheck;->e:Lcom/tencent/liteav/basic/license/LicenceCheck$a;

    if-eqz p2, :cond_0

    const-string v0, "licence check failed!! json error"

    .line 496
    invoke-interface {p2, p1, v0}, Lcom/tencent/liteav/basic/license/LicenceCheck$a;->a(ILjava/lang/String;)V

    :cond_0
    return p1
.end method

.method private f(Lcom/tencent/liteav/basic/license/LicenceCheck$b;Ljava/lang/String;)I
    .locals 3

    .line 724
    invoke-direct {p0, p2}, Lcom/tencent/liteav/basic/license/LicenceCheck;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 725
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "LicenceCheck"

    if-eqz v0, :cond_1

    const-string p1, "verifyOldLicence, decryptStr is empty"

    .line 726
    invoke-static {v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x3

    .line 727
    invoke-direct {p0, p1}, Lcom/tencent/liteav/basic/license/LicenceCheck;->a(I)V

    .line 728
    iget-object p2, p0, Lcom/tencent/liteav/basic/license/LicenceCheck;->e:Lcom/tencent/liteav/basic/license/LicenceCheck$a;

    if-eqz p2, :cond_0

    const-string v0, "licence check failed!! decryption failed"

    .line 729
    invoke-interface {p2, p1, v0}, Lcom/tencent/liteav/basic/license/LicenceCheck$a;->a(ILjava/lang/String;)V

    :cond_0
    return p1

    .line 733
    :cond_1
    iput-object p2, p1, Lcom/tencent/liteav/basic/license/LicenceCheck$b;->i:Ljava/lang/String;

    .line 735
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "packagename"

    .line 737
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 738
    iget-object v2, p0, Lcom/tencent/liteav/basic/license/LicenceCheck;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/liteav/basic/license/LicenceCheck;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p1, "packagename not match!"

    .line 739
    invoke-static {v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x4

    .line 741
    invoke-direct {p0, p1}, Lcom/tencent/liteav/basic/license/LicenceCheck;->a(I)V

    .line 742
    iget-object p2, p0, Lcom/tencent/liteav/basic/license/LicenceCheck;->e:Lcom/tencent/liteav/basic/license/LicenceCheck$a;

    if-eqz p2, :cond_2

    .line 743
    iget-object p2, p0, Lcom/tencent/liteav/basic/license/LicenceCheck;->e:Lcom/tencent/liteav/basic/license/LicenceCheck$a;

    const-string v0, "licence check failed!! packagename error"

    invoke-interface {p2, p1, v0}, Lcom/tencent/liteav/basic/license/LicenceCheck$a;->a(ILjava/lang/String;)V

    :cond_2
    return p1

    :cond_3
    const-string p2, "startdate"

    .line 748
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "enddate"

    .line 749
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 750
    invoke-direct {p0, p2, v0}, Lcom/tencent/liteav/basic/license/LicenceCheck;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p2, :cond_4

    const/16 p1, -0xb

    return p1

    :cond_4
    const/4 p2, 0x5

    .line 762
    iput p2, p1, Lcom/tencent/liteav/basic/license/LicenceCheck$b;->h:I

    .line 764
    iget-object p1, p0, Lcom/tencent/liteav/basic/license/LicenceCheck;->a:Landroid/content/Context;

    sget p2, Lcom/tencent/liteav/basic/datareport/a;->aK:I

    invoke-static {p1, p2}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txReportDAU(Landroid/content/Context;I)V

    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    .line 754
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const-string p1, "verifyOldLicence, json format error !"

    .line 755
    invoke-static {v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 756
    invoke-direct {p0, p1}, Lcom/tencent/liteav/basic/license/LicenceCheck;->a(I)V

    .line 757
    iget-object p2, p0, Lcom/tencent/liteav/basic/license/LicenceCheck;->e:Lcom/tencent/liteav/basic/license/LicenceCheck$a;

    if-eqz p2, :cond_5

    const-string v0, "licence check failed!! json error"

    .line 758
    invoke-interface {p2, p1, v0}, Lcom/tencent/liteav/basic/license/LicenceCheck$a;->a(ILjava/lang/String;)V

    :cond_5
    return p1
.end method

.method private f(Lcom/tencent/liteav/basic/license/LicenceCheck$b;)Z
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/tencent/liteav/basic/license/LicenceCheck;->a:Landroid/content/Context;

    iget-object p1, p1, Lcom/tencent/liteav/basic/license/LicenceCheck$b;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/tencent/liteav/basic/util/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private g(Lcom/tencent/liteav/basic/license/LicenceCheck$b;)V
    .locals 5

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/liteav/basic/license/LicenceCheck;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/tencent/liteav/basic/license/LicenceCheck$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 413
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 414
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v2, "LicenceCheck"

    if-eqz v0, :cond_0

    .line 415
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    .line 416
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete dst file:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/tencent/liteav/basic/license/LicenceCheck$b;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/tencent/liteav/basic/license/LicenceCheck$b;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 419
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 420
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    .line 421
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rename file:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    .line 423
    iput-boolean v0, p1, Lcom/tencent/liteav/basic/license/LicenceCheck$b;->g:Z

    return-void
.end method

.method private h(Lcom/tencent/liteav/basic/license/LicenceCheck$b;)I
    .locals 0

    .line 695
    iget p1, p1, Lcom/tencent/liteav/basic/license/LicenceCheck$b;->h:I

    return p1
.end method

.method private i(Lcom/tencent/liteav/basic/license/LicenceCheck$b;)Ljava/lang/String;
    .locals 3

    .line 795
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/tencent/liteav/basic/license/LicenceCheck$b;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/tencent/liteav/basic/license/LicenceCheck$b;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 796
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/liteav/basic/util/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private native nativeIvParameterSpec([B)[B
.end method

.method private native nativeRSAKey()Ljava/lang/String;
.end method


# virtual methods
.method public a(Lcom/tencent/liteav/basic/license/LicenceCheck$b;Ljava/lang/String;)I
    .locals 1

    .line 397
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 398
    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/basic/license/LicenceCheck;->e(Lcom/tencent/liteav/basic/license/LicenceCheck$b;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 400
    :catch_0
    iget-object v0, p0, Lcom/tencent/liteav/basic/license/LicenceCheck;->h:Lcom/tencent/liteav/basic/license/LicenceCheck$b;

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 403
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/basic/license/LicenceCheck;->f(Lcom/tencent/liteav/basic/license/LicenceCheck$b;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public a(Lcom/tencent/liteav/basic/license/e;Landroid/content/Context;)I
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/tencent/liteav/basic/license/LicenceCheck;->i:Lcom/tencent/liteav/basic/license/LicenceCheck$b;

    invoke-direct {p0, v0, p1, p2}, Lcom/tencent/liteav/basic/license/LicenceCheck;->a(Lcom/tencent/liteav/basic/license/LicenceCheck$b;Lcom/tencent/liteav/basic/license/e;Landroid/content/Context;)I

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 445
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 446
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v0, p1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    const-string p1, "RSA"

    .line 447
    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    .line 448
    invoke-virtual {p1, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/tencent/liteav/basic/license/LicenceCheck;->i:Lcom/tencent/liteav/basic/license/LicenceCheck$b;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/tencent/liteav/basic/license/LicenceCheck;->a(Lcom/tencent/liteav/basic/license/LicenceCheck$b;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/tencent/liteav/basic/license/LicenceCheck$a;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/tencent/liteav/basic/license/LicenceCheck;->e:Lcom/tencent/liteav/basic/license/LicenceCheck$a;

    return-void
.end method

.method public a(Lcom/tencent/liteav/basic/license/LicenceCheck$b;)V
    .locals 10

    .line 208
    iget-object v0, p1, Lcom/tencent/liteav/basic/license/LicenceCheck$b;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "LicenceCheck"

    if-eqz v0, :cond_0

    const-string p1, "downloadLicense, mUrl is empty, ignore!"

    .line 209
    invoke-static {v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 212
    :cond_0
    iget-boolean v0, p1, Lcom/tencent/liteav/basic/license/LicenceCheck$b;->f:Z

    if-eqz v0, :cond_1

    const-string p1, "downloadLicense, in downloading, ignore"

    .line 213
    invoke-static {v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 216
    :cond_1
    new-instance v7, Lcom/tencent/liteav/basic/license/LicenceCheck$1;

    invoke-direct {v7, p0, p1}, Lcom/tencent/liteav/basic/license/LicenceCheck$1;-><init>(Lcom/tencent/liteav/basic/license/LicenceCheck;Lcom/tencent/liteav/basic/license/LicenceCheck$b;)V

    .line 257
    iget-object v0, p0, Lcom/tencent/liteav/basic/license/LicenceCheck;->a:Landroid/content/Context;

    if-nez v0, :cond_2

    const-string p1, "context is NULL !!! Please set context in method:setLicense(Context context, String url, String key)"

    .line 258
    invoke-static {v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 261
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/liteav/basic/license/LicenceCheck;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/liteav/basic/license/LicenceCheck$b;->c:Ljava/lang/String;

    .line 262
    invoke-direct {p0, p1}, Lcom/tencent/liteav/basic/license/LicenceCheck;->b(Lcom/tencent/liteav/basic/license/LicenceCheck$b;)Ljava/lang/String;

    move-result-object v0

    .line 263
    invoke-direct {p0, p1}, Lcom/tencent/liteav/basic/license/LicenceCheck;->c(Lcom/tencent/liteav/basic/license/LicenceCheck$b;)Ljava/lang/String;

    move-result-object v1

    .line 264
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, ""

    if-nez v2, :cond_3

    iget-object v2, p1, Lcom/tencent/liteav/basic/license/LicenceCheck$b;->e:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 266
    invoke-direct {p0, p1, v3}, Lcom/tencent/liteav/basic/license/LicenceCheck;->b(Lcom/tencent/liteav/basic/license/LicenceCheck$b;Ljava/lang/String;)V

    .line 267
    invoke-direct {p0, p1, v3}, Lcom/tencent/liteav/basic/license/LicenceCheck;->c(Lcom/tencent/liteav/basic/license/LicenceCheck$b;Ljava/lang/String;)V

    move-object v9, v3

    goto :goto_0

    :cond_3
    move-object v9, v0

    .line 270
    :goto_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tencent/liteav/basic/license/c;

    iget-object v3, p0, Lcom/tencent/liteav/basic/license/LicenceCheck;->a:Landroid/content/Context;

    iget-object v4, p1, Lcom/tencent/liteav/basic/license/LicenceCheck$b;->e:Ljava/lang/String;

    iget-object v5, p1, Lcom/tencent/liteav/basic/license/LicenceCheck$b;->c:Ljava/lang/String;

    iget-object v6, p1, Lcom/tencent/liteav/basic/license/LicenceCheck$b;->b:Ljava/lang/String;

    const/4 v8, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcom/tencent/liteav/basic/license/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/liteav/basic/license/b;ZLjava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 271
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    .line 272
    iput-boolean v0, p1, Lcom/tencent/liteav/basic/license/LicenceCheck$b;->f:Z

    return-void
.end method

.method public b()I
    .locals 1

    .line 691
    iget-object v0, p0, Lcom/tencent/liteav/basic/license/LicenceCheck;->i:Lcom/tencent/liteav/basic/license/LicenceCheck$b;

    invoke-direct {p0, v0}, Lcom/tencent/liteav/basic/license/LicenceCheck;->h(Lcom/tencent/liteav/basic/license/LicenceCheck$b;)I

    move-result v0

    return v0
.end method

.method public b(Lcom/tencent/liteav/basic/license/e;Landroid/content/Context;)I
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/tencent/liteav/basic/license/LicenceCheck;->h:Lcom/tencent/liteav/basic/license/LicenceCheck$b;

    invoke-direct {p0, v0, p1, p2}, Lcom/tencent/liteav/basic/license/LicenceCheck;->a(Lcom/tencent/liteav/basic/license/LicenceCheck$b;Lcom/tencent/liteav/basic/license/e;Landroid/content/Context;)I

    move-result p1

    return p1
.end method

.method public c()Ljava/lang/String;
    .locals 3

    .line 807
    iget-object v0, p0, Lcom/tencent/liteav/basic/license/LicenceCheck;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 808
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "liteav/licence"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 809
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 810
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 812
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
