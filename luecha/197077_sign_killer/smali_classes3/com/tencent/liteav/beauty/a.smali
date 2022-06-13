.class public Lcom/tencent/liteav/beauty/a;
.super Lcom/tencent/liteav/basic/module/a;
.source "TXCVideoPreprocessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/beauty/a$a;
    }
.end annotation


# instance fields
.field private a:Lcom/tencent/liteav/beauty/a$a;


# virtual methods
.method public setID(Ljava/lang/String;)V
    .locals 1

    .line 1077
    invoke-super {p0, p1}, Lcom/tencent/liteav/basic/module/a;->setID(Ljava/lang/String;)V

    .line 1078
    iget-object p1, p0, Lcom/tencent/liteav/beauty/a;->a:Lcom/tencent/liteav/beauty/a$a;

    invoke-virtual {p1}, Lcom/tencent/liteav/beauty/a$a;->a()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xbb9

    invoke-virtual {p0, v0, p1}, Lcom/tencent/liteav/beauty/a;->setStatusValue(ILjava/lang/Object;)Z

    return-void
.end method
