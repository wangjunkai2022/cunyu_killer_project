.class Lcom/tencent/thumbplayer/h/d/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/thumbplayer/h/d/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/thumbplayer/h/d/a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/thumbplayer/h/d/a;


# direct methods
.method constructor <init>(Lcom/tencent/thumbplayer/h/d/a;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/thumbplayer/h/d/a$2;->a:Lcom/tencent/thumbplayer/h/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/thumbplayer/h/b/f;)V
    .locals 2

    invoke-static {}, Lcom/tencent/thumbplayer/h/h/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onErase codecWrapper:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CodecWrapperManager"

    invoke-static {v1, v0}, Lcom/tencent/thumbplayer/h/h/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/tencent/thumbplayer/h/b/f;->i()V

    return-void
.end method
