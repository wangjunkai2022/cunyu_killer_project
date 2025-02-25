.class public final Lcom/tencent/thumbplayer/h/h/b;
.super Ljava/lang/Object;


# static fields
.field private static a:I = 0x2

.field private static b:Z = true

.field private static c:Lcom/tencent/thumbplayer/h/h/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tencent/thumbplayer/h/h/b$1;

    invoke-direct {v0}, Lcom/tencent/thumbplayer/h/h/b$1;-><init>()V

    sput-object v0, Lcom/tencent/thumbplayer/h/h/b;->c:Lcom/tencent/thumbplayer/h/h/a;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/tencent/thumbplayer/h/h/b;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/thumbplayer/h/h/b;->c:Lcom/tencent/thumbplayer/h/h/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TMediaCodec."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/tencent/thumbplayer/h/h/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/tencent/thumbplayer/h/h/b;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/thumbplayer/h/h/b;->c:Lcom/tencent/thumbplayer/h/h/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TMediaCodec."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1, p2}, Lcom/tencent/thumbplayer/h/h/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static a()Z
    .locals 1

    sget-boolean v0, Lcom/tencent/thumbplayer/h/h/b;->b:Z

    return v0
.end method

.method public static a(I)Z
    .locals 1

    sget-boolean v0, Lcom/tencent/thumbplayer/h/h/b;->b:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/tencent/thumbplayer/h/h/b;->a:I

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/tencent/thumbplayer/h/h/b;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/thumbplayer/h/h/b;->c:Lcom/tencent/thumbplayer/h/h/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TMediaCodec."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/tencent/thumbplayer/h/h/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/tencent/thumbplayer/h/h/b;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/thumbplayer/h/h/b;->c:Lcom/tencent/thumbplayer/h/h/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TMediaCodec."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1, p2}, Lcom/tencent/thumbplayer/h/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/tencent/thumbplayer/h/h/b;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/thumbplayer/h/h/b;->c:Lcom/tencent/thumbplayer/h/h/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TMediaCodec."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/tencent/thumbplayer/h/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/tencent/thumbplayer/h/h/b;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/thumbplayer/h/h/b;->c:Lcom/tencent/thumbplayer/h/h/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TMediaCodec."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v0, p0, p1, v1}, Lcom/tencent/thumbplayer/h/h/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/tencent/thumbplayer/h/h/b;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/thumbplayer/h/h/b;->c:Lcom/tencent/thumbplayer/h/h/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TMediaCodec."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v0, p0, p1, v1}, Lcom/tencent/thumbplayer/h/h/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
