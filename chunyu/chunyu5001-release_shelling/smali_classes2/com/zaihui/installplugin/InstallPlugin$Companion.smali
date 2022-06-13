.class public final Lcom/zaihui/installplugin/InstallPlugin$Companion;
.super Ljava/lang/Object;
.source "InstallPlugin.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zaihui/installplugin/InstallPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0006H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/zaihui/installplugin/InstallPlugin$Companion;",
        "",
        "()V",
        "installRequestCode",
        "",
        "test",
        "Lio/flutter/plugin/common/PluginRegistry$Registrar;",
        "registerWith",
        "",
        "registrar",
        "install_plugin_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/zaihui/installplugin/InstallPlugin$Companion;-><init>()V

    return-void
.end method

.method public static synthetic lambda$muLSUibY_L4dNJUDfdUPrBUwC1o(Lcom/zaihui/installplugin/InstallPlugin;Lio/flutter/plugin/common/PluginRegistry$Registrar;IILandroid/content/Intent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/zaihui/installplugin/InstallPlugin$Companion;->registerWith$lambda-0(Lcom/zaihui/installplugin/InstallPlugin;Lio/flutter/plugin/common/PluginRegistry$Registrar;IILandroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method private static final registerWith$lambda-0(Lcom/zaihui/installplugin/InstallPlugin;Lio/flutter/plugin/common/PluginRegistry$Registrar;IILandroid/content/Intent;)Z
    .locals 2

    const-string v0, "$instance"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$registrar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resultCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", intent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "ActivityResultListener"

    .line 43
    invoke-static {v0, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p4, -0x1

    if-ne p3, p4, :cond_0

    const/16 p3, 0x4d2

    if-ne p2, p3, :cond_0

    .line 48
    invoke-interface {p1}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->context()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0}, Lcom/zaihui/installplugin/InstallPlugin;->access$getApkFile$p(Lcom/zaihui/installplugin/InstallPlugin;)Ljava/io/File;

    move-result-object p2

    invoke-static {p0}, Lcom/zaihui/installplugin/InstallPlugin;->access$getAppId$p(Lcom/zaihui/installplugin/InstallPlugin;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p1, p2, p3}, Lcom/zaihui/installplugin/InstallPlugin;->access$install24(Lcom/zaihui/installplugin/InstallPlugin;Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final registerWith(Lio/flutter/plugin/common/PluginRegistry$Registrar;)V
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "registrar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    new-instance v0, Lcom/zaihui/installplugin/InstallPlugin;

    invoke-direct {v0}, Lcom/zaihui/installplugin/InstallPlugin;-><init>()V

    .line 40
    invoke-static {p1}, Lcom/zaihui/installplugin/InstallPlugin;->access$setTest$cp(Lio/flutter/plugin/common/PluginRegistry$Registrar;)V

    .line 41
    invoke-interface {p1}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->context()Landroid/content/Context;

    move-result-object v1

    const-string v2, "registrar.context()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->messenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v2

    const-string v3, "registrar.messenger()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/zaihui/installplugin/InstallPlugin;->access$onAttachedToEngine(Lcom/zaihui/installplugin/InstallPlugin;Landroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;)V

    .line 42
    new-instance v1, Lcom/zaihui/installplugin/-$$Lambda$InstallPlugin$Companion$muLSUibY_L4dNJUDfdUPrBUwC1o;

    invoke-direct {v1, v0, p1}, Lcom/zaihui/installplugin/-$$Lambda$InstallPlugin$Companion$muLSUibY_L4dNJUDfdUPrBUwC1o;-><init>(Lcom/zaihui/installplugin/InstallPlugin;Lio/flutter/plugin/common/PluginRegistry$Registrar;)V

    invoke-interface {p1, v1}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->addActivityResultListener(Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;)Lio/flutter/plugin/common/PluginRegistry$Registrar;

    return-void
.end method
