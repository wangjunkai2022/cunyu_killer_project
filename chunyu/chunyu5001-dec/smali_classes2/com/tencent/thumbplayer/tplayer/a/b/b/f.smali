.class public Lcom/tencent/thumbplayer/tplayer/a/b/b/f;
.super Lcom/tencent/thumbplayer/tplayer/a/b/a;


# instance fields
.field private a:J
    .annotation runtime Lcom/tencent/thumbplayer/tplayer/a/b/a$a;
        a = "costtimems"
    .end annotation
.end field

.field private b:J
    .annotation runtime Lcom/tencent/thumbplayer/tplayer/a/b/a$a;
        a = "errorcode"
    .end annotation
.end field

.field private c:I
    .annotation runtime Lcom/tencent/thumbplayer/tplayer/a/b/a$a;
        a = "mediatype"
    .end annotation
.end field

.field private d:I
    .annotation runtime Lcom/tencent/thumbplayer/tplayer/a/b/a$a;
        a = "attachformat"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/tencent/thumbplayer/tplayer/a/b/a;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/thumbplayer/tplayer/a/b/b/f;->a:J

    iput-wide v0, p0, Lcom/tencent/thumbplayer/tplayer/a/b/b/f;->b:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/thumbplayer/tplayer/a/b/b/f;->c:I

    iput v0, p0, Lcom/tencent/thumbplayer/tplayer/a/b/b/f;->d:I

    return-void
.end method


# virtual methods
.method public c(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/thumbplayer/tplayer/a/b/b/f;->a:J

    return-void
.end method

.method public d(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/thumbplayer/tplayer/a/b/b/f;->b:J

    return-void
.end method

.method public m(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/thumbplayer/tplayer/a/b/b/f;->c:I

    return-void
.end method

.method public n(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/thumbplayer/tplayer/a/b/b/f;->d:I

    return-void
.end method
