.class public final Lcom/netease/nis/captcha/d;
.super Lcom/netease/nis/basesdk/crash/BaseJavaCrashHandler;
.source "CrashHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/nis/captcha/d$b;
    }
.end annotation


# static fields
.field private static c:Z


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/netease/nis/basesdk/crash/BaseJavaCrashHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/nis/captcha/d$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/nis/captcha/d;-><init>()V

    return-void
.end method

.method public static b()Lcom/netease/nis/captcha/d;
    .locals 1

    .line 1
    invoke-static {}, Lcom/netease/nis/captcha/d$b;->a()Lcom/netease/nis/captcha/d;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/netease/nis/captcha/d;->c:Z

    if-nez v0, :cond_1

    const-string v0, "nCrash"

    .line 2
    invoke-virtual {p2, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p2, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/netease/nis/basesdk/crash/BaseJavaCrashHandler;->initialize(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/netease/nis/basesdk/crash/BaseJavaCrashHandler;->initialize(Ljava/lang/String;)V

    .line 8
    :goto_0
    iput-object p1, p0, Lcom/netease/nis/captcha/d;->a:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/netease/nis/captcha/d;->b:Landroid/content/Context;

    const/4 p1, 0x1

    .line 10
    sput-boolean p1, Lcom/netease/nis/captcha/d;->c:Z

    :cond_1
    return-void
.end method

.method protected buildCrashInfo(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pid=captcha_sdk_crash"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&version="

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "3.3.6.1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&bid="

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/nis/captcha/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&nts="

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "&tt=1"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&ip="

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/nis/captcha/d;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/netease/nis/captcha/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&dns="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/nis/captcha/d;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/netease/nis/captcha/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&type="

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "&name=crash"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "cn"

    .line 13
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, ""

    if-eqz v4, :cond_0

    .line 14
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v5

    .line 15
    :goto_0
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "cr"

    .line 17
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v2, "ck"

    .line 18
    :try_start_3
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string p1, "ct"

    .line 19
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string p1, "m"

    .line 20
    :try_start_5
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const-string p1, "os"

    .line 21
    :try_start_6
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 26
    :goto_1
    :try_start_7
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    :catch_1
    const-string p1, "CrashHandler"

    const-string v1, "encode\u5931\u8d25"

    .line 28
    invoke-static {p1, v1}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected interceptHandleException(Ljava/lang/Throwable;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "com.netease.nis.captcha."

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
