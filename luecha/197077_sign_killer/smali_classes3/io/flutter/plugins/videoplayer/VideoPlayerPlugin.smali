.class public Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;
.super Ljava/lang/Object;
.source "VideoPlayerPlugin.java"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/plugins/videoplayer/Messages$VideoPlayerApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;,
        Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$KeyForAssetAndPackageName;,
        Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$KeyForAssetFn;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoPlayerPlugin"


# instance fields
.field private flutterState:Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;

.field private options:Lio/flutter/plugins/videoplayer/VideoPlayerOptions;

.field private final videoPlayers:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lio/flutter/plugins/videoplayer/VideoPlayer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->videoPlayers:Landroid/util/LongSparseArray;

    .line 34
    new-instance v0, Lio/flutter/plugins/videoplayer/VideoPlayerOptions;

    invoke-direct {v0}, Lio/flutter/plugins/videoplayer/VideoPlayerOptions;-><init>()V

    iput-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->options:Lio/flutter/plugins/videoplayer/VideoPlayerOptions;

    return-void
.end method

.method private constructor <init>(Lio/flutter/plugin/common/PluginRegistry$Registrar;)V
    .locals 7

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->videoPlayers:Landroid/util/LongSparseArray;

    .line 34
    new-instance v0, Lio/flutter/plugins/videoplayer/VideoPlayerOptions;

    invoke-direct {v0}, Lio/flutter/plugins/videoplayer/VideoPlayerOptions;-><init>()V

    iput-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->options:Lio/flutter/plugins/videoplayer/VideoPlayerOptions;

    .line 41
    new-instance v0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;

    .line 43
    invoke-interface {p1}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->context()Landroid/content/Context;

    move-result-object v2

    .line 44
    invoke-interface {p1}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->messenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v3

    .line 45
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lio/flutter/plugins/videoplayer/-$$Lambda$EwJYt-rzRQQxrdKhXt12brhygJE;

    invoke-direct {v4, p1}, Lio/flutter/plugins/videoplayer/-$$Lambda$EwJYt-rzRQQxrdKhXt12brhygJE;-><init>(Lio/flutter/plugin/common/PluginRegistry$Registrar;)V

    .line 46
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lio/flutter/plugins/videoplayer/-$$Lambda$5gVwJtQ_7gDi6WPyazOdmov17zQ;

    invoke-direct {v5, p1}, Lio/flutter/plugins/videoplayer/-$$Lambda$5gVwJtQ_7gDi6WPyazOdmov17zQ;-><init>(Lio/flutter/plugin/common/PluginRegistry$Registrar;)V

    .line 47
    invoke-interface {p1}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->textures()Lio/flutter/view/TextureRegistry;

    move-result-object v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;-><init>(Landroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$KeyForAssetFn;Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$KeyForAssetAndPackageName;Lio/flutter/view/TextureRegistry;)V

    iput-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->flutterState:Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;

    .line 48
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->flutterState:Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;

    invoke-interface {p1}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->messenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;->startListening(Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;Lio/flutter/plugin/common/BinaryMessenger;)V

    return-void
.end method

.method private disposeAllPlayers()V
    .locals 2

    const/4 v0, 0x0

    .line 100
    :goto_0
    iget-object v1, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->videoPlayers:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 101
    iget-object v1, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->videoPlayers:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/plugins/videoplayer/VideoPlayer;

    invoke-virtual {v1}, Lio/flutter/plugins/videoplayer/VideoPlayer;->dispose()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    :cond_0
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->videoPlayers:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    return-void
.end method

.method static synthetic lambda$registerWith$0(Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;Lio/flutter/view/FlutterNativeView;)Z
    .locals 0

    .line 57
    invoke-direct {p0}, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->onDestroy()V

    const/4 p0, 0x0

    return p0
.end method

.method private onDestroy()V
    .locals 0

    .line 112
    invoke-direct {p0}, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->disposeAllPlayers()V

    return-void
.end method

.method public static registerWith(Lio/flutter/plugin/common/PluginRegistry$Registrar;)V
    .locals 2

    .line 54
    new-instance v0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;

    invoke-direct {v0, p0}, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;-><init>(Lio/flutter/plugin/common/PluginRegistry$Registrar;)V

    .line 55
    new-instance v1, Lio/flutter/plugins/videoplayer/-$$Lambda$VideoPlayerPlugin$W-nN4EDj3bf_Zgiih3xrq4EH41g;

    invoke-direct {v1, v0}, Lio/flutter/plugins/videoplayer/-$$Lambda$VideoPlayerPlugin$W-nN4EDj3bf_Zgiih3xrq4EH41g;-><init>(Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;)V

    invoke-interface {p0, v1}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->addViewDestroyListener(Lio/flutter/plugin/common/PluginRegistry$ViewDestroyListener;)Lio/flutter/plugin/common/PluginRegistry$Registrar;

    return-void
