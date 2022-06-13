.class Lcom/tencent/rtmp/a$4;
.super Ljava/lang/Object;
.source "TXLivePlayerImpl.java"

# interfaces
.implements Lcom/tencent/liteav/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/rtmp/a;->b(Ljava/lang/String;I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/rtmp/a;


# direct methods
.method constructor <init>(Lcom/tencent/rtmp/a;)V
    .locals 0

    .line 741
    iput-object p1, p0, Lcom/tencent/rtmp/a$4;->a:Lcom/tencent/rtmp/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 1

    .line 744
    iget-object v0, p0, Lcom/tencent/rtmp/a$4;->a:Lcom/tencent/rtmp/a;

    invoke-static {v0, p1, p2}, Lcom/tencent/rtmp/a;->a(Lcom/tencent/rtmp/a;J)J

    .line 745
    iget-object p1, p0, Lcom/tencent/rtmp/a$4;->a:Lcom/tencent/rtmp/a;

    invoke-static {p1}, Lcom/tencent/rtmp/a;->a(Lcom/tencent/rtmp/a;)Lcom/tencent/liteav/j;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/rtmp/a$4;->a:Lcom/tencent/rtmp/a;

    invoke-static {p1}, Lcom/tencent/rtmp/a;->a(Lcom/tencent/rtmp/a;)Lcom/tencent/liteav/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/liteav/j;->h()V

    :cond_0
    return-void
.end method
