.class public Lcom/tencent/liteav/audio/impl/route/h$a;
.super Ljava/lang/Object;
.source "TXCDeviceConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/audio/impl/route/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DEVICE_NONE"

    .line 25
    iput-object v0, p0, Lcom/tencent/liteav/audio/impl/route/h$a;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/tencent/liteav/audio/impl/route/h$a;->b:Z

    .line 27
    iput v0, p0, Lcom/tencent/liteav/audio/impl/route/h$a;->c:I

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/audio/impl/route/h$a;)Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/tencent/liteav/audio/impl/route/h$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/tencent/liteav/audio/impl/route/h$a;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcom/tencent/liteav/audio/impl/route/h$a;->b:Z

    return p0
.end method

.method static synthetic c(Lcom/tencent/liteav/audio/impl/route/h$a;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/tencent/liteav/audio/impl/route/h$a;->c:I

    return p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/h$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Z)V
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/tencent/liteav/audio/impl/route/h$a;->b:Z

    return-void
.end method

.method public a(Ljava/lang/String;I)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 33
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    invoke-static {p1}, Lcom/tencent/liteav/audio/impl/route/h;->f(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    return v0

    .line 39
    :cond_1
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/route/h$a;->a:Ljava/lang/String;

    .line 40
    iput p2, p0, Lcom/tencent/liteav/audio/impl/route/h$a;->c:I

    return v2

    :cond_2
    :goto_0
    return v0
.end method

.method public b()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/impl/route/h$a;->b:Z

    return v0
.end method

.method public c()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/tencent/liteav/audio/impl/route/h$a;->c:I

    return v0
.end method
