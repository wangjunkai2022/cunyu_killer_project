.class public Lcom/tencent/liteav/d;
.super Ljava/lang/Object;
.source "TXCPlayerConfig.java"


# instance fields
.field public A:I

.field public B:Lorg/json/JSONArray;

.field public C:Ljava/lang/String;

.field public D:Ljava/lang/String;

.field public E:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public F:Z

.field public G:J

.field public a:F

.field public b:F

.field public c:F

.field public d:I

.field public e:I

.field public f:I

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Ljava/lang/String;

.field public m:I

.field public n:Ljava/lang/String;

.field public o:I

.field public p:I

.field public q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public r:I

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Ljava/lang/String;

.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x40a00000    # 5.0f

    .line 10
    iput v0, p0, Lcom/tencent/liteav/d;->a:F

    .line 12
    iput v0, p0, Lcom/tencent/liteav/d;->b:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 14
    iput v0, p0, Lcom/tencent/liteav/d;->c:F

    const/16 v0, 0x320

    .line 16
    iput v0, p0, Lcom/tencent/liteav/d;->d:I

    const/4 v0, 0x5

    .line 18
    iput v0, p0, Lcom/tencent/liteav/d;->e:I

    const/4 v0, 0x1

    .line 20
    iput v0, p0, Lcom/tencent/liteav/d;->f:I

    .line 22
    iput-boolean v0, p0, Lcom/tencent/liteav/d;->g:Z

    .line 26
    iput-boolean v0, p0, Lcom/tencent/liteav/d;->h:Z

    .line 28
    iput-boolean v0, p0, Lcom/tencent/liteav/d;->i:Z

    const/4 v1, 0x0

    .line 30
    iput-boolean v1, p0, Lcom/tencent/liteav/d;->j:Z

    .line 31
    iput-boolean v1, p0, Lcom/tencent/liteav/d;->k:Z

    const-string v2, ""

    .line 33
    iput-object v2, p0, Lcom/tencent/liteav/d;->l:Ljava/lang/String;

    .line 34
    iput v0, p0, Lcom/tencent/liteav/d;->m:I

    const/16 v2, 0xa

    .line 40
    iput v2, p0, Lcom/tencent/liteav/d;->r:I

    .line 48
    iput v1, p0, Lcom/tencent/liteav/d;->z:I

    .line 49
    iput v1, p0, Lcom/tencent/liteav/d;->A:I

    const/4 v1, 0x0

    .line 50
    iput-object v1, p0, Lcom/tencent/liteav/d;->B:Lorg/json/JSONArray;

    .line 61
    iput-boolean v0, p0, Lcom/tencent/liteav/d;->F:Z

    const-wide/16 v0, -0x1

    .line 66
    iput-wide v0, p0, Lcom/tencent/liteav/d;->G:J

    return-void
.end method
