.class Lcom/tencent/liteav/network/o$1;
.super Ljava/lang/Object;
.source "TXRTMPAccUrlFetcher.java"

# interfaces
.implements Lcom/tencent/liteav/network/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/network/o;->a(Ljava/lang/String;ILcom/tencent/liteav/network/o$a;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/tencent/liteav/network/o$a;

.field final synthetic f:Lcom/tencent/liteav/network/o;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/network/o;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/liteav/network/o$a;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/tencent/liteav/network/o$1;->f:Lcom/tencent/liteav/network/o;

    iput-object p2, p0, Lcom/tencent/liteav/network/o$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/liteav/network/o$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/liteav/network/o$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/tencent/liteav/network/o$1;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/tencent/liteav/network/o$1;->e:Lcom/tencent/liteav/network/o$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/util/Vector;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Vector<",
            "Lcom/tencent/liteav/network/h;",
            ">;)V"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/tencent/liteav/network/o$1;->f:Lcom/tencent/liteav/network/o;

    iget-object v1, p0, Lcom/tencent/liteav/network/o$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/liteav/network/o;->a(Lcom/tencent/liteav/network/o;Ljava/lang/String;)Ljava/lang/String;

    .line 110
    iget-object v0, p0, Lcom/tencent/liteav/network/o$1;->f:Lcom/tencent/liteav/network/o;

    iget-object v1, p0, Lcom/tencent/liteav/network/o$1;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/liteav/network/o;->b(Lcom/tencent/liteav/network/o;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lcom/tencent/liteav/network/o$1;->f:Lcom/tencent/liteav/network/o;

    invoke-static {v0, p1}, Lcom/tencent/liteav/network/o;->a(Lcom/tencent/liteav/network/o;I)I

    .line 112
    iget-object v0, p0, Lcom/tencent/liteav/network/o$1;->f:Lcom/tencent/liteav/network/o;

    invoke-static {v0, p2}, Lcom/tencent/liteav/network/o;->c(Lcom/tencent/liteav/network/o;Ljava/lang/String;)Ljava/lang/String;

    if-eqz p3, :cond_3

    .line 114
    invoke-virtual {p3}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 115
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 117
    invoke-virtual {p3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/liteav/network/h;

    .line 118
    iget-object v2, v1, Lcom/tencent/liteav/network/h;->a:Ljava/lang/String;

    const-string v3, "?"

    .line 119
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    const/4 v4, 0x0

    .line 120
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 122
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?txSecret="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/liteav/network/o$1;->c:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&txTime="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/liteav/network/o$1;->d:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&bizid="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/liteav/network/o$1;->b:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 124
    new-instance v3, Lcom/tencent/liteav/network/h;

    iget-boolean v1, v1, Lcom/tencent/liteav/network/h;->b:Z

    invoke-direct {v3, v2, v1}, Lcom/tencent/liteav/network/h;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 127
    :cond_1
    iget-object p3, p0, Lcom/tencent/liteav/network/o$1;->e:Lcom/tencent/liteav/network/o$a;

    if-eqz p3, :cond_4

    .line 128
    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/liteav/network/h;

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "accurl = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/tencent/liteav/network/h;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " quic = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v1, Lcom/tencent/liteav/network/h;->b:Z

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TXRTMPAccUrlFetcher"

    invoke-static {v2, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 131
    :cond_2
    iget-object p3, p0, Lcom/tencent/liteav/network/o$1;->e:Lcom/tencent/liteav/network/o$a;

    invoke-interface {p3, p1, p2, v0}, Lcom/tencent/liteav/network/o$a;->a(ILjava/lang/String;Ljava/util/Vector;)V

    goto :goto_2

    .line 135
    :cond_3
    iget-object p3, p0, Lcom/tencent/liteav/network/o$1;->e:Lcom/tencent/liteav/network/o$a;

    if-eqz p3, :cond_4

    const/4 v0, 0x0

    .line 136
    invoke-interface {p3, p1, p2, v0}, Lcom/tencent/liteav/network/o$a;->a(ILjava/lang/String;Ljava/util/Vector;)V

    :cond_4
    :goto_2
    return-void
.end method
