.class public Lcom/example/super_player_kit/WebpPlayer;
.super Ljava/lang/Object;
.source "WebpPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/super_player_kit/WebpPlayer$Callback;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private _callback:Lcom/example/super_player_kit/WebpPlayer$Callback;

.field private _drawable:Lcom/humrousz/sequence/AnimationSequenceDrawable;

.field private _filename:Ljava/lang/String;

.field private _imageView:Lcom/humrousz/sequence/AnimationImageView;

.field private _isPlaying:Z

.field private _parent:Landroid/view/ViewGroup;

.field public tagID:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-class v0, Lcom/example/super_player_kit/MySvgaPlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/example/super_player_kit/WebpPlayer;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/example/super_player_kit/WebpPlayer;->_isPlaying:Z

    .line 41
    iput-object p2, p0, Lcom/example/super_player_kit/WebpPlayer;->_parent:Landroid/view/ViewGroup;

    .line 42
    new-instance p2, Lcom/humrousz/sequence/AnimationImageView;

    invoke-direct {p2, p1}, Lcom/humrousz/sequence/AnimationImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/example/super_player_kit/WebpPlayer;->_imageView:Lcom/humrousz/sequence/AnimationImageView;

    return-void
.end method

.method static synthetic access$000(Lcom/example/super_player_kit/WebpPlayer;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/example/super_player_kit/WebpPlayer;->finished()V

    return-void
.end method

.method private finished()V
    .locals 1

    .line 63
    invoke-virtual {p0}, Lcom/example/super_player_kit/WebpPlayer;->stop()V

    .line 64
    iget-object v0, p0, Lcom/example/super_player_kit/WebpPlayer;->_callback:Lcom/example/super_player_kit/WebpPlayer$Callback;

    if-eqz v0, :cond_0

    .line 65
    invoke-interface {v0}, Lcom/example/super_player_kit/WebpPlayer$Callback;->onFinished()V

    :cond_0
    return-void
.end method

.method private playWebp(Ljava/lang/String;IZ)Z
    .locals 2

    .line 78
    iget-boolean v0, p0, Lcom/example/super_player_kit/WebpPlayer;->_isPlaying:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 79
    iget-object p2, p0, Lcom/example/super_player_kit/WebpPlayer;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "svga\u64ad\u653e"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "\u8fd8\u672a\u7ed3\u675f\u3002"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 83
    :cond_0
    iput-object p1, p0, Lcom/example/super_player_kit/WebpPlayer;->_filename:Ljava/lang/String;

    if-eqz p3, :cond_1

    .line 85
    iget-object p1, p0, Lcom/example/super_player_kit/WebpPlayer;->_imageView:Lcom/humrousz/sequence/AnimationImageView;

    sget-object p3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p3}, Lcom/humrousz/sequence/AnimationImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 87
    :cond_1
    iget-object p1, p0, Lcom/example/super_player_kit/WebpPlayer;->_imageView:Lcom/humrousz/sequence/AnimationImageView;

    sget-object p3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p3}, Lcom/humrousz/sequence/AnimationImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 93
    :goto_0
    :try_start_0
    new-instance p1, Ljava/io/FileInputStream;

    iget-object p3, p0, Lcom/example/super_player_kit/WebpPlayer;->_filename:Ljava/lang/String;

    invoke-direct {p1, p3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 p3, 0x1

    .line 106
    :try_start_1
    iput-boolean p3, p0, Lcom/example/super_player_kit/WebpPlayer;->_isPlaying:Z

    .line 108
    new-instance v0, Lcom/humrousz/sequence/AnimationSequenceDrawable;

    .line 109
    invoke-static {p3}, Lcom/humrousz/sequence/FrescoSequence;->getSequenceFactory(I)Lcom/humrousz/sequence/BaseSequenceFactory;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/humrousz/sequence/BaseSequenceFactory;->createSequence(Ljava/io/InputStream;)Lcom/humrousz/sequence/BaseAnimationSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/humrousz/sequence/AnimationSequenceDrawable;-><init>(Lcom/humrousz/sequence/BaseAnimationSequence;)V

    iput-object v0, p0, Lcom/example/super_player_kit/WebpPlayer;->_drawable:Lcom/humrousz/sequence/AnimationSequenceDrawable;

    .line 111
    iget-object v0, p0, Lcom/example/super_player_kit/WebpPlayer;->_drawable:Lcom/humrousz/sequence/AnimationSequenceDrawable;

    invoke-virtual {v0, p2}, Lcom/humrousz/sequence/AnimationSequenceDrawable;->setLoopCount(I)V

    .line 112
    iget-object p2, p0, Lcom/example/super_player_kit/WebpPlayer;->_drawable:Lcom/humrousz/sequence/AnimationSequenceDrawable;

    invoke-virtual {p2, p3}, Lcom/humrousz/sequence/AnimationSequenceDrawable;->setLoopBehavior(I)V

    .line 113
    iget-object p2, p0, Lcom/example/super_player_kit/WebpPlayer;->_imageView:Lcom/humrousz/sequence/AnimationImageView;

    iget-object v0, p0, Lcom/example/super_player_kit/WebpPlayer;->_drawable:Lcom/humrousz/sequence/AnimationSequenceDrawable;

    invoke-virtual {p2, v0}, Lcom/humrousz/sequence/AnimationImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    iget-object p2, p0, Lcom/example/super_player_kit/WebpPlayer;->_imageView:Lcom/humrousz/sequence/AnimationImageView;

    invoke-virtual {p2}, Lcom/humrousz/sequence/AnimationImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-nez p2, :cond_2

    .line 116
    iget-object p2, p0, Lcom/example/super_player_kit/WebpPlayer;->_parent:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/example/super_player_kit/WebpPlayer;->_imageView:Lcom/humrousz/sequence/AnimationImageView;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 117
    :cond_2
    iget-object p2, p0, Lcom/example/super_player_kit/WebpPlayer;->_drawable:Lcom/humrousz/sequence/AnimationSequenceDrawable;

    new-instance v0, Lcom/example/super_player_kit/WebpPlayer$2;

    invoke-direct {v0, p0}, Lcom/example/super_player_kit/WebpPlayer$2;-><init>(Lcom/example/super_player_kit/WebpPlayer;)V

    invoke-virtual {p2, v0}, Lcom/humrousz/sequence/AnimationSequenceDrawable;->setOnFinishedListener(Lcom/humrousz/sequence/AnimationSequenceDrawable$OnFinishedListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return p3

    :catchall_0
    move-exception p2

    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 128
    :catch_1
    throw p2

    :catch_2
    move-exception p1

    .line 95
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return v1
.end method


# virtual methods
.method public play(Ljava/lang/String;IZ)V
    .locals 2

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/example/super_player_kit/WebpPlayer;->playWebp(Ljava/lang/String;IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 54
    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/example/super_player_kit/WebpPlayer$1;

    invoke-direct {p2, p0}, Lcom/example/super_player_kit/WebpPlayer$1;-><init>(Lcom/example/super_player_kit/WebpPlayer;)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setCallback(Lcom/example/super_player_kit/WebpPlayer$Callback;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/example/super_player_kit/WebpPlayer;->_callback:Lcom/example/super_player_kit/WebpPlayer$Callback;

    return-void
.end method

.method public declared-synchronized stop()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 135
    :try_start_0
    iput-boolean v0, p0, Lcom/example/super_player_kit/WebpPlayer;->_isPlaying:Z

    .line 136
    iget-object v0, p0, Lcom/example/super_player_kit/WebpPlayer;->_imageView:Lcom/humrousz/sequence/AnimationImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/example/super_player_kit/WebpPlayer;->_imageView:Lcom/humrousz/sequence/AnimationImageView;

    invoke-virtual {v0}, Lcom/humrousz/sequence/AnimationImageView;->stopAnimation()V

    .line 139
    iget-object v0, p0, Lcom/example/super_player_kit/WebpPlayer;->_imageView:Lcom/humrousz/sequence/AnimationImageView;

    invoke-virtual {v0}, Lcom/humrousz/sequence/AnimationImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/example/super_player_kit/WebpPlayer;->_parent:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/example/super_player_kit/WebpPlayer;->_imageView:Lcom/humrousz/sequence/AnimationImageView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 142
    :cond_0
    iput-object v1, p0, Lcom/example/super_player_kit/WebpPlayer;->_imageView:Lcom/humrousz/sequence/AnimationImageView;

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/example/super_player_kit/WebpPlayer;->_drawable:Lcom/humrousz/sequence/AnimationSequenceDrawable;

    if-eqz v0, :cond_2

    .line 147
    iget-object v0, p0, Lcom/example/super_player_kit/WebpPlayer;->_drawable:Lcom/humrousz/sequence/AnimationSequenceDrawable;

    invoke-virtual {v0, v1}, Lcom/humrousz/sequence/AnimationSequenceDrawable;->setOnFinishedListener(Lcom/humrousz/sequence/AnimationSequenceDrawable$OnFinishedListener;)V

    .line 148
    iput-object v1, p0, Lcom/example/super_player_kit/WebpPlayer;->_drawable:Lcom/humrousz/sequence/AnimationSequenceDrawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
