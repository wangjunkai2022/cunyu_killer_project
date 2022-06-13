.class Lcom/tencent/liteav/network/c$a;
.super Ljava/lang/Object;
.source "TXCHttpURLClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/network/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/tencent/liteav/network/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lcom/tencent/liteav/network/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/liteav/network/c;-><init>(Lcom/tencent/liteav/network/c$1;)V

    sput-object v0, Lcom/tencent/liteav/network/c$a;->a:Lcom/tencent/liteav/network/c;

    return-void
.end method
