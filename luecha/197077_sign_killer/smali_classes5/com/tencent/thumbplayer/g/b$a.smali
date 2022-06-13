.class Lcom/tencent/thumbplayer/g/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/thumbplayer/core/richmedia/ITPNativeRichMediaInnerProcessorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/thumbplayer/g/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/thumbplayer/g/b;

.field private b:Lcom/tencent/thumbplayer/g/a$a;


# direct methods
.method constructor <init>(Lcom/tencent/thumbplayer/g/b;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/thumbplayer/g/b$a;->a:Lcom/tencent/thumbplayer/g/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/thumbplayer/g/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/thumbplayer/g/b$a;->b:Lcom/tencent/thumbplayer/g/a$a;

    return-void
.end method

.method public onGetCurrentPositionMs(Lcom/tencent/thumbplayer/core/richmedia/ITPNativeRichMediaProcessor;)J
    .locals 8

    iget-object p1, p0, Lcom/tencent/thumbplayer/g/b$a;->b:Lcom/tencent/thumbplayer/g/a$a;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/thumbplayer/g/b$a;->a:Lcom/tencent/thumbplayer/g/b;

    invoke-interface {p1, v0}, Lcom/tencent/thumbplayer/g/a$a;->a(Lcom/tencent/thumbplayer/api/richmedia/ITPRichMediaSynchronizer;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/tencent/thumbplayer/g/b$a;->a:Lcom/tencent/thumbplayer/g/b;

    const/16 v3, 0x137

    long-to-int v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/tencent/thumbplayer/g/b;->a(Lcom/tencent/thumbplayer/g/b;IIILjava/lang/String;Ljava/lang/Object;)V

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method
