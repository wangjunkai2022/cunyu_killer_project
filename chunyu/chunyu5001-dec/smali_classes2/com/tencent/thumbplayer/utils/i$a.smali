.class Lcom/tencent/thumbplayer/utils/i$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/thumbplayer/utils/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static a:Lcom/tencent/thumbplayer/utils/i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tencent/thumbplayer/utils/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/thumbplayer/utils/i;-><init>(Lcom/tencent/thumbplayer/utils/i$1;)V

    sput-object v0, Lcom/tencent/thumbplayer/utils/i$a;->a:Lcom/tencent/thumbplayer/utils/i;

    return-void
.end method

.method static synthetic a()Lcom/tencent/thumbplayer/utils/i;
    .locals 1

    sget-object v0, Lcom/tencent/thumbplayer/utils/i$a;->a:Lcom/tencent/thumbplayer/utils/i;

    return-object v0
.end method
