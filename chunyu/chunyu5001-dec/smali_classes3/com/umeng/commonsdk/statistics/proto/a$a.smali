.class Lcom/umeng/commonsdk/statistics/proto/a$a;
.super Lcom/umeng/analytics/pro/bz;
.source "IdJournal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/statistics/proto/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/analytics/pro/bz<",
        "Lcom/umeng/commonsdk/statistics/proto/a;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 411
    invoke-direct {p0}, Lcom/umeng/analytics/pro/bz;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/commonsdk/statistics/proto/a$1;)V
    .locals 0

    .line 411
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/proto/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/umeng/analytics/pro/bp;Lcom/umeng/analytics/pro/aq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 411
    check-cast p2, Lcom/umeng/commonsdk/statistics/proto/a;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/statistics/proto/a$a;->b(Lcom/umeng/analytics/pro/bp;Lcom/umeng/commonsdk/statistics/proto/a;)V

    return-void
.end method

.method public a(Lcom/umeng/analytics/pro/bp;Lcom/umeng/commonsdk/statistics/proto/a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 416
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->j()Lcom/umeng/analytics/pro/bu;

    .line 418
    :goto_0
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->l()Lcom/umeng/analytics/pro/bk;

    move-result-object v0

    .line 419
    iget-byte v1, v0, Lcom/umeng/analytics/pro/bk;->b:B

    if-nez v1, :cond_1

    .line 460
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->k()V

    .line 464
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/a;->m()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 468
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/a;->n()V

    return-void

    .line 465
    :cond_0
    new-instance p1, Lcom/umeng/analytics/pro/bq;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Required field \'ts\' was not found in serialized data! Struct: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/umeng/analytics/pro/bq;-><init>(Ljava/lang/String;)V

    throw p1

    .line 422
    :cond_1
    iget-short v1, v0, Lcom/umeng/analytics/pro/bk;->c:S

    const/16 v2, 0xb

    const/4 v3, 0x1

    if-eq v1, v3, :cond_8

    const/4 v4, 0x2

    if-eq v1, v4, :cond_6

    const/4 v4, 0x3

    if-eq v1, v4, :cond_4

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    .line 456
    iget-byte v0, v0, Lcom/umeng/analytics/pro/bk;->b:B

    invoke-static {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bp;B)V

    goto :goto_1

    .line 448
    :cond_2
    iget-byte v1, v0, Lcom/umeng/analytics/pro/bk;->b:B

    const/16 v2, 0xa

    if-ne v1, v2, :cond_3

    .line 449
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->x()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/umeng/commonsdk/statistics/proto/a;->d:J

    .line 450
    invoke-virtual {p2, v3}, Lcom/umeng/commonsdk/statistics/proto/a;->d(Z)V

    goto :goto_1

    .line 452
    :cond_3
    iget-byte v0, v0, Lcom/umeng/analytics/pro/bk;->b:B

    invoke-static {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bp;B)V

    goto :goto_1

    .line 440
    :cond_4
    iget-byte v1, v0, Lcom/umeng/analytics/pro/bk;->b:B

    if-ne v1, v2, :cond_5

    .line 441
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/a;->c:Ljava/lang/String;

    .line 442
    invoke-virtual {p2, v3}, Lcom/umeng/commonsdk/statistics/proto/a;->c(Z)V

    goto :goto_1

    .line 444
    :cond_5
    iget-byte v0, v0, Lcom/umeng/analytics/pro/bk;->b:B

    invoke-static {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bp;B)V

    goto :goto_1

    .line 432
    :cond_6
    iget-byte v1, v0, Lcom/umeng/analytics/pro/bk;->b:B

    if-ne v1, v2, :cond_7

    .line 433
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/a;->b:Ljava/lang/String;

    .line 434
    invoke-virtual {p2, v3}, Lcom/umeng/commonsdk/statistics/proto/a;->b(Z)V

    goto :goto_1

    .line 436
    :cond_7
    iget-byte v0, v0, Lcom/umeng/analytics/pro/bk;->b:B

    invoke-static {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bp;B)V

    goto :goto_1

    .line 424
    :cond_8
    iget-byte v1, v0, Lcom/umeng/analytics/pro/bk;->b:B

    if-ne v1, v2, :cond_9

    .line 425
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/a;->a:Ljava/lang/String;

    .line 426
    invoke-virtual {p2, v3}, Lcom/umeng/commonsdk/statistics/proto/a;->a(Z)V

    goto :goto_1

    .line 428
    :cond_9
    iget-byte v0, v0, Lcom/umeng/analytics/pro/bk;->b:B

    invoke-static {p1, v0}, Lcom/umeng/analytics/pro/bs;->a(Lcom/umeng/analytics/pro/bp;B)V

    .line 458
    :goto_1
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->m()V

    goto/16 :goto_0
.end method

.method public synthetic b(Lcom/umeng/analytics/pro/bp;Lcom/umeng/analytics/pro/aq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 411
    check-cast p2, Lcom/umeng/commonsdk/statistics/proto/a;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/statistics/proto/a$a;->a(Lcom/umeng/analytics/pro/bp;Lcom/umeng/commonsdk/statistics/proto/a;)V

    return-void
.end method

.method public b(Lcom/umeng/analytics/pro/bp;Lcom/umeng/commonsdk/statistics/proto/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/aw;
        }
    .end annotation

    .line 473
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/a;->n()V

    .line 475
    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/a;->o()Lcom/umeng/analytics/pro/bu;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(Lcom/umeng/analytics/pro/bu;)V

    .line 476
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/a;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 477
    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/a;->p()Lcom/umeng/analytics/pro/bk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(Lcom/umeng/analytics/pro/bk;)V

    .line 478
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(Ljava/lang/String;)V

    .line 479
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->c()V

    .line 481
    :cond_0
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/a;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 482
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/a;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 483
    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/a;->q()Lcom/umeng/analytics/pro/bk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(Lcom/umeng/analytics/pro/bk;)V

    .line 484
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/a;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(Ljava/lang/String;)V

    .line 485
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->c()V

    .line 488
    :cond_1
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/a;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 489
    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/a;->r()Lcom/umeng/analytics/pro/bk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(Lcom/umeng/analytics/pro/bk;)V

    .line 490
    iget-object v0, p2, Lcom/umeng/commonsdk/statistics/proto/a;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(Ljava/lang/String;)V

    .line 491
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->c()V

    .line 493
    :cond_2
    invoke-static {}, Lcom/umeng/commonsdk/statistics/proto/a;->s()Lcom/umeng/analytics/pro/bk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bp;->a(Lcom/umeng/analytics/pro/bk;)V

    .line 494
    iget-wide v0, p2, Lcom/umeng/commonsdk/statistics/proto/a;->d:J

    invoke-virtual {p1, v0, v1}, Lcom/umeng/analytics/pro/bp;->a(J)V

    .line 495
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->c()V

    .line 496
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->d()V

    .line 497
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bp;->b()V

    return-void
.end method
