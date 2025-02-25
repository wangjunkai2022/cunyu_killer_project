.class Lcom/tencent/thumbplayer/d/g$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/thumbplayer/d/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static a:Lcom/tencent/thumbplayer/d/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tencent/thumbplayer/d/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/thumbplayer/d/g;-><init>(Lcom/tencent/thumbplayer/d/g$1;)V

    sput-object v0, Lcom/tencent/thumbplayer/d/g$a;->a:Lcom/tencent/thumbplayer/d/g;

    return-void
.end method

.method static synthetic a()Lcom/tencent/thumbplayer/d/g;
    .locals 1

    sget-object v0, Lcom/tencent/thumbplayer/d/g$a;->a:Lcom/tencent/thumbplayer/d/g;

    return-object v0
.end method
