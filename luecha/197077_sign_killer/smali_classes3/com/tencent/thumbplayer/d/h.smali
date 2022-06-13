.class public Lcom/tencent/thumbplayer/d/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/thumbplayer/d/b;


# instance fields
.field private a:Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadProxy;


# direct methods
.method public constructor <init>(Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadProxy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/thumbplayer/d/h;->a:Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadProxy;

    return-void
.end method


# virtual methods
.method public a()Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadProxy;
    .locals 1

    iget-object v0, p0, Lcom/tencent/thumbplayer/d/h;->a:Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadProxy;

    return-object v0
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/thumbplayer/d/h;->a:Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadProxy;

    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadProxy;->pushEvent(I)V

    return-void
.end method
