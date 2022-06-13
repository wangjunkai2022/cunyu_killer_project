.class public Lcom/tencent/liteav/network/q$a;
.super Ljava/lang/Object;
.source "UploadQualityData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/network/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "a"
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field public e:J

.field final synthetic f:Lcom/tencent/liteav/network/q;


# direct methods
.method protected constructor <init>(Lcom/tencent/liteav/network/q;)V
    .locals 2

    .line 185
    iput-object p1, p0, Lcom/tencent/liteav/network/q$a;->f:Lcom/tencent/liteav/network/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 186
    iput p1, p0, Lcom/tencent/liteav/network/q$a;->a:F

    .line 187
    iput p1, p0, Lcom/tencent/liteav/network/q$a;->b:F

    .line 188
    iput p1, p0, Lcom/tencent/liteav/network/q$a;->c:F

    .line 189
    iput p1, p0, Lcom/tencent/liteav/network/q$a;->d:F

    const-wide/16 v0, 0x0

    .line 190
    iput-wide v0, p0, Lcom/tencent/liteav/network/q$a;->e:J

    return-void
.end method