.end method


# virtual methods
.method public create(Lio/flutter/plugins/videoplayer/Messages$CreateMessage;)Lio/flutter/plugins/videoplayer/Messages$TextureMessage;
    .locals 10

    .line 120
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->flutterState:Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;

    .line 121
    invoke-static {v0}, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;->access$000(Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;)Lio/flutter/view/TextureRegistry;

    move-result-object v0

    invoke-interface {v0}, Lio/flutter/view/TextureRegistry;->createSurfaceTexture()Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;

    move-result-object v0

    .line 122
    new-instance v3, Lio/flutter/plugin/common/EventChannel;

    iget-object v1, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->flutterState:Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;

    .line 124
    invoke-static {v1}, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;->access$100(Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;)Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "flutter.io/videoPlayer/videoEvents"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;->id()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v1, v2}, Lio/flutter/plugin/common/EventChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p1}, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->getAsset()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 129
    invoke-virtual {p1}, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 130
    iget-object v1, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->flutterState:Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;

    .line 131
    invoke-static {v1}, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;->access$200(Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;)Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$KeyForAssetAndPackageName;

    move-result-object v1

    invoke-virtual {p1}, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->getAsset()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$KeyForAssetAndPackageName;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 133
    :cond_0
    iget-object v1, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->flutterState:Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;

    invoke-static {v1}, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;->access$300(Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;)Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$KeyForAssetFn;

    move-result-object v1

    invoke-virtual {p1}, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->getAsset()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$KeyForAssetFn;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 135
    :goto_0
    new-instance v9, Lio/flutter/plugins/videoplayer/VideoPlayer;

    iget-object v1, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->flutterState:Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;

    .line 137
    invoke-static {v1}, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;->access$400(Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;)Landroid/content/Context;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "asset:///"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->options:Lio/flutter/plugins/videoplayer/VideoPlayerOptions;

    move-object v1, v9

    move-object v4, v0

    invoke-direct/range {v1 .. v8}, Lio/flutter/plugins/videoplayer/VideoPlayer;-><init>(Landroid/content/Context;Lio/flutter/plugin/common/EventChannel;Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lio/flutter/plugins/videoplayer/VideoPlayerOptions;)V

    goto :goto_1

    .line 146
    :cond_1
    invoke-virtual {p1}, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->getHttpHeaders()Ljava/util/HashMap;

    move-result-object v7

    .line 147
    new-instance v9, Lio/flutter/plugins/videoplayer/VideoPlayer;

    iget-object v1, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->flutterState:Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;

    .line 149
    invoke-static {v1}, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;->access$400(Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;)Landroid/content/Context;

    move-result-object v2

    .line 152
    invoke-virtual {p1}, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->getUri()Ljava/lang/String;

    move-result-object v5

    .line 153
    invoke-virtual {p1}, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->getFormatHint()Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->options:Lio/flutter/plugins/videoplayer/VideoPlayerOptions;

    move-object v1, v9

    move-object v4, v0

    invoke-direct/range {v1 .. v8}, Lio/flutter/plugins/videoplayer/VideoPlayer;-><init>(Landroid/content/Context;Lio/flutter/plugin/common/EventChannel;Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lio/flutter/plugins/videoplayer/VideoPlayerOptions;)V

    .line 157
    :goto_1
    iget-object p1, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->videoPlayers:Landroid/util/LongSparseArray;

    invoke-interface {v0}, Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;->id()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2, v9}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 159
    new-instance p1, Lio/flutter/plugins/videoplayer/Messages$TextureMessage;

    invoke-direct {p1}, Lio/flutter/plugins/videoplayer/Messages$TextureMessage;-><init>()V

    .line 160
    invoke-interface {v0}, Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;->id()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/flutter/plugins/videoplayer/Messages$TextureMessage;->setTextureId(Ljava/lang/Long;)V

    return-object p1
.end method

