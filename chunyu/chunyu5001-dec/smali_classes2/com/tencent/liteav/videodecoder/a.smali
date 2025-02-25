.class Lcom/tencent/liteav/videodecoder/a;
.super Ljava/lang/Object;
.source "TXCH264SPSModifier.java"


# instance fields
.field private a:[C

.field private b:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    new-array p1, p1, [C

    iput-object p1, p0, Lcom/tencent/liteav/videodecoder/a;->a:[C

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 373
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/liteav/videodecoder/a;->a:[C

    iget v2, p0, Lcom/tencent/liteav/videodecoder/a;->b:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
