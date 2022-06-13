.class public Lcom/example/super_player_kit/MySvgaPlayer;
.super Ljava/lang/Object;
.source "MySvgaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/super_player_kit/MySvgaPlayer$Callback;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private _callback:Lcom/example/super_player_kit/MySvgaPlayer$Callback;

.field private _drawable:Lcom/opensource/svgaplayer/SVGADrawable;

.field private _filename:Ljava/lang/String;

.field private _isPlaying:Z

.field private _lock:Ljava/lang/Object;

.field private _mainHandler:Landroid/os/Handler;

.field private _parent:Landroid/view/ViewGroup;

.field private _parser:Lcom/opensource/svgaplayer/SVGAParser;

.field private _svgaImageView:Lcom/opensource/svgaplayer/SVGAImageView;

.field public tagID:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-class v0, Lcom/example/super_player_kit/MySvgaPlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/example/super_player_kit/MySvgaPlayer;->TAG:Ljava/lang/String;

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/example/super_player_kit/MySvgaPlayer;->_mainHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/example/super_player_kit/MySvgaPlayer;->_isPlaying:Z

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/example/super_player_kit/MySvgaPlayer;->_lock:Ljava/lang/Object;

    .line 49
    iput-object p2, p0, Lcom/example/super_player_kit/MySvgaPlayer;->_parent:Landroid/view/ViewGroup;

    .line 50
    new-instance p2, Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-direct {p2, p1}, Lcom/opensource/svgaplayer/SVGAImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/example/super_player_kit/MySvgaPlayer;->_svgaImageView:Lcom/opensource/svgaplayer/SVGAImageView;

    .line 51
    iget-object p2, p0, Lcom/example/super_player_kit/MySvgaPlayer;->_svgaImageView:Lcom/opensource/svgaplayer/SVGAImageView;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/opensource/svgaplayer/SVGAImageView;->setLoops(I)V

    .line 53
    sget-object p2, Lcom/opensource/svgaplayer/SVGAParser;->Companion:Lcom/opensource/svgaplayer/SVGAParser$Companion;

    invoke-virtual {p2}, Lcom/opensource/svgaplayer/SVGAParser$Companion;->shareParser()Lcom/opensource/svgaplayer/SVGAParser;

    move-result-object p2

    iput-object p2, p0, Lcom/example/super_player_kit/MySvgaPlayer;->_parser:Lcom/opensource/svgaplayer/SVGAParser;

    .line 54
    iget-object p2, p0, Lcom/example/super_player_kit/MySvgaPlayer;->_parser:Lcom/opensource/svgaplayer/SVGAParser;

    invoke-virtual {p2, p1}, Lcom/opensource/svgaplayer/SVGAParser;->init(Landroid/content/Context;)V

    .line 55
    sget-object p1, Lcom/opensource/svgaplayer/utils/log/SVGALogger;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/SVGALogger;

    invoke-virtual {p1, v0}, Lcom/opensource/svgaplayer/utils/log/SVGALogger;->setLogEnabled(Z)Lcom/opensource/svgaplayer/utils/log/SVGALogger;

    return-void
.end method

.method static synthetic access$000(Lcom/example/super_player_kit/MySvgaPlayer;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/example/super_player_kit/MySvgaPlayer;->finished()V

    return-void
.end method

.method static synthetic access$100(Lcom/example/super_player_kit/MySvgaPlayer;)Lcom/opensource/svgaplayer/SVGAImageView;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/example/super_player_kit/MySvgaPlayer;->_svgaImageView:Lcom/opensource/svgaplayer/SVGAImageView;

    return-object p0
.end method

.method static synthetic access$102(Lcom/example/super_player_kit/MySvgaPlayer;Lcom/opensource/svgaplayer/SVGAImageView;)Lcom/opensource/svgaplayer/SVGAImageView;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/example/super_player_kit/MySvgaPlayer;->_svgaImageView:Lcom/opensource/svgaplayer/SVGAImageView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/example/super_player_kit/MySvgaPlayer;)Lcom/opensource/svgaplayer/SVGADrawable;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/example/super_player_kit/MySvgaPlayer;->_drawable:Lcom/opensource/svgaplayer/SVGADrawable;

    return-object p0
.end method

.method static synthetic access$202(Lcom/example/super_player_kit/MySvgaPlayer;Lcom/opensource/svgaplayer/SVGADrawable;)Lcom/opensource/svgaplayer/SVGADrawable;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/example/super_player_kit/MySvgaPlayer;->_drawable:Lcom/opensource/svgaplayer/SVGADrawable;

    return-object p1
.end method

.method static synthetic access$300(Lcom/example/super_player_kit/MySvgaPlayer;)Landroid/view/ViewGroup;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/example/super_player_kit/MySvgaPlayer;->_parent:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$402(Lcom/example/super_player_kit/MySvgaPlayer;Z)Z
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/example/super_player_kit/MySvgaPlayer;->_isPlaying:Z

    return p1
