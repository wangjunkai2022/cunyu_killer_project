.class public Lcom/tencent/thumbplayer/tplayer/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/thumbplayer/api/ITPPlayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/thumbplayer/tplayer/b$a;,
        Lcom/tencent/thumbplayer/tplayer/b$b;
    }
.end annotation


# static fields
.field private static final D:Landroid/util/SparseIntArray;

.field private static a:Ljava/lang/String; = "api call:"

.field private static u:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private A:J

.field private B:I

.field private C:I

.field private final b:Lcom/tencent/thumbplayer/adapter/a;

.field private c:Lcom/tencent/thumbplayer/tplayer/c;

.field private d:Lcom/tencent/thumbplayer/d/a;

.field private e:Lcom/tencent/thumbplayer/tplayer/plugins/report/b;

.field private f:Lcom/tencent/thumbplayer/d/a/a;

.field private g:Lcom/tencent/thumbplayer/tplayer/plugins/b;

.field private h:Landroid/os/HandlerThread;

.field private i:Landroid/os/Looper;

.field private j:Lcom/tencent/thumbplayer/tplayer/b$a;

.field private k:Landroid/content/Context;

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Z

.field private o:I

.field private p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private q:J

.field private r:J

.field private s:J

.field private t:Lcom/tencent/thumbplayer/f/a;

.field private v:Ljava/util/concurrent/atomic/AtomicInteger;

.field private w:Z

.field private x:Lcom/tencent/thumbplayer/e/c;

.field private y:Lcom/tencent/thumbplayer/tplayer/a/g;

