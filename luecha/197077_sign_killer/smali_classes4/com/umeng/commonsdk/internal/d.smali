.class public Lcom/umeng/commonsdk/internal/d;
.super Ljava/lang/Object;
.source "UMInternalManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lorg/json/JSONObject;
    .locals 6

    .line 781
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "a_pr"

    .line 783
    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "a_bl"

    .line 784
    sget-object v2, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 785
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    const-string v1, "a_rv"

    .line 786
    invoke-static {}, Landroid/os/Build;->getRadioVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v1, "a_fp"

    .line 788
    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "a_hw"

    .line 789
    sget-object v2, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "a_host"

    .line 790
    sget-object v2, Landroid/os/Build;->HOST:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 791
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x15

    if-lt v1, v3, :cond_2

    .line 792
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v4, 0x0

    .line 793
    :goto_0
    sget-object v5, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 794
    sget-object v5, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 796
    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_2

    const-string v4, "a_s32"

    .line 797
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 800
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_4

    .line 801
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v4, 0x0

    .line 802
    :goto_1
    sget-object v5, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_3

    .line 803
    sget-object v5, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 805
    :cond_3
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_4

    const-string v4, "a_s64"

    .line 806
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 809
    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_6

    .line 810
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 811
    :goto_2
    sget-object v3, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_5

    .line 812
    sget-object v3, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 814
    :cond_5
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_6

    const-string v2, "a_sa"

    .line 815
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    const-string v1, "a_ta"

    .line 818
    sget-object v2, Landroid/os/Build;->TAGS:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "a_uk"

    const-string v2, "unknown"

    .line 819
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "a_user"

    .line 820
    sget-object v2, Landroid/os/Build;->USER:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "a_cpu1"

    .line 821
    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "a_cpu2"

    .line 822
    sget-object v2, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "a_ra"

    .line 823
    sget-object v2, Landroid/os/Build;->RADIO:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 824
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_7

    const-string v1, "a_bos"

    .line 825
    sget-object v2, Landroid/os/Build$VERSION;->BASE_OS:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "a_pre"

    .line 826
    sget v2, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "a_sp"

    .line 827
    sget-object v2, Landroid/os/Build$VERSION;->SECURITY_PATCH:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7
    const-string v1, "a_cn"

    .line 829
    sget-object v2, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "a_intl"

    .line 830
    sget-object v2, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 11

    const-string v0, "walle"

    const/4 v1, 0x1

    :try_start_0
    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "[internal] workEvent send envelope"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 59
    invoke-static {v0, v2}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "i_sdk_v"

    const-string v3, "1.2.0"

    .line 61
    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    invoke-static {p0}, Lcom/umeng/commonsdk/internal/d;->d(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v7

    .line 63
    sget-object v8, Lcom/umeng/commonsdk/statistics/UMServerURL;->PATH_ANALYTICS:Ljava/lang/String;

    const-string v9, "i"

    const-string v10, "1.2.0"

    move-object v5, p0

    invoke-static/range {v5 .. v10}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->buildEnvelopeWithExtHeader(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "exception"

    .line 64
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "[internal] workEvent send envelope back, result is ok"

    aput-object v2, v1, v4

    .line 66
    invoke-static {v0, v1}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    invoke-static {p0}, Lcom/umeng/commonsdk/internal/utils/a;->e(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 73
    invoke-static {p0, v0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private static a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 673
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 674
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    .line 677
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    const-string v0, "android.hardware.location.gps"

    .line 680
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "gp"

    invoke-static {p1, v1, v0}, Lcom/umeng/commonsdk/internal/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    const-string v0, "android.hardware.touchscreen"

    .line 682
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "to"

    invoke-static {p1, v1, v0}, Lcom/umeng/commonsdk/internal/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    const-string v0, "android.hardware.telephony"

    .line 684
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "mo"

    invoke-static {p1, v1, v0}, Lcom/umeng/commonsdk/internal/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    const-string v0, "android.hardware.camera"

    .line 686
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "ca"

    invoke-static {p1, v1, v0}, Lcom/umeng/commonsdk/internal/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    const-string v0, "android.hardware.camera.flash"

    .line 688
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    const-string v0, "fl"

    invoke-static {p1, v0, p0}, Lcom/umeng/commonsdk/internal/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;Z)V
    .locals 1

    if-eqz p0, :cond_1

    .line 695
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 698
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 700
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method private static b()Lorg/json/JSONObject;
    .locals 5

    const-string v0, "rev"

    const/4 v1, 0x0

    .line 480
    :try_start_0
    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/d;->a()Lcom/umeng/commonsdk/internal/utils/d$a;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 482
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v1, "pro"

    .line 483
    iget-object v4, v2, Lcom/umeng/commonsdk/internal/utils/d$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "pla"

    .line 484
    iget-object v4, v2, Lcom/umeng/commonsdk/internal/utils/d$a;->b:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "cpus"

    .line 485
    iget v4, v2, Lcom/umeng/commonsdk/internal/utils/d$a;->c:I

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "fea"

    .line 486
    iget-object v4, v2, Lcom/umeng/commonsdk/internal/utils/d$a;->d:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "imp"

    .line 487
    iget-object v4, v2, Lcom/umeng/commonsdk/internal/utils/d$a;->e:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "arc"

    .line 488
    iget-object v4, v2, Lcom/umeng/commonsdk/internal/utils/d$a;->f:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "var"

    .line 489
    iget-object v4, v2, Lcom/umeng/commonsdk/internal/utils/d$a;->g:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "par"

    .line 490
    iget-object v4, v2, Lcom/umeng/commonsdk/internal/utils/d$a;->h:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 491
    iget-object v1, v2, Lcom/umeng/commonsdk/internal/utils/d$a;->i:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "har"

    .line 492
    iget-object v4, v2, Lcom/umeng/commonsdk/internal/utils/d$a;->j:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 493
    iget-object v1, v2, Lcom/umeng/commonsdk/internal/utils/d$a;->k:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ser"

    .line 494
    iget-object v1, v2, Lcom/umeng/commonsdk/internal/utils/d$a;->l:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "cur_cpu"

    .line 495
    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "max_cpu"

    .line 496
    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "min_cpu"

    .line 497
    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ts"

    .line 498
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v3, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-object v1, v3

    :catch_1
    :cond_0
    return-object v1
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "[internal] begin by stateful--->>>"

    aput-object v2, v0, v1

    const-string v1, "walle"

    .line 82
    invoke-static {v1, v0}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p0, :cond_0

    .line 84
    invoke-static {p0}, Lcom/umeng/commonsdk/internal/d;->j(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private static b(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 4

    const-string v0, "_dsk_s"

    const-string v1, "_thm_z"

    const-string v2, "_gdf_r"

    if-eqz p0, :cond_3

    .line 708
    invoke-static {p0}, Lcom/umeng/commonsdk/internal/utils/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 709
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 711
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 714
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 716
    :cond_0
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 717
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 719
    :cond_1
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 720
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 722
    :cond_2
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 723
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "[internal] begin by stateful--->>>"

    aput-object v2, v0, v1

    const-string v1, "walle"

    .line 93
    invoke-static {v1, v0}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p0, :cond_1

    .line 96
    invoke-static {}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->getTransmissionSendFlag()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 99
    :cond_0
    invoke-static {p0}, Lcom/umeng/commonsdk/internal/d;->j(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public static d(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 5

    .line 148
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 149
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    if-eqz p0, :cond_a

    .line 151
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :try_start_0
    const-string v2, "inner_rs"

    .line 163
    invoke-static {v2}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    invoke-static {p0}, Lcom/umeng/commonsdk/internal/d;->k(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 165
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_0

    const-string v3, "rs"

    .line 166
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 170
    invoke-static {p0, v2}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 194
    :cond_0
    :goto_0
    :try_start_1
    invoke-static {p0}, Lcom/umeng/commonsdk/internal/d;->l(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 195
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_1

    const-string v3, "by"

    .line 196
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 200
    invoke-static {p0, v2}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 212
    :cond_1
    :goto_1
    :try_start_2
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/internal/d;->a(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v2

    .line 214
    invoke-static {p0, v2}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 226
    :goto_2
    :try_start_3
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/internal/d;->b(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v2

    .line 228
    invoke-static {p0, v2}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 258
    :goto_3
    :try_start_4
    invoke-static {}, Lcom/umeng/commonsdk/internal/d;->a()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 259
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_2

    const-string v3, "build"

    .line 260
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v2

    .line 264
    invoke-static {p0, v2}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 293
    :cond_2
    :goto_4
    :try_start_5
    invoke-static {p0}, Lcom/umeng/commonsdk/internal/d;->e(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 294
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_3

    const-string v3, "scr"

    .line 295
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v2

    .line 299
    invoke-static {p0, v2}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 305
    :cond_3
    :goto_5
    :try_start_6
    invoke-static {p0}, Lcom/umeng/commonsdk/internal/d;->f(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 306
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_4

    const-string v3, "sinfo"

    .line 307
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v2

    .line 311
    invoke-static {p0, v2}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 316
    :cond_4
    :goto_6
    :try_start_7
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 317
    invoke-static {p0}, Lcom/umeng/commonsdk/internal/utils/a;->d(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 318
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    if-lez v4, :cond_5

    :try_start_8
    const-string v4, "wl"

    .line 320
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    :catch_7
    :cond_5
    :try_start_9
    const-string v3, "winfo"

    .line 331
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_7

    :catch_8
    move-exception v2

    .line 334
    invoke-static {p0, v2}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 340
    :goto_7
    :try_start_a
    invoke-static {p0}, Lcom/umeng/commonsdk/internal/d;->g(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 341
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_6

    const-string v3, "input"

    .line 342
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    goto :goto_8

    :catch_9
    move-exception v2

    .line 346
    invoke-static {p0, v2}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_6
    :goto_8
    :try_start_b
    const-string v2, "inner_appls"

    .line 383
    invoke-static {v2}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 384
    invoke-static {p0}, Lcom/umeng/commonsdk/internal/d;->h(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 385
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_7

    const-string v3, "appls"

    .line 386
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a

    goto :goto_9

    :catch_a
    move-exception v2

    .line 390
    invoke-static {p0, v2}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 396
    :cond_7
    :goto_9
    :try_start_c
    invoke-static {p0}, Lcom/umeng/commonsdk/internal/d;->i(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 397
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_8

    const-string v3, "mem"

    .line 398
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_b

    goto :goto_a

    :catch_b
    move-exception v2

    .line 402
    invoke-static {p0, v2}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 419
    :cond_8
    :goto_a
    :try_start_d
    invoke-static {}, Lcom/umeng/commonsdk/internal/d;->b()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 420
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_9

    const-string v3, "cpu"

    .line 421
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_c

    :catch_c
    :cond_9
    :try_start_e
    const-string v2, "inner"

    .line 446
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_d

    goto :goto_b

    :catch_d
    move-exception v1

    .line 448
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_a
    :goto_b
    return-object v0
.end method

.method public static e(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 5

    .line 846
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p0, :cond_0

    :try_start_0
    const-string v1, "a_st_h"

    .line 849
    invoke-static {p0}, Lcom/umeng/commonsdk/internal/utils/a;->g(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "a_nav_h"

    .line 850
    invoke-static {p0}, Lcom/umeng/commonsdk/internal/utils/a;->h(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 851
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 852
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "a_den"

    .line 854
    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    float-to-double v3, v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "a_dpi"

    .line 855
    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 859
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public static f(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 5

    .line 867
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p0, :cond_3

    .line 869
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 870
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    const-string v2, "a_fit"

    .line 873
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/internal/utils/a;->a(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v3

    .line 872
    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "a_alut"

    .line 875
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/internal/utils/a;->b(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v3

    .line 874
    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "a_c"

    .line 877
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/internal/utils/a;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 876
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "a_uid"

    .line 879
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/internal/utils/a;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 878
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 880
    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/a;->a()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v2, "a_root"

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 881
    :try_start_1
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 883
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_0
    const-string v1, "tf"

    .line 887
    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/a;->b()Ljava/lang/String;

    move-result-object v2

    .line 886
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "s_fs"

    .line 889
    invoke-static {p0}, Lcom/umeng/commonsdk/internal/utils/a;->a(Landroid/content/Context;)F

    move-result v2

    float-to-double v2, v2

    .line 888
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "a_meid"

    .line 891
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getMeid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 890
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "a_imsi"

    .line 893
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 892
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "st"

    .line 895
    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/a;->d()J

    move-result-wide v2

    .line 894
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 897
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getSimICCID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 898
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-nez v2, :cond_1

    :try_start_2
    const-string v2, "a_iccid"

    .line 900
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 905
    :catch_0
    :cond_1
    :try_start_3
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getSecondSimIMEi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 906
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-nez v2, :cond_2

    :try_start_4
    const-string v2, "a_simei"

    .line 908
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    :cond_2
    :try_start_5
    const-string v1, "hn"

    .line 913
    invoke-static {}, Lcom/umeng/commonsdk/internal/utils/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ts"

    .line 914
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    .line 916
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-object v0
.end method

.method public static g(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 6

    .line 975
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    if-eqz p0, :cond_0

    .line 978
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 979
    invoke-static {p0}, Lcom/umeng/commonsdk/internal/utils/a;->j(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 981
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 987
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "a_id"

    .line 989
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "a_pn"

    .line 990
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "ts"

    .line 991
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 993
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 996
    invoke-static {p0, v2}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static h(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 6

    .line 1006
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    if-eqz p0, :cond_1

    .line 1009
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 1010
    invoke-static {p0}, Lcom/umeng/commonsdk/internal/utils/a;->k(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1011
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1012
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/umeng/commonsdk/internal/utils/a$a;

    if-eqz v2, :cond_0

    .line 1015
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "a_pn"

    .line 1016
    iget-object v5, v2, Lcom/umeng/commonsdk/internal/utils/a$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "a_la"

    .line 1017
    iget-object v2, v2, Lcom/umeng/commonsdk/internal/utils/a$a;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "ts"

    .line 1018
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1020
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 1023
    invoke-static {p0, v2}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static i(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 5

    .line 1034
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p0, :cond_1

    .line 1036
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 1037
    invoke-static {p0}, Lcom/umeng/commonsdk/internal/utils/a;->l(Landroid/content/Context;)Landroid/app/ActivityManager$MemoryInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1040
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    const-string v2, "t"

    .line 1041
    iget-wide v3, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_0
    const-string v2, "f"

    .line 1043
    iget-wide v3, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "ts"

    .line 1044
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1046
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method private static j(Landroid/content/Context;)V
    .locals 8

    .line 134
    :try_start_0
    sget-object v0, Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;->U_INTERNAL:Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;

    invoke-static {p0, v0}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->isReadyBuild(Landroid/content/Context;Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x8001

    .line 136
    invoke-static {p0}, Lcom/umeng/commonsdk/internal/b;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/internal/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/commonsdk/internal/b;->a()Lcom/umeng/commonsdk/internal/c;

    move-result-object v1

    const/4 v2, 0x0

    .line 135
    invoke-static {p0, v0, v1, v2}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    :cond_0
    const-string v0, "MobclickRT"

    const-string v1, "--->>> \u51b7\u542f\u52a8\uff1a5\u79d2\u540e\u89e6\u53d12\u53f7\u6570\u636e\u4ed3\u9057\u7559\u4fe1\u5c01\u68c0\u67e5\u52a8\u4f5c\u3002"

    .line 139
    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const v3, 0x8013

    .line 141
    invoke-static {p0}, Lcom/umeng/commonsdk/internal/b;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/internal/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/commonsdk/internal/b;->a()Lcom/umeng/commonsdk/internal/c;

    move-result-object v4

    const/4 v5, 0x0

    const-wide/16 v6, 0x1388

    move-object v2, p0

    .line 140
    invoke-static/range {v2 .. v7}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 143
    invoke-static {p0, v0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static k(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 518
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "activity"

    .line 519
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    if-eqz v1, :cond_3

    const v2, 0x7fffffff

    .line 521
    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 522
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    .line 525
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 526
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    if-eqz v3, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 527
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_1

    .line 529
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "sn"

    .line 530
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "pn"

    .line 531
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 533
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    move-object v0, v4

    .line 535
    :cond_0
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catch_0
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 542
    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    const-string v2, "ts"

    .line 544
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "ls"

    .line 545
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 549
    :catch_1
    :try_start_4
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    const-string v3, "sers"

    .line 551
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 556
    :catch_2
    :try_start_6
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 557
    :try_start_7
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object v0, v1

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_1

    :catchall_1
    move-exception v1

    .line 564
    :goto_1
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    return-object v0
.end method

.method private static l(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 2

    .line 585
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 587
    invoke-static {p0}, Lcom/umeng/commonsdk/internal/utils/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 588
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 590
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 592
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method
