.class public final Lcom/tencent/thumbplayer/h/d/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/tencent/thumbplayer/h/d/b;

.field private final b:Lcom/tencent/thumbplayer/h/d/b;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/thumbplayer/h/d/b;

    const/4 v1, 0x2

    const-string v2, "keep"

    invoke-direct {v0, v1, v2}, Lcom/tencent/thumbplayer/h/d/b;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/thumbplayer/h/d/a;->a:Lcom/tencent/thumbplayer/h/d/b;

    new-instance v0, Lcom/tencent/thumbplayer/h/d/b;

    const v1, 0x7fffffff

    const-string v2, "running"

    invoke-direct {v0, v1, v2}, Lcom/tencent/thumbplayer/h/d/b;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/thumbplayer/h/d/a;->b:Lcom/tencent/thumbplayer/h/d/b;

    iget-object v0, p0, Lcom/tencent/thumbplayer/h/d/a;->a:Lcom/tencent/thumbplayer/h/d/b;

    new-instance v1, Lcom/tencent/thumbplayer/h/d/a$2;

    invoke-direct {v1, p0}, Lcom/tencent/thumbplayer/h/d/a$2;-><init>(Lcom/tencent/thumbplayer/h/d/a;)V

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/h/d/b;->a(Lcom/tencent/thumbplayer/h/d/c;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/thumbplayer/h/b/e;)Lcom/tencent/thumbplayer/h/b/f;
    .locals 2

    iget-object v0, p0, Lcom/tencent/thumbplayer/h/d/a;->a:Lcom/tencent/thumbplayer/h/d/b;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/h/d/b;->a(Lcom/tencent/thumbplayer/h/b/e;)Lcom/tencent/thumbplayer/h/b/f;

    move-result-object p1

    invoke-static {}, Lcom/tencent/thumbplayer/h/h/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "obtainCodecWrapper codecWrapper:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CodecWrapperManager"

    invoke-static {v1, v0}, Lcom/tencent/thumbplayer/h/h/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method public final a()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "runningPool:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/thumbplayer/h/d/a;->b:Lcom/tencent/thumbplayer/h/d/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " keepPool:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/thumbplayer/h/d/a;->a:Lcom/tencent/thumbplayer/h/d/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/tencent/thumbplayer/h/b/f;)V
    .locals 2

    invoke-static {}, Lcom/tencent/thumbplayer/h/h/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "transToRunning codecWrapper:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CodecWrapperManager"

    invoke-static {v1, v0}, Lcom/tencent/thumbplayer/h/h/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/h/d/a;->a:Lcom/tencent/thumbplayer/h/d/b;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/h/d/b;->b(Lcom/tencent/thumbplayer/h/b/f;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/h/d/a;->b:Lcom/tencent/thumbplayer/h/d/b;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/h/d/b;->a(Lcom/tencent/thumbplayer/h/b/f;)V

    new-instance v0, Lcom/tencent/thumbplayer/h/d/a$1;

    invoke-direct {v0, p0, p1}, Lcom/tencent/thumbplayer/h/d/a$1;-><init>(Lcom/tencent/thumbplayer/h/d/a;Lcom/tencent/thumbplayer/h/b/f;)V

    invoke-static {v0}, Lcom/tencent/thumbplayer/h/h/d;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Lcom/tencent/thumbplayer/h/b/f;)V
    .locals 2

    invoke-static {}, Lcom/tencent/thumbplayer/h/h/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeFromRunning codecWrapper:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CodecWrapperManager"

    invoke-static {v1, v0}, Lcom/tencent/thumbplayer/h/h/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/h/d/a;->b:Lcom/tencent/thumbplayer/h/d/b;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/h/d/b;->b(Lcom/tencent/thumbplayer/h/b/f;)V

    return-void
.end method

.method public c(Lcom/tencent/thumbplayer/h/b/f;)V
    .locals 2

    invoke-static {}, Lcom/tencent/thumbplayer/h/h/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "transTokeep codecWrapper:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CodecWrapperManager"

    invoke-static {v1, v0}, Lcom/tencent/thumbplayer/h/h/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/h/d/a;->b:Lcom/tencent/thumbplayer/h/d/b;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/h/d/b;->b(Lcom/tencent/thumbplayer/h/b/f;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/h/d/a;->a:Lcom/tencent/thumbplayer/h/d/b;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/h/d/b;->a(Lcom/tencent/thumbplayer/h/b/f;)V

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/h/b/f;->h()Lcom/tencent/thumbplayer/h/a/a;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/tencent/thumbplayer/h/a/a;->onTransToKeepPool()V

    :cond_1
    return-void
.end method