.field private z:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/tencent/thumbplayer/tplayer/b;->u:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/tencent/thumbplayer/tplayer/b;->D:Landroid/util/SparseIntArray;

    sget-object v0, Lcom/tencent/thumbplayer/tplayer/b;->D:Landroid/util/SparseIntArray;

    const/16 v1, 0x6a

    const/16 v2, 0x3ed

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/tencent/thumbplayer/tplayer/b;->D:Landroid/util/SparseIntArray;

    const/16 v1, 0x69

    const/16 v2, 0x3ee

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/thumbplayer/tplayer/b;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/thumbplayer/tplayer/b;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/tencent/thumbplayer/tplayer/b;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;Lcom/tencent/thumbplayer/f/b;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;Lcom/tencent/thumbplayer/f/b;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->l:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/thumbplayer/tplayer/b;->m:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/tencent/thumbplayer/tplayer/b;->n:Z

    const/4 v3, -0x1

    iput v3, p0, Lcom/tencent/thumbplayer/tplayer/b;->o:I

    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v4, 0x3e8

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v3, p0, Lcom/tencent/thumbplayer/tplayer/b;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-boolean v2, p0, Lcom/tencent/thumbplayer/tplayer/b;->w:Z

    new-instance v2, Lcom/tencent/thumbplayer/e/c;

    invoke-direct {v2}, Lcom/tencent/thumbplayer/e/c;-><init>()V

    iput-object v2, p0, Lcom/tencent/thumbplayer/tplayer/b;->x:Lcom/tencent/thumbplayer/e/c;

    iput-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->y:Lcom/tencent/thumbplayer/tplayer/a/g;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->z:Ljava/util/Map;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/tencent/thumbplayer/tplayer/b;->A:J

    const-string v0, "TPPlayer"

    if-eqz p4, :cond_0

    new-instance v1, Lcom/tencent/thumbplayer/f/b;

    invoke-direct {v1, p4, v0}, Lcom/tencent/thumbplayer/f/b;-><init>(Lcom/tencent/thumbplayer/f/b;Ljava/lang/String;)V

    move-object p4, v1

    goto :goto_0

    :cond_0
    new-instance p4, Lcom/tencent/thumbplayer/f/b;

    sget-object v2, Lcom/tencent/thumbplayer/tplayer/b;->u:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/thumbplayer/tplayer/b;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ThumbPlayer"

    invoke-direct {p4, v4, v2, v3, v0}, Lcom/tencent/thumbplayer/f/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/tencent/thumbplayer/tplayer/b;->w:Z

    :goto_0
    new-instance v0, Lcom/tencent/thumbplayer/f/a;

    invoke-direct {v0, p4}, Lcom/tencent/thumbplayer/f/a;-><init>(Lcom/tencent/thumbplayer/f/b;)V

    iput-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    const-string v1, "create TPPlayer"

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/f/a;->c(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->k:Landroid/content/Context;

    new-instance v0, Lcom/tencent/thumbplayer/tplayer/plugins/c;

    invoke-direct {v0}, Lcom/tencent/thumbplayer/tplayer/plugins/c;-><init>()V

    iput-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->g:Lcom/tencent/thumbplayer/tplayer/plugins/b;

    new-instance v0, Lcom/tencent/thumbplayer/tplayer/plugins/report/b;

    iget-object v1, p0, Lcom/tencent/thumbplayer/tplayer/b;->k:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/thumbplayer/tplayer/plugins/report/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->e:Lcom/tencent/thumbplayer/tplayer/plugins/report/b;

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->g:Lcom/tencent/thumbplayer/tplayer/plugins/b;

    iget-object v1, p0, Lcom/tencent/thumbplayer/tplayer/b;->e:Lcom/tencent/thumbplayer/tplayer/plugins/report/b;

    invoke-interface {v0, v1}, Lcom/tencent/thumbplayer/tplayer/plugins/b;->a(Lcom/tencent/thumbplayer/tplayer/plugins/a;)V

    const/16 v3, 0x64

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v0, Lcom/tencent/thumbplayer/utils/g;

    invoke-direct {v0}, Lcom/tencent/thumbplayer/utils/g;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "stime"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/thumbplayer/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/utils/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/utils/g;->a()Ljava/util/Map;

    move-result-object v7

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/tencent/thumbplayer/tplayer/b;->a(IIILjava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/tencent/thumbplayer/tplayer/b$b;

    invoke-direct {v0, p0}, Lcom/tencent/thumbplayer/tplayer/b$b;-><init>(Lcom/tencent/thumbplayer/tplayer/b;)V

    new-instance v1, Lcom/tencent/thumbplayer/tplayer/c;

    iget-object v2, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    invoke-virtual {v2}, Lcom/tencent/thumbplayer/f/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/thumbplayer/tplayer/c;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/tencent/thumbplayer/tplayer/b;->c:Lcom/tencent/thumbplayer/tplayer/c;

    new-instance v1, Lcom/tencent/thumbplayer/adapter/d;

    iget-object v2, p0, Lcom/tencent/thumbplayer/tplayer/b;->k:Landroid/content/Context;

    invoke-direct {v1, v2, p4}, Lcom/tencent/thumbplayer/adapter/d;-><init>(Landroid/content/Context;Lcom/tencent/thumbplayer/f/b;)V

    iput-object v1, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    iget-object p4, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {p4, v0}, Lcom/tencent/thumbplayer/adapter/a;->a(Lcom/tencent/thumbplayer/adapter/a/c$i;)V

    iget-object p4, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {p4, v0}, Lcom/tencent/thumbplayer/adapter/a;->a(Lcom/tencent/thumbplayer/adapter/a/c$c;)V

    iget-object p4, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {p4, v0}, Lcom/tencent/thumbplayer/adapter/a;->a(Lcom/tencent/thumbplayer/adapter/a/c$h;)V

    iget-object p4, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {p4, v0}, Lcom/tencent/thumbplayer/adapter/a;->a(Lcom/tencent/thumbplayer/adapter/a/c$p;)V

    iget-object p4, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {p4, v0}, Lcom/tencent/thumbplayer/adapter/a;->a(Lcom/tencent/thumbplayer/adapter/a/c$f;)V

    iget-object p4, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {p4, v0}, Lcom/tencent/thumbplayer/adapter/a;->a(Lcom/tencent/thumbplayer/adapter/a/c$j;)V

    iget-object p4, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {p4, v0}, Lcom/tencent/thumbplayer/adapter/a;->a(Lcom/tencent/thumbplayer/adapter/a/c$p;)V

    iget-object p4, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {p4, v0}, Lcom/tencent/thumbplayer/adapter/a;->a(Lcom/tencent/thumbplayer/adapter/a/c$l;)V

    iget-object p4, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {p4, v0}, Lcom/tencent/thumbplayer/adapter/a;->a(Lcom/tencent/thumbplayer/adapter/a/c$m;)V

    iget-object p4, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {p4, v0}, Lcom/tencent/thumbplayer/adapter/a;->a(Lcom/tencent/thumbplayer/adapter/a/c$a;)V

    iget-object p4, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {p4, v0}, Lcom/tencent/thumbplayer/adapter/a;->a(Lcom/tencent/thumbplayer/adapter/a/c$n;)V

    iget-object p4, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {p4, v0}, Lcom/tencent/thumbplayer/adapter/a;->a(Lcom/tencent/thumbplayer/adapter/a/c$o;)V

    iget-object p4, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {p4, v0}, Lcom/tencent/thumbplayer/adapter/a;->a(Lcom/tencent/thumbplayer/adapter/a/c$b;)V

    iget-object p4, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {p4, v0}, Lcom/tencent/thumbplayer/adapter/a;->a(Lcom/tencent/thumbplayer/adapter/a/c$k;)V

    iget-object p4, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {p4, v0}, Lcom/tencent/thumbplayer/adapter/a;->a(Lcom/tencent/thumbplayer/adapter/a/c$e;)V

    iget-object p4, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {p4, v0}, Lcom/tencent/thumbplayer/adapter/a;->a(Lcom/tencent/thumbplayer/adapter/a/c$d;)V

    iget-object p4, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {p4, v0}, Lcom/tencent/thumbplayer/adapter/a;->a(Lcom/tencent/thumbplayer/adapter/a/c$g;)V

    if-eqz p2, :cond_1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    if-ne p2, p4, :cond_2

    :cond_1
    invoke-static {}, Lcom/tencent/thumbplayer/utils/o;->a()Lcom/tencent/thumbplayer/utils/o;

    move-result-object p2

    const-string p4, "TP-workthread"

    invoke-virtual {p2, p4}, Lcom/tencent/thumbplayer/utils/o;->a(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object p2

    iput-object p2, p0, Lcom/tencent/thumbplayer/tplayer/b;->h:Landroid/os/HandlerThread;

    iget-object p2, p0, Lcom/tencent/thumbplayer/tplayer/b;->h:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    :cond_2
    iput-object p2, p0, Lcom/tencent/thumbplayer/tplayer/b;->i:Landroid/os/Looper;

    if-nez p3, :cond_4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    if-nez p2, :cond_3

    new-instance p2, Lcom/tencent/thumbplayer/tplayer/b$a;

    iget-object p3, p0, Lcom/tencent/thumbplayer/tplayer/b;->i:Landroid/os/Looper;

    invoke-direct {p2, p0, p0, p3}, Lcom/tencent/thumbplayer/tplayer/b$a;-><init>(Lcom/tencent/thumbplayer/tplayer/b;Lcom/tencent/thumbplayer/tplayer/b;Landroid/os/Looper;)V

    goto :goto_1

    :cond_3
    new-instance p2, Lcom/tencent/thumbplayer/tplayer/b$a;

    invoke-direct {p2, p0, p0}, Lcom/tencent/thumbplayer/tplayer/b$a;-><init>(Lcom/tencent/thumbplayer/tplayer/b;Lcom/tencent/thumbplayer/tplayer/b;)V

    goto :goto_1

    :cond_4
    new-instance p2, Lcom/tencent/thumbplayer/tplayer/b$a;

    invoke-direct {p2, p0, p0, p3}, Lcom/tencent/thumbplayer/tplayer/b$a;-><init>(Lcom/tencent/thumbplayer/tplayer/b;Lcom/tencent/thumbplayer/tplayer/b;Landroid/os/Looper;)V

    :goto_1
    iput-object p2, p0, Lcom/tencent/thumbplayer/tplayer/b;->j:Lcom/tencent/thumbplayer/tplayer/b$a;

    const/16 v2, 0x65

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance p2, Lcom/tencent/thumbplayer/utils/g;

    invoke-direct {p2}, Lcom/tencent/thumbplayer/utils/g;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string p4, "etime"

    invoke-virtual {p2, p4, p3}, Lcom/tencent/thumbplayer/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/utils/g;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tencent/thumbplayer/utils/g;->a()Ljava/util/Map;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/tencent/thumbplayer/tplayer/b;->a(IIILjava/lang/String;Ljava/lang/Object;)V

    new-instance p2, Lcom/tencent/thumbplayer/d/c;

    iget-object p3, p0, Lcom/tencent/thumbplayer/tplayer/b;->i:Landroid/os/Looper;

    invoke-direct {p2, p1, p3}, Lcom/tencent/thumbplayer/d/c;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/tencent/thumbplayer/tplayer/b;->d:Lcom/tencent/thumbplayer/d/a;

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/b;->d:Lcom/tencent/thumbplayer/d/a;

    invoke-interface {p1, v0}, Lcom/tencent/thumbplayer/d/a;->a(Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPPlayListener;)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/b;->g:Lcom/tencent/thumbplayer/tplayer/plugins/b;

    new-instance p2, Lcom/tencent/thumbplayer/tplayer/plugins/report/c;

    invoke-direct {p2}, Lcom/tencent/thumbplayer/tplayer/plugins/report/c;-><init>()V

    invoke-interface {p1, p2}, Lcom/tencent/thumbplayer/tplayer/plugins/b;->a(Lcom/tencent/thumbplayer/tplayer/plugins/a;)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/b;->g:Lcom/tencent/thumbplayer/tplayer/plugins/b;

    new-instance p2, Lcom/tencent/thumbplayer/tplayer/plugins/report/a;

    invoke-direct {p2}, Lcom/tencent/thumbplayer/tplayer/plugins/report/a;-><init>()V

    invoke-interface {p1, p2}, Lcom/tencent/thumbplayer/tplayer/plugins/b;->a(Lcom/tencent/thumbplayer/tplayer/plugins/a;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/tencent/thumbplayer/tplayer/b;->p:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lcom/tencent/thumbplayer/tplayer/b;I)I
    .locals 0

    iput p1, p0, Lcom/tencent/thumbplayer/tplayer/b;->o:I

    return p1
.end method

.method private a(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->d:Lcom/tencent/thumbplayer/d/a;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/d/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x5

    return p1

    :cond_0
    invoke-static {p1}, Lcom/tencent/thumbplayer/utils/r;->a(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private a(JLjava/lang/String;)J
    .locals 3

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->z:Ljava/util/Map;

    iget-wide v1, p0, Lcom/tencent/thumbplayer/tplayer/b;->A:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", convert opaque("

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ") => uniqueId("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p1, p0, Lcom/tencent/thumbplayer/tplayer/b;->A:J

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/f/a;->c(Ljava/lang/String;)V

    iget-wide p1, p0, Lcom/tencent/thumbplayer/tplayer/b;->A:J

    const-wide/16 v0, 0x1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->A:J

    return-wide p1
.end method

.method static synthetic a(Lcom/tencent/thumbplayer/tplayer/b;J)J
    .locals 0

    iput-wide p1, p0, Lcom/tencent/thumbplayer/tplayer/b;->q:J

    return-wide p1
.end method

.method static synthetic a(Lcom/tencent/thumbplayer/tplayer/b;JLjava/lang/String;)J
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/thumbplayer/tplayer/b;->b(JLjava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method private a(Lcom/tencent/thumbplayer/api/TPVideoInfo;II)Lcom/tencent/thumbplayer/api/TPVideoInfo;
    .locals 3

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateStartAndSkipEndTimeMsForDownloadParam, startTimeMs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", skipEndTimeMs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/f/a;->c(Ljava/lang/String;)V

    if-nez p1, :cond_0

    new-instance p1, Lcom/tencent/thumbplayer/api/TPVideoInfo$Builder;

    invoke-direct {p1}, Lcom/tencent/thumbplayer/api/TPVideoInfo$Builder;-><init>()V

    invoke-direct {p0, p2, p3}, Lcom/tencent/thumbplayer/tplayer/b;->b(II)Lcom/tencent/thumbplayer/api/proxy/TPDownloadParamData;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tencent/thumbplayer/api/TPVideoInfo$Builder;->downloadParam(Lcom/tencent/thumbplayer/api/proxy/TPDownloadParamData;)Lcom/tencent/thumbplayer/api/TPVideoInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/api/TPVideoInfo$Builder;->build()Lcom/tencent/thumbplayer/api/TPVideoInfo;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/tencent/thumbplayer/api/TPVideoInfo;->getDownloadPraramList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/thumbplayer/api/proxy/TPDownloadParamData;

    invoke-virtual {v1, p2}, Lcom/tencent/thumbplayer/api/proxy/TPDownloadParamData;->setStarTimeMS(I)V

    invoke-virtual {v1, p3}, Lcom/tencent/thumbplayer/api/proxy/TPDownloadParamData;->setEndTimeMS(I)V

    goto :goto_0

    :cond_2
    return-object p1

    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/tencent/thumbplayer/api/TPVideoInfo;->getBuilder()Lcom/tencent/thumbplayer/api/TPVideoInfo$Builder;

    move-result-object v0

    invoke-direct {p0, p2, p3}, Lcom/tencent/thumbplayer/tplayer/b;->b(II)Lcom/tencent/thumbplayer/api/proxy/TPDownloadParamData;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/tencent/thumbplayer/api/TPVideoInfo$Builder;->downloadParam(Lcom/tencent/thumbplayer/api/proxy/TPDownloadParamData;)Lcom/tencent/thumbplayer/api/TPVideoInfo$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tencent/thumbplayer/api/TPVideoInfo$Builder;->build()Lcom/tencent/thumbplayer/api/TPVideoInfo;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/thumbplayer/tplayer/b;)Lcom/tencent/thumbplayer/d/a;
    .locals 0

    iget-object p0, p0, Lcom/tencent/thumbplayer/tplayer/b;->d:Lcom/tencent/thumbplayer/d/a;

    return-object p0
.end method

.method private a(I)V
    .locals 2
    .param p1    # I
        .annotation runtime Lcom/tencent/thumbplayer/api/TPPlayerDetailInfo$TPPlayerDetailInfoType;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->j:Lcom/tencent/thumbplayer/tplayer/b$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tplayer/b$a;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x4e8

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Lcom/tencent/thumbplayer/api/TPPlayerDetailInfo;

    invoke-direct {v1, p1}, Lcom/tencent/thumbplayer/api/TPPlayerDetailInfo;-><init>(I)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/b;->j:Lcom/tencent/thumbplayer/tplayer/b$a;

    invoke-virtual {p1, v0}, Lcom/tencent/thumbplayer/tplayer/b$a;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private a(II)V
    .locals 8

    new-instance v0, Lcom/tencent/thumbplayer/utils/g;

    invoke-direct {v0}, Lcom/tencent/thumbplayer/utils/g;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "etime"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/thumbplayer/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/utils/g;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "reason"

    invoke-virtual {v0, v3, v2}, Lcom/tencent/thumbplayer/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/utils/g;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "code"

    invoke-virtual {v0, v3, v2}, Lcom/tencent/thumbplayer/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/utils/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/utils/g;->a()Ljava/util/Map;

    move-result-object v7

    const/16 v3, 0x6c

    const-string v6, ""

    move-object v2, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/tencent/thumbplayer/tplayer/b;->a(IIILjava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/b;->d:Lcom/tencent/thumbplayer/d/a;

    invoke-interface {p1, v1}, Lcom/tencent/thumbplayer/d/a;->a(I)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/b;->d:Lcom/tencent/thumbplayer/d/a;

    invoke-interface {p1}, Lcom/tencent/thumbplayer/d/a;->h()V

    return-void
.end method

.method private a(IIILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->j:Lcom/tencent/thumbplayer/tplayer/b$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tplayer/b$a;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    iput p2, v0, Landroid/os/Message;->arg1:I

    iput p3, v0, Landroid/os/Message;->arg2:I

    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/b;->j:Lcom/tencent/thumbplayer/tplayer/b$a;

    invoke-virtual {p1, v0}, Lcom/tencent/thumbplayer/tplayer/b$a;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private a(IIILjava/lang/String;Ljava/lang/Object;)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->g:Lcom/tencent/thumbplayer/tplayer/plugins/b;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/thumbplayer/tplayer/b;->g:Lcom/tencent/thumbplayer/tplayer/plugins/b;

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/tencent/thumbplayer/tplayer/plugins/b;->a(IIILjava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    invoke-virtual {p2, p1}, Lcom/tencent/thumbplayer/f/a;->a(Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private a(IJJLjava/lang/Object;)V
    .locals 8

    const/4 v1, 0x4

    const-string v2, "stime"

    const/16 v3, 0xc8

    if-ne p1, v3, :cond_0

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->d:Lcom/tencent/thumbplayer/d/a;

    invoke-interface {v0, v1}, Lcom/tencent/thumbplayer/d/a;->a(I)V

    const/16 v0, 0x72

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcom/tencent/thumbplayer/utils/g;

    invoke-direct {v5}, Lcom/tencent/thumbplayer/utils/g;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Lcom/tencent/thumbplayer/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/utils/g;

    move-result-object v2

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "format"

    invoke-virtual {v2, v6, v5}, Lcom/tencent/thumbplayer/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/utils/g;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tplayer/b;->getCurrentPositionMs()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "ptime"

    invoke-virtual {v2, v6, v5}, Lcom/tencent/thumbplayer/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/utils/g;

    move-result-object v2

    iget-object v5, p0, Lcom/tencent/thumbplayer/tplayer/b;->l:Ljava/lang/String;

    const-string v6, "url"

    invoke-virtual {v2, v6, v5}, Lcom/tencent/thumbplayer/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/utils/g;

    move-result-object v2

    :goto_0
    invoke-virtual {v2}, Lcom/tencent/thumbplayer/utils/g;->a()Ljava/util/Map;

    move-result-object v2

    move-object p1, p0

    move p2, v0

    move p3, v1

    move p4, v3

    move-object p5, v4

    move-object p6, v2

    :goto_1
    invoke-direct/range {p1 .. p6}, Lcom/tencent/thumbplayer/tplayer/b;->a(IIILjava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_0
    const/16 v3, 0xc9

    const-string v4, "etime"

    if-ne p1, v3, :cond_1

    invoke-direct {p0}, Lcom/tencent/thumbplayer/tplayer/b;->e()V

    const/16 v0, 0x73

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v5, Lcom/tencent/thumbplayer/utils/g;

    invoke-direct {v5}, Lcom/tencent/thumbplayer/utils/g;-><init>()V

    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/tencent/thumbplayer/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/utils/g;

    move-result-object v4

    :goto_3
    invoke-virtual {v4}, Lcom/tencent/thumbplayer/utils/g;->a()Ljava/util/Map;

    move-result-object v4

    move-object p1, p0

    move p2, v0

    move p3, v1

    move p4, v2

    move-object p5, v3

    move-object p6, v4

    goto :goto_1

    :cond_1
    const/4 v3, 0x3

    if-ne p1, v3, :cond_4

    const-wide/16 v0, -0x1

    instance-of v2, p6, Ljava/lang/Long;

    if-eqz v2, :cond_2

    move-object v0, p6

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :cond_2
    iget-object v2, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switch definition finish defId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/thumbplayer/f/a;->c(Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/tencent/thumbplayer/tplayer/b;->d:Lcom/tencent/thumbplayer/d/a;

    invoke-interface {v2, v0, v1}, Lcom/tencent/thumbplayer/d/a;->a(J)V

    :cond_3
    const/16 v2, 0x79

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Lcom/tencent/thumbplayer/utils/g;

    invoke-direct {v6}, Lcom/tencent/thumbplayer/utils/g;-><init>()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "switch"

    invoke-virtual {v6, v1, v0}, Lcom/tencent/thumbplayer/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/utils/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/utils/g;->a()Ljava/util/Map;

    move-result-object v0

    move-object p1, p0

    move p2, v2

    move p3, v3

    move p4, v4

    move-object p5, v5

    move-object p6, v0

    goto/16 :goto_1

    :cond_4
    const/16 v3, 0x6a

    if-ne p1, v3, :cond_5

    const/16 v0, 0x69

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v5, Lcom/tencent/thumbplayer/utils/g;

    invoke-direct {v5}, Lcom/tencent/thumbplayer/utils/g;-><init>()V

    goto/16 :goto_2

    :cond_5
    const/16 v3, 0x1f5

    if-ne p1, v3, :cond_6

    const/16 v1, 0x75

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/tencent/thumbplayer/tplayer/b;->a(IIILjava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_6
    const/16 v3, 0x6b

    if-ne p1, v3, :cond_7

    const/16 v0, 0x77

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcom/tencent/thumbplayer/utils/g;

    invoke-direct {v5}, Lcom/tencent/thumbplayer/utils/g;-><init>()V

    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Lcom/tencent/thumbplayer/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/utils/g;

    move-result-object v2

    goto/16 :goto_0

    :cond_7
    if-ne p1, v1, :cond_8

    const/16 v0, 0x7b

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v6, Lcom/tencent/thumbplayer/utils/g;

    invoke-direct {v6}, Lcom/tencent/thumbplayer/utils/g;-><init>()V

    const-string v7, "opaque"

    invoke-virtual {v6, v7, p6}, Lcom/tencent/thumbplayer/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/utils/g;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/tencent/thumbplayer/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/utils/g;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "code"

    invoke-virtual {v4, v6, v5}, Lcom/tencent/thumbplayer/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/utils/g;

    move-result-object v4

    goto/16 :goto_3

    :cond_8
    const/16 v1, 0x65

    if-ne p1, v1, :cond_9

    const/16 v0, 0x7c

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcom/tencent/thumbplayer/utils/g;

    invoke-direct {v5}, Lcom/tencent/thumbplayer/utils/g;-><init>()V

    goto :goto_4

    :cond_9
    const/16 v1, 0x1f9

    if-ne p1, v1, :cond_a

    instance-of v0, p6, Lcom/tencent/thumbplayer/api/TPPlayerMsg$TPMediaDrmInfo;

    if-eqz v0, :cond_a

    move-object v0, p6

    check-cast v0, Lcom/tencent/thumbplayer/api/TPPlayerMsg$TPMediaDrmInfo;

    iget-object v1, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TPMediaDrmInfo secureDecoder:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/tencent/thumbplayer/api/TPPlayerMsg$TPMediaDrmInfo;->supportSecureDecoder:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " secureDecrypt:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/tencent/thumbplayer/api/TPPlayerMsg$TPMediaDrmInfo;->supportSecureDecrypt:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " componentName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/tencent/thumbplayer/api/TPPlayerMsg$TPMediaDrmInfo;->componentName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " drmType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/tencent/thumbplayer/api/TPPlayerMsg$TPMediaDrmInfo;->drmType:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/thumbplayer/f/a;->c(Ljava/lang/String;)V

    :cond_a
    :goto_5
    return-void
.end method

.method private a(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/tencent/thumbplayer/api/TPPlayerDetailInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/tencent/thumbplayer/api/TPPlayerDetailInfo;

    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tplayer/b;->a(Lcom/tencent/thumbplayer/api/TPPlayerDetailInfo;)V

    return-void
.end method

.method private a(Lcom/tencent/thumbplayer/api/TPOptionalParam;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/tencent/thumbplayer/api/TPOptionalParam;->getKey()I

    move-result v0

    const/16 v1, 0xcd

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/api/TPOptionalParam;->getParamBoolean()Lcom/tencent/thumbplayer/api/TPOptionalParam$OptionalParamBoolean;

    move-result-object p1

    iget-boolean p1, p1, Lcom/tencent/thumbplayer/api/TPOptionalParam$OptionalParamBoolean;->value:Z

    iput-boolean p1, p0, Lcom/tencent/thumbplayer/tplayer/b;->m:Z

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPlayerOptionalParam, use p2p proxy, OPTION_ID_BEFORE_BOOLEAN_USE_PROXY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/thumbplayer/tplayer/b;->m:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/thumbplayer/f/a;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/tencent/thumbplayer/api/TPOptionalParam;->getKey()I

    move-result v0

    const/16 v1, 0x1fc

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/api/TPOptionalParam;->getParamBoolean()Lcom/tencent/thumbplayer/api/TPOptionalParam$OptionalParamBoolean;

    move-result-object p1

    iget-boolean p1, p1, Lcom/tencent/thumbplayer/api/TPOptionalParam$OptionalParamBoolean;->value:Z

    iput-boolean p1, p0, Lcom/tencent/thumbplayer/tplayer/b;->n:Z

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/tencent/thumbplayer/api/TPOptionalParam;->getKey()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/api/TPOptionalParam;->getParamLong()Lcom/tencent/thumbplayer/api/TPOptionalParam$OptionalParamLong;

    move-result-object p1

    iget-wide v0, p1, Lcom/tencent/thumbplayer/api/TPOptionalParam$OptionalParamLong;->value:J

    long-to-int p1, v0

    iput p1, p0, Lcom/tencent/thumbplayer/tplayer/b;->B:I

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/tencent/thumbplayer/api/TPOptionalParam;->getKey()I

    move-result v0

    const/16 v1, 0x1f4

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/api/TPOptionalParam;->getParamLong()Lcom/tencent/thumbplayer/api/TPOptionalParam$OptionalParamLong;

    move-result-object p1

    iget-wide v0, p1, Lcom/tencent/thumbplayer/api/TPOptionalParam$OptionalParamLong;->value:J

    long-to-int p1, v0

    iput p1, p0, Lcom/tencent/thumbplayer/tplayer/b;->C:I

    :cond_4
    :goto_0
    return-void
.end method

.method private a(Lcom/tencent/thumbplayer/api/TPPlayerDetailInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->c:Lcom/tencent/thumbplayer/tplayer/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, Lcom/tencent/thumbplayer/tplayer/c;->onDetailInfo(Lcom/tencent/thumbplayer/api/ITPPlayer;Lcom/tencent/thumbplayer/api/TPPlayerDetailInfo;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/tencent/thumbplayer/tplayer/b;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/thumbplayer/tplayer/b;->a(II)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/thumbplayer/tplayer/b;IIILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/thumbplayer/tplayer/b;->a(IIILjava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/thumbplayer/tplayer/b;IIILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/tencent/thumbplayer/tplayer/b;->a(IIILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/thumbplayer/tplayer/b;IJJLjava/lang/Object;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/tencent/thumbplayer/tplayer/b;->a(IJJLjava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/thumbplayer/tplayer/b;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tplayer/b;->a(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/thumbplayer/tplayer/b;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tplayer/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .locals 4

    instance-of v0, p1, Lcom/tencent/thumbplayer/api/TPPlayerMsg$TPAudioTrackInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/tencent/thumbplayer/tplayer/b;->d()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    const-string v0, "handleSelectAudioTrack, proxy is not enable"

    invoke-virtual {p1, v0}, Lcom/tencent/thumbplayer/f/a;->e(Ljava/lang/String;)V

    return-void

    :cond_1
    check-cast p1, Lcom/tencent/thumbplayer/api/TPPlayerMsg$TPAudioTrackInfo;

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSelectAudioTrack, audioTrack url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/tencent/thumbplayer/api/TPPlayerMsg$TPAudioTrackInfo;->audioTrackUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/f/a;->c(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/tencent/thumbplayer/api/TPPlayerMsg$TPAudioTrackInfo;->audioTrackUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/tencent/thumbplayer/api/TPPlayerMsg$TPAudioTrackInfo;->paramData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/thumbplayer/api/TPOptionalParam;

    invoke-virtual {v2}, Lcom/tencent/thumbplayer/api/TPOptionalParam;->getKey()I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcom/tencent/thumbplayer/api/TPOptionalParam;->getParamObject()Lcom/tencent/thumbplayer/api/TPOptionalParam$OptionalParamObject;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/thumbplayer/api/TPOptionalParam$OptionalParamObject;->objectValue:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/thumbplayer/api/proxy/TPDownloadParamData;

    :cond_3
    iget-object v1, p0, Lcom/tencent/thumbplayer/tplayer/b;->d:Lcom/tencent/thumbplayer/d/a;

    iget-object p1, p1, Lcom/tencent/thumbplayer/api/TPPlayerMsg$TPAudioTrackInfo;->audioTrackUrl:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/api/proxy/TPDownloadParamData;->getAudioTrackKeyId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string v0, ""

    :goto_0
    invoke-interface {v1, p1, v0}, Lcom/tencent/thumbplayer/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    :try_start_0
    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/b;->d:Lcom/tencent/thumbplayer/d/a;

    invoke-interface {p1}, Lcom/tencent/thumbplayer/d/a;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/f/a;->a(Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method

.method private b(JLjava/lang/String;)J
    .locals 4

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->z:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", invalid uniqueId"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tencent/thumbplayer/f/a;->e(Ljava/lang/String;)V

    const-wide/16 p1, -0x1

    return-wide p1

    :cond_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->z:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", convert uniqueId("

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ") => opaque("

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/tencent/thumbplayer/f/a;->c(Ljava/lang/String;)V

    return-wide v0
.end method

.method static synthetic b(Lcom/tencent/thumbplayer/tplayer/b;J)J
    .locals 0

    iput-wide p1, p0, Lcom/tencent/thumbplayer/tplayer/b;->r:J

    return-wide p1
.end method

.method static synthetic b(Lcom/tencent/thumbplayer/tplayer/b;)Lcom/tencent/thumbplayer/adapter/a;
    .locals 0

    iget-object p0, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    return-object p0
.end method

.method private b(II)Lcom/tencent/thumbplayer/api/proxy/TPDownloadParamData;
    .locals 2

    new-instance v0, Lcom/tencent/thumbplayer/api/proxy/TPDownloadParamData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/thumbplayer/api/proxy/TPDownloadParamData;-><init>(I)V

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/api/proxy/TPDownloadParamData;->setStarTimeMS(I)V

    invoke-virtual {v0, p2}, Lcom/tencent/thumbplayer/api/proxy/TPDownloadParamData;->setEndTimeMS(I)V

    return-object v0
.end method

.method private b(I)V
    .locals 2

    sget-object v0, Lcom/tencent/thumbplayer/tplayer/b;->D:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    if-ne p1, v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tplayer/b;->c(I)V

    return-void
.end method

.method static synthetic b(Lcom/tencent/thumbplayer/tplayer/b;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tplayer/b;->c(I)V

    return-void
.end method

.method static synthetic b(Lcom/tencent/thumbplayer/tplayer/b;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tplayer/b;->b(Ljava/lang/Object;)V

    return-void
.end method

.method private b(Ljava/lang/Object;)V
    .locals 4

    instance-of v0, p1, Lcom/tencent/thumbplayer/api/TPPlayerMsg$TPAudioTrackInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/tencent/thumbplayer/tplayer/b;->d()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    const-string v0, "handleAudioTrackProxy, proxy not enable and use orinal url"

    invoke-virtual {p1, v0}, Lcom/tencent/thumbplayer/f/a;->c(Ljava/lang/String;)V

    return-void

    :cond_1
    check-cast p1, Lcom/tencent/thumbplayer/api/TPPlayerMsg$TPAudioTrackInfo;

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/tencent/thumbplayer/api/TPPlayerMsg$TPAudioTrackInfo;->paramData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/thumbplayer/api/TPOptionalParam;

    invoke-virtual {v2}, Lcom/tencent/thumbplayer/api/TPOptionalParam;->getKey()I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcom/tencent/thumbplayer/api/TPOptionalParam;->getParamObject()Lcom/tencent/thumbplayer/api/TPOptionalParam$OptionalParamObject;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/thumbplayer/api/TPOptionalParam$OptionalParamObject;->objectValue:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/thumbplayer/api/proxy/TPDownloadParamData;

    :cond_3
    iget-object v1, p0, Lcom/tencent/thumbplayer/tplayer/b;->d:Lcom/tencent/thumbplayer/d/a;

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/tencent/thumbplayer/api/TPPlayerMsg$TPAudioTrackInfo;->audioTrackUrl:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/tencent/thumbplayer/d/a;->a(ILjava/lang/String;Lcom/tencent/thumbplayer/api/proxy/TPDownloadParamData;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/thumbplayer/tplayer/b;->p:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v0, p1, Lcom/tencent/thumbplayer/api/TPPlayerMsg$TPAudioTrackInfo;->proxyUrl:Ljava/lang/String;

    return-void
.end method

.method static synthetic c(Lcom/tencent/thumbplayer/tplayer/b;J)J
    .locals 0

    iput-wide p1, p0, Lcom/tencent/thumbplayer/tplayer/b;->s:J

    return-wide p1
.end method

.method static synthetic c(Lcom/tencent/thumbplayer/tplayer/b;)Lcom/tencent/thumbplayer/f/a;
    .locals 0

    iget-object p0, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    return-object p0
.end method

.method private c()V
    .locals 7

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/adapter/a;->j()V

    new-instance v0, Lcom/tencent/thumbplayer/utils/g;

    invoke-direct {v0}, Lcom/tencent/thumbplayer/utils/g;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "etime"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/thumbplayer/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/utils/g;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "reason"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/thumbplayer/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/utils/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/utils/g;->a()Ljava/util/Map;

    move-result-object v6

    const/16 v2, 0x6b

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/tencent/thumbplayer/tplayer/b;->a(IIILjava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->d:Lcom/tencent/thumbplayer/d/a;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/tencent/thumbplayer/d/a;->a(I)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->d:Lcom/tencent/thumbplayer/d/a;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/d/a;->h()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->q:J

    iput-wide v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->r:J

    iput-wide v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->s:J

    return-void
.end method

.method private c(I)V
    .locals 1
    .param p1    # I
        .annotation runtime Lcom/tencent/thumbplayer/api/TPPlayerDetailInfo$TPPlayerDetailInfoType;
        .end annotation
    .end param

    new-instance v0, Lcom/tencent/thumbplayer/api/TPPlayerDetailInfo;

    invoke-direct {v0, p1}, Lcom/tencent/thumbplayer/api/TPPlayerDetailInfo;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/tencent/thumbplayer/tplayer/b;->a(Lcom/tencent/thumbplayer/api/TPPlayerDetailInfo;)V

    return-void
.end method

.method static synthetic c(Lcom/tencent/thumbplayer/tplayer/b;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tplayer/b;->b(I)V

    return-void
.end method

.method static synthetic d(Lcom/tencent/thumbplayer/tplayer/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/thumbplayer/tplayer/b;->e()V

    return-void
.end method

.method private d()Z
    .locals 3

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isUseProxyEnable, mPlayProxyManager.isEnable()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/thumbplayer/tplayer/b;->d:Lcom/tencent/thumbplayer/d/a;

    invoke-interface {v2}, Lcom/tencent/thumbplayer/d/a;->f()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " TPPlayerConfig.isUseP2P()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/thumbplayer/config/TPPlayerConfig;->isUseP2P()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mUseProxy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/tencent/thumbplayer/tplayer/b;->m:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/f/a;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->d:Lcom/tencent/thumbplayer/d/a;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/d/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/thumbplayer/config/TPPlayerConfig;->isUseP2P()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->m:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic e(Lcom/tencent/thumbplayer/tplayer/b;)Lcom/tencent/thumbplayer/tplayer/c;
    .locals 0

    iget-object p0, p0, Lcom/tencent/thumbplayer/tplayer/b;->c:Lcom/tencent/thumbplayer/tplayer/c;

    return-object p0
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/adapter/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    iget-object v1, p0, Lcom/tencent/thumbplayer/tplayer/b;->d:Lcom/tencent/thumbplayer/d/a;

    invoke-interface {v1, v0}, Lcom/tencent/thumbplayer/d/a;->a(I)V

    return-void
.end method

.method static synthetic f(Lcom/tencent/thumbplayer/tplayer/b;)I
    .locals 0

    iget p0, p0, Lcom/tencent/thumbplayer/tplayer/b;->o:I

    return p0
.end method

.method private f()V
    .locals 4

    new-instance v0, Lcom/tencent/thumbplayer/tplayer/f$a;

    invoke-direct {v0}, Lcom/tencent/thumbplayer/tplayer/f$a;-><init>()V

    invoke-direct {p0}, Lcom/tencent/thumbplayer/tplayer/b;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    iput-wide v1, v0, Lcom/tencent/thumbplayer/tplayer/f$a;->a:J

    const/16 v1, 0x105

    const/16 v2, 0x3f1

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/tencent/thumbplayer/tplayer/b;->a(IIILjava/lang/Object;)V

    return-void
.end method

.method static synthetic g(Lcom/tencent/thumbplayer/tplayer/b;)Lcom/tencent/thumbplayer/d/a/a;
    .locals 0

    iget-object p0, p0, Lcom/tencent/thumbplayer/tplayer/b;->f:Lcom/tencent/thumbplayer/d/a/a;

    return-object p0
.end method

.method private g()Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/adapter/a;->b()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic h(Lcom/tencent/thumbplayer/tplayer/b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/thumbplayer/tplayer/b;->n:Z

    return p0
.end method


# virtual methods
.method public a()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->i:Landroid/os/Looper;

    return-object v0
.end method

.method public addAudioTrackSource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/tencent/thumbplayer/utils/n$b;
    .end annotation

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/thumbplayer/tplayer/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "addAudioTrackSource, url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/f/a;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/tencent/thumbplayer/tplayer/b;->addAudioTrackSource(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/thumbplayer/api/proxy/TPDownloadParamData;)V

    return-void
.end method

.method public addAudioTrackSource(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/thumbplayer/api/proxy/TPDownloadParamData;)V
    .locals 3
    .annotation runtime Lcom/tencent/thumbplayer/utils/n$b;
    .end annotation

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/thumbplayer/tplayer/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "addAudioTrackSource, url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", downloadParamData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/f/a;->c(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/tencent/thumbplayer/utils/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/tencent/thumbplayer/api/TPOptionalParam;

    invoke-direct {v1}, Lcom/tencent/thumbplayer/api/TPOptionalParam;-><init>()V

    if-eqz p3, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p3}, Lcom/tencent/thumbplayer/api/TPOptionalParam;->buildObject(ILjava/lang/Object;)Lcom/tencent/thumbplayer/api/TPOptionalParam;

    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {p3, p1, p2, v0}, Lcom/tencent/thumbplayer/adapter/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    invoke-virtual {p2, p1}, Lcom/tencent/thumbplayer/f/a;->a(Ljava/lang/Exception;)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    const-string p2, "handleAddAudioSource, illegal argument."

    invoke-virtual {p1, p2}, Lcom/tencent/thumbplayer/f/a;->e(Ljava/lang/String;)V

    return-void
.end method

.method public addSubtitleSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/tencent/thumbplayer/utils/n$b;
        c = true
    .end annotation

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/thumbplayer/tplayer/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "addSubtitleSource, url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mimeType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/f/a;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/tencent/thumbplayer/tplayer/b;->addSubtitleSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/thumbplayer/api/proxy/TPDownloadParamData;)V

    return-void
.end method

.method public addSubtitleSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/thumbplayer/api/proxy/TPDownloadParamData;)V
    .locals 8
    .annotation runtime Lcom/tencent/thumbplayer/utils/n$b;
        c = true
    .end annotation

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/thumbplayer/tplayer/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "addSubtitleSource, url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", downloadParamData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/f/a;->c(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/tencent/thumbplayer/tplayer/b;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Lcom/tencent/thumbplayer/utils/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/thumbplayer/tplayer/b;->d:Lcom/tencent/thumbplayer/d/a;

    const/4 v3, 0x3

    invoke-interface {v2, v3, p1, p4}, Lcom/tencent/thumbplayer/d/a;->a(ILjava/lang/String;Lcom/tencent/thumbplayer/api/proxy/TPDownloadParamData;)Ljava/lang/String;

    move-result-object p4

    iget-object v2, p0, Lcom/tencent/thumbplayer/tplayer/b;->p:Ljava/util/ArrayList;

    invoke-virtual {v2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {v2, p4, p2, p3}, Lcom/tencent/thumbplayer/adapter/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p4, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {p4, p1, p2, p3}, Lcom/tencent/thumbplayer/adapter/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/16 v3, 0x76

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance p2, Lcom/tencent/thumbplayer/utils/g;

    invoke-direct {p2}, Lcom/tencent/thumbplayer/utils/g;-><init>()V

    const-string p4, "stime"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, p4, v0}, Lcom/tencent/thumbplayer/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/utils/g;

    move-result-object p2

    const-string p4, "etime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, p4, v0}, Lcom/tencent/thumbplayer/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/utils/g;

    move-result-object p2

    const-string p4, "url"

    invoke-virtual {p2, p4, p1}, Lcom/tencent/thumbplayer/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/utils/g;

    move-result-object p1

    const-string p2, "name"

    invoke-virtual {p1, p2, p3}, Lcom/tencent/thumbplayer/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/utils/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/utils/g;->a()Ljava/util/Map;

    move-result-object v7

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/tencent/thumbplayer/tplayer/b;->a(IIILjava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    invoke-virtual {p2, p1}, Lcom/tencent/thumbplayer/f/a;->a(Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/f/a;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public captureVideo(Lcom/tencent/thumbplayer/api/TPCaptureParams;Lcom/tencent/thumbplayer/api/TPCaptureCallBack;)V
    .locals 3
    .annotation runtime Lcom/tencent/thumbplayer/utils/n$b;
        a = true
    .end annotation

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/thumbplayer/tplayer/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "captureVideo, params:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", captureCallBack:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/f/a;->c(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {v0, p1, p2}, Lcom/tencent/thumbplayer/adapter/a;->a(Lcom/tencent/thumbplayer/api/TPCaptureParams;Lcom/tencent/thumbplayer/api/TPCaptureCallBack;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    invoke-virtual {p2, p1}, Lcom/tencent/thumbplayer/f/a;->a(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public deselectTrack(IJ)V
    .locals 3
    .annotation runtime Lcom/tencent/thumbplayer/utils/n$b;
    .end annotation

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/thumbplayer/tplayer/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "deselectTrack, trackIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", opaque:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/f/a;->c(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/thumbplayer/adapter/a;->b(IJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    invoke-virtual {p2, p1}, Lcom/tencent/thumbplayer/f/a;->a(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public enableTPAssetResourceLoader(Lcom/tencent/thumbplayer/api/resourceloader/ITPAssetResourceLoaderListener;Landroid/os/Looper;)V
    .locals 2
    .annotation runtime Lcom/tencent/thumbplayer/utils/n$b;
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->d:Lcom/tencent/thumbplayer/d/a;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/tencent/thumbplayer/d/a;->a(Z)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->f:Lcom/tencent/thumbplayer/d/a/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/tencent/thumbplayer/d/a/a;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->f:Lcom/tencent/thumbplayer/d/a/a;

    :cond_0
    new-instance v0, Lcom/tencent/thumbplayer/d/a/b;

    iget-object v1, p0, Lcom/tencent/thumbplayer/tplayer/b;->k:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/tencent/thumbplayer/d/a/b;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->f:Lcom/tencent/thumbplayer/d/a/a;

    iget-object p2, p0, Lcom/tencent/thumbplayer/tplayer/b;->f:Lcom/tencent/thumbplayer/d/a/a;

    invoke-interface {p2, p1}, Lcom/tencent/thumbplayer/d/a/a;->a(Lcom/tencent/thumbplayer/api/resourceloader/ITPAssetResourceLoaderListener;)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/b;->f:Lcom/tencent/thumbplayer/d/a/a;

    invoke-interface {p1}, Lcom/tencent/thumbplayer/d/a/a;->a()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/b;->d:Lcom/tencent/thumbplayer/d/a;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/tencent/thumbplayer/d/a;->a(Z)V

    :goto_0
    return-void
.end method

.method public getBufferPercent()I
    .locals 5

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/adapter/a;->m()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/high16 v0, 0x42c80000    # 100.0f

    iget-object v1, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {v1}, Lcom/tencent/thumbplayer/adapter/a;->o()J

    move-result-wide v1

    iget-object v3, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {v3}, Lcom/tencent/thumbplayer/adapter/a;->n()J

    move-result-wide v3

    sub-long/2addr v1, v3

    long-to-float v1, v1

    mul-float/2addr v1, v0

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/adapter/a;->m()J

    move-result-wide v2

    long-to-float v0, v2

    div-float/2addr v1, v0

    float-to-int v0, v1

    return v0
.end method

.method public getCurrentPositionMs()J
    .locals 2

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/adapter/a;->n()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentState()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/adapter/a;->b()I

    move-result v0

    return v0
.end method

.method public getDurationMs()J
    .locals 2

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/adapter/a;->m()J

    move-result-wide v0

    return-wide v0
.end method

.method public getExtendReportController()Lcom/tencent/thumbplayer/api/reportv2/ITPExtendReportController;
    .locals 1

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->y:Lcom/tencent/thumbplayer/tplayer/a/g;

    return-object v0
.end method

.method public getPlayableDurationMs()J
    .locals 6

    invoke-direct {p0}, Lcom/tencent/thumbplayer/tplayer/b;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->r:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-wide v4, p0, Lcom/tencent/thumbplayer/tplayer/b;->s:J

    cmp-long v2, v4, v2

    if-lez v2, :cond_0

    long-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    long-to-double v2, v4

    div-double/2addr v0, v2

    iget-object v2, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {v2}, Lcom/tencent/thumbplayer/adapter/a;->m()J

    move-result-wide v2

    long-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->q:J

    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/adapter/a;->o()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPlayerProxy()Lcom/tencent/thumbplayer/api/proxy/ITPPlayerProxy;
    .locals 1

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->d:Lcom/tencent/thumbplayer/d/a;

    return-object v0
.end method

.method public getPlayerType()I
    .locals 3

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/thumbplayer/tplayer/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "getPlayerType"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/f/a;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/adapter/a;->d()I

    move-result v0

    return v0
.end method

.method public getProgramInfo()[Lcom/tencent/thumbplayer/api/TPProgramInfo;
    .locals 3

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/thumbplayer/tplayer/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "getProgramInfo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/f/a;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/adapter/a;->s()[Lcom/tencent/thumbplayer/api/TPProgramInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyLong(I)J
    .locals 3

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/thumbplayer/tplayer/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "getPropertyLong, paramId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/f/a;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/adapter/a;->b(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPropertyString(I)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/thumbplayer/tplayer/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "getPropertyString, paramId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/f/a;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/adapter/a;->c(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getReportManager()Lcom/tencent/thumbplayer/api/report/ITPBusinessReportManager;
    .locals 1

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->e:Lcom/tencent/thumbplayer/tplayer/plugins/report/b;

    return-object v0
.end method

.method public getTrackInfo()[Lcom/tencent/thumbplayer/api/TPTrackInfo;
    .locals 3

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/thumbplayer/tplayer/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "getTrackInfo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/f/a;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/adapter/a;->r()[Lcom/tencent/thumbplayer/api/TPTrackInfo;

    move-result-object v0

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 3

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/thumbplayer/tplayer/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "getVideoHeight"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/f/a;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/adapter/a;->q()I

    move-result v0

    return v0
.end method

.method public getVideoWidth()I
    .locals 3

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/thumbplayer/tplayer/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "getVideoWidth"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/f/a;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/adapter/a;->p()I

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 8
    .annotation runtime Lcom/tencent/thumbplayer/utils/n$b;
    .end annotation

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/thumbplayer/tplayer/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "pause"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/f/a;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/adapter/a;->i()V

    const/16 v2, 0x6a

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    new-instance v0, Lcom/tencent/thumbplayer/utils/g;

    invoke-direct {v0}, Lcom/tencent/thumbplayer/utils/g;-><init>()V

    const-string v1, "stime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Lcom/tencent/thumbplayer/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/utils/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/utils/g;->a()Ljava/util/Map;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/tencent/thumbplayer/tplayer/b;->a(IIILjava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->d:Lcom/tencent/thumbplayer/d/a;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/tencent/thumbplayer/d/a;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    invoke-virtual {v1, v0}, Lcom/tencent/thumbplayer/f/a;->a(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public pauseDownload()V
    .locals 4
    .annotation runtime Lcom/tencent/thumbplayer/utils/n$b;
    .end annotation

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/thumbplayer/tplayer/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "pauseDownload"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/f/a;->c(Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/thumbplayer/api/TPOptionalParam;

    invoke-direct {v0}, Lcom/tencent/thumbplayer/api/TPOptionalParam;-><init>()V

    const/16 v1, 0x1f6

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/thumbplayer/api/TPOptionalParam;->buildLong(IJ)Lcom/tencent/thumbplayer/api/TPOptionalParam;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {v1, v0}, Lcom/tencent/thumbplayer/adapter/a;->a(Lcom/tencent/thumbplayer/api/TPOptionalParam;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    invoke-virtual {v1, v0}, Lcom/tencent/thumbplayer/f/a;->a(Ljava/lang/Exception;)V

    :goto_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->d:Lcom/tencent/thumbplayer/d/a;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/d/a;->h()V

    return-void
.end method

.method public prepareAsync()V
    .locals 10
    .annotation runtime Lcom/tencent/thumbplayer/utils/n$b;
    .end annotation

    const/16 v0, 0x3eb

    invoke-direct {p0, v0}, Lcom/tencent/thumbplayer/tplayer/b;->a(I)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/thumbplayer/tplayer/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "prepareAsync"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/f/a;->c(Ljava/lang/String;)V

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

    :try_start_0
    iget-object v1, p0, Lcom/tencent/thumbplayer/tplayer/b;->d:Lcom/tencent/thumbplayer/d/a;

    invoke-interface {v1}, Lcom/tencent/thumbplayer/d/a;->i()V

    iget-object v1, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {v1}, Lcom/tencent/thumbplayer/adapter/a;->g()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    invoke-virtual {v2, v1}, Lcom/tencent/thumbplayer/f/a;->a(Ljava/lang/Exception;)V

    :goto_0
    const/16 v4, 0x66

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_1
    new-instance v1, Lcom/tencent/thumbplayer/utils/g;

    invoke-direct {v1}, Lcom/tencent/thumbplayer/utils/g;-><init>()V

    const-string v2, "stime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/thumbplayer/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/utils/g;

    move-result-object v1

    const-string v2, "url"

    iget-object v3, p0, Lcom/tencent/thumbplayer/tplayer/b;->l:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/tencent/thumbplayer/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/utils/g;

    move-result-object v1

    const-string v2, "p2p"

    invoke-direct {p0}, Lcom/tencent/thumbplayer/tplayer/b;->d()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/thumbplayer/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/utils/g;

    move-result-object v1

    const-string v2, "flowid"

    invoke-virtual {v1, v2, v0}, Lcom/tencent/thumbplayer/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/utils/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/utils/g;->a()Ljava/util/Map;

    move-result-object v8

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/tencent/thumbplayer/tplayer/b;->a(IIILjava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/tencent/thumbplayer/tplayer/b;->f()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    invoke-virtual {v1, v0}, Lcom/tencent/thumbplayer/f/a;->a(Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method

.method public release()V
    .locals 7
    .annotation runtime Lcom/tencent/thumbplayer/utils/n$b;
        a = true
    .end annotation

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/thumbplayer/tplayer/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "release"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/f/a;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/adapter/a;->l()V

    new-instance v0, Lcom/tencent/thumbplayer/utils/g;

    invoke-direct {v0}, Lcom/tencent/thumbplayer/utils/g;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "etime"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/thumbplayer/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/utils/g;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "reason"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/thumbplayer/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/utils/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/utils/g;->a()Ljava/util/Map;

    move-result-object v6

    const/16 v2, 0x70

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/tencent/thumbplayer/tplayer/b;->a(IIILjava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->c:Lcom/tencent/thumbplayer/tplayer/c;

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tplayer/c;->a()V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->d:Lcom/tencent/thumbplayer/d/a;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/d/a;->e()V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->f:Lcom/tencent/thumbplayer/d/a/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/tencent/thumbplayer/d/a/a;->c()V

    iput-object v1, p0, Lcom/tencent/thumbplayer/tplayer/b;->f:Lcom/tencent/thumbplayer/d/a/a;

    :cond_0
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/tencent/thumbplayer/tplayer/b;->q:J

    iput-wide v2, p0, Lcom/tencent/thumbplayer/tplayer/b;->r:J

    iput-wide v2, p0, Lcom/tencent/thumbplayer/tplayer/b;->s:J

    invoke-static {}, Lcom/tencent/thumbplayer/utils/o;->a()Lcom/tencent/thumbplayer/utils/o;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/thumbplayer/tplayer/b;->h:Landroid/os/HandlerThread;

    iget-object v3, p0, Lcom/tencent/thumbplayer/tplayer/b;->j:Lcom/tencent/thumbplayer/tplayer/b$a;

    invoke-virtual {v0, v2, v3}, Lcom/tencent/thumbplayer/utils/o;->a(Landroid/os/HandlerThread;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/tencent/thumbplayer/tplayer/b;->h:Landroid/os/HandlerThread;

    iput-object v1, p0, Lcom/tencent/thumbplayer/tplayer/b;->j:Lcom/tencent/thumbplayer/tplayer/b$a;

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->g:Lcom/tencent/thumbplayer/tplayer/plugins/b;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/tplayer/plugins/b;->c()V

    return-void
.end method

.method public reset()V
    .locals 8
    .annotation runtime Lcom/tencent/thumbplayer/utils/n$b;
        a = true
    .end annotation

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/thumbplayer/tplayer/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "reset"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/f/a;->c(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->w:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    iget-object v1, p0, Lcom/tencent/thumbplayer/tplayer/b;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/f/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    iget-object v1, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    invoke-virtual {v1}, Lcom/tencent/thumbplayer/f/a;->a()Lcom/tencent/thumbplayer/f/b;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/thumbplayer/adapter/a;->a(Lcom/tencent/thumbplayer/f/b;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->c:Lcom/tencent/thumbplayer/tplayer/c;

    iget-object v1, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    invoke-virtual {v1}, Lcom/tencent/thumbplayer/f/a;->a()Lcom/tencent/thumbplayer/f/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/thumbplayer/f/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tplayer/c;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/adapter/a;->k()V

    const/16 v2, 0x71

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v0, Lcom/tencent/thumbplayer/utils/g;

    invoke-direct {v0}, Lcom/tencent/thumbplayer/utils/g;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v6, "etime"

    invoke-virtual {v0, v6, v1}, Lcom/tencent/thumbplayer/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/utils/g;

    move-result-object v0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v6, "reason"

    invoke-virtual {v0, v6, v1}, Lcom/tencent/thumbplayer/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/utils/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/utils/g;->a()Ljava/util/Map;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/tencent/thumbplayer/tplayer/b;->a(IIILjava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->d:Lcom/tencent/thumbplayer/d/a;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/d/a;->d()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->o:I

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->f:Lcom/tencent/thumbplayer/d/a/a;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/tencent/thumbplayer/d/a/a;->b()V

    :cond_1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->j:Lcom/tencent/thumbplayer/tplayer/b$a;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tplayer/b$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_2
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->q:J

    iput-wide v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->r:J

    iput-wide v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->s:J

    iput-boolean v7, p0, Lcom/tencent/thumbplayer/tplayer/b;->m:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->n:Z

    iput v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->B:I

    iput v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->C:I

    return-void
.end method

.method public resumeDownload()V
    .locals 4
    .annotation runtime Lcom/tencent/thumbplayer/utils/n$b;
    .end annotation

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/thumbplayer/tplayer/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "resumeDownload"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/f/a;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->d:Lcom/tencent/thumbplayer/d/a;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/d/a;->i()V

    new-instance v0, Lcom/tencent/thumbplayer/api/TPOptionalParam;

    invoke-direct {v0}, Lcom/tencent/thumbplayer/api/TPOptionalParam;-><init>()V

    const/16 v1, 0x1f6

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/thumbplayer/api/TPOptionalParam;->buildLong(IJ)Lcom/tencent/thumbplayer/api/TPOptionalParam;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {v1, v0}, Lcom/tencent/thumbplayer/adapter/a;->a(Lcom/tencent/thumbplayer/api/TPOptionalParam;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    invoke-virtual {v1, v0}, Lcom/tencent/thumbplayer/f/a;->a(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public seekTo(I)V
    .locals 6
    .annotation runtime Lcom/tencent/thumbplayer/utils/n$b;
    .end annotation

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/thumbplayer/tplayer/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "seekTo, positionMs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/f/a;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/adapter/a;->a(I)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/b;->d:Lcom/tencent/thumbplayer/d/a;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/tencent/thumbplayer/d/a;->a(I)V

    new-instance p1, Lcom/tencent/thumbplayer/utils/g;

    invoke-direct {p1}, Lcom/tencent/thumbplayer/utils/g;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "stime"

    invoke-virtual {p1, v1, v0}, Lcom/tencent/thumbplayer/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/utils/g;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "format"

    invoke-virtual {p1, v1, v0}, Lcom/tencent/thumbplayer/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/utils/g;

    move-result-object p1

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tplayer/b;->getCurrentPositionMs()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "pstime"

    invoke-virtual {p1, v1, v0}, Lcom/tencent/thumbplayer/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/utils/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/utils/g;->a()Ljava/util/Map;

    move-result-object v5

    const/16 v1, 0x6d

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/thumbplayer/tplayer/b;->a(IIILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public seekTo(II)V
    .locals 7
    .annotation runtime Lcom/tencent/thumbplayer/utils/n$b;
    .end annotation

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/thumbplayer/tplayer/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "seekTo, positionMs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/f/a;->c(Ljava/lang/String;)V

    if-lez p2, :cond_0

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {v0, p1, p2}, Lcom/tencent/thumbplayer/adapter/a;->a(II)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {p2, p1}, Lcom/tencent/thumbplayer/adapter/a;->a(I)V

    :goto_0
    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/b;->d:Lcom/tencent/thumbplayer/d/a;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/tencent/thumbplayer/d/a;->a(I)V

    const/16 v1, 0x6d

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance p1, Lcom/tencent/thumbplayer/utils/g;

    invoke-direct {p1}, Lcom/tencent/thumbplayer/utils/g;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v0, "stime"

    invoke-virtual {p1, v0, p2}, Lcom/tencent/thumbplayer/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/utils/g;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "format"

    invoke-virtual {p1, v0, p2}, Lcom/tencent/thumbplayer/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/utils/g;

    move-result-object p1

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tplayer/b;->getCurrentPositionMs()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v0, "pstime"

    invoke-virtual {p1, v0, p2}, Lcom/tencent/thumbplayer/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/utils/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/utils/g;->a()Ljava/util/Map;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/thumbplayer/tplayer/b;->a(IIILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public selectProgram(IJ)V
    .locals 3
    .annotation runtime Lcom/tencent/thumbplayer/utils/n$b;
    .end annotation

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/thumbplayer/tplayer/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "selectProgram, programIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", opaque:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/f/a;->c(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/thumbplayer/adapter/a;->c(IJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    invoke-virtual {p2, p1}, Lcom/tencent/thumbplayer/f/a;->a(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public selectTrack(IJ)V
    .locals 9
    .annotation runtime Lcom/tencent/thumbplayer/utils/n$b;
    .end annotation

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/thumbplayer/tplayer/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "selectTrack, trackIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", opaque:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/f/a;->c(Ljava/lang/String;)V

    :try_start_0
    const-string v0, "selectTrack"

    invoke-direct {p0, p2, p3, v0}, Lcom/tencent/thumbplayer/tplayer/b;->a(JLjava/lang/String;)J

    move-result-wide p2

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/adapter/a;->r()[Lcom/tencent/thumbplayer/api/TPTrackInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-le v1, p1, :cond_0

    const/16 v3, 0x7a

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v1, Lcom/tencent/thumbplayer/utils/g;

    invoke-direct {v1}, Lcom/tencent/thumbplayer/utils/g;-><init>()V

    const-string v2, "opaque"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Lcom/tencent/thumbplayer/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/utils/g;

    move-result-object v1

    const-string v2, "tracktype"

    aget-object v7, v0, p1

    invoke-virtual {v7}, Lcom/tencent/thumbplayer/api/TPTrackInfo;->getTrackType()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Lcom/tencent/thumbplayer/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/utils/g;

    move-result-object v1

    const-string v2, "name"

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/api/TPTrackInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/tencent/thumbplayer/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/utils/g;

    move-result-object v0

    const-string v1, "stime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/thumbplayer/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/utils/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/utils/g;->a()Ljava/util/Map;

    move-result-object v7

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/tencent/thumbplayer/tplayer/b;->a(IIILjava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/thumbplayer/adapter/a;->a(IJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    invoke-virtual {p2, p1}, Lcom/tencent/thumbplayer/f/a;->a(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public setAudioGainRatio(F)V
    .locals 3
    .annotation runtime Lcom/tencent/thumbplayer/utils/n$b;
        b = true
    .end annotation

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/thumbplayer/tplayer/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "setAudioGainRatio, gainRatio:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/f/a;->c(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/adapter/a;->a(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/f/a;->a(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public setAudioNormalizeVolumeParams(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/tencent/thumbplayer/utils/n$b;
        b = true
    .end annotation

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/thumbplayer/tplayer/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "setAudioNormalizeVolumeParams, audioNormalizeVolumeParams:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/f/a;->c(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/adapter/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/f/a;->a(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public setDataSource(Landroid/content/res/AssetFileDescriptor;)V
    .locals 6
    .annotation runtime Lcom/tencent/thumbplayer/utils/n$b;
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/adapter/a;->b()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->x:Lcom/tencent/thumbplayer/e/c;

    new-instance v2, Lcom/tencent/thumbplayer/e/b$a;

    invoke-direct {v2}, Lcom/tencent/thumbplayer/e/b$a;-><init>()V

    const/16 v3, 0x77

    invoke-virtual {v2, v3}, Lcom/tencent/thumbplayer/e/b$a;->a(I)Lcom/tencent/thumbplayer/e/b$a;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, ""

    aput-object v5, v3, v4

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v1

    const/4 v1, 0x2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {v2, v3}, Lcom/tencent/thumbplayer/e/b$a;->a([Ljava/lang/Object;)Lcom/tencent/thumbplayer/e/b$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/thumbplayer/e/b$a;->a()Lcom/tencent/thumbplayer/e/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/e/c;->a(Lcom/tencent/thumbplayer/e/b;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/thumbplayer/tplayer/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "setDataSource, AssetFileDescriptor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/f/a;->c(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/adapter/a;->a(Landroid/content/res/AssetFileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/f/a;->a(Ljava/lang/Exception;)V

    :goto_1
    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error : setDataSource , state invalid. current state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {v1}, Lcom/tencent/thumbplayer/adapter/a;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "error : setDataSource , param is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDataSource(Landroid/os/ParcelFileDescriptor;)V
    .locals 6
    .annotation runtime Lcom/tencent/thumbplayer/utils/n$b;
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/adapter/a;->b()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->x:Lcom/tencent/thumbplayer/e/c;

    new-instance v2, Lcom/tencent/thumbplayer/e/b$a;

    invoke-direct {v2}, Lcom/tencent/thumbplayer/e/b$a;-><init>()V

    const/16 v3, 0x77

    invoke-virtual {v2, v3}, Lcom/tencent/thumbplayer/e/b$a;->a(I)Lcom/tencent/thumbplayer/e/b$a;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, ""

    aput-object v5, v3, v4

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v1

    const/4 v1, 0x2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {v2, v3}, Lcom/tencent/thumbplayer/e/b$a;->a([Ljava/lang/Object;)Lcom/tencent/thumbplayer/e/b$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/thumbplayer/e/b$a;->a()Lcom/tencent/thumbplayer/e/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/e/c;->a(Lcom/tencent/thumbplayer/e/b;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/thumbplayer/tplayer/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "setDataSource, ParcelFileDescriptor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/f/a;->c(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/adapter/a;->a(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/f/a;->a(Ljava/lang/Exception;)V

    :goto_1
    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error : setDataSource , state invalid. current state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {v1}, Lcom/tencent/thumbplayer/adapter/a;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "error : setDataSource , param is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDataSource(Lcom/tencent/thumbplayer/api/composition/ITPMediaAsset;)V
    .locals 6
    .annotation runtime Lcom/tencent/thumbplayer/utils/n$b;
    .end annotation

    if-eqz p1, :cond_4

    instance-of v0, p1, Lcom/tencent/thumbplayer/api/composition/ITPMediaDRMAsset;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/tencent/thumbplayer/api/composition/ITPMediaAsset;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/tencent/thumbplayer/api/composition/ITPMediaDRMAsset;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/api/composition/ITPMediaDRMAsset;->getDrmAllProperties()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/tencent/thumbplayer/api/composition/ITPMediaDRMAsset;->getDrmAllProperties()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "error : setDataSource , drm asset url is null or drm property is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/adapter/a;->b()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->x:Lcom/tencent/thumbplayer/e/c;

    new-instance v2, Lcom/tencent/thumbplayer/e/b$a;

    invoke-direct {v2}, Lcom/tencent/thumbplayer/e/b$a;-><init>()V

    const/16 v3, 0x77

    invoke-virtual {v2, v3}, Lcom/tencent/thumbplayer/e/b$a;->a(I)Lcom/tencent/thumbplayer/e/b$a;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {p1}, Lcom/tencent/thumbplayer/api/composition/ITPMediaAsset;->getUrl()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {p1}, Lcom/tencent/thumbplayer/api/composition/ITPMediaAsset;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/tencent/thumbplayer/tplayer/b;->a(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    invoke-direct {p0}, Lcom/tencent/thumbplayer/tplayer/b;->d()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {v2, v3}, Lcom/tencent/thumbplayer/e/b$a;->a([Ljava/lang/Object;)Lcom/tencent/thumbplayer/e/b$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/thumbplayer/e/b$a;->a()Lcom/tencent/thumbplayer/e/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/e/c;->a(Lcom/tencent/thumbplayer/e/b;)V

    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/tencent/thumbplayer/tplayer/b;->a(I)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/thumbplayer/tplayer/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "setDataSource, ITPMediaAsset"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/f/a;->c(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/tencent/thumbplayer/api/composition/ITPMediaAsset;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->l:Ljava/lang/String;

    invoke-direct {p0}, Lcom/tencent/thumbplayer/tplayer/b;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->d:Lcom/tencent/thumbplayer/d/a;

    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/d/a;->a(Lcom/tencent/thumbplayer/api/composition/ITPMediaAsset;)Lcom/tencent/thumbplayer/api/composition/ITPMediaAsset;

    move-result-object p1

    :cond_2
    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSetDataSource mediaAsset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/tencent/thumbplayer/api/composition/ITPMediaAsset;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/f/a;->c(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/adapter/a;->a(Lcom/tencent/thumbplayer/api/composition/ITPMediaAsset;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :goto_1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/f/a;->a(Ljava/lang/Exception;)V

    :goto_2
    const/16 p1, 0x3e9

    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tplayer/b;->a(I)V

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error : setDataSource , state invalid. current state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {v1}, Lcom/tencent/thumbplayer/adapter/a;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "error : setDataSource , param is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 6
    .annotation runtime Lcom/tencent/thumbplayer/utils/n$b;
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/adapter/a;->b()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->x:Lcom/tencent/thumbplayer/e/c;

    new-instance v2, Lcom/tencent/thumbplayer/e/b$a;

    invoke-direct {v2}, Lcom/tencent/thumbplayer/e/b$a;-><init>()V

    const/16 v3, 0x77

    invoke-virtual {v2, v3}, Lcom/tencent/thumbplayer/e/b$a;->a(I)Lcom/tencent/thumbplayer/e/b$a;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tplayer/b;->a(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v1

    const/4 v1, 0x2

    invoke-direct {p0}, Lcom/tencent/thumbplayer/tplayer/b;->d()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v1

    invoke-virtual {v2, v3}, Lcom/tencent/thumbplayer/e/b$a;->a([Ljava/lang/Object;)Lcom/tencent/thumbplayer/e/b$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/thumbplayer/e/b$a;->a()Lcom/tencent/thumbplayer/e/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/e/c;->a(Lcom/tencent/thumbplayer/e/b;)V

    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/tencent/thumbplayer/tplayer/b;->a(I)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/thumbplayer/tplayer/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "setDataSource, url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/f/a;->c(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/thumbplayer/tplayer/b;->l:Ljava/lang/String;

    new-instance v0, Lcom/tencent/thumbplayer/adapter/a/e;

    invoke-direct {v0, p1}, Lcom/tencent/thumbplayer/adapter/a/e;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSetDataSource originalUrl="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/thumbplayer/f/a;->c(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/thumbplayer/tplayer/b;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->d:Lcom/tencent/thumbplayer/d/a;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/tencent/thumbplayer/d/a;->a(Ljava/lang/String;Ljava/util/Map;)Lcom/tencent/thumbplayer/adapter/a/e;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "taskInfo_get_metadata_play_offset"

    invoke-virtual {p0, v1, p1}, Lcom/tencent/thumbplayer/tplayer/b;->updateTaskInfo(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSetDataSource selfPlayerUrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/adapter/a/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/tencent/thumbplayer/f/a;->c(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSetDataSource systemPlayerUrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/adapter/a/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/tencent/thumbplayer/f/a;->c(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {p1, v0}, Lcom/tencent/thumbplayer/adapter/a;->a(Lcom/tencent/thumbplayer/adapter/a/e;)V

    const/16 p1, 0x3e9

    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tplayer/b;->a(I)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error : setDataSource , state invalid. current state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {v1}, Lcom/tencent/thumbplayer/adapter/a;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "error : setDataSource , param is invalid"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDataSource(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation runtime Lcom/tencent/thumbplayer/utils/n$b;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/adapter/a;->b()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->x:Lcom/tencent/thumbplayer/e/c;

    new-instance v2, Lcom/tencent/thumbplayer/e/b$a;

    invoke-direct {v2}, Lcom/tencent/thumbplayer/e/b$a;-><init>()V

    const/16 v3, 0x77

    invoke-virtual {v2, v3}, Lcom/tencent/thumbplayer/e/b$a;->a(I)Lcom/tencent/thumbplayer/e/b$a;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tplayer/b;->a(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v1

    const/4 v1, 0x2

    invoke-direct {p0}, Lcom/tencent/thumbplayer/tplayer/b;->d()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v1

    invoke-virtual {v2, v3}, Lcom/tencent/thumbplayer/e/b$a;->a([Ljava/lang/Object;)Lcom/tencent/thumbplayer/e/b$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/thumbplayer/e/b$a;->a()Lcom/tencent/thumbplayer/e/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/e/c;->a(Lcom/tencent/thumbplayer/e/b;)V

    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/tencent/thumbplayer/tplayer/b;->a(I)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/thumbplayer/tplayer/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "setDataSource, url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", httpHeader:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/f/a;->c(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/thumbplayer/tplayer/b;->l:Ljava/lang/String;

    new-instance v0, Lcom/tencent/thumbplayer/adapter/a/e;

    invoke-direct {v0, p1}, Lcom/tencent/thumbplayer/adapter/a/e;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSetDataSource originalUrl="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/thumbplayer/f/a;->c(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/thumbplayer/tplayer/b;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->d:Lcom/tencent/thumbplayer/d/a;

    invoke-interface {v0, p1, p2}, Lcom/tencent/thumbplayer/d/a;->a(Ljava/lang/String;Ljava/util/Map;)Lcom/tencent/thumbplayer/adapter/a/e;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "taskInfo_get_metadata_play_offset"

    invoke-virtual {p0, v1, p1}, Lcom/tencent/thumbplayer/tplayer/b;->updateTaskInfo(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSetDataSource selfPlayerUrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/adapter/a/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/tencent/thumbplayer/f/a;->c(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSetDataSource systemPlayerUrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/adapter/a/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/tencent/thumbplayer/f/a;->c(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {p1, v0, p2}, Lcom/tencent/thumbplayer/adapter/a;->a(Lcom/tencent/thumbplayer/adapter/a/e;Ljava/util/Map;)V

    const/16 p1, 0x3e9

    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tplayer/b;->a(I)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "error : setDataSource , state invalid. current state:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/adapter/a;->b()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "error : setDataSource , param is invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLoopback(Z)V
    .locals 3
    .annotation runtime Lcom/tencent/thumbplayer/utils/n$b;
        b = true
        c = true
    .end annotation

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/thumbplayer/tplayer/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "setLoopback, isLoopback:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/f/a;->c(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/adapter/a;->b(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/f/a;->a(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public setLoopback(ZJJ)V
    .locals 8
    .annotation runtime Lcom/tencent/thumbplayer/utils/n$b;
        b = true
        c = true
    .end annotation

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/thumbplayer/tplayer/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "setLoopback, isLoopback:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", loopStartPositionMs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", loopEndPositionMs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/f/a;->c(Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-interface/range {v2 .. v7}, Lcom/tencent/thumbplayer/adapter/a;->a(ZJJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    invoke-virtual {p2, p1}, Lcom/tencent/thumbplayer/f/a;->a(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public setOnAudioFrameOutputListener(Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnAudioFrameOutputListener;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->c:Lcom/tencent/thumbplayer/tplayer/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tplayer/c;->a(Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnAudioFrameOutputListener;)V

    :cond_0
    return-void
.end method

.method public setOnAudioProcessFrameOutputListener(Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnAudioProcessFrameOutputListener;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->c:Lcom/tencent/thumbplayer/tplayer/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tplayer/c;->a(Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnAudioProcessFrameOutputListener;)V

    :cond_0
    return-void
.end method

.method public setOnCompletionListener(Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnCompletionListener;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->c:Lcom/tencent/thumbplayer/tplayer/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tplayer/c;->a(Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnCompletionListener;)V

    :cond_0
    return-void
.end method

.method public setOnDemuxerListener(Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnDemuxerListener;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->c:Lcom/tencent/thumbplayer/tplayer/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tplayer/c;->a(Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnDemuxerListener;)V

    :cond_0
    return-void
.end method

.method public setOnDetailInfoListener(Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnDetailInfoListener;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->c:Lcom/tencent/thumbplayer/tplayer/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tplayer/c;->a(Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnDetailInfoListener;)V

    :cond_0
    return-void
.end method

.method public setOnErrorListener(Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnErrorListener;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->c:Lcom/tencent/thumbplayer/tplayer/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tplayer/c;->a(Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnErrorListener;)V

    :cond_0
    return-void
.end method

.method public setOnEventRecordListener(Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnEventRecordListener;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->c:Lcom/tencent/thumbplayer/tplayer/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tplayer/c;->a(Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnEventRecordListener;)V

    :cond_0
    return-void
.end method

.method public setOnInfoListener(Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnInfoListener;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->c:Lcom/tencent/thumbplayer/tplayer/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tplayer/c;->a(Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnInfoListener;)V

    :cond_0
    return-void
.end method

.method public setOnPlayerStateChangeListener(Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnStateChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->c:Lcom/tencent/thumbplayer/tplayer/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tplayer/c;->a(Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnStateChangeListener;)V

    :cond_0
    return-void
.end method

.method public setOnPreparedListener(Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnPreparedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->c:Lcom/tencent/thumbplayer/tplayer/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tplayer/c;->a(Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnPreparedListener;)V

    :cond_0
    return-void
.end method

.method public setOnSeekCompleteListener(Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnSeekCompleteListener;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->c:Lcom/tencent/thumbplayer/tplayer/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tplayer/c;->a(Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnSeekCompleteListener;)V

    :cond_0
    return-void
.end method

.method public setOnStopAsyncCompleteListener(Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnStopAsyncCompleteListener;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->c:Lcom/tencent/thumbplayer/tplayer/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tplayer/c;->a(Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnStopAsyncCompleteListener;)V

    :cond_0
    return-void
.end method

.method public setOnSubtitleDataListener(Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnSubtitleDataListener;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->c:Lcom/tencent/thumbplayer/tplayer/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tplayer/c;->a(Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnSubtitleDataListener;)V

    :cond_0
    return-void
.end method

.method public setOnSubtitleFrameOutListener(Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnSubtitleFrameOutListener;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->c:Lcom/tencent/thumbplayer/tplayer/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tplayer/c;->a(Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnSubtitleFrameOutListener;)V

    :cond_0
    return-void
.end method

.method public setOnVideoFrameOutListener(Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnVideoFrameOutListener;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->c:Lcom/tencent/thumbplayer/tplayer/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tplayer/c;->a(Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnVideoFrameOutListener;)V

    :cond_0
    return-void
.end method

.method public setOnVideoProcessFrameOutputListener(Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnVideoProcessFrameOutputListener;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->c:Lcom/tencent/thumbplayer/tplayer/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tplayer/c;->a(Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnVideoProcessFrameOutputListener;)V

    :cond_0
    return-void
.end method

.method public setOnVideoSizeChangedListener(Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnVideoSizeChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->c:Lcom/tencent/thumbplayer/tplayer/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tplayer/c;->a(Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnVideoSizeChangedListener;)V

    :cond_0
    return-void
.end method

.method public setOutputMute(Z)V
    .locals 3
    .annotation runtime Lcom/tencent/thumbplayer/utils/n$b;
        b = true
    .end annotation

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/thumbplayer/tplayer/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "setOutputMute, isOutputMute:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/f/a;->c(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/adapter/a;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/f/a;->a(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public setPlaySpeedRatio(F)V
    .locals 8
    .annotation runtime Lcom/tencent/thumbplayer/utils/n$b;
        b = true
    .end annotation

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/thumbplayer/tplayer/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "setPlaySpeedRatio, speedRatio:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/f/a;->c(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/adapter/a;->b(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    invoke-virtual {v1, v0}, Lcom/tencent/thumbplayer/f/a;->a(Ljava/lang/Exception;)V

    :goto_0
    const/16 v3, 0x74

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v0, Lcom/tencent/thumbplayer/utils/g;

    invoke-direct {v0}, Lcom/tencent/thumbplayer/utils/g;-><init>()V

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v1, "scene"

    invoke-virtual {v0, v1, p1}, Lcom/tencent/thumbplayer/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/utils/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/utils/g;->a()Ljava/util/Map;

    move-result-object v7

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/tencent/thumbplayer/tplayer/b;->a(IIILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setPlayerOptionalParam(Lcom/tencent/thumbplayer/api/TPOptionalParam;)V
    .locals 3
    .annotation runtime Lcom/tencent/thumbplayer/utils/n$b;
        c = true
    .end annotation

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/api/TPOptionalParam;->getParamType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/api/TPOptionalParam;->getKey()I

    move-result v0

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/api/TPOptionalParam;->getParamObject()Lcom/tencent/thumbplayer/api/TPOptionalParam$OptionalParamObject;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/thumbplayer/api/TPOptionalParam$OptionalParamObject;->objectValue:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/thumbplayer/utils/j;->a(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set object param failed, optional id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/api/TPOptionalParam;->getKey()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/f/a;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tplayer/b;->a(Lcom/tencent/thumbplayer/api/TPOptionalParam;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->d:Lcom/tencent/thumbplayer/d/a;

    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/d/a;->a(Lcom/tencent/thumbplayer/api/TPOptionalParam;)V

    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/adapter/a;->a(Lcom/tencent/thumbplayer/api/TPOptionalParam;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/f/a;->a(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public setRichMediaSynchronizer(Lcom/tencent/thumbplayer/api/richmedia/ITPRichMediaSynchronizer;)V
    .locals 1
    .annotation runtime Lcom/tencent/thumbplayer/utils/n$b;
    .end annotation

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/adapter/a;->a(Lcom/tencent/thumbplayer/api/richmedia/ITPRichMediaSynchronizer;)V

    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 3
    .annotation runtime Lcom/tencent/thumbplayer/utils/n$b;
    .end annotation

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/thumbplayer/tplayer/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "setSurface, surface:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/f/a;->c(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/adapter/a;->a(Landroid/view/Surface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/f/a;->a(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public setSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 3
    .annotation runtime Lcom/tencent/thumbplayer/utils/n$b;
    .end annotation

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/thumbplayer/tplayer/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "setSurfaceHolder, SurfaceHolder:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/f/a;->c(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/adapter/a;->a(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/f/a;->a(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public setTPSurface(Lcom/tencent/thumbplayer/api/ITPSurface;)V
    .locals 3
    .annotation runtime Lcom/tencent/thumbplayer/utils/n$b;
    .end annotation

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/thumbplayer/tplayer/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "setTPSurface, tpSurface:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/f/a;->c(Ljava/lang/String;)V

    :try_start_0
    instance-of v0, p1, Lcom/tencent/thumbplayer/tplayer/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    check-cast p1, Lcom/tencent/thumbplayer/tplayer/e;

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tplayer/e;->a()Landroid/view/Surface;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/adapter/a;->a(Landroid/view/Surface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/f/a;->a(Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setVideoInfo(Lcom/tencent/thumbplayer/api/TPVideoInfo;)V
    .locals 2
    .annotation runtime Lcom/tencent/thumbplayer/utils/n$b;
        c = true
    .end annotation

    if-eqz p1, :cond_0

    :try_start_0
    iget v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->B:I

    iget v1, p0, Lcom/tencent/thumbplayer/tplayer/b;->C:I

    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/thumbplayer/tplayer/b;->a(Lcom/tencent/thumbplayer/api/TPVideoInfo;II)Lcom/tencent/thumbplayer/api/TPVideoInfo;

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->d:Lcom/tencent/thumbplayer/d/a;

    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/d/a;->a(Lcom/tencent/thumbplayer/api/TPVideoInfo;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/adapter/a;->a(Lcom/tencent/thumbplayer/api/TPVideoInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/f/a;->a(Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public start()V
    .locals 8
    .annotation runtime Lcom/tencent/thumbplayer/utils/n$b;
    .end annotation

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/thumbplayer/tplayer/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/f/a;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/adapter/a;->h()V

    const/16 v2, 0x68

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    new-instance v0, Lcom/tencent/thumbplayer/utils/g;

    invoke-direct {v0}, Lcom/tencent/thumbplayer/utils/g;-><init>()V

    const-string v1, "stime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Lcom/tencent/thumbplayer/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/utils/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/utils/g;->a()Ljava/util/Map;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/tencent/thumbplayer/tplayer/b;->a(IIILjava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->d:Lcom/tencent/thumbplayer/d/a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/tencent/thumbplayer/d/a;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    invoke-virtual {v1, v0}, Lcom/tencent/thumbplayer/f/a;->a(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public stop()V
    .locals 3
    .annotation runtime Lcom/tencent/thumbplayer/utils/n$b;
        a = true
    .end annotation

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/thumbplayer/tplayer/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "stop"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/f/a;->c(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/thumbplayer/tplayer/b;->c()V

    return-void
.end method

.method public stopAsync()V
    .locals 3
    .annotation runtime Lcom/tencent/thumbplayer/utils/n$b;
    .end annotation

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/thumbplayer/tplayer/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "stopAsync"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/f/a;->c(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/thumbplayer/tplayer/b;->c()V

    const/4 v0, 0x0

    const/16 v1, 0x118

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v0, v2}, Lcom/tencent/thumbplayer/tplayer/b;->a(IIILjava/lang/Object;)V

    return-void
.end method

.method public switchDefinition(Lcom/tencent/thumbplayer/api/composition/ITPMediaAsset;JLcom/tencent/thumbplayer/api/TPVideoInfo;)V
    .locals 8
    .annotation runtime Lcom/tencent/thumbplayer/utils/n$b;
        b = true
        c = true
    .end annotation

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/thumbplayer/tplayer/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "switchDefinition, mediaAsset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", defID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", videoInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/f/a;->c(Ljava/lang/String;)V

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/tencent/thumbplayer/tplayer/b;->switchDefinition(Lcom/tencent/thumbplayer/api/composition/ITPMediaAsset;JLcom/tencent/thumbplayer/api/TPVideoInfo;I)V

    return-void
.end method

.method public switchDefinition(Lcom/tencent/thumbplayer/api/composition/ITPMediaAsset;JLcom/tencent/thumbplayer/api/TPVideoInfo;I)V
    .locals 6
    .annotation runtime Lcom/tencent/thumbplayer/utils/n$b;
        b = true
        c = true
    .end annotation

    invoke-direct {p0}, Lcom/tencent/thumbplayer/tplayer/b;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/thumbplayer/tplayer/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "switchDefinition, mediaAsset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", defID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", videoInfo:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mode:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, p5}, Lcom/tencent/thumbplayer/f/a;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tplayer/b;->getCurrentPositionMs()J

    move-result-wide v0

    long-to-int p5, v0

    iget v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->C:I

    invoke-direct {p0, p4, p5, v0}, Lcom/tencent/thumbplayer/tplayer/b;->a(Lcom/tencent/thumbplayer/api/TPVideoInfo;II)Lcom/tencent/thumbplayer/api/TPVideoInfo;

    move-result-object p4

    invoke-direct {p0}, Lcom/tencent/thumbplayer/tplayer/b;->d()Z

    move-result p5

    if-eqz p5, :cond_0

    iget-object p5, p0, Lcom/tencent/thumbplayer/tplayer/b;->d:Lcom/tencent/thumbplayer/d/a;

    invoke-interface {p5, p1, p2, p3, p4}, Lcom/tencent/thumbplayer/d/a;->a(Lcom/tencent/thumbplayer/api/composition/ITPMediaAsset;JLcom/tencent/thumbplayer/api/TPVideoInfo;)Lcom/tencent/thumbplayer/api/composition/ITPMediaAsset;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_1

    iget-object p5, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSwitchDef, proxyMediaAsset:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Lcom/tencent/thumbplayer/f/a;->c(Ljava/lang/String;)V

    iget-object p5, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {p5, p4}, Lcom/tencent/thumbplayer/adapter/a;->b(Lcom/tencent/thumbplayer/api/TPVideoInfo;)V

    iget-object p4, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    const/4 p5, 0x0

    invoke-interface {p4, p1, p5, p2, p3}, Lcom/tencent/thumbplayer/adapter/a;->a(Lcom/tencent/thumbplayer/api/composition/ITPMediaAsset;IJ)V

    const/16 v1, 0x78

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance p1, Lcom/tencent/thumbplayer/utils/g;

    invoke-direct {p1}, Lcom/tencent/thumbplayer/utils/g;-><init>()V

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "switch"

    invoke-virtual {p1, p3, p2}, Lcom/tencent/thumbplayer/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/utils/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/utils/g;->a()Ljava/util/Map;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/thumbplayer/tplayer/b;->a(IIILjava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "error : switchDefinition , state invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public switchDefinition(Ljava/lang/String;JLcom/tencent/thumbplayer/api/TPVideoInfo;)V
    .locals 8
    .annotation runtime Lcom/tencent/thumbplayer/utils/n$b;
        b = true
        c = true
    .end annotation

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/thumbplayer/tplayer/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "switchDefinition, defUrl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", defID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/f/a;->c(Ljava/lang/String;)V

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/tencent/thumbplayer/tplayer/b;->switchDefinition(Ljava/lang/String;JLcom/tencent/thumbplayer/api/TPVideoInfo;I)V

    return-void
.end method

.method public switchDefinition(Ljava/lang/String;JLcom/tencent/thumbplayer/api/TPVideoInfo;I)V
    .locals 9
    .annotation runtime Lcom/tencent/thumbplayer/utils/n$b;
        b = true
        c = true
    .end annotation

    invoke-direct {p0}, Lcom/tencent/thumbplayer/tplayer/b;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/thumbplayer/tplayer/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "switchDefinition, defUrl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", defID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", mode:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/f/a;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tplayer/b;->getCurrentPositionMs()J

    move-result-wide v0

    long-to-int v0, v0

    iget v1, p0, Lcom/tencent/thumbplayer/tplayer/b;->C:I

    invoke-direct {p0, p4, v0, v1}, Lcom/tencent/thumbplayer/tplayer/b;->a(Lcom/tencent/thumbplayer/api/TPVideoInfo;II)Lcom/tencent/thumbplayer/api/TPVideoInfo;

    move-result-object p4

    new-instance v0, Lcom/tencent/thumbplayer/adapter/a/e;

    invoke-direct {v0, p1}, Lcom/tencent/thumbplayer/adapter/a/e;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/thumbplayer/tplayer/b;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/tencent/thumbplayer/tplayer/b;->d:Lcom/tencent/thumbplayer/d/a;

    const/4 v8, 0x0

    move-wide v4, p2

    move-object v6, p1

    move-object v7, p4

    invoke-interface/range {v3 .. v8}, Lcom/tencent/thumbplayer/d/a;->a(JLjava/lang/String;Lcom/tencent/thumbplayer/api/TPVideoInfo;Ljava/util/Map;)Lcom/tencent/thumbplayer/adapter/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switchDefinition selfPlayerUrl="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/adapter/a/e;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tencent/thumbplayer/f/a;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switchDefinition systemPlayerUrl="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/adapter/a/e;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tencent/thumbplayer/f/a;->c(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switchDefinition, proxyUrl:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/tencent/thumbplayer/f/a;->c(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {p1, p4}, Lcom/tencent/thumbplayer/adapter/a;->b(Lcom/tencent/thumbplayer/api/TPVideoInfo;)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {p1, v0, p5, p2, p3}, Lcom/tencent/thumbplayer/adapter/a;->a(Lcom/tencent/thumbplayer/adapter/a/e;IJ)V

    const/16 v2, 0x78

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance p1, Lcom/tencent/thumbplayer/utils/g;

    invoke-direct {p1}, Lcom/tencent/thumbplayer/utils/g;-><init>()V

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "switch"

    invoke-virtual {p1, p3, p2}, Lcom/tencent/thumbplayer/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/utils/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/utils/g;->a()Ljava/util/Map;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/tencent/thumbplayer/tplayer/b;->a(IIILjava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "error : switchDefinition , state invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public switchDefinition(Ljava/lang/String;JLcom/tencent/thumbplayer/api/TPVideoInfo;Ljava/util/Map;)V
    .locals 9
    .annotation runtime Lcom/tencent/thumbplayer/utils/n$b;
        b = true
        c = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcom/tencent/thumbplayer/api/TPVideoInfo;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/thumbplayer/tplayer/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "switchDefinition, defUrl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", defID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", videoInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", httpHeader:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/f/a;->c(Ljava/lang/String;)V

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v8}, Lcom/tencent/thumbplayer/tplayer/b;->switchDefinition(Ljava/lang/String;JLcom/tencent/thumbplayer/api/TPVideoInfo;Ljava/util/Map;I)V

    return-void
.end method

.method public switchDefinition(Ljava/lang/String;JLcom/tencent/thumbplayer/api/TPVideoInfo;Ljava/util/Map;I)V
    .locals 15
    .annotation runtime Lcom/tencent/thumbplayer/utils/n$b;
        b = true
        c = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcom/tencent/thumbplayer/api/TPVideoInfo;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v7, p1

    move-wide/from16 v8, p2

    move-object/from16 v10, p5

    invoke-direct {p0}, Lcom/tencent/thumbplayer/tplayer/b;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/tencent/thumbplayer/tplayer/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "switchDefinition, defUrl:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", defID:"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, ", httpHeader:"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, p6

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/thumbplayer/f/a;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tplayer/b;->getCurrentPositionMs()J

    move-result-wide v1

    long-to-int v1, v1

    iget v2, v0, Lcom/tencent/thumbplayer/tplayer/b;->C:I

    move-object/from16 v3, p4

    invoke-direct {p0, v3, v1, v2}, Lcom/tencent/thumbplayer/tplayer/b;->a(Lcom/tencent/thumbplayer/api/TPVideoInfo;II)Lcom/tencent/thumbplayer/api/TPVideoInfo;

    move-result-object v14

    new-instance v1, Lcom/tencent/thumbplayer/adapter/a/e;

    invoke-direct {v1, v7}, Lcom/tencent/thumbplayer/adapter/a/e;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/thumbplayer/tplayer/b;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, v0, Lcom/tencent/thumbplayer/tplayer/b;->d:Lcom/tencent/thumbplayer/d/a;

    move-wide/from16 v2, p2

    move-object/from16 v4, p1

    move-object v5, v14

    move-object/from16 v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/tencent/thumbplayer/d/a;->a(JLjava/lang/String;Lcom/tencent/thumbplayer/api/TPVideoInfo;Ljava/util/Map;)Lcom/tencent/thumbplayer/adapter/a/e;

    move-result-object v1

    iget-object v2, v0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switchDefinition selfPlayerUrl="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/tencent/thumbplayer/adapter/a/e;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/thumbplayer/f/a;->c(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switchDefinition systemPlayerUrl="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/tencent/thumbplayer/adapter/a/e;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/thumbplayer/f/a;->c(Ljava/lang/String;)V

    :cond_0
    move-object v2, v1

    iget-object v1, v0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switchDefinition, proxyUrl:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tencent/thumbplayer/f/a;->c(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    invoke-interface {v1, v14}, Lcom/tencent/thumbplayer/adapter/a;->b(Lcom/tencent/thumbplayer/api/TPVideoInfo;)V

    iget-object v1, v0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    move-object/from16 v3, p5

    move/from16 v4, p6

    move-wide/from16 v5, p2

    invoke-interface/range {v1 .. v6}, Lcom/tencent/thumbplayer/adapter/a;->a(Lcom/tencent/thumbplayer/adapter/a/e;Ljava/util/Map;IJ)V

    const/16 v1, 0x78

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcom/tencent/thumbplayer/utils/g;

    invoke-direct {v5}, Lcom/tencent/thumbplayer/utils/g;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "switch"

    invoke-virtual {v5, v7, v6}, Lcom/tencent/thumbplayer/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/utils/g;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/thumbplayer/utils/g;->a()Ljava/util/Map;

    move-result-object v5

    move-object/from16 p1, p0

    move/from16 p2, v1

    move/from16 p3, v2

    move/from16 p4, v3

    move-object/from16 p5, v4

    move-object/from16 p6, v5

    invoke-direct/range {p1 .. p6}, Lcom/tencent/thumbplayer/tplayer/b;->a(IIILjava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "error : switchDefinition , state invalid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public updateLoggerContext(Lcom/tencent/thumbplayer/f/b;)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->w:Z

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    new-instance v1, Lcom/tencent/thumbplayer/f/b;

    const-string v2, "TPPlayer"

    invoke-direct {v1, p1, v2}, Lcom/tencent/thumbplayer/f/b;-><init>(Lcom/tencent/thumbplayer/f/b;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/f/a;->a(Lcom/tencent/thumbplayer/f/b;)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/b;->b:Lcom/tencent/thumbplayer/adapter/a;

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/f/a;->a()Lcom/tencent/thumbplayer/f/b;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/tencent/thumbplayer/adapter/a;->a(Lcom/tencent/thumbplayer/f/b;)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tplayer/b;->c:Lcom/tencent/thumbplayer/tplayer/c;

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->t:Lcom/tencent/thumbplayer/f/a;

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/f/a;->a()Lcom/tencent/thumbplayer/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/f/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/thumbplayer/tplayer/c;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateTaskInfo(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Lcom/tencent/thumbplayer/utils/n$b;
    .end annotation

    iget-object v0, p0, Lcom/tencent/thumbplayer/tplayer/b;->d:Lcom/tencent/thumbplayer/d/a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/tencent/thumbplayer/d/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
