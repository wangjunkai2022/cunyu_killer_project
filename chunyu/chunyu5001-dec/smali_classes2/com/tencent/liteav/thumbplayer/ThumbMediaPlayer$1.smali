.class Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer$1;
.super Ljava/lang/Object;
.source "ThumbMediaPlayer.java"

# interfaces
.implements Lcom/tencent/thumbplayer/api/ITPModuleLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->setTPPLibCustomLoader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer$1;->this$0:Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadLibrary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 134
    invoke-static {p1}, Lcom/tencent/liteav/basic/util/h;->a(Ljava/lang/String;)Z

    return-void
.end method
