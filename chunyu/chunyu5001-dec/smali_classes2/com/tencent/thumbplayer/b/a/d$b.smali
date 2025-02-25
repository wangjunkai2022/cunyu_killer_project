.class Lcom/tencent/thumbplayer/b/a/d$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/thumbplayer/b/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field final synthetic h:Lcom/tencent/thumbplayer/b/a/d;


# direct methods
.method public constructor <init>(Lcom/tencent/thumbplayer/b/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/thumbplayer/b/a/d$b;->h:Lcom/tencent/thumbplayer/b/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/b/a/d$b;->a()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/thumbplayer/b/a/d$b;->a:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/tencent/thumbplayer/b/a/d$b;->b:I

    iput v1, p0, Lcom/tencent/thumbplayer/b/a/d$b;->c:I

    iput-object v0, p0, Lcom/tencent/thumbplayer/b/a/d$b;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/thumbplayer/b/a/d$b;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/thumbplayer/b/a/d$b;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/thumbplayer/b/a/d$b;->g:Ljava/lang/String;

    return-void
.end method

.method public a(Lcom/tencent/thumbplayer/b/a/a;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/thumbplayer/b/a/d$b;->a:Ljava/lang/String;

    const-string v1, "flowid"

    invoke-interface {p1, v1, v0}, Lcom/tencent/thumbplayer/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/tencent/thumbplayer/b/a/d$b;->b:I

    const-string v1, "appplatform"

    invoke-interface {p1, v1, v0}, Lcom/tencent/thumbplayer/b/a/a;->a(Ljava/lang/String;I)V

    iget v0, p0, Lcom/tencent/thumbplayer/b/a/d$b;->c:I

    const-string v1, "apilevel"

    invoke-interface {p1, v1, v0}, Lcom/tencent/thumbplayer/b/a/a;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/b/a/d$b;->d:Ljava/lang/String;

    const-string v1, "osver"

    invoke-interface {p1, v1, v0}, Lcom/tencent/thumbplayer/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/b/a/d$b;->e:Ljava/lang/String;

    const-string v1, "model"

    invoke-interface {p1, v1, v0}, Lcom/tencent/thumbplayer/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/b/a/d$b;->f:Ljava/lang/String;

    const-string v1, "serialno"

    invoke-interface {p1, v1, v0}, Lcom/tencent/thumbplayer/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/b/a/d$b;->g:Ljava/lang/String;

    const-string v1, "cpuname"

    invoke-interface {p1, v1, v0}, Lcom/tencent/thumbplayer/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
