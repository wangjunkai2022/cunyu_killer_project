.class public final Lcom/zaihui/installplugin/InstallPlugin;
.super Ljava/lang/Object;
.source "InstallPlugin.kt"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zaihui/installplugin/InstallPlugin$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 #2\u00020\u00012\u00020\u0002:\u0001#B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0002J&\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0002J\u001c\u0010\u0013\u001a\u00020\u000f2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0002J\u001a\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0005H\u0002J\u0018\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u0010\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u0010\u0010\u001c\u001a\u00020\u000f2\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u0018\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!H\u0016J\u0010\u0010\"\u001a\u00020\u000f2\u0006\u0010\u000c\u001a\u00020\rH\u0002R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Lcom/zaihui/installplugin/InstallPlugin;",
        "Lio/flutter/embedding/engine/plugins/FlutterPlugin;",
        "Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;",
        "()V",
        "apkFile",
        "Ljava/io/File;",
        "appId",
        "",
        "methodChannel",
        "Lio/flutter/plugin/common/MethodChannel;",
        "canRequestPackageInstalls",
        "",
        "activity",
        "Landroid/app/Activity;",
        "install24",
        "",
        "context",
        "Landroid/content/Context;",
        "file",
        "installApk",
        "filePath",
        "installBelow24",
        "onAttachedToEngine",
        "applicationContext",
        "messenger",
        "Lio/flutter/plugin/common/BinaryMessenger;",
        "binding",
        "Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;",
        "onDetachedFromEngine",
        "onMethodCall",
        "call",
        "Lio/flutter/plugin/common/MethodCall;",
        "result",
        "Lio/flutter/plugin/common/MethodChannel$Result;",
        "showSettingPackageInstall",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/zaihui/installplugin/InstallPlugin$Companion;

.field private static final installRequestCode:I = 0x4d2

.field private static test:Lio/flutter/plugin/common/PluginRegistry$Registrar;


# instance fields
.field private apkFile:Ljava/io/File;

.field private appId:Ljava/lang/String;

.field private methodChannel:Lio/flutter/plugin/common/MethodChannel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/zaihui/installplugin/InstallPlugin$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/zaihui/installplugin/InstallPlugin$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/zaihui/installplugin/InstallPlugin;->Companion:Lcom/zaihui/installplugin/InstallPlugin$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getApkFile$p(Lcom/zaihui/installplugin/InstallPlugin;)Ljava/io/File;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/zaihui/installplugin/InstallPlugin;->apkFile:Ljava/io/File;

    return-object p0
.end method

