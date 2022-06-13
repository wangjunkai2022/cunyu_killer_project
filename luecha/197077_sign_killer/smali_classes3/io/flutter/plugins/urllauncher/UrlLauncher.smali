.class Lio/flutter/plugins/urllauncher/UrlLauncher;
.super Ljava/lang/Object;
.source "UrlLauncher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/urllauncher/UrlLauncher$LaunchStatus;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UrlLauncher"


# instance fields
.field private activity:Landroid/app/Activity;

.field private final applicationContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lio/flutter/plugins/urllauncher/UrlLauncher;->applicationContext:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lio/flutter/plugins/urllauncher/UrlLauncher;->activity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method canLaunch(Ljava/lang/String;)Z
    .locals 4

    .line 41
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 43
    iget-object v1, p0, Lio/flutter/plugins/urllauncher/UrlLauncher;->applicationContext:Landroid/content/Context;

    .line 44
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    const-string v1, "component name for "

    const-string v2, "UrlLauncher"

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 50
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "{com.android.fallback/com.android.fallback.Fallback}"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method closeWebView()V
    .locals 3

    .line 100
    iget-object v0, p0, Lio/flutter/plugins/urllauncher/UrlLauncher;->applicationContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/NlSSLrKK/gPIHumaP/GopqXVGWklgRwUHZ;->ACTION_CLOSE:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method launch(Ljava/lang/String;Landroid/os/Bundle;ZZZ)Lio/flutter/plugins/urllauncher/UrlLauncher$LaunchStatus;
    .locals 1

    .line 73
    iget-object v0, p0, Lio/flutter/plugins/urllauncher/UrlLauncher;->activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 74
    sget-object p1, Lio/flutter/plugins/urllauncher/UrlLauncher$LaunchStatus;->NO_ACTIVITY:Lio/flutter/plugins/urllauncher/UrlLauncher$LaunchStatus;

    return-object p1

    :cond_0
    if-eqz p3, :cond_1

    .line 80
    invoke-static {v0, p1, p4, p5, p2}, Lcom/NlSSLrKK/gPIHumaP/GopqXVGWklgRwUHZ;->createIntent(Landroid/content/Context;Ljava/lang/String;ZZLandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    .line 83
    :cond_1
    new-instance p3, Landroid/content/Intent;

    const-string p4, "android.intent.action.VIEW"

    invoke-direct {p3, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    const-string p3, "com.android.browser.headers"

    .line 86
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    .line 90
    :goto_0
    :try_start_0
    iget-object p2, p0, Lio/flutter/plugins/urllauncher/UrlLauncher;->activity:Landroid/app/Activity;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    sget-object p1, Lio/flutter/plugins/urllauncher/UrlLauncher$LaunchStatus;->OK:Lio/flutter/plugins/urllauncher/UrlLauncher$LaunchStatus;

    return-object p1

    .line 92
    :catch_0
    sget-object p1, Lio/flutter/plugins/urllauncher/UrlLauncher$LaunchStatus;->ACTIVITY_NOT_FOUND:Lio/flutter/plugins/urllauncher/UrlLauncher$LaunchStatus;

    return-object p1
.end method

.method setActivity(Landroid/app/Activity;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lio/flutter/plugins/urllauncher/UrlLauncher;->activity:Landroid/app/Activity;

    return-void
.end method
