.class public Lcom/tencent/liteav/txcplayer/h;
.super Ljava/lang/Object;
.source "TXVCubePlayerConfig.java"


# instance fields
.field A:Z

.field a:I

.field b:I

.field c:I

.field d:Z

.field e:Ljava/lang/String;

.field f:I

.field g:I

.field h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field i:Z

.field j:Z

.field k:Ljava/lang/String;

.field l:I

.field m:I

.field n:I

.field o:J

.field p:Z

.field q:Ljava/lang/String;

.field r:I

.field s:J

.field t:Z

.field u:I

.field v:I

.field w:Ljava/lang/String;

.field x:Ljava/lang/String;

.field y:Z

.field z:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 10
    iput v0, p0, Lcom/tencent/liteav/txcplayer/h;->a:I

    .line 11
    iput v0, p0, Lcom/tencent/liteav/txcplayer/h;->b:I

    const/16 v0, 0x1e

    .line 12
    iput v0, p0, Lcom/tencent/liteav/txcplayer/h;->c:I

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/tencent/liteav/txcplayer/h;->d:Z

    const/4 v1, 0x2

    .line 16
    iput v1, p0, Lcom/tencent/liteav/txcplayer/h;->g:I

    .line 18
    iput-boolean v0, p0, Lcom/tencent/liteav/txcplayer/h;->i:Z

    .line 19
    iput-boolean v0, p0, Lcom/tencent/liteav/txcplayer/h;->j:Z

    const-wide/16 v1, 0x0

    .line 24
    iput-wide v1, p0, Lcom/tencent/liteav/txcplayer/h;->o:J

    .line 25
    iput-boolean v0, p0, Lcom/tencent/liteav/txcplayer/h;->p:Z

    const/4 v1, -0x1

    .line 27
    iput v1, p0, Lcom/tencent/liteav/txcplayer/h;->r:I

    const-wide/16 v1, -0x1

    .line 33
    iput-wide v1, p0, Lcom/tencent/liteav/txcplayer/h;->s:J

    .line 34
    iput-boolean v0, p0, Lcom/tencent/liteav/txcplayer/h;->t:Z

    const/4 v1, 0x0

    .line 35
    iput v1, p0, Lcom/tencent/liteav/txcplayer/h;->u:I

    .line 36
    iput v1, p0, Lcom/tencent/liteav/txcplayer/h;->v:I

    .line 39
    iput-boolean v1, p0, Lcom/tencent/liteav/txcplayer/h;->y:Z

    .line 46
    iput-boolean v0, p0, Lcom/tencent/liteav/txcplayer/h;->A:Z

    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    .line 64
    iget v0, p0, Lcom/tencent/liteav/txcplayer/h;->a:I

    int-to-float v0, v0

    return v0
.end method

