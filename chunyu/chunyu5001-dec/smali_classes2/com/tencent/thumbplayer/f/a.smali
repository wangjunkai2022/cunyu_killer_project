.class public Lcom/tencent/thumbplayer/f/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/tencent/thumbplayer/f/b;


# direct methods
.method public constructor <init>(Lcom/tencent/thumbplayer/f/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/thumbplayer/f/a;->b:Lcom/tencent/thumbplayer/f/b;

    iget-object p1, p0, Lcom/tencent/thumbplayer/f/a;->b:Lcom/tencent/thumbplayer/f/b;

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/f/b;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/thumbplayer/f/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/thumbplayer/f/b;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/thumbplayer/f/b;

    invoke-direct {v0, p1, p2}, Lcom/tencent/thumbplayer/f/b;-><init>(Lcom/tencent/thumbplayer/f/b;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/thumbplayer/f/a;->b:Lcom/tencent/thumbplayer/f/b;

    iget-object p1, p0, Lcom/tencent/thumbplayer/f/a;->b:Lcom/tencent/thumbplayer/f/b;

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/f/b;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/thumbplayer/f/a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lcom/tencent/thumbplayer/f/b;
    .locals 1

    iget-object v0, p0, Lcom/tencent/thumbplayer/f/a;->b:Lcom/tencent/thumbplayer/f/b;

    return-object v0
.end method

.method public a(Lcom/tencent/thumbplayer/f/b;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Lcom/tencent/thumbplayer/f/b;

    iget-object v0, p0, Lcom/tencent/thumbplayer/f/a;->a:Ljava/lang/String;

    invoke-direct {p1, v0}, Lcom/tencent/thumbplayer/f/b;-><init>(Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lcom/tencent/thumbplayer/f/a;->b:Lcom/tencent/thumbplayer/f/b;

    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/thumbplayer/f/a;->b:Lcom/tencent/thumbplayer/f/b;

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/f/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/thumbplayer/f/a;->b:Lcom/tencent/thumbplayer/f/b;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/f/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/thumbplayer/f/a;->b:Lcom/tencent/thumbplayer/f/b;

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/f/b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/thumbplayer/f/a;->b:Lcom/tencent/thumbplayer/f/b;

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/f/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/thumbplayer/f/a;->b:Lcom/tencent/thumbplayer/f/b;

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/f/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/thumbplayer/f/a;->b:Lcom/tencent/thumbplayer/f/b;

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/f/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/thumbplayer/f/a;->b:Lcom/tencent/thumbplayer/f/b;

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/f/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
