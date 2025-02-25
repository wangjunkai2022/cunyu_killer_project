.class final Lcom/tencent/liteav/basic/util/h$1;
.super Ljava/lang/Object;
.source "TXCSystemUtil.java"

# interfaces
.implements Lcom/tencent/liteav/basic/util/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/basic/util/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/liteav/basic/util/a$a<",
        "Lcom/tencent/liteav/basic/util/b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lcom/tencent/liteav/basic/util/h$1;->b()Lcom/tencent/liteav/basic/util/b;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/tencent/liteav/basic/util/b;
    .locals 1

    .line 63
    new-instance v0, Lcom/tencent/liteav/basic/util/b;

    invoke-direct {v0}, Lcom/tencent/liteav/basic/util/b;-><init>()V

    return-object v0
.end method
