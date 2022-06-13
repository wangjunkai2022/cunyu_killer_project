.class Lcom/tencent/thumbplayer/h/e/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/thumbplayer/h/c/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/thumbplayer/h/e/a/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/thumbplayer/h/e/a/a;


# direct methods
.method constructor <init>(Lcom/tencent/thumbplayer/h/e/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/thumbplayer/h/e/a/a$1;->a:Lcom/tencent/thumbplayer/h/e/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSurfaceTexture:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/thumbplayer/h/e/a/a$1;->a:Lcom/tencent/thumbplayer/h/e/a/a;

    iget-object v1, v1, Lcom/tencent/thumbplayer/h/e/a/a;->e:Lcom/tencent/thumbplayer/h/c/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " onReleased, release OutputSurface"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OutputSurface"

    invoke-static {v1, v0}, Lcom/tencent/thumbplayer/h/h/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/h/e/a/a$1;->a:Lcom/tencent/thumbplayer/h/e/a/a;

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/h/e/a/a;->b()V

    return-void
.end method
