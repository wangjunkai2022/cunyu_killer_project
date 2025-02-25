.class final Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;
.super Ljava/lang/Object;
.source "VideoPlayerPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FlutterState"
.end annotation


# instance fields
.field private final applicationContext:Landroid/content/Context;

.field private final binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

.field private final keyForAsset:Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$KeyForAssetFn;

.field private final keyForAssetAndPackageName:Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$KeyForAssetAndPackageName;

.field private final textureRegistry:Lio/flutter/view/TextureRegistry;


# direct methods
.method constructor <init>(Landroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$KeyForAssetFn;Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$KeyForAssetAndPackageName;Lio/flutter/view/TextureRegistry;)V
    .locals 0

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    iput-object p1, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;->applicationContext:Landroid/content/Context;

    .line 235
    iput-object p2, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 236
    iput-object p3, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;->keyForAsset:Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$KeyForAssetFn;

    .line 237
    iput-object p4, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;->keyForAssetAndPackageName:Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$KeyForAssetAndPackageName;

    .line 238
    iput-object p5, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;->textureRegistry:Lio/flutter/view/TextureRegistry;

    return-void
.end method

.method static synthetic access$000(Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;)Lio/flutter/view/TextureRegistry;
    .locals 0

    .line 221
    iget-object p0, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;->textureRegistry:Lio/flutter/view/TextureRegistry;

    return-object p0
.end method

.method static synthetic access$100(Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;)Lio/flutter/plugin/common/BinaryMessenger;
    .locals 0

    .line 221
    iget-object p0, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    return-object p0
.end method

.method static synthetic access$200(Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;)Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$KeyForAssetAndPackageName;
    .locals 0

    .line 221
    iget-object p0, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;->keyForAssetAndPackageName:Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$KeyForAssetAndPackageName;

    return-object p0
.end method

.method static synthetic access$300(Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;)Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$KeyForAssetFn;
    .locals 0

    .line 221
    iget-object p0, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;->keyForAsset:Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$KeyForAssetFn;

    return-object p0
.end method

.method static synthetic access$400(Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;)Landroid/content/Context;
    .locals 0

    .line 221
    iget-object p0, p0, Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$FlutterState;->applicationContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method startListening(Lio/flutter/plugins/videoplayer/VideoPlayerPlugin;Lio/flutter/plugin/common/BinaryMessenger;)V
    .locals 0

    .line 242
    invoke-static {p2, p1}, Lio/flutter/plugins/videoplayer/Messages$VideoPlayerApi$-CC;->setup(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/videoplayer/Messages$VideoPlayerApi;)V

    return-void
.end method

.method stopListening(Lio/flutter/plugin/common/BinaryMessenger;)V
    .locals 1

    const/4 v0, 0x0

    .line 246
    invoke-static {p1, v0}, Lio/flutter/plugins/videoplayer/Messages$VideoPlayerApi$-CC;->setup(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/videoplayer/Messages$VideoPlayerApi;)V

    return-void
.end method
