.class Lcom/tencent/thumbplayer/g/b$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/thumbplayer/core/richmedia/ITPNativeRichMediaProcessorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/thumbplayer/g/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/thumbplayer/g/b;

.field private b:Lcom/tencent/thumbplayer/api/richmedia/ITPRichMediaSynchronizerListener;


# direct methods
.method constructor <init>(Lcom/tencent/thumbplayer/g/b;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/thumbplayer/g/b$b;->a:Lcom/tencent/thumbplayer/g/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/thumbplayer/api/richmedia/ITPRichMediaSynchronizerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/thumbplayer/g/b$b;->b:Lcom/tencent/thumbplayer/api/richmedia/ITPRichMediaSynchronizerListener;

    return-void
.end method

.method public onDeselectFeatureSuccess(Lcom/tencent/thumbplayer/core/richmedia/ITPNativeRichMediaProcessor;I)V
    .locals 6

    iget-object v0, p0, Lcom/tencent/thumbplayer/g/b$b;->a:Lcom/tencent/thumbplayer/g/b;

    const/16 v1, 0x131

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/tencent/thumbplayer/g/b;->a(Lcom/tencent/thumbplayer/g/b;IIILjava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/g/b$b;->b:Lcom/tencent/thumbplayer/api/richmedia/ITPRichMediaSynchronizerListener;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/thumbplayer/g/b$b;->a:Lcom/tencent/thumbplayer/g/b;

    invoke-interface {p1, v0, p2}, Lcom/tencent/thumbplayer/api/richmedia/ITPRichMediaSynchronizerListener;->onDeselectFeatureSuccess(Lcom/tencent/thumbplayer/api/richmedia/ITPRichMediaSynchronizer;I)V

    :cond_0
    return-void
.end method

.method public onRichMediaError(Lcom/tencent/thumbplayer/core/richmedia/ITPNativeRichMediaProcessor;I)V
    .locals 6

    iget-object v0, p0, Lcom/tencent/thumbplayer/g/b$b;->a:Lcom/tencent/thumbplayer/g/b;

    const/16 v1, 0x134

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/tencent/thumbplayer/g/b;->a(Lcom/tencent/thumbplayer/g/b;IIILjava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/g/b$b;->b:Lcom/tencent/thumbplayer/api/richmedia/ITPRichMediaSynchronizerListener;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/thumbplayer/g/b$b;->a:Lcom/tencent/thumbplayer/g/b;

    invoke-interface {p1, v0, p2}, Lcom/tencent/thumbplayer/api/richmedia/ITPRichMediaSynchronizerListener;->onRichMediaError(Lcom/tencent/thumbplayer/api/richmedia/ITPRichMediaSynchronizer;I)V

    :cond_0
    return-void
.end method

.method public onRichMediaFeatureData(Lcom/tencent/thumbplayer/core/richmedia/ITPNativeRichMediaProcessor;ILcom/tencent/thumbplayer/core/richmedia/TPNativeRichMediaFeatureData;)V
    .locals 2

    iget-object p1, p0, Lcom/tencent/thumbplayer/g/b$b;->b:Lcom/tencent/thumbplayer/api/richmedia/ITPRichMediaSynchronizerListener;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/thumbplayer/g/b$b;->a:Lcom/tencent/thumbplayer/g/b;

    new-instance v1, Lcom/tencent/thumbplayer/api/richmedia/TPRichMediaFeatureData;

    invoke-direct {v1, p3}, Lcom/tencent/thumbplayer/api/richmedia/TPRichMediaFeatureData;-><init>(Lcom/tencent/thumbplayer/core/richmedia/TPNativeRichMediaFeatureData;)V

    invoke-interface {p1, v0, p2, v1}, Lcom/tencent/thumbplayer/api/richmedia/ITPRichMediaSynchronizerListener;->onRichMediaFeatureData(Lcom/tencent/thumbplayer/api/richmedia/ITPRichMediaSynchronizer;ILcom/tencent/thumbplayer/api/richmedia/TPRichMediaFeatureData;)V

    :cond_0
    return-void
.end method

.method public onRichMediaFeatureFailure(Lcom/tencent/thumbplayer/core/richmedia/ITPNativeRichMediaProcessor;II)V
    .locals 6

    iget-object v0, p0, Lcom/tencent/thumbplayer/g/b$b;->a:Lcom/tencent/thumbplayer/g/b;

    const/16 v1, 0x136

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/tencent/thumbplayer/g/b;->a(Lcom/tencent/thumbplayer/g/b;IIILjava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/g/b$b;->b:Lcom/tencent/thumbplayer/api/richmedia/ITPRichMediaSynchronizerListener;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/thumbplayer/g/b$b;->a:Lcom/tencent/thumbplayer/g/b;

    invoke-interface {p1, v0, p2, p3}, Lcom/tencent/thumbplayer/api/richmedia/ITPRichMediaSynchronizerListener;->onRichMediaFeatureFailure(Lcom/tencent/thumbplayer/api/richmedia/ITPRichMediaSynchronizer;II)V

    :cond_0
    return-void
.end method

.method public onRichMediaInfo(Lcom/tencent/thumbplayer/core/richmedia/ITPNativeRichMediaProcessor;IJJJLjava/lang/Object;)V
    .locals 11

    move-object v0, p0

    iget-object v1, v0, Lcom/tencent/thumbplayer/g/b$b;->b:Lcom/tencent/thumbplayer/api/richmedia/ITPRichMediaSynchronizerListener;

    if-eqz v1, :cond_0

    iget-object v2, v0, Lcom/tencent/thumbplayer/g/b$b;->a:Lcom/tencent/thumbplayer/g/b;

    move v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-object/from16 v10, p9

    invoke-interface/range {v1 .. v10}, Lcom/tencent/thumbplayer/api/richmedia/ITPRichMediaSynchronizerListener;->onRichMediaInfo(Lcom/tencent/thumbplayer/api/richmedia/ITPRichMediaSynchronizer;IJJJLjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onRichMediaPrepared(Lcom/tencent/thumbplayer/core/richmedia/ITPNativeRichMediaProcessor;)V
    .locals 6

    iget-object p1, p0, Lcom/tencent/thumbplayer/g/b$b;->a:Lcom/tencent/thumbplayer/g/b;

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/g/b;->getFeatures()[Lcom/tencent/thumbplayer/api/richmedia/TPRichMediaFeature;

    move-result-object v5

    iget-object v0, p0, Lcom/tencent/thumbplayer/g/b$b;->a:Lcom/tencent/thumbplayer/g/b;

    const/16 v1, 0x12d

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcom/tencent/thumbplayer/g/b;->a(Lcom/tencent/thumbplayer/g/b;IIILjava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/g/b$b;->b:Lcom/tencent/thumbplayer/api/richmedia/ITPRichMediaSynchronizerListener;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/thumbplayer/g/b$b;->a:Lcom/tencent/thumbplayer/g/b;

    invoke-interface {p1, v0}, Lcom/tencent/thumbplayer/api/richmedia/ITPRichMediaSynchronizerListener;->onRichMediaPrepared(Lcom/tencent/thumbplayer/api/richmedia/ITPRichMediaSynchronizer;)V

    :cond_0
    return-void
.end method

.method public onSelectFeatureSuccess(Lcom/tencent/thumbplayer/core/richmedia/ITPNativeRichMediaProcessor;I)V
    .locals 6

    iget-object v0, p0, Lcom/tencent/thumbplayer/g/b$b;->a:Lcom/tencent/thumbplayer/g/b;

    const/16 v1, 0x12f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/tencent/thumbplayer/g/b;->a(Lcom/tencent/thumbplayer/g/b;IIILjava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/g/b$b;->b:Lcom/tencent/thumbplayer/api/richmedia/ITPRichMediaSynchronizerListener;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/thumbplayer/g/b$b;->a:Lcom/tencent/thumbplayer/g/b;

    invoke-interface {p1, v0, p2}, Lcom/tencent/thumbplayer/api/richmedia/ITPRichMediaSynchronizerListener;->onSelectFeatureSuccess(Lcom/tencent/thumbplayer/api/richmedia/ITPRichMediaSynchronizer;I)V

    :cond_0
    return-void
.end method
