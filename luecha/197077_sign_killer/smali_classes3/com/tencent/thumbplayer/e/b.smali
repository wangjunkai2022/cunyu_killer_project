.class public Lcom/tencent/thumbplayer/e/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/thumbplayer/e/b$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:[Ljava/lang/Object;

.field private c:J

.field private d:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/thumbplayer/e/b;I)I
    .locals 0

    iput p1, p0, Lcom/tencent/thumbplayer/e/b;->a:I

    return p1
.end method

.method static synthetic a(Lcom/tencent/thumbplayer/e/b;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/tencent/thumbplayer/e/b;->b:[Ljava/lang/Object;

    return-object p1
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/tencent/thumbplayer/e/b;->a:I

    return v0
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/thumbplayer/e/b;->c:J

    return-void
.end method

.method public b(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/thumbplayer/e/b;->d:J

    return-void
.end method

.method public b()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/tencent/thumbplayer/e/b;->b:[Ljava/lang/Object;

    return-object v0
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/thumbplayer/e/b;->c:J

    return-wide v0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/thumbplayer/e/b;->d:J

    return-wide v0
.end method
