.class Lcom/appinstall/sdk/bs$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appinstall/sdk/bs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appinstall/sdk/bs$a;->a:[B

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 5

    iget-object v0, p0, Lcom/appinstall/sdk/bs$a;->a:[B

    array-length v1, v0

    const/16 v2, 0xc

    sub-int/2addr v1, v2

    new-array v1, v1, [B

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v0, v2, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method
