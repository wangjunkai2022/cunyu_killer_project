.class public Lcom/netease/mobsec/poly/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static o:I = 0x2

.field public static p:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 7

    const-string v0, "p?x\\~8x\u0000~\"2}t#jGr4QO\u007f0{Kc"

    const-string v1, "}SL\u0000\u007fDN:yS"

    const-string v2, "7EOR0PTH<\\I[1"

    :try_start_0
    const-string v3, "\u0011Q\u001c."

    invoke-static {v0, v3}, Lcom/netease/mobsec/poly/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v3, "\u001a68S"

    invoke-static {v1, v3}, Lcom/netease/mobsec/poly/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "^5\'="

    invoke-static {v2, v5}, Lcom/netease/mobsec/poly/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v6

    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lcom/netease/mobsec/poly/b$a;->a(Landroid/os/IBinder;)Lcom/netease/mobsec/poly/b;

    move-result-object v0

    if-eqz v0, :cond_2

    if-ne p0, v3, :cond_0

    invoke-interface {v0}, Lcom/netease/mobsec/poly/b;->b()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    invoke-interface {v0}, Lcom/netease/mobsec/poly/b;->c()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    const-string p0, ""

    :goto_0
    return-object p0

    :catch_0
    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    move-result v0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "*"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;)I
    .locals 5

    const/4 v0, -0x1

    if-eqz p0, :cond_5

    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    return v3

    :cond_0
    if-nez v2, :cond_5

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    const/16 v1, 0xd

    const/4 v2, 0x4

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/16 v4, 0x8

    if-eq v0, v4, :cond_3

    const/4 v4, 0x5

    if-eq v0, v4, :cond_3

    const/16 v4, 0xf

    if-eq v0, v4, :cond_3

    const/16 v4, 0xe

    if-eq v0, v4, :cond_3

    const/16 v4, 0xc

    if-eq v0, v4, :cond_3

    const/16 v4, 0xa

    if-eq v0, v4, :cond_3

    const/16 v4, 0x9

    if-eq v0, v4, :cond_3

    const/4 v4, 0x6

    if-ne v0, v4, :cond_2

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-eq v0, v3, :cond_3

    if-eq v0, v1, :cond_3

    if-eq v0, v2, :cond_3

    const/16 v2, 0xb

    if-eq v0, v2, :cond_3

    const/4 v2, 0x7

    if-ne v0, v2, :cond_3

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result p0

    if-nez p0, :cond_3

    nop

    :cond_3
    :goto_0
    return v1

    :cond_4
    if-nez v1, :cond_5

    const/4 p0, 0x0

    return p0

    :cond_5
    return v0
.end method

.method public static d(Landroid/content/Context;)I
    .locals 3

    const-string p0, "{nJ|=jLckcncan"

    const-string v0, "\u0003\u0008"

    :try_start_0
    const-string v1, "K]ni\rYhv[PRvP]"

    const-string v2, "#)\u001a\u0019"

    invoke-static {v1, v2}, Lcom/netease/mobsec/poly/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u0013\u001a>\u000c"

    invoke-static {p0, v2}, Lcom/netease/mobsec/poly/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, ".9,\u0012"

    invoke-static {v0, p0}, Lcom/netease/mobsec/poly/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    array-length v3, p1

    rem-int v3, v1, v3

    aget-char v3, p1, v3

    xor-int/2addr v2, v3

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/content/Context;)[D
    .locals 7

    const-string v0, "network"

    const-string v1, "gps"

    const/4 v2, 0x2

    new-array v2, v2, [D

    fill-array-data v2, :array_0

    :try_start_0
    const-string v3, "location"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/LocationManager;

    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_0

    return-object v2

    :cond_0
    const/4 p0, 0x0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v3, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p0

    :cond_1
    if-nez p0, :cond_2

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v3, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p0

    :cond_2
    if-eqz p0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    aput-wide v5, v2, v0

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    aput-wide v0, v2, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-object v2

    nop

    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method public static f([B[B[B)I
    .locals 2

    :try_start_0
    const-string v0, "RSA/ECB/PKCS1Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, p2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    const-string p2, "RSA"

    invoke-static {p2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p2

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return p0
.end method