.method public dispose(Lio/flutter/plugins/videoplayer/Messages$TextureMessage;)V
    .locals 3

    .line 165
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->videoPlayers:Landroid/util/LongSparseArray;

    invoke-virtual {p1}, Lio/flutter/plugins/videoplayer/Messages$TextureMessage;->getTextureId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/plugins/videoplayer/VideoPlayer;

    .line 166
    invoke-virtual {v0}, Lio/flutter/plugins/videoplayer/VideoPlayer;->dispose()V

    .line 167
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->videoPlayers:Landroid/util/LongSparseArray;

    invoke-virtual {p1}, Lio/flutter/plugins/videoplayer/Messages$TextureMessage;->getTextureId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->remove(J)V

    return-void
.end method

.method public initialize()V
    .locals 0

    .line 116
    invoke-direct {p0}, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->disposeAllPlayers()V

    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 8

    .line 65
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 67
    :try_start_0
    new-instance v0, Lio/flutter/plugins/videoplayer/CustomSSLSocketFactory;

    invoke-direct {v0}, Lio/flutter/plugins/videoplayer/CustomSSLSocketFactory;-><init>()V

    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    const-string v1, "VideoPlayerPlugin"

    const-string v2, "Failed to enable TLSv1.1 and TLSv1.2 Protocols for API level 19 and below.\nFor more information about Socket Security, please consult the following link:\nhttps://developer.android.com/reference/javax/net/ssl/SSLSocket"

    .line 69
    invoke-static {v1, v2, v0}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    :cond_0
    :goto_1
    invoke-static {}, Lio/flutter/FlutterInjector;->instance()Lio/flutter/FlutterInjector;

    move-result-object v0

    .line 79
    new-instance v7, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;

    .line 81
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 82
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v3

    .line 83
    invoke-virtual {v0}, Lio/flutter/FlutterInjector;->flutterLoader()Lio/flutter/embedding/engine/loader/FlutterLoader;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lio/flutter/plugins/videoplayer/-$$Lambda$8dGMholTy4-jNNZa8ZEMagMWD34;

    invoke-direct {v4, v1}, Lio/flutter/plugins/videoplayer/-$$Lambda$8dGMholTy4-jNNZa8ZEMagMWD34;-><init>(Lio/flutter/embedding/engine/loader/FlutterLoader;)V

    .line 84
    invoke-virtual {v0}, Lio/flutter/FlutterInjector;->flutterLoader()Lio/flutter/embedding/engine/loader/FlutterLoader;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lio/flutter/plugins/videoplayer/-$$Lambda$0QI-K3gtGNVEPhJwBzAbMmpNPxY;

    invoke-direct {v5, v0}, Lio/flutter/plugins/videoplayer/-$$Lambda$0QI-K3gtGNVEPhJwBzAbMmpNPxY;-><init>(Lio/flutter/embedding/engine/loader/FlutterLoader;)V

    .line 85
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getTextureRegistry()Lio/flutter/view/TextureRegistry;

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;-><init>(Landroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$KeyForAssetFn;Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$KeyForAssetAndPackageName;Lio/flutter/view/TextureRegistry;)V

    iput-object v7, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->flutterState:Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;

    .line 86
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->flutterState:Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;->startListening(Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;Lio/flutter/plugin/common/BinaryMessenger;)V

    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 2

    .line 91
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->flutterState:Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;

    if-nez v0, :cond_0

    const-string v0, "VideoPlayerPlugin"

    const-string v1, "Detached from the engine before registering to it."

    .line 92
    invoke-static {v0, v1}, Lio/flutter/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_0
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->flutterState:Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;->stopListening(Lio/flutter/plugin/common/BinaryMessenger;)V

    const/4 p1, 0x0

    .line 95
    iput-object p1, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->flutterState:Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;

    .line 96
    invoke-virtual {p0}, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->initialize()V

    return-void
.end method

.method public pause(Lio/flutter/plugins/videoplayer/Messages$TextureMessage;)V
    .locals 3

    .line 204
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->videoPlayers:Landroid/util/LongSparseArray;

    invoke-virtual {p1}, Lio/flutter/plugins/videoplayer/Messages$TextureMessage;->getTextureId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/flutter/plugins/videoplayer/VideoPlayer;

    .line 205
    invoke-virtual {p1}, Lio/flutter/plugins/videoplayer/VideoPlayer;->pause()V

    return-void
.end method

.method public play(Lio/flutter/plugins/videoplayer/Messages$TextureMessage;)V
    .locals 3

    .line 186
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->videoPlayers:Landroid/util/LongSparseArray;

    invoke-virtual {p1}, Lio/flutter/plugins/videoplayer/Messages$TextureMessage;->getTextureId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/flutter/plugins/videoplayer/VideoPlayer;

    .line 187
    invoke-virtual {p1}, Lio/flutter/plugins/videoplayer/VideoPlayer;->play()V

    return-void
