.class public Lcom/tencent/thumbplayer/tplayer/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/thumbplayer/api/reportv2/ITPExtendReportController;
.implements Lcom/tencent/thumbplayer/e/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/thumbplayer/tplayer/a/g$a;
    }
.end annotation


# static fields
.field private static final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/tencent/thumbplayer/api/reportv2/ITPReportInfoGetter;

.field private b:Landroid/os/HandlerThread;

.field private c:Lcom/tencent/thumbplayer/tplayer/a/g$a;

.field private d:Lcom/tencent/thumbplayer/tplayer/a/a;

.field private e:Lcom/tencent/thumbplayer/tplayer/a/l;

.field private f:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tencent/thumbplayer/api/reportv2/ITPReportChannelListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private g:Landroid/content/Context;

.field private h:Lcom/tencent/thumbplayer/tplayer/a/a/a;

.field private i:Lcom/tencent/thumbplayer/tplayer/a/h;

.field private j:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/thumbplayer/tplayer/a/g;->k:Ljava/util/Map;

    sget-object v0, Lcom/tencent/thumbplayer/tplayer/a/g;->k:Ljava/util/Map;

    const/16 v1, 0x77

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/thumbplayer/tplayer/a/g;->k:Ljava/util/Map;

    const/16 v1, 0xcb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/thumbplayer/tplayer/a/g;->k:Ljava/util/Map;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/thumbplayer/tplayer/a/g;->k:Ljava/util/Map;

    const/16 v2, 0x65

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/thumbplayer/tplayer/a/g;->k:Ljava/util/Map;

    const/16 v3, 0x66

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/thumbplayer/tplayer/a/g;->k:Ljava/util/Map;

    const/16 v4, 0x67

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/thumbplayer/tplayer/a/g;->k:Ljava/util/Map;

    const/16 v4, 0x68

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/thumbplayer/tplayer/a/g;->k:Ljava/util/Map;

    const/16 v4, 0x6e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/thumbplayer/tplayer/a/g;->k:Ljava/util/Map;

    const/16 v4, 0x6d

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/thumbplayer/tplayer/a/g;->k:Ljava/util/Map;

    const/16 v4, 0x6c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/thumbplayer/tplayer/a/g;->k:Ljava/util/Map;

    const/16 v4, 0x69

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/thumbplayer/tplayer/a/g;->k:Ljava/util/Map;

    const/16 v4, 0x6a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/thumbplayer/tplayer/a/g;->k:Ljava/util/Map;

    const/16 v4, 0x6b

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/thumbplayer/tplayer/a/g;->k:Ljava/util/Map;

    const/16 v4, 0x6f

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/thumbplayer/tplayer/a/g;->k:Ljava/util/Map;

    const/16 v4, 0x70

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0xa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/thumbplayer/tplayer/a/g;->k:Ljava/util/Map;

    const/16 v4, 0x72

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0xb

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/thumbplayer/tplayer/a/g;->k:Ljava/util/Map;

    const/16 v4, 0x73

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0xc

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/thumbplayer/tplayer/a/g;->k:Ljava/util/Map;

    const/16 v4, 0xc8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/thumbplayer/tplayer/a/g;->k:Ljava/util/Map;

    const/16 v1, 0xc9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/thumbplayer/tplayer/a/g;->k:Ljava/util/Map;

    const/16 v1, 0xca

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/thumbplayer/tplayer/a/g;->k:Ljava/util/Map;

    const/16 v1, 0x74

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/thumbplayer/tplayer/a/g;->k:Ljava/util/Map;

    const/16 v1, 0x71

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/thumbplayer/tplayer/a/g;->k:Ljava/util/Map;

    const/16 v1, 0x76

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/tencent/thumbplayer/tplayer/a/g;)Lcom/tencent/thumbplayer/tplayer/a/a;
    .locals 0

    iget-object p0, p0, Lcom/tencent/thumbplayer/tplayer/a/g;->d:Lcom/tencent/thumbplayer/tplayer/a/a;

    return-object p0
.end method