.end method

.method static synthetic access$500(Lcom/example/super_player_kit/MySvgaPlayer;)Landroid/os/Handler;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/example/super_player_kit/MySvgaPlayer;->_mainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/example/super_player_kit/MySvgaPlayer;)Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/example/super_player_kit/MySvgaPlayer;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method private finished()V
    .locals 1

    .line 80
    invoke-virtual {p0}, Lcom/example/super_player_kit/MySvgaPlayer;->stop()V

    .line 81
    iget-object v0, p0, Lcom/example/super_player_kit/MySvgaPlayer;->_callback:Lcom/example/super_player_kit/MySvgaPlayer$Callback;

    if-eqz v0, :cond_0

    .line 82
    invoke-interface {v0}, Lcom/example/super_player_kit/MySvgaPlayer$Callback;->onFinished()V

    :cond_0
    return-void
.end method

.method private playSvga(Ljava/lang/String;Ljava/lang/String;IZ)Z
    .locals 9

    .line 94
    iget-object v0, p0, Lcom/example/super_player_kit/MySvgaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "svga\u64ad\u653e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u8fd8\u672a\u7ed3\u675f\u3002"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-boolean v0, p0, Lcom/example/super_player_kit/MySvgaPlayer;->_isPlaying:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 97
    iget-object p2, p0, Lcom/example/super_player_kit/MySvgaPlayer;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 102
    :cond_0
    iput-object p1, p0, Lcom/example/super_player_kit/MySvgaPlayer;->_filename:Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lcom/example/super_player_kit/MySvgaPlayer;->_svgaImageView:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v0, p3}, Lcom/opensource/svgaplayer/SVGAImageView;->setLoops(I)V

    if-eqz p4, :cond_1

    .line 107
    iget-object p3, p0, Lcom/example/super_player_kit/MySvgaPlayer;->_svgaImageView:Lcom/opensource/svgaplayer/SVGAImageView;

    sget-object p4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p3, p4}, Lcom/opensource/svgaplayer/SVGAImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 109
    :cond_1
    iget-object p3, p0, Lcom/example/super_player_kit/MySvgaPlayer;->_svgaImageView:Lcom/opensource/svgaplayer/SVGAImageView;

    sget-object p4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p3, p4}, Lcom/opensource/svgaplayer/SVGAImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 115
    :goto_0
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    iget-object p3, p0, Lcom/example/super_player_kit/MySvgaPlayer;->_filename:Ljava/lang/String;

    invoke-direct {v3, p3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 127
    :try_start_1
    iget-object v2, p0, Lcom/example/super_player_kit/MySvgaPlayer;->_parser:Lcom/opensource/svgaplayer/SVGAParser;

    iget-object v4, p0, Lcom/example/super_player_kit/MySvgaPlayer;->_filename:Ljava/lang/String;

    new-instance v5, Lcom/example/super_player_kit/MySvgaPlayer$2;

    invoke-direct {v5, p0, p2, p1}, Lcom/example/super_player_kit/MySvgaPlayer$2;-><init>(Lcom/example/super_player_kit/MySvgaPlayer;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromInputStream(Ljava/io/InputStream;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;ZLcom/opensource/svgaplayer/SVGAParser$PlayCallback;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 178
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    const/4 p1, 0x1

    return p1

    :catch_1
    move-exception p1

    .line 117
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return v1
.end method


# virtual methods
.method public play(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/example/super_player_kit/MySvgaPlayer;->playSvga(Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result p1

    .line 68
    iget-object p2, p0, Lcom/example/super_player_kit/MySvgaPlayer;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "svga\u64ad\u653e"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    return-void

    .line 71
    :cond_0
    iget-object p1, p0, Lcom/example/super_player_kit/MySvgaPlayer;->_mainHandler:Landroid/os/Handler;

    new-instance p2, Lcom/example/super_player_kit/MySvgaPlayer$1;

    invoke-direct {p2, p0}, Lcom/example/super_player_kit/MySvgaPlayer$1;-><init>(Lcom/example/super_player_kit/MySvgaPlayer;)V

    const-wide/16 p3, 0x3e8

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setCallback(Lcom/example/super_player_kit/MySvgaPlayer$Callback;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/example/super_player_kit/MySvgaPlayer;->_callback:Lcom/example/super_player_kit/MySvgaPlayer$Callback;

    return-void
.end method

.method public declared-synchronized stop()V
    .locals 2

    monitor-enter p0

    .line 241
    :try_start_0
    iget-object v0, p0, Lcom/example/super_player_kit/MySvgaPlayer;->_mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/example/super_player_kit/MySvgaPlayer$3;

    invoke-direct {v1, p0}, Lcom/example/super_player_kit/MySvgaPlayer$3;-><init>(Lcom/example/super_player_kit/MySvgaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
