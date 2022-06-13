.class public Lcom/tencent/live2/impl/V2TXLiveUtils$a;
.super Ljava/lang/Object;
.source "V2TXLiveUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/live2/impl/V2TXLiveUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    iput p1, p0, Lcom/tencent/live2/impl/V2TXLiveUtils$a;->a:I

    .line 339
    iput p2, p0, Lcom/tencent/live2/impl/V2TXLiveUtils$a;->b:I

    return-void
.end method
