.class public Lcom/tencent/liteav/txcplayer/ext/config/PluginConfigCenter;
.super Ljava/lang/Object;
.source "PluginConfigCenter.java"


# static fields
.field private static final sIsCorePlugin:[Z

.field private static final sPluginClazzName:[Ljava/lang/String;

.field private static final sPluginIds:[I

.field private static final sPluginName:[Ljava/lang/String;

.field private static final sPluginVersion:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x2

    aput v3, v1, v2

    .line 16
    sput-object v1, Lcom/tencent/liteav/txcplayer/ext/config/PluginConfigCenter;->sPluginIds:[I

    const-string v1, "monet"

    .line 24
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tencent/liteav/txcplayer/ext/config/PluginConfigCenter;->sPluginName:[Ljava/lang/String;

    new-array v1, v0, [I

    aput v0, v1, v2

    .line 31
    sput-object v1, Lcom/tencent/liteav/txcplayer/ext/config/PluginConfigCenter;->sPluginVersion:[I

    const-string v1, "com.tencent.liteav.monet.MonetPlugin"

    .line 38
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tencent/liteav/txcplayer/ext/config/PluginConfigCenter;->sPluginClazzName:[Ljava/lang/String;

    new-array v1, v0, [Z

    aput-boolean v0, v1, v2

    .line 45
    sput-object v1, Lcom/tencent/liteav/txcplayer/ext/config/PluginConfigCenter;->sIsCorePlugin:[Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadPluginConfig(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/liteav/txcplayer/ext/host/PluginInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 55
    :goto_0
    sget-object v1, Lcom/tencent/liteav/txcplayer/ext/config/PluginConfigCenter;->sPluginIds:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 56
    new-instance v1, Lcom/tencent/liteav/txcplayer/ext/host/PluginInfo;

    invoke-direct {v1}, Lcom/tencent/liteav/txcplayer/ext/host/PluginInfo;-><init>()V

    .line 57
    sget-object v2, Lcom/tencent/liteav/txcplayer/ext/config/PluginConfigCenter;->sPluginIds:[I

    aget v2, v2, v0

    iput v2, v1, Lcom/tencent/liteav/txcplayer/ext/host/PluginInfo;->mPluginId:I

    .line 58
    sget-object v2, Lcom/tencent/liteav/txcplayer/ext/config/PluginConfigCenter;->sPluginName:[Ljava/lang/String;

    aget-object v2, v2, v0

    iput-object v2, v1, Lcom/tencent/liteav/txcplayer/ext/host/PluginInfo;->mPluginName:Ljava/lang/String;

    .line 59
    sget-object v2, Lcom/tencent/liteav/txcplayer/ext/config/PluginConfigCenter;->sPluginVersion:[I

    aget v2, v2, v0

    iput v2, v1, Lcom/tencent/liteav/txcplayer/ext/host/PluginInfo;->mPluginVersion:I

    .line 60
    sget-object v2, Lcom/tencent/liteav/txcplayer/ext/config/PluginConfigCenter;->sPluginClazzName:[Ljava/lang/String;

    aget-object v2, v2, v0

    iput-object v2, v1, Lcom/tencent/liteav/txcplayer/ext/host/PluginInfo;->mPluginClazzName:Ljava/lang/String;

    .line 61
    sget-object v2, Lcom/tencent/liteav/txcplayer/ext/config/PluginConfigCenter;->sIsCorePlugin:[Z

    aget-boolean v2, v2, v0

    iput-boolean v2, v1, Lcom/tencent/liteav/txcplayer/ext/host/PluginInfo;->mIsCorePlugin:Z

    .line 62
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
