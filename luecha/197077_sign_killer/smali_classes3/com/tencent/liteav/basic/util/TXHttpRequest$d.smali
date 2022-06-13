.class Lcom/tencent/liteav/basic/util/TXHttpRequest$d;
.super Ljava/lang/Object;
.source "TXHttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/basic/util/TXHttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 39
    iput-object v0, p0, Lcom/tencent/liteav/basic/util/TXHttpRequest$d;->a:Ljava/lang/String;

    const/4 v1, 0x0

    .line 40
    iput v1, p0, Lcom/tencent/liteav/basic/util/TXHttpRequest$d;->b:I

    .line 41
    iput-object v0, p0, Lcom/tencent/liteav/basic/util/TXHttpRequest$d;->c:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/tencent/liteav/basic/util/TXHttpRequest$d;->d:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/liteav/basic/util/TXHttpRequest$1;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/tencent/liteav/basic/util/TXHttpRequest$d;-><init>()V

    return-void
.end method
