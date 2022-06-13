.class Lcom/tencent/liteav/basic/util/TXHttpRequest$c;
.super Ljava/lang/Object;
.source "TXHttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/basic/util/TXHttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:[B

.field public d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 245
    iput v0, p0, Lcom/tencent/liteav/basic/util/TXHttpRequest$c;->a:I

    const-string v0, ""

    .line 246
    iput-object v0, p0, Lcom/tencent/liteav/basic/util/TXHttpRequest$c;->b:Ljava/lang/String;

    .line 247
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/basic/util/TXHttpRequest$c;->c:[B

    return-void
.end method
