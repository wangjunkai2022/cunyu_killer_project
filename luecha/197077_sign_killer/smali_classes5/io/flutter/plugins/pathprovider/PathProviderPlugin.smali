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

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lio/flutter/plugins/pathprovider/PathProviderPlugin;)Ljava/lang/String;
    .locals 0

    .line 36
    invoke-direct {p0}, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->getApplicationSupportDirectory()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lio/flutter/plugins/pathprovider/PathProviderPlugin;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->getPathProviderExternalStorageDirectories(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lio/flutter/plugins/pathprovider/PathProviderPlugin;)Ljava/util/List;
    .locals 0

    .line 36
    invoke-direct {p0}, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->getPathProviderExternalCacheDirectories()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lio/flutter/plugins/pathprovider/PathProviderPlugin;)Ljava/lang/String;
    .locals 0

    .line 36
    invoke-direct {p0}, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->getPathProviderStorageDirectory()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lio/flutter/plugins/pathprovider/PathProviderPlugin;)Ljava/lang/String;
    .locals 0

    .line 36
    invoke-direct {p0}, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->getPathProviderApplicationDocumentsDirectory()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lio/flutter/plugins/pathprovider/PathProviderPlugin;)Ljava/lang/String;
    .locals 0

    .line 36
    invoke-direct {p0}, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->getPathProviderTemporaryDirectory()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getApplicationSupportDirectory()Ljava/lang/String;
    .locals 1

    .line 230
    iget-object v0, p0, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->context:Landroid/content/Context;

    invoke-static {v0}, Lio/flutter/util/PathUtils;->getFilesDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPathProviderApplicationDocumentsDirectory()Ljava/lang/String;
    .locals 1

    .line 234
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

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 248
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    .line 249
    iget-object v1, p0, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDirs()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    .line 251
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 255
    :cond_1
    iget-object v1, p0, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 257
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

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 267
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    .line 268
    iget-object v1, p0, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->context:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    if-eqz v3, :cond_0

    .line 270
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 274
    :cond_1
    iget-object v1, p0, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->context:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 276
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method private getPathProviderStorageDirectory()Ljava/lang/String;
    .locals 2

    .line 238
    iget-object v0, p0, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    .line 242
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPathProviderTemporaryDirectory()Ljava/lang/String;
    .locals 1

    .line 226
    iget-object v0, p0, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static registerWith(Lio/flutter/plugin/common/PluginRegistry$Registrar;)V
    .locals 2

    .line 182
    new-instance v0, Lio/flutter/plugins/pathprovider/PathProviderPlugin;

    invoke-direct {v0}, Lio/flutter/plugins/pathprovider/PathProviderPlugin;-><init>()V

    .line 183
    invoke-interface {p0}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->messenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v1

    invoke-interface {p0}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->context()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->setup(Lio/flutter/plugin/common/BinaryMessenger;Landroid/content/Context;)V

    return-void
.end method

.method private setup(Lio/flutter/plugin/common/BinaryMessenger;Landroid/content/Context;)V
    .locals 12

    const-string v0, "PathProviderPlugin"

    const-string v1, "plugins.flutter.io/path_provider_android"

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "io.flutter.plugin.common.MethodChannel"

    .line 160
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "io.flutter.plugin.common.BinaryMessenger$TaskQueue"

    .line 161
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 162
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "makeBackgroundTaskQueue"

    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    .line 163
    invoke-virtual {v5, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x4

    new-array v8, v6, [Ljava/lang/Class;

    .line 164
    const-class v9, Lio/flutter/plugin/common/BinaryMessenger;

    aput-object v9, v8, v7

    const-class v9, Ljava/lang/String;

    const/4 v10, 0x1

    aput-object v9, v8, v10

    const-class v9, Lio/flutter/plugin/common/MethodCodec;

    const/4 v11, 0x2

    aput-object v9, v8, v11

    const/4 v9, 0x3

    aput-object v4, v8, v9

    .line 165
    invoke-virtual {v3, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p1, v4, v7

    aput-object v1, v4, v10

    .line 167
    sget-object v6, Lio/flutter/plugin/common/StandardMethodCodec;->INSTANCE:Lio/flutter/plugin/common/StandardMethodCodec;

    aput-object v6, v4, v11

    aput-object v5, v4, v9

    .line 168
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/flutter/plugin/common/MethodChannel;

    iput-object v3, p0, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    .line 169
    new-instance v3, Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderBackgroundThread;

    invoke-direct {v3, p0, v2}, Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderBackgroundThread;-><init>(Lio/flutter/plugins/pathprovider/PathProviderPlugin;Lio/flutter/plugins/pathprovider/PathProviderPlugin$1;)V

    iput-object v3, p0, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->impl:Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderImpl;

    const-string v3, "Use TaskQueues."

    .line 170
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 172
    :catch_0
    new-instance v3, Lio/flutter/plugin/common/MethodChannel;

    invoke-direct {v3, p1, v1}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    iput-object v3, p0, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    .line 173
    new-instance p1, Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderPlatformThread;

    invoke-direct {p1, p0, v2}, Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderPlatformThread;-><init>(Lio/flutter/plugins/pathprovider/PathProviderPlugin;Lio/flutter/plugins/pathprovider/PathProviderPlugin$1;)V

    iput-object p1, p0, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->impl:Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderImpl;

    const-string p1, "Don\'t use TaskQueues."

    .line 174
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :goto_0
    iput-object p2, p0, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->context:Landroid/content/Context;

    .line 177
    iget-object p1, p0, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    invoke-virtual {p1, p0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    return-void
.end method


# virtual methods
.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 1

    .line 188
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v0

    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->setup(Lio/flutter/plugin/common/BinaryMessenger;Landroid/content/Context;)V

    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 1

    .line 193
    iget-object p1, p0, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 194
    iput-object v0, p0, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    return-void
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 7

    .line 199
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

    .line 221
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    goto :goto_2

    .line 218
    :cond_1
    iget-object p1, p0, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->impl:Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderImpl;

    invoke-interface {p1, p2}, Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderImpl;->getApplicationSupportDirectory(Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_2

    :cond_2
    const-string v0, "type"

    .line 213
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 214
    invoke-static {p1}, Lio/flutter/plugins/pathprovider/StorageDirectoryMapper;->androidType(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    .line 215
    iget-object v0, p0, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->impl:Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderImpl;

    invoke-interface {v0, p1, p2}, Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderImpl;->getExternalStorageDirectories(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_2

    .line 210
    :cond_3
    iget-object p1, p0, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->impl:Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderImpl;

    invoke-interface {p1, p2}, Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderImpl;->getExternalCacheDirectories(Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_2

    .line 207
    :cond_4
    iget-object p1, p0, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->impl:Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderImpl;

    invoke-interface {p1, p2}, Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderImpl;->getStorageDirectory(Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_2

    .line 204
    :cond_5
    iget-object p1, p0, Lio/flutter/plugins/pathprovider/PathProviderPlugin;->impl:Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderImpl;

    invoke-interface {p1, p2}, Lio/flutter/plugins/pathprovider/PathProviderPlugin$PathProviderImpl;->getApplicationDocumentsDirectory(Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_2

    .line 201
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
