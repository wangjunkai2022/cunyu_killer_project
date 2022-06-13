.class Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer$5;
.super Ljava/lang/Object;
.source "ThumbMediaPlayer.java"

# interfaces
.implements Lcom/tencent/liteav/txcplayer/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->transferToITrackInfo(Lcom/tencent/thumbplayer/api/TPTrackInfo;)Lcom/tencent/liteav/txcplayer/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;

.field final synthetic val$tPTrackInfo:Lcom/tencent/thumbplayer/api/TPTrackInfo;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;Lcom/tencent/thumbplayer/api/TPTrackInfo;)V
    .locals 0

    .line 749
    iput-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer$5;->this$0:Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;

    iput-object p2, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer$5;->val$tPTrackInfo:Lcom/tencent/thumbplayer/api/TPTrackInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFormat()Lcom/tencent/liteav/txcplayer/c/a;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getInfoInline()Ljava/lang/String;
    .locals 2

    .line 767
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 768
    iget-object v1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer$5;->val$tPTrackInfo:Lcom/tencent/thumbplayer/api/TPTrackInfo;

    invoke-virtual {v1}, Lcom/tencent/thumbplayer/api/TPTrackInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    .line 769
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 770
    iget-object v1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer$5;->val$tPTrackInfo:Lcom/tencent/thumbplayer/api/TPTrackInfo;

    if-eqz v1, :cond_0

    .line 771
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "null"

    .line 773
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/16 v1, 0x7d

    .line 775
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 776
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    const-string v0, "und"

    return-object v0
.end method

.method public getTrackType()I
    .locals 1

    .line 762
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer$5;->val$tPTrackInfo:Lcom/tencent/thumbplayer/api/TPTrackInfo;

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/api/TPTrackInfo;->getTrackType()I

    move-result v0

    return v0
.end method