.end method

.method public position(Lio/flutter/plugins/videoplayer/Messages$TextureMessage;)Lio/flutter/plugins/videoplayer/Messages$PositionMessage;
    .locals 3

    .line 191
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->videoPlayers:Landroid/util/LongSparseArray;

    invoke-virtual {p1}, Lio/flutter/plugins/videoplayer/Messages$TextureMessage;->getTextureId()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/flutter/plugins/videoplayer/VideoPlayer;

    .line 192
    new-instance v0, Lio/flutter/plugins/videoplayer/Messages$PositionMessage;

    invoke-direct {v0}, Lio/flutter/plugins/videoplayer/Messages$PositionMessage;-><init>()V

    .line 193
    invoke-virtual {p1}, Lio/flutter/plugins/videoplayer/VideoPlayer;->getPosition()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/flutter/plugins/videoplayer/Messages$PositionMessage;->setPosition(Ljava/lang/Long;)V

    .line 194
    invoke-virtual {p1}, Lio/flutter/plugins/videoplayer/VideoPlayer;->sendBufferingUpdate()V

    return-object v0
.end method

.method public seekTo(Lio/flutter/plugins/videoplayer/Messages$PositionMessage;)V
    .locals 3

    .line 199
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->videoPlayers:Landroid/util/LongSparseArray;

    invoke-virtual {p1}, Lio/flutter/plugins/videoplayer/Messages$PositionMessage;->getTextureId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/plugins/videoplayer/VideoPlayer;

    .line 200
    invoke-virtual {p1}, Lio/flutter/plugins/videoplayer/Messages$PositionMessage;->getPosition()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lio/flutter/plugins/videoplayer/VideoPlayer;->seekTo(I)V

    return-void
.end method

.method public setLooping(Lio/flutter/plugins/videoplayer/Messages$LoopingMessage;)V
    .locals 3

    .line 171
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->videoPlayers:Landroid/util/LongSparseArray;

    invoke-virtual {p1}, Lio/flutter/plugins/videoplayer/Messages$LoopingMessage;->getTextureId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/plugins/videoplayer/VideoPlayer;

    .line 172
    invoke-virtual {p1}, Lio/flutter/plugins/videoplayer/Messages$LoopingMessage;->getIsLooping()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lio/flutter/plugins/videoplayer/VideoPlayer;->setLooping(Z)V

    return-void
.end method

.method public setMixWithOthers(Lio/flutter/plugins/videoplayer/Messages$MixWithOthersMessage;)V
    .locals 1

    .line 210
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->options:Lio/flutter/plugins/videoplayer/VideoPlayerOptions;

    invoke-virtual {p1}, Lio/flutter/plugins/videoplayer/Messages$MixWithOthersMessage;->getMixWithOthers()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lio/flutter/plugins/videoplayer/VideoPlayerOptions;->mixWithOthers:Z

    return-void
.end method

.method public setPlaybackSpeed(Lio/flutter/plugins/videoplayer/Messages$PlaybackSpeedMessage;)V
    .locals 3

    .line 181
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->videoPlayers:Landroid/util/LongSparseArray;

    invoke-virtual {p1}, Lio/flutter/plugins/videoplayer/Messages$PlaybackSpeedMessage;->getTextureId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/plugins/videoplayer/VideoPlayer;

    .line 182
    invoke-virtual {p1}, Lio/flutter/plugins/videoplayer/Messages$PlaybackSpeedMessage;->getSpeed()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/videoplayer/VideoPlayer;->setPlaybackSpeed(D)V

    return-void
.end method

.method public setVolume(Lio/flutter/plugins/videoplayer/Messages$VolumeMessage;)V
    .locals 3

    .line 176
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;->videoPlayers:Landroid/util/LongSparseArray;

    invoke-virtual {p1}, Lio/flutter/plugins/videoplayer/Messages$VolumeMessage;->getTextureId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/plugins/videoplayer/VideoPlayer;

    .line 177
    invoke-virtual {p1}, Lio/flutter/plugins/videoplayer/Messages$VolumeMessage;->getVolume()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/flutter/plugins/videoplayer/VideoPlayer;->setVolume(D)V

    return-void
.end method
