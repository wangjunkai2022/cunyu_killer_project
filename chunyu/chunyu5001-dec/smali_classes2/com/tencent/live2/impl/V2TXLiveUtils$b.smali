.class public Lcom/tencent/live2/impl/V2TXLiveUtils$b;
.super Ljava/lang/Object;
.source "V2TXLiveUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/live2/impl/V2TXLiveUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    iput p1, p0, Lcom/tencent/live2/impl/V2TXLiveUtils$b;->a:I

    .line 329
    iput p2, p0, Lcom/tencent/live2/impl/V2TXLiveUtils$b;->b:I

    return-void
.end method
