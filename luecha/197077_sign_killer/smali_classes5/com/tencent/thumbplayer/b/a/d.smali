.class public Lcom/tencent/thumbplayer/b/a/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/thumbplayer/b/a/d$c;,
        Lcom/tencent/thumbplayer/b/a/d$d;,
        Lcom/tencent/thumbplayer/b/a/d$a;,
        Lcom/tencent/thumbplayer/b/a/d$b;
    }
.end annotation


# instance fields
.field private a:Lcom/tencent/thumbplayer/b/a/d$b;

.field private b:Lcom/tencent/thumbplayer/b/a/d$a;

.field private c:Lcom/tencent/thumbplayer/b/a/d$d;

.field private d:Lcom/tencent/thumbplayer/b/a/d$c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/thumbplayer/b/a/d$b;

    invoke-direct {v0, p0}, Lcom/tencent/thumbplayer/b/a/d$b;-><init>(Lcom/tencent/thumbplayer/b/a/d;)V

    iput-object v0, p0, Lcom/tencent/thumbplayer/b/a/d;->a:Lcom/tencent/thumbplayer/b/a/d$b;

    new-instance v0, Lcom/tencent/thumbplayer/b/a/d$a;

    invoke-direct {v0, p0}, Lcom/tencent/thumbplayer/b/a/d$a;-><init>(Lcom/tencent/thumbplayer/b/a/d;)V

    iput-object v0, p0, Lcom/tencent/thumbplayer/b/a/d;->b:Lcom/tencent/thumbplayer/b/a/d$a;

    new-instance v0, Lcom/tencent/thumbplayer/b/a/d$d;

    invoke-direct {v0, p0}, Lcom/tencent/thumbplayer/b/a/d$d;-><init>(Lcom/tencent/thumbplayer/b/a/d;)V

    iput-object v0, p0, Lcom/tencent/thumbplayer/b/a/d;->c:Lcom/tencent/thumbplayer/b/a/d$d;

    new-instance v0, Lcom/tencent/thumbplayer/b/a/d$c;

    invoke-direct {v0, p0}, Lcom/tencent/thumbplayer/b/a/d$c;-><init>(Lcom/tencent/thumbplayer/b/a/d;)V

    iput-object v0, p0, Lcom/tencent/thumbplayer/b/a/d;->d:Lcom/tencent/thumbplayer/b/a/d$c;

    return-void
.end method


# virtual methods
.method public a()Lcom/tencent/thumbplayer/b/a/d$b;
    .locals 1

    iget-object v0, p0, Lcom/tencent/thumbplayer/b/a/d;->a:Lcom/tencent/thumbplayer/b/a/d$b;

    return-object v0
.end method

.method public b()Lcom/tencent/thumbplayer/b/a/d$a;
    .locals 1

    iget-object v0, p0, Lcom/tencent/thumbplayer/b/a/d;->b:Lcom/tencent/thumbplayer/b/a/d$a;

    return-object v0
.end method

.method public c()Lcom/tencent/thumbplayer/b/a/d$d;
    .locals 1

    iget-object v0, p0, Lcom/tencent/thumbplayer/b/a/d;->c:Lcom/tencent/thumbplayer/b/a/d$d;

    return-object v0
.end method

.method public d()Lcom/tencent/thumbplayer/b/a/d$c;
    .locals 1

    iget-object v0, p0, Lcom/tencent/thumbplayer/b/a/d;->d:Lcom/tencent/thumbplayer/b/a/d$c;

    return-object v0
.end method
