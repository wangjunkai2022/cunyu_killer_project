.class public final synthetic Lcom/zaihui/installplugin/-$$Lambda$InstallPlugin$Companion$muLSUibY_L4dNJUDfdUPrBUwC1o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;


# instance fields
.field private final synthetic f$0:Lcom/zaihui/installplugin/InstallPlugin;

.field private final synthetic f$1:Lio/flutter/plugin/common/PluginRegistry$Registrar;


# direct methods
.method public synthetic constructor <init>(Lcom/zaihui/installplugin/InstallPlugin;Lio/flutter/plugin/common/PluginRegistry$Registrar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zaihui/installplugin/-$$Lambda$InstallPlugin$Companion$muLSUibY_L4dNJUDfdUPrBUwC1o;->f$0:Lcom/zaihui/installplugin/InstallPlugin;

    iput-object p2, p0, Lcom/zaihui/installplugin/-$$Lambda$InstallPlugin$Companion$muLSUibY_L4dNJUDfdUPrBUwC1o;->f$1:Lio/flutter/plugin/common/PluginRegistry$Registrar;

    return-void
.end method


# virtual methods
.method public final onActivityResult(IILandroid/content/Intent;)Z
    .locals 2

    iget-object v0, p0, Lcom/zaihui/installplugin/-$$Lambda$InstallPlugin$Companion$muLSUibY_L4dNJUDfdUPrBUwC1o;->f$0:Lcom/zaihui/installplugin/InstallPlugin;

    iget-object v1, p0, Lcom/zaihui/installplugin/-$$Lambda$InstallPlugin$Companion$muLSUibY_L4dNJUDfdUPrBUwC1o;->f$1:Lio/flutter/plugin/common/PluginRegistry$Registrar;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/zaihui/installplugin/InstallPlugin$Companion;->lambda$muLSUibY_L4dNJUDfdUPrBUwC1o(Lcom/zaihui/installplugin/InstallPlugin;Lio/flutter/plugin/common/PluginRegistry$Registrar;IILandroid/content/Intent;)Z

    move-result p1

    return p1
.end method
