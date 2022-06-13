.class Lcom/tencent/thumbplayer/h/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/thumbplayer/h/b;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/thumbplayer/h/b;


# direct methods
.method constructor <init>(Lcom/tencent/thumbplayer/h/b;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/thumbplayer/h/b$1;->a:Lcom/tencent/thumbplayer/h/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/thumbplayer/h/b$1;->a:Lcom/tencent/thumbplayer/h/b;

    invoke-static {v0}, Lcom/tencent/thumbplayer/h/b;->a(Lcom/tencent/thumbplayer/h/b;)Lcom/tencent/thumbplayer/h/b/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/thumbplayer/h/b$1;->a:Lcom/tencent/thumbplayer/h/b;

    invoke-static {v0}, Lcom/tencent/thumbplayer/h/b;->a(Lcom/tencent/thumbplayer/h/b;)Lcom/tencent/thumbplayer/h/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/thumbplayer/h/b$1;->a:Lcom/tencent/thumbplayer/h/b;

    invoke-static {v1}, Lcom/tencent/thumbplayer/h/b;->b(Lcom/tencent/thumbplayer/h/b;)Lcom/tencent/thumbplayer/h/a/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/thumbplayer/h/b/c;->a(Lcom/tencent/thumbplayer/h/a/a;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/h/b$1;->a:Lcom/tencent/thumbplayer/h/b;

    invoke-static {v0}, Lcom/tencent/thumbplayer/h/b;->b(Lcom/tencent/thumbplayer/h/b;)Lcom/tencent/thumbplayer/h/a/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/thumbplayer/h/b$1;->a:Lcom/tencent/thumbplayer/h/b;

    invoke-static {v0}, Lcom/tencent/thumbplayer/h/b;->b(Lcom/tencent/thumbplayer/h/b;)Lcom/tencent/thumbplayer/h/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/thumbplayer/h/b$1;->a:Lcom/tencent/thumbplayer/h/b;

    iget-boolean v1, v1, Lcom/tencent/thumbplayer/h/b;->b:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/thumbplayer/h/a/a;->onCreate(Ljava/lang/Boolean;)V

    :cond_1
    return-void
.end method
