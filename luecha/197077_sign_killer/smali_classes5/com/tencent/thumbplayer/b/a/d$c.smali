.class Lcom/tencent/thumbplayer/b/a/d$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/thumbplayer/b/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field final synthetic c:Lcom/tencent/thumbplayer/b/a/d;


# direct methods
.method public constructor <init>(Lcom/tencent/thumbplayer/b/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/thumbplayer/b/a/d$c;->c:Lcom/tencent/thumbplayer/b/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/b/a/d$c;->a()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/thumbplayer/b/a/d$c;->a:I

    iput v0, p0, Lcom/tencent/thumbplayer/b/a/d$c;->b:I

    return-void
.end method

.method public a(Lcom/tencent/thumbplayer/b/a/a;)V
    .locals 2

    iget v0, p0, Lcom/tencent/thumbplayer/b/a/d$c;->a:I

    const-string v1, "hevchwdecoderprofile"

    invoke-interface {p1, v1, v0}, Lcom/tencent/thumbplayer/b/a/a;->a(Ljava/lang/String;I)V

    iget v0, p0, Lcom/tencent/thumbplayer/b/a/d$c;->b:I

    const-string v1, "hevchwdecoderlevel"

    invoke-interface {p1, v1, v0}, Lcom/tencent/thumbplayer/b/a/a;->a(Ljava/lang/String;I)V

    return-void
.end method