.method private a(I)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/g;->d:Lcom/tencent/thumbplayer/tplayer/a/a;

    const-string v1, "TPReportController"

    if-eqz v0, :cond_0

    const-string p1, "mITPReporter has been create, do not create again."

    :goto_0
    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/tencent/thumbplayer/tplayer/a/k;->a(I)Lcom/tencent/thumbplayer/tplayer/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/g;->d:Lcom/tencent/thumbplayer/tplayer/a/a;

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/g;->d:Lcom/tencent/thumbplayer/tplayer/a/a;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initReporter("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") fail, mITPReporter is null."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/a/g;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/thumbplayer/tplayer/a/g;->e:Lcom/tencent/thumbplayer/tplayer/a/l;

    invoke-interface {v0, p1, v1}, Lcom/tencent/thumbplayer/tplayer/a/a;->a(Landroid/content/Context;Lcom/tencent/thumbplayer/tplayer/a/l;)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/a/g;->d:Lcom/tencent/thumbplayer/tplayer/a/a;

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/g;->a:Lcom/tencent/thumbplayer/api/reportv2/ITPReportInfoGetter;

    invoke-interface {p1, v0}, Lcom/tencent/thumbplayer/tplayer/a/a;->a(Lcom/tencent/thumbplayer/api/reportv2/ITPReportInfoGetter;)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/a/g;->d:Lcom/tencent/thumbplayer/tplayer/a/a;

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/g;->h:Lcom/tencent/thumbplayer/tplayer/a/a/a;

    invoke-interface {p1, v0}, Lcom/tencent/thumbplayer/tplayer/a/a;->a(Lcom/tencent/thumbplayer/tplayer/a/a/a;)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/a/g;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/thumbplayer/api/reportv2/ITPReportChannelListener;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/tencent/thumbplayer/tplayer/a/g;->d:Lcom/tencent/thumbplayer/tplayer/a/a;

    invoke-interface {v1, v0}, Lcom/tencent/thumbplayer/tplayer/a/a;->a(Lcom/tencent/thumbplayer/api/reportv2/ITPReportChannelListener;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private a(ILjava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2}, Lcom/tencent/thumbplayer/tplayer/a/g;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2}, Lcom/tencent/thumbplayer/tplayer/a/g;->e(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2}, Lcom/tencent/thumbplayer/tplayer/a/g;->d(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p2}, Lcom/tencent/thumbplayer/tplayer/a/g;->c(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, p2}, Lcom/tencent/thumbplayer/tplayer/a/g;->b(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/tencent/thumbplayer/tplayer/a/g;ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/thumbplayer/tplayer/a/g;->a(ILjava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .locals 4

    instance-of v0, p1, Lcom/tencent/thumbplayer/e/b;

    const-string v1, "TPReportController"

    if-nez v0, :cond_0

    const-string p1, "onSetDataSource params class is not match:"

    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    check-cast p1, Lcom/tencent/thumbplayer/e/b;

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/g;->e:Lcom/tencent/thumbplayer/tplayer/a/l;

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/e/b;->c()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/thumbplayer/tplayer/a/l;->b:J

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TPPlayerAdapter setDataSource time:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/g;->e:Lcom/tencent/thumbplayer/tplayer/a/l;

    iget-wide v2, v0, Lcom/tencent/thumbplayer/tplayer/a/l;->b:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(ILjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2}, Lcom/tencent/thumbplayer/tplayer/a/g;->g(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2}, Lcom/tencent/thumbplayer/tplayer/a/g;->f(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/tencent/thumbplayer/tplayer/a/g;ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/thumbplayer/tplayer/a/g;->b(ILjava/lang/Object;)V

    return-void
.end method

.method private b(Ljava/lang/Object;)V
    .locals 7

    instance-of v0, p1, Lcom/tencent/thumbplayer/e/b;

    const-string v1, "TPReportController"

    if-nez v0, :cond_0

    const-string p1, "onSetPlayerConfigParams fail:params is not instanceof TPPlayerEvent"

    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    check-cast p1, Lcom/tencent/thumbplayer/e/b;

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/e/b;->b()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v2, v0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    const/4 v2, 0x0

    aget-object v3, v0, v2

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    aget-object v4, v0, v3

    instance-of v4, v4, Ljava/lang/Integer;

    if-eqz v4, :cond_2

    const/4 v4, 0x2

    aget-object v5, v0, v4

    instance-of v5, v5, Ljava/lang/Boolean;

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/String;

    aget-object v3, v0, v3

    check-cast v3, Ljava/lang/Integer;

    aget-object v0, v0, v4

    check-cast v0, Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/tencent/thumbplayer/tplayer/a/g;->e:Lcom/tencent/thumbplayer/tplayer/a/l;

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/e/b;->c()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/tencent/thumbplayer/tplayer/a/l;->a:J

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/a/g;->e:Lcom/tencent/thumbplayer/tplayer/a/l;

    iput-object v2, p1, Lcom/tencent/thumbplayer/tplayer/a/l;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p1, Lcom/tencent/thumbplayer/tplayer/a/l;->h:Z

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/a/g;->e:Lcom/tencent/thumbplayer/tplayer/a/l;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/tencent/thumbplayer/tplayer/a/l;->f:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSetPlayerConfigParams original url:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/g;->e:Lcom/tencent/thumbplayer/tplayer/a/l;

    iget-object v0, v0, Lcom/tencent/thumbplayer/tplayer/a/l;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " isUseProxy:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/g;->e:Lcom/tencent/thumbplayer/tplayer/a/l;

    iget-boolean v0, v0, Lcom/tencent/thumbplayer/tplayer/a/l;->h:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " urlProtocol:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/g;->e:Lcom/tencent/thumbplayer/tplayer/a/l;

    iget v0, v0, Lcom/tencent/thumbplayer/tplayer/a/l;->f:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    const-string p1, "onSetPlayerConfigParams fail:eventParams is not match"

    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/g;->i:Lcom/tencent/thumbplayer/tplayer/a/h;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tplayer/a/h;->b(I)Z

    move-result v0

    const-string v1, "TPReportController"

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPrepareStart Current state is not match:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/g;->i:Lcom/tencent/thumbplayer/tplayer/a/h;

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tplayer/a/h;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/g;->i:Lcom/tencent/thumbplayer/tplayer/a/h;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/tencent/thumbplayer/tplayer/a/h;->a(I)V

    instance-of v0, p1, Lcom/tencent/thumbplayer/e/b;

    if-nez v0, :cond_1

    const-string p1, "onPrepareStart params class is not match:"

    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    check-cast p1, Lcom/tencent/thumbplayer/e/b;

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/g;->e:Lcom/tencent/thumbplayer/tplayer/a/l;

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/e/b;->c()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/thumbplayer/tplayer/a/l;->c:J

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/g;->e:Lcom/tencent/thumbplayer/tplayer/a/l;

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/e/b;->d()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/thumbplayer/tplayer/a/l;->d:J

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/a/g;->e:Lcom/tencent/thumbplayer/tplayer/a/l;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/thumbplayer/config/TPPlayerConfig;->getPlatform()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/thumbplayer/tplayer/a/l;->i:Ljava/lang/String;

    return-void
.end method

.method private d(Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/g;->i:Lcom/tencent/thumbplayer/tplayer/a/h;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tplayer/a/h;->b(I)Z

    move-result v0

    const-string v2, "TPReportController"

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPrepareEnd Current state is not match:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/g;->i:Lcom/tencent/thumbplayer/tplayer/a/h;

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tplayer/a/h;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {v2, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/g;->i:Lcom/tencent/thumbplayer/tplayer/a/h;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/tencent/thumbplayer/tplayer/a/h;->a(I)V

    if-nez p1, :cond_1

    const-string p1, "onPrepareEnd params is null"

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/tencent/thumbplayer/e/b;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPrepareEnd params class:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not match:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/tencent/thumbplayer/e/b;

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/e/b;->b()[Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_3

    const-string p1, "onPrepareEnd objectParams is null"

    goto :goto_0

    :cond_3
    array-length v0, p1

    if-eq v0, v1, :cond_4

    const-string p1, "onPrepareEnd objectParams length is not match"

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    aget-object v1, p1, v0

    instance-of v1, v1, Ljava/lang/Long;

    if-nez v1, :cond_5

    const-string p1, "onPrepareEnd objectParams[0] is not Long"

    goto :goto_0

    :cond_5
    aget-object v1, p1, v0

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/4 v1, 0x1

    aget-object v5, p1, v1

    instance-of v5, v5, Ljava/lang/Integer;

    if-nez v5, :cond_6

    const-string p1, "onPrepareEnd objectParams[1] is not Integer"

    goto :goto_0

    :cond_6
    iget-object v5, p0, Lcom/tencent/thumbplayer/tplayer/a/g;->e:Lcom/tencent/thumbplayer/tplayer/a/l;

    aget-object p1, p1, v1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v5, Lcom/tencent/thumbplayer/tplayer/a/l;->g:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPrepareEnd durationMs:"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " playType:"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/tencent/thumbplayer/tplayer/a/g;->e:Lcom/tencent/thumbplayer/tplayer/a/l;

    iget v5, v5, Lcom/tencent/thumbplayer/tplayer/a/l;->g:I

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-gtz p1, :cond_7

    invoke-direct {p0, v1}, Lcom/tencent/thumbplayer/tplayer/a/g;->a(I)V

    goto :goto_1

    :cond_7
    invoke-direct {p0, v0}, Lcom/tencent/thumbplayer/tplayer/a/g;->a(I)V

    :goto_1
    return-void
.end method

.method private e(Ljava/lang/Object;)V
    .locals 1

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/a/g;->i:Lcom/tencent/thumbplayer/tplayer/a/h;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/tencent/thumbplayer/tplayer/a/h;->b(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, v0}, Lcom/tencent/thumbplayer/tplayer/a/g;->a(I)V

    :cond_0
    return-void
.end method

.method private f(Ljava/lang/Object;)V
    .locals 1

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/a/g;->i:Lcom/tencent/thumbplayer/tplayer/a/h;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/tencent/thumbplayer/tplayer/a/h;->a(I)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/a/g;->d:Lcom/tencent/thumbplayer/tplayer/a/a;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/tencent/thumbplayer/tplayer/a/a;->a()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tencent/thumbplayer/tplayer/a/g;->d:Lcom/tencent/thumbplayer/tplayer/a/a;

    :cond_0
    new-instance p1, Lcom/tencent/thumbplayer/tplayer/a/l;

    invoke-direct {p1}, Lcom/tencent/thumbplayer/tplayer/a/l;-><init>()V

    iput-object p1, p0, Lcom/tencent/thumbplayer/tplayer/a/g;->e:Lcom/tencent/thumbplayer/tplayer/a/l;

    return-void
.end method

.method private g(Ljava/lang/Object;)V
    .locals 4

    const-string p1, "TPReportController"

    const-string v0, "onControllerRelease"

    invoke-static {p1, v0}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/a/g;->j:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/g;->b:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/thumbplayer/utils/o;->a()Lcom/tencent/thumbplayer/utils/o;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/thumbplayer/tplayer/a/g;->b:Landroid/os/HandlerThread;

    iget-object v3, p0, Lcom/tencent/thumbplayer/tplayer/a/g;->c:Lcom/tencent/thumbplayer/tplayer/a/g$a;

    invoke-virtual {v0, v2, v3}, Lcom/tencent/thumbplayer/utils/o;->a(Landroid/os/HandlerThread;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/tencent/thumbplayer/tplayer/a/g;->b:Landroid/os/HandlerThread;

    iput-object v1, p0, Lcom/tencent/thumbplayer/tplayer/a/g;->c:Lcom/tencent/thumbplayer/tplayer/a/g$a;

    :cond_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/g;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/g;->j:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    iput-object v1, p0, Lcom/tencent/thumbplayer/tplayer/a/g;->j:Ljava/lang/Object;

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Lcom/tencent/thumbplayer/e/b;)V
    .locals 3

    sget-object v0, Lcom/tencent/thumbplayer/tplayer/a/g;->k:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/e/b;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EventId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/e/b;->a()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not need process"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TPReportController"

    invoke-static {v0, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/g;->c:Lcom/tencent/thumbplayer/tplayer/a/g$a;

    sget-object v1, Lcom/tencent/thumbplayer/tplayer/a/g;->k:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/e/b;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/tencent/thumbplayer/tplayer/a/g$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public addReportChannelListener(Lcom/tencent/thumbplayer/api/reportv2/ITPReportChannelListener;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/g;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string v1, "TPReportController"

    if-nez v0, :cond_0

    const-string p1, "mReportChannelListenerList is null"

    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/thumbplayer/api/reportv2/ITPReportChannelListener;

    if-ne v2, p1, :cond_1

    const-string p1, "mReportChannelListenerList has contain reportChannelListener"

    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/a/g;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setReportInfoGetter(Lcom/tencent/thumbplayer/api/reportv2/ITPReportInfoGetter;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/thumbplayer/tplayer/a/g;->a:Lcom/tencent/thumbplayer/api/reportv2/ITPReportInfoGetter;

    return-void
.end method
