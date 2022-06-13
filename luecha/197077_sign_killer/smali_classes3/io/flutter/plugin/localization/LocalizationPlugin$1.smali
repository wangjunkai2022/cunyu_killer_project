.class Lio/flutter/plugin/localization/LocalizationPlugin$1;
.super Ljava/lang/Object;
.source "LocalizationPlugin.java"

# interfaces
.implements Lio/flutter/embedding/engine/systemchannels/LocalizationChannel$LocalizationMessageHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugin/localization/LocalizationPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/plugin/localization/LocalizationPlugin;


# direct methods
.method constructor <init>(Lio/flutter/plugin/localization/LocalizationPlugin;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lio/flutter/plugin/localization/LocalizationPlugin$1;->this$0:Lio/flutter/plugin/localization/LocalizationPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStringResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 30
    iget-object v0, p0, Lio/flutter/plugin/localization/LocalizationPlugin$1;->this$0:Lio/flutter/plugin/localization/LocalizationPlugin;

    invoke-static {v0}, Lio/flutter/plugin/localization/LocalizationPlugin;->access$000(Lio/flutter/plugin/localization/LocalizationPlugin;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x11

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 35
    invoke-static {p2}, Lio/flutter/plugin/localization/LocalizationPlugin;->localeFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v3

    .line 38
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v1, :cond_0

    .line 39
    new-instance v0, Landroid/content/res/Configuration;

    iget-object v4, p0, Lio/flutter/plugin/localization/LocalizationPlugin$1;->this$0:Lio/flutter/plugin/localization/LocalizationPlugin;

    invoke-static {v4}, Lio/flutter/plugin/localization/LocalizationPlugin;->access$000(Lio/flutter/plugin/localization/LocalizationPlugin;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 40
    invoke-virtual {v0, v3}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 41
    iget-object v3, p0, Lio/flutter/plugin/localization/LocalizationPlugin$1;->this$0:Lio/flutter/plugin/localization/LocalizationPlugin;

    invoke-static {v3}, Lio/flutter/plugin/localization/LocalizationPlugin;->access$000(Lio/flutter/plugin/localization/LocalizationPlugin;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    .line 44
    :cond_0
    iget-object v4, p0, Lio/flutter/plugin/localization/LocalizationPlugin$1;->this$0:Lio/flutter/plugin/localization/LocalizationPlugin;

    invoke-static {v4}, Lio/flutter/plugin/localization/LocalizationPlugin;->access$000(Lio/flutter/plugin/localization/LocalizationPlugin;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 45
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    .line 46
    iget-object v6, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 47
    iput-object v3, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 48
    invoke-virtual {v4, v5, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    goto :goto_1

    :cond_1
    :goto_0
    move-object v6, v2

    .line 52
    :goto_1
    iget-object v3, p0, Lio/flutter/plugin/localization/LocalizationPlugin$1;->this$0:Lio/flutter/plugin/localization/LocalizationPlugin;

    invoke-static {v3}, Lio/flutter/plugin/localization/LocalizationPlugin;->access$000(Lio/flutter/plugin/localization/LocalizationPlugin;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 53
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "string"

    invoke-virtual {v4, p1, v5, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_2

    .line 56
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    move-object p1, v2

    :goto_2
    if-eqz p2, :cond_3

    .line 60
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p2, v1, :cond_3

    .line 61
    iget-object p2, p0, Lio/flutter/plugin/localization/LocalizationPlugin$1;->this$0:Lio/flutter/plugin/localization/LocalizationPlugin;

    invoke-static {p2}, Lio/flutter/plugin/localization/LocalizationPlugin;->access$000(Lio/flutter/plugin/localization/LocalizationPlugin;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 62
    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 63
    iput-object v6, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 64
    invoke-virtual {p2, v0, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_3
    return-object p1
.end method
