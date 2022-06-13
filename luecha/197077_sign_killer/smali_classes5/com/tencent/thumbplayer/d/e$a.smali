.class Lcom/tencent/thumbplayer/d/e$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDLProxyLogListener;
.implements Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPreLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/thumbplayer/d/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/thumbplayer/d/e;


# direct methods
.method private constructor <init>(Lcom/tencent/thumbplayer/d/e;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/thumbplayer/d/e$a;->a:Lcom/tencent/thumbplayer/d/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/thumbplayer/d/e;Lcom/tencent/thumbplayer/d/e$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/d/e$a;-><init>(Lcom/tencent/thumbplayer/d/e;)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public i(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onPrepareDownloadProgressUpdate(IIJJLjava/lang/String;)V
    .locals 7

    iget-object p7, p0, Lcom/tencent/thumbplayer/d/e$a;->a:Lcom/tencent/thumbplayer/d/e;

    invoke-static {p7}, Lcom/tencent/thumbplayer/d/e;->a(Lcom/tencent/thumbplayer/d/e;)Lcom/tencent/thumbplayer/api/proxy/ITPPreloadProxy$IPreloadListener;

    move-result-object v0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/tencent/thumbplayer/api/proxy/ITPPreloadProxy$IPreloadListener;->onPrepareDownloadProgressUpdate(IIJJ)V

    return-void
.end method

.method public onPrepareError(IILjava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/tencent/thumbplayer/d/e$a;->a:Lcom/tencent/thumbplayer/d/e;

    invoke-static {p1}, Lcom/tencent/thumbplayer/d/e;->a(Lcom/tencent/thumbplayer/d/e;)Lcom/tencent/thumbplayer/api/proxy/ITPPreloadProxy$IPreloadListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/tencent/thumbplayer/api/proxy/ITPPreloadProxy$IPreloadListener;->onPrepareError()V

    return-void
.end method

.method public onPrepareOK()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/thumbplayer/d/e$a;->a:Lcom/tencent/thumbplayer/d/e;

    invoke-static {v0}, Lcom/tencent/thumbplayer/d/e;->a(Lcom/tencent/thumbplayer/d/e;)Lcom/tencent/thumbplayer/api/proxy/ITPPreloadProxy$IPreloadListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/thumbplayer/api/proxy/ITPPreloadProxy$IPreloadListener;->onPrepareSuccess()V

    return-void
.end method

.method public w(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