.method public a(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x41200000    # 10.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    float-to-int p1, p1

    .line 60
    iput p1, p0, Lcom/tencent/liteav/txcplayer/h;->a:I

    :cond_1
    :goto_0
    return-void
.end method

.method public a(I)V
    .locals 0

    .line 126
    iput p1, p0, Lcom/tencent/liteav/txcplayer/h;->f:I

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 193
    iput-wide p1, p0, Lcom/tencent/liteav/txcplayer/h;->o:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/tencent/liteav/txcplayer/h;->e:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 150
    iput-object p1, p0, Lcom/tencent/liteav/txcplayer/h;->h:Ljava/util/Map;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 105
    iput-boolean p1, p0, Lcom/tencent/liteav/txcplayer/h;->d:Z

    return-void
.end method

.method public b()F
    .locals 1

    .line 83
    iget v0, p0, Lcom/tencent/liteav/txcplayer/h;->b:I

    int-to-float v0, v0

    return v0
.end method

.method public b(F)V
    .locals 1

    const/high16 v0, 0x40400000    # 3.0f

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x41f00000    # 30.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    float-to-int p1, p1

    .line 79
    iput p1, p0, Lcom/tencent/liteav/txcplayer/h;->b:I

    :cond_1
    :goto_0
    return-void
.end method

.method public b(I)V
    .locals 0

    .line 138
    iput p1, p0, Lcom/tencent/liteav/txcplayer/h;->g:I

    return-void
.end method

.method public b(J)V
    .locals 0

    .line 323
    iput-wide p1, p0, Lcom/tencent/liteav/txcplayer/h;->s:J

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/tencent/liteav/txcplayer/h;->k:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 289
    iput-object p1, p0, Lcom/tencent/liteav/txcplayer/h;->z:Ljava/util/Map;

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 158
    iput-boolean p1, p0, Lcom/tencent/liteav/txcplayer/h;->i:Z

    return-void
.end method

.method public c()F
    .locals 1

    .line 97
    iget v0, p0, Lcom/tencent/liteav/txcplayer/h;->c:I

    int-to-float v0, v0

    return v0
.end method

.method public c(F)V
    .locals 0

    float-to-int p1, p1

    .line 93
    iput p1, p0, Lcom/tencent/liteav/txcplayer/h;->c:I

    return-void
.end method

.method public c(I)V
    .locals 0

    .line 180
    iput p1, p0, Lcom/tencent/liteav/txcplayer/h;->l:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/tencent/liteav/txcplayer/h;->q:Ljava/lang/String;

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 166
    iput-boolean p1, p0, Lcom/tencent/liteav/txcplayer/h;->j:Z

    return-void
.end method

.method public d(I)V
    .locals 0

    .line 186
    iput p1, p0, Lcom/tencent/liteav/txcplayer/h;->m:I

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/tencent/liteav/txcplayer/h;->w:Ljava/lang/String;

    return-void
.end method

.method public d(Z)V
    .locals 0

    .line 201
    iput-boolean p1, p0, Lcom/tencent/liteav/txcplayer/h;->p:Z

    return-void
.end method

.method public d()Z
    .locals 1

    .line 107
    iget-boolean v0, p0, Lcom/tencent/liteav/txcplayer/h;->d:Z

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/tencent/liteav/txcplayer/h;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e(I)V
    .locals 0

    .line 217
    iput p1, p0, Lcom/tencent/liteav/txcplayer/h;->r:I

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/tencent/liteav/txcplayer/h;->x:Ljava/lang/String;

    return-void
.end method

.method public e(Z)V
    .locals 0

    .line 281
    iput-boolean p1, p0, Lcom/tencent/liteav/txcplayer/h;->y:Z

    return-void
.end method

.method public f()I
    .locals 1

    .line 130
    iget v0, p0, Lcom/tencent/liteav/txcplayer/h;->f:I

    return v0
.end method

.method public f(I)V
    .locals 0

    .line 232
    iput p1, p0, Lcom/tencent/liteav/txcplayer/h;->u:I

    return-void
.end method

.method public f(Z)V
    .locals 0

    .line 311
    iput-boolean p1, p0, Lcom/tencent/liteav/txcplayer/h;->A:Z

    return-void
.end method

.method public g()I
    .locals 1

    .line 142
    iget v0, p0, Lcom/tencent/liteav/txcplayer/h;->g:I

    return v0
.end method

.method public g(I)V
    .locals 0

    .line 238
    iput p1, p0, Lcom/tencent/liteav/txcplayer/h;->v:I

    return-void
.end method

.method public h(I)Lcom/tencent/liteav/txcplayer/h;
    .locals 0

    .line 331
    iput p1, p0, Lcom/tencent/liteav/txcplayer/h;->n:I

    return-object p0
.end method

.method public h()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/tencent/liteav/txcplayer/h;->h:Ljava/util/Map;

    return-object v0
.end method

.method public i()Z
    .locals 1

    .line 162
    iget-boolean v0, p0, Lcom/tencent/liteav/txcplayer/h;->i:Z

    return v0
.end method

.method public j()Z
    .locals 1

    .line 171
    iget-boolean v0, p0, Lcom/tencent/liteav/txcplayer/h;->j:Z

    return v0
.end method

.method public k()I
    .locals 1

    .line 183
    iget v0, p0, Lcom/tencent/liteav/txcplayer/h;->l:I

    return v0
.end method

.method public l()I
    .locals 1

    .line 189
    iget v0, p0, Lcom/tencent/liteav/txcplayer/h;->m:I

    return v0
.end method

.method public m()J
    .locals 2

    .line 197
    iget-wide v0, p0, Lcom/tencent/liteav/txcplayer/h;->o:J

    return-wide v0
.end method

.method public n()Z
    .locals 1

    .line 205
    iget-boolean v0, p0, Lcom/tencent/liteav/txcplayer/h;->p:Z

    return v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/tencent/liteav/txcplayer/h;->q:Ljava/lang/String;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/tencent/liteav/txcplayer/h;->w:Ljava/lang/String;

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/tencent/liteav/txcplayer/h;->x:Ljava/lang/String;

    return-object v0
.end method

.method public r()Z
    .locals 1

    .line 273
    iget-boolean v0, p0, Lcom/tencent/liteav/txcplayer/h;->y:Z

    return v0
.end method

.method public s()Z
    .locals 1

    .line 303
    iget-boolean v0, p0, Lcom/tencent/liteav/txcplayer/h;->A:Z

    return v0
.end method

.method public t()J
    .locals 2

    .line 315
    iget-wide v0, p0, Lcom/tencent/liteav/txcplayer/h;->s:J

    return-wide v0
.end method

.method public u()I
    .locals 1

    .line 336
    iget v0, p0, Lcom/tencent/liteav/txcplayer/h;->n:I

    return v0
.end method
