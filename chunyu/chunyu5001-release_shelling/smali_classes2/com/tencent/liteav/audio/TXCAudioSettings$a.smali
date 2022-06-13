.class Lcom/tencent/liteav/audio/TXCAudioSettings$a;
.super Ljava/lang/Object;
.source "TXCAudioSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/audio/TXCAudioSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/tencent/liteav/audio/TXCAudioSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Lcom/tencent/liteav/audio/TXCAudioSettings;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/liteav/audio/TXCAudioSettings;-><init>(Lcom/tencent/liteav/audio/TXCAudioSettings$1;)V

    sput-object v0, Lcom/tencent/liteav/audio/TXCAudioSettings$a;->a:Lcom/tencent/liteav/audio/TXCAudioSettings;

    return-void
.end method

.method static synthetic a()Lcom/tencent/liteav/audio/TXCAudioSettings;
    .locals 1

    .line 17
    sget-object v0, Lcom/tencent/liteav/audio/TXCAudioSettings$a;->a:Lcom/tencent/liteav/audio/TXCAudioSettings;

    return-object v0
.end method
