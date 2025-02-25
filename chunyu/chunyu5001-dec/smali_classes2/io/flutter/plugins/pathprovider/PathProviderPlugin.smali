.class public Lio/flutter/plugins/pathprovider/PathProviderPlugin;
.super Ljava/lang/Object;
.source "PathProviderPlugin.java"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/pathprovider/PathProviderPlugin$UiThreadExecutor;,
        Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderBackgroundThread;,
        Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderPlatformThread;,
        Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderImpl;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "PathProviderPlugin"


# instance fields
.field private channel:Lio/flutter/plugin/common/MethodChannel;

.field private context:Landroid/content/Context;

.field private impl:Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lio/flutter/plugins/pathprovider/PathProviderPlugin;)Ljava/lang/String;
    .locals 0

    .line 34
    invoke-direct {p0}, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->getApplicationSupportDirectory()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lio/flutter/plugins/pathprovider/PathProviderPlugin;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->getPathProviderExternalStorageDirectories(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lio/flutter/plugins/pathprovider/PathProviderPlugin;)Ljava/util/List;
    .locals 0

    .line 34
    invoke-direct {p0}, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->getPathProviderExternalCacheDirectories()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lio/flutter/plugins/pathprovider/PathProviderPlugin;)Ljava/lang/String;
    .locals 0

    .line 34
    invoke-direct {p0}, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->getPathProviderStorageDirectory()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lio/flutter/plugins/pathprovider/PathProviderPlugin;)Ljava/lang/String;
    .locals 0

    .line 34
    invoke-direct {p0}, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->getPathProviderApplicationDocumentsDirectory()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lio/flutter/plugins/pathprovider/PathProviderPlugin;)Ljava/lang/String;
    .locals 0

    .line 34
    invoke-direct {p0}, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->getPathProviderTemporaryDirectory()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getApplicationSupportDirectory()Ljava/lang/String;
    .locals 1

    .line 220
    iget-object v0, p0, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->context:Landroid/content/Context;

    invoke-static {v0}, Lio/flutter/util/PathUtils;->getFilesDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPathProviderApplicationDocumentsDirectory()Ljava/lang/String;
    .locals 1

    .line 224
    iget-object v0, p0, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->context:Landroid/content/Context;

    invoke-static {v0}, Lio/flutter/util/PathUtils;->getDataDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPathProviderExternalCacheDirectories()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 236
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 238
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    .line 239
    iget-object v1, p0, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDirs()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    .line 241
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 245
    :cond_1
    iget-object v1, p0, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 247
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method private getPathProviderExternalStorageDirectories(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 257
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    .line 258
    iget-object v1, p0, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->context:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    if-eqz v3, :cond_0

    .line 260
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 264
    :cond_1
    iget-object v1, p0, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->context:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 266
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method private getPathProviderStorageDirectory()Ljava/lang/String;
    .locals 2

    .line 228
    iget-object v0, p0, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    .line 232
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPathProviderTemporaryDirectory()Ljava/lang/String;
    .locals 1

    .line 216
    iget-object v0, p0, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static registerWith(Lio/flutter/plugin/common/PluginRegistry$Registrar;)V
    .locals 2

    .line 172
    new-instance v0, Lio/flutter/plugins/pathprovider/PathProviderPlugin;

    invoke-direct {v0}, Lio/flutter/plugins/pathprovider/PathProviderPlugin;-><init>()V

    .line 173
    invoke-interface {p0}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->messenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v1

    invoke-interface {p0}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->context()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->setup(Lio/flutter/plugin/common/BinaryMessenger;Landroid/content/Context;)V

    return-void
.end method

.method private setup(Lio/flutter/plugin/common/BinaryMessenger;Landroid/content/Context;)V
    .locals 4

    const-string v0, "plugins.flutter.io/path_provider_android"

    .line 155
    invoke-interface {p1}, Lio/flutter/plugin/common/BinaryMessenger;->makeBackgroundTaskQueue()Lio/flutter/plugin/common/BinaryMessenger$TaskQueue;

    move-result-object v1

    .line 158
    :try_start_0
    new-instance v2, Lio/flutter/plugin/common/MethodChannel;

    sget-object v3, Lio/flutter/plugin/common/StandardMethodCodec;->INSTANCE:Lio/flutter/plugin/common/StandardMethodCodec;

    invoke-direct {v2, p1, v0, v3, v1}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MethodCodec;Lio/flutter/plugin/common/BinaryMessenger$TaskQueue;)V

    iput-object v2, p0, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    .line 161
    new-instance p1, Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderBackgroundThread;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderBackgroundThread;-><init>(Lio/flutter/plugins/pathprovider/PathProviderPlugin;Lio/flutter/plugins/pathprovider/PathProviderPlugin$1;)V

    iput-object p1, p0, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->impl:Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderImpl;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "PathProviderPlugin"

    const-string v1, "Received exception while setting up PathProviderPlugin"

    .line 163
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    :goto_0
    iput-object p2, p0, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->context:Landroid/content/Context;

    .line 167
    iget-object p1, p0, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    invoke-virtual {p1, p0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    return-void
.end method


# virtual methods
.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 1

    .line 178
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v0

    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->setup(Lio/flutter/plugin/common/BinaryMessenger;Landroid/content/Context;)V

    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 1

    .line 183
    iget-object p1, p0, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 184
    iput-object v0, p0, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    return-void
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 7

    .line 189
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "getTemporaryDirectory"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v1, "getStorageDirectory"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    goto :goto_1

    :sswitch_2
    const-string v1, "getApplicationDocumentsDirectory"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v6

    goto :goto_1

    :sswitch_3
    const-string v1, "getExternalStorageDirectories"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_4
    const-string v1, "getExternalCacheDirectories"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :sswitch_5
    const-string v1, "getApplicationSupportDirectory"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_6

    if-eq v0, v6, :cond_5

    if-eq v0, v5, :cond_4

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    .line 211
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    goto :goto_2

    .line 208
    :cond_1
    iget-object p1, p0, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->impl:Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderImpl;

    invoke-interface {p1, p2}, Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderImpl;->getApplicationSupportDirectory(Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_2

    :cond_2
    const-string v0, "type"

    .line 203
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 204
    invoke-static {p1}, Lio/flutter/plugins/pathprovider/StorageDirectoryMapper;->androidType(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    .line 205
    iget-object v0, p0, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->impl:Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderImpl;

    invoke-interface {v0, p1, p2}, Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderImpl;->getExternalStorageDirectories(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_2

    .line 200
    :cond_3
    iget-object p1, p0, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->impl:Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderImpl;

    invoke-interface {p1, p2}, Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderImpl;->getExternalCacheDirectories(Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_2

    .line 197
    :cond_4
    iget-object p1, p0, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->impl:Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderImpl;

    invoke-interface {p1, p2}, Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderImpl;->getStorageDirectory(Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_2

    .line 194
    :cond_5
    iget-object p1, p0, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->impl:Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderImpl;

    invoke-interface {p1, p2}, Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderImpl;->getApplicationDocumentsDirectory(Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_2

    .line 191
    :cond_6
    iget-object p1, p0, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->impl:Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderImpl;

    invoke-interface {p1, p2}, Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderImpl;->getTemporaryDirectory(Lio/flutter/plugin/common/MethodChannel$Result;)V

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6d37cc68 -> :sswitch_5
        -0x480b21b6 -> :sswitch_4
        0x11dc9171 -> :sswitch_3
        0x478b704f -> :sswitch_2
        0x4aadfda8 -> :sswitch_1
        0x6608ad12 -> :sswitch_0
    .end sparse-switch
.end method