.method public static final synthetic access$getAppId$p(Lcom/zaihui/installplugin/InstallPlugin;)Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/zaihui/installplugin/InstallPlugin;->appId:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$install24(Lcom/zaihui/installplugin/InstallPlugin;Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/zaihui/installplugin/InstallPlugin;->install24(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$onAttachedToEngine(Lcom/zaihui/installplugin/InstallPlugin;Landroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/zaihui/installplugin/InstallPlugin;->onAttachedToEngine(Landroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;)V

    return-void
.end method

.method public static final synthetic access$setTest$cp(Lio/flutter/plugin/common/PluginRegistry$Registrar;)V
    .locals 0

    .line 27
    sput-object p0, Lcom/zaihui/installplugin/InstallPlugin;->test:Lio/flutter/plugin/common/PluginRegistry$Registrar;

    return-void
.end method

.method private final canRequestPackageInstalls(Landroid/app/Activity;)Z
    .locals 2

    .line 124
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-le v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->canRequestPackageInstalls()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private final install24(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 146
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 147
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 148
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, ".fileProvider.install"

    .line 149
    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3, p2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    const-string p3, "getUriForFile(context, \"\u2026eProvider.install\", file)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "application/vnd.android.package-archive"

    .line 150
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 145
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "appId is null!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 144
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "file is null!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 143
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "context is null!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final installApk(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_4

    .line 94
    sget-object v0, Lcom/zaihui/installplugin/InstallPlugin;->test:Lio/flutter/plugin/common/PluginRegistry$Registrar;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->activity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 96
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 98
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt p1, v2, :cond_1

    .line 99
    invoke-direct {p0, v0}, Lcom/zaihui/installplugin/InstallPlugin;->canRequestPackageInstalls(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0, v1, p2}, Lcom/zaihui/installplugin/InstallPlugin;->install24(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_0
    invoke-direct {p0, v0}, Lcom/zaihui/installplugin/InstallPlugin;->showSettingPackageInstall(Landroid/app/Activity;)V

    .line 102
    iput-object v1, p0, Lcom/zaihui/installplugin/InstallPlugin;->apkFile:Ljava/io/File;

    .line 103
    iput-object p2, p0, Lcom/zaihui/installplugin/InstallPlugin;->appId:Ljava/lang/String;

    goto :goto_0

    .line 106
    :cond_1
    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0, v1}, Lcom/zaihui/installplugin/InstallPlugin;->installBelow24(Landroid/content/Context;Ljava/io/File;)V

    :goto_0
    return-void

    .line 97
    :cond_2
    new-instance p2, Ljava/io/FileNotFoundException;

    const-string v0, " is not exist! or check permission"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 94
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "context is null!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 92
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "fillPath is null!"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final installBelow24(Landroid/content/Context;Ljava/io/File;)V
    .locals 2

    .line 128
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 129
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 130
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    const-string v1, "application/vnd.android.package-archive"

    .line 131
    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final onAttachedToEngine(Landroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;)V
    .locals 1

    .line 87
    new-instance p1, Lio/flutter/plugin/common/MethodChannel;

    const-string v0, "install_plugin"

    invoke-direct {p1, p2, v0}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/zaihui/installplugin/InstallPlugin;->methodChannel:Lio/flutter/plugin/common/MethodChannel;

    .line 88
    iget-object p1, p0, Lcom/zaihui/installplugin/InstallPlugin;->methodChannel:Lio/flutter/plugin/common/MethodChannel;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object p2, p0

    check-cast p2, Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;

    invoke-virtual {p1, p2}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    return-void
.end method

.method public static final registerWith(Lio/flutter/plugin/common/PluginRegistry$Registrar;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/zaihui/installplugin/InstallPlugin;->Companion:Lcom/zaihui/installplugin/InstallPlugin$Companion;

    invoke-virtual {v0, p0}, Lcom/zaihui/installplugin/InstallPlugin$Companion;->registerWith(Lio/flutter/plugin/common/PluginRegistry$Registrar;)V

    return-void
.end method

.method private final showSettingPackageInstall(Landroid/app/Activity;)V
    .locals 3

    .line 112
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const-string v0, "SettingPackageInstall"

    const-string v1, ">= Build.VERSION_CODES.O"

    .line 113
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.MANAGE_UNKNOWN_APP_SOURCES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package:"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/16 v1, 0x4d2

    .line 116
    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 118
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "VERSION.SDK_INT < O"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 2

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "binding.applicationContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object p1

    const-string v1, "binding.binaryMessenger"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/zaihui/installplugin/InstallPlugin;->onAttachedToEngine(Landroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;)V

    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iget-object p1, p0, Lcom/zaihui/installplugin/InstallPlugin;->methodChannel:Lio/flutter/plugin/common/MethodChannel;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 83
    iput-object v0, p0, Lcom/zaihui/installplugin/InstallPlugin;->methodChannel:Lio/flutter/plugin/common/MethodChannel;

    return-void
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    const-string v1, "getPlatformVersion"

    .line 59
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    sget-object p1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v0, "Android "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v1, "installApk"

    .line 62
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "filePath"

    .line 63
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "appId"

    .line 64
    invoke-virtual {p1, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "installApk "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android plugin"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/zaihui/installplugin/InstallPlugin;->installApk(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Success"

    .line 68
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 70
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p2, v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 73
    :cond_1
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    :goto_0
    return-void
.end method
