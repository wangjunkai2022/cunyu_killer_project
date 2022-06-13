.class public Lcom/tencent/thumbplayer/e/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/thumbplayer/e/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/tencent/thumbplayer/e/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/thumbplayer/e/b;

    invoke-direct {v0}, Lcom/tencent/thumbplayer/e/b;-><init>()V

    iput-object v0, p0, Lcom/tencent/thumbplayer/e/b$a;->a:Lcom/tencent/thumbplayer/e/b;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/tencent/thumbplayer/e/b$a;
    .locals 1

    iget-object v0, p0, Lcom/tencent/thumbplayer/e/b$a;->a:Lcom/tencent/thumbplayer/e/b;

    invoke-static {v0, p1}, Lcom/tencent/thumbplayer/e/b;->a(Lcom/tencent/thumbplayer/e/b;I)I

    return-object p0
.end method

.method public a(J)Lcom/tencent/thumbplayer/e/b$a;
    .locals 1

    iget-object v0, p0, Lcom/tencent/thumbplayer/e/b$a;->a:Lcom/tencent/thumbplayer/e/b;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/thumbplayer/e/b;->a(J)V

    return-object p0
.end method

.method public varargs a([Ljava/lang/Object;)Lcom/tencent/thumbplayer/e/b$a;
    .locals 1

    iget-object v0, p0, Lcom/tencent/thumbplayer/e/b$a;->a:Lcom/tencent/thumbplayer/e/b;

    invoke-static {v0, p1}, Lcom/tencent/thumbplayer/e/b;->a(Lcom/tencent/thumbplayer/e/b;[Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p0
.end method

.method public a()Lcom/tencent/thumbplayer/e/b;
    .locals 1

    iget-object v0, p0, Lcom/tencent/thumbplayer/e/b$a;->a:Lcom/tencent/thumbplayer/e/b;

    return-object v0
.end method

.method public b(J)Lcom/tencent/thumbplayer/e/b$a;
    .locals 1

    iget-object v0, p0, Lcom/tencent/thumbplayer/e/b$a;->a:Lcom/tencent/thumbplayer/e/b;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/thumbplayer/e/b;->b(J)V

    return-object p0
.end method
