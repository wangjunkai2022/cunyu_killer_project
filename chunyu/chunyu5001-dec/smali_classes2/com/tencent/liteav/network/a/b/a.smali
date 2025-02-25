.class public final Lcom/tencent/liteav/network/a/b/a;
.super Ljava/lang/Object;
.source "BitSet.java"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/tencent/liteav/network/a/b/a;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/tencent/liteav/network/a/b/a;->a:I

    return v0
.end method

.method public a(I)Lcom/tencent/liteav/network/a/b/a;
    .locals 2

    .line 14
    iget v0, p0, Lcom/tencent/liteav/network/a/b/a;->a:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    or-int/2addr p1, v0

    iput p1, p0, Lcom/tencent/liteav/network/a/b/a;->a:I

    return-object p0
.end method
