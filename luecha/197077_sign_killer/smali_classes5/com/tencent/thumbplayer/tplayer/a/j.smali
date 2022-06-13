.class public Lcom/tencent/thumbplayer/tplayer/a/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/thumbplayer/utils/i$b;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;


# instance fields
.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/tencent/thumbplayer/core/common/TPSystemInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/thumbplayer/tplayer/a/j;->a:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/thumbplayer/core/common/TPSystemInfo;->getOsVersion()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "android %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/thumbplayer/tplayer/a/j;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/j;->c:Landroid/content/Context;

    iput-object p1, p0, Lcom/tencent/thumbplayer/tplayer/a/j;->c:Landroid/content/Context;

    invoke-static {}, Lcom/tencent/thumbplayer/utils/i;->a()Lcom/tencent/thumbplayer/utils/i;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/tencent/thumbplayer/utils/i;->a(Lcom/tencent/thumbplayer/utils/i$b;)V

    return-void
.end method


# virtual methods
.method public a(IIII)V
    .locals 0

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/a/j;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/tencent/thumbplayer/utils/h;->b(Landroid/content/Context;)V

    return-void
.end method

.method public a(Lcom/tencent/thumbplayer/tplayer/a/b/a;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/tencent/thumbplayer/tplayer/a/b/a;->b(I)V

    invoke-virtual {p1, v0}, Lcom/tencent/thumbplayer/tplayer/a/b/a;->c(I)V

    iget-object v1, p0, Lcom/tencent/thumbplayer/tplayer/a/j;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/thumbplayer/utils/h;->a(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/tencent/thumbplayer/tplayer/a/b/a;->d(I)V

    sget-object v1, Lcom/tencent/thumbplayer/tplayer/a/j;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/tencent/thumbplayer/tplayer/a/b/a;->b(Ljava/lang/String;)V

    sget-object v1, Lcom/tencent/thumbplayer/tplayer/a/j;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/tencent/thumbplayer/tplayer/a/b/a;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/thumbplayer/tplayer/a/j;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/tencent/thumbplayer/tplayer/a/b/a;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/thumbplayer/tplayer/a/j;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/thumbplayer/config/TPPlayerConfig;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/tencent/thumbplayer/tplayer/a/b/a;->f(Ljava/lang/String;)V

    const-string v1, "1.0.0"

    invoke-virtual {p1, v1}, Lcom/tencent/thumbplayer/tplayer/a/b/a;->g(Ljava/lang/String;)V

    const-string v1, "2.27.0.1123"

    invoke-virtual {p1, v1}, Lcom/tencent/thumbplayer/tplayer/a/b/a;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/thumbplayer/config/TPPlayerConfig;->getPlatform()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/tencent/thumbplayer/tplayer/a/b/a;->l(I)V

    invoke-virtual {p1, v0}, Lcom/tencent/thumbplayer/tplayer/a/b/a;->a(I)V

    return-void
.end method

.method public b(Lcom/tencent/thumbplayer/tplayer/a/b/a;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/j;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/thumbplayer/utils/h;->a(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tencent/thumbplayer/tplayer/a/b/a;->d(I)V

    return-void
.end method
