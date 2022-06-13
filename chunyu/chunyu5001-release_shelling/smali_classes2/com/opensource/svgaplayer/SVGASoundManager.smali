.class public final Lcom/opensource/svgaplayer/SVGASoundManager;
.super Ljava/lang/Object;
.source "SVGASoundManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opensource/svgaplayer/SVGASoundManager$SVGASoundCallBack;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSVGASoundManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SVGASoundManager.kt\ncom/opensource/svgaplayer/SVGASoundManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,194:1\n1587#2,2:195\n*E\n*S KotlinDebug\n*F\n+ 1 SVGASoundManager.kt\ncom/opensource/svgaplayer/SVGASoundManager\n*L\n106#1,2:195\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001.B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u000e\u001a\u00020\u000fH\u0002J\u0018\u0010\u0010\u001a\n \u0005*\u0004\u0018\u00010\u000b0\u000b2\u0006\u0010\u0011\u001a\u00020\u0008H\u0002J\u0006\u0010\u0012\u001a\u00020\u0013J\u000e\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0011\u001a\u00020\u0008J\r\u0010\u0014\u001a\u00020\u000fH\u0000\u00a2\u0006\u0002\u0008\u0015J9\u0010\u0016\u001a\u00020\u00082\u0008\u0010\u0017\u001a\u0004\u0018\u00010\t2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\u0008H\u0000\u00a2\u0006\u0002\u0008\u001eJ\u0015\u0010\u001f\u001a\u00020\u00132\u0006\u0010 \u001a\u00020\u0008H\u0000\u00a2\u0006\u0002\u0008!J\u0015\u0010\"\u001a\u00020\u00082\u0006\u0010 \u001a\u00020\u0008H\u0000\u00a2\u0006\u0002\u0008#J\u0006\u0010$\u001a\u00020\u0013J\u0015\u0010%\u001a\u00020\u00132\u0006\u0010 \u001a\u00020\u0008H\u0000\u00a2\u0006\u0002\u0008&J\u001a\u0010\'\u001a\u00020\u00132\u0006\u0010\u000c\u001a\u00020\r2\n\u0008\u0002\u0010(\u001a\u0004\u0018\u00010)J\u0015\u0010*\u001a\u00020\u00132\u0006\u0010 \u001a\u00020\u0008H\u0000\u00a2\u0006\u0002\u0008+J\u0015\u0010,\u001a\u00020\u00132\u0006\u0010 \u001a\u00020\u0008H\u0000\u00a2\u0006\u0002\u0008-R\u0016\u0010\u0003\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006/"
    }
    d2 = {
        "Lcom/opensource/svgaplayer/SVGASoundManager;",
        "",
        "()V",
        "TAG",
        "",
        "kotlin.jvm.PlatformType",
        "soundCallBackMap",
        "",
        "",
        "Lcom/opensource/svgaplayer/SVGASoundManager$SVGASoundCallBack;",
        "soundPool",
        "Landroid/media/SoundPool;",
        "volume",
        "",
        "checkInit",
        "",
        "getSoundPool",
        "maxStreams",
        "init",
        "",
        "isInit",
        "isInit$com_opensource_svgaplayer",
        "load",
        "callBack",
        "fd",
        "Ljava/io/FileDescriptor;",
        "offset",
        "",
        "length",
        "priority",
        "load$com_opensource_svgaplayer",
        "pause",
        "soundId",
        "pause$com_opensource_svgaplayer",
        "play",
        "play$com_opensource_svgaplayer",
        "release",
        "resume",
        "resume$com_opensource_svgaplayer",
        "setVolume",
        "entity",
        "Lcom/opensource/svgaplayer/SVGAVideoEntity;",
        "stop",
        "stop$com_opensource_svgaplayer",
        "unload",
        "unload$com_opensource_svgaplayer",
        "SVGASoundCallBack",
        "com.opensource.svgaplayer"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/opensource/svgaplayer/SVGASoundManager;

.field private static final TAG:Ljava/lang/String;

.field private static final soundCallBackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/opensource/svgaplayer/SVGASoundManager$SVGASoundCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private static soundPool:Landroid/media/SoundPool;

.field private static volume:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/opensource/svgaplayer/SVGASoundManager;

    invoke-direct {v0}, Lcom/opensource/svgaplayer/SVGASoundManager;-><init>()V

    sput-object v0, Lcom/opensource/svgaplayer/SVGASoundManager;->INSTANCE:Lcom/opensource/svgaplayer/SVGASoundManager;

    .line 28
    const-class v0, Lcom/opensource/svgaplayer/SVGASoundManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/opensource/svgaplayer/SVGASoundManager;->TAG:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    sput-object v0, Lcom/opensource/svgaplayer/SVGASoundManager;->soundCallBackMap:Ljava/util/Map;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 37
    sput v0, Lcom/opensource/svgaplayer/SVGASoundManager;->volume:F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getSoundCallBackMap$p(Lcom/opensource/svgaplayer/SVGASoundManager;)Ljava/util/Map;
    .locals 0

    .line 26
    sget-object p0, Lcom/opensource/svgaplayer/SVGASoundManager;->soundCallBackMap:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$getTAG$p(Lcom/opensource/svgaplayer/SVGASoundManager;)Ljava/lang/String;
    .locals 0

    .line 26
    sget-object p0, Lcom/opensource/svgaplayer/SVGASoundManager;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method private final checkInit()Z
    .locals 4

    .line 122
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/SVGASoundManager;->isInit$com_opensource_svgaplayer()Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    sget-object v1, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    sget-object v2, Lcom/opensource/svgaplayer/SVGASoundManager;->TAG:Ljava/lang/String;

    const-string v3, "TAG"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "soundPool is null, you need call init() !!!"

    invoke-virtual {v1, v2, v3}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method private final getSoundPool(I)Landroid/media/SoundPool;
    .locals 3

    .line 129
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 130
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x1

    .line 131
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 133
    new-instance v1, Landroid/media/SoundPool$Builder;

    invoke-direct {v1}, Landroid/media/SoundPool$Builder;-><init>()V

    invoke-virtual {v1, v0}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v0

    .line 134
    invoke-virtual {v0, p1}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object p1

    .line 135
    invoke-virtual {p1}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object p1

    goto :goto_0

    .line 137
    :cond_0
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Landroid/media/SoundPool;-><init>(III)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public static synthetic setVolume$default(Lcom/opensource/svgaplayer/SVGASoundManager;FLcom/opensource/svgaplayer/SVGAVideoEntity;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 84
    check-cast p2, Lcom/opensource/svgaplayer/SVGAVideoEntity;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/opensource/svgaplayer/SVGASoundManager;->setVolume(FLcom/opensource/svgaplayer/SVGAVideoEntity;)V

    return-void
.end method


# virtual methods
.method public final init()V
    .locals 1

    const/16 v0, 0x14

    .line 52
    invoke-virtual {p0, v0}, Lcom/opensource/svgaplayer/SVGASoundManager;->init(I)V

    return-void
.end method

.method public final init(I)V
    .locals 4

    .line 56
    sget-object v0, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    sget-object v1, Lcom/opensource/svgaplayer/SVGASoundManager;->TAG:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "**************** init **************** "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    sget-object v0, Lcom/opensource/svgaplayer/SVGASoundManager;->soundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    return-void

    .line 60
    :cond_0
    invoke-direct {p0, p1}, Lcom/opensource/svgaplayer/SVGASoundManager;->getSoundPool(I)Landroid/media/SoundPool;

    move-result-object p1

    sput-object p1, Lcom/opensource/svgaplayer/SVGASoundManager;->soundPool:Landroid/media/SoundPool;

    .line 61
    sget-object p1, Lcom/opensource/svgaplayer/SVGASoundManager;->soundPool:Landroid/media/SoundPool;

    if-eqz p1, :cond_1

    sget-object v0, Lcom/opensource/svgaplayer/SVGASoundManager$init$1;->INSTANCE:Lcom/opensource/svgaplayer/SVGASoundManager$init$1;

    check-cast v0, Landroid/media/SoundPool$OnLoadCompleteListener;

    invoke-virtual {p1, v0}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    :cond_1
    return-void
.end method

.method public final isInit$com_opensource_svgaplayer()Z
    .locals 1

    .line 118
    sget-object v0, Lcom/opensource/svgaplayer/SVGASoundManager;->soundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final load$com_opensource_svgaplayer(Lcom/opensource/svgaplayer/SVGASoundManager$SVGASoundCallBack;Ljava/io/FileDescriptor;JJI)I
    .locals 7

    .line 145
    invoke-direct {p0}, Lcom/opensource/svgaplayer/SVGASoundManager;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 147
    :cond_0
    sget-object v0, Lcom/opensource/svgaplayer/SVGASoundManager;->soundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    move-object v1, p2

    move-wide v2, p3

    move-wide v4, p5

    move v6, p7

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->load(Ljava/io/FileDescriptor;JJI)I

    move-result p2

    .line 149
    sget-object p3, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    sget-object p4, Lcom/opensource/svgaplayer/SVGASoundManager;->TAG:Ljava/lang/String;

    const-string p5, "TAG"

    invoke-static {p4, p5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "load soundId="

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p6, " callBack="

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p4, p5}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 151
    sget-object p3, Lcom/opensource/svgaplayer/SVGASoundManager;->soundCallBackMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 152
    sget-object p3, Lcom/opensource/svgaplayer/SVGASoundManager;->soundCallBackMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p3, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return p2
.end method

.method public final pause$com_opensource_svgaplayer(I)V
    .locals 4

    .line 189
    invoke-direct {p0}, Lcom/opensource/svgaplayer/SVGASoundManager;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 191
    :cond_0
    sget-object v0, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    sget-object v1, Lcom/opensource/svgaplayer/SVGASoundManager;->TAG:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pause soundId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    sget-object v0, Lcom/opensource/svgaplayer/SVGASoundManager;->soundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v0, p1}, Landroid/media/SoundPool;->pause(I)V

    return-void
.end method

.method public final play$com_opensource_svgaplayer(I)I
    .locals 10

    .line 168
    invoke-direct {p0}, Lcom/opensource/svgaplayer/SVGASoundManager;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 170
    :cond_0
    sget-object v0, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    sget-object v1, Lcom/opensource/svgaplayer/SVGASoundManager;->TAG:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "play soundId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    sget-object v3, Lcom/opensource/svgaplayer/SVGASoundManager;->soundPool:Landroid/media/SoundPool;

    if-nez v3, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    sget v6, Lcom/opensource/svgaplayer/SVGASoundManager;->volume:F

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    move v4, p1

    move v5, v6

    invoke-virtual/range {v3 .. v9}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result p1

    return p1
.end method

.method public final release()V
    .locals 3

    .line 72
    sget-object v0, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    sget-object v1, Lcom/opensource/svgaplayer/SVGASoundManager;->TAG:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "**************** release ****************"

    invoke-virtual {v0, v1, v2}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    sget-object v0, Lcom/opensource/svgaplayer/SVGASoundManager;->soundCallBackMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 74
    sget-object v0, Lcom/opensource/svgaplayer/SVGASoundManager;->soundCallBackMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    return-void
.end method

.method public final resume$com_opensource_svgaplayer(I)V
    .locals 4

    .line 182
    invoke-direct {p0}, Lcom/opensource/svgaplayer/SVGASoundManager;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 184
    :cond_0
    sget-object v0, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    sget-object v1, Lcom/opensource/svgaplayer/SVGASoundManager;->TAG:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop soundId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    sget-object v0, Lcom/opensource/svgaplayer/SVGASoundManager;->soundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v0, p1}, Landroid/media/SoundPool;->resume(I)V

    return-void
.end method

.method public final setVolume(FLcom/opensource/svgaplayer/SVGAVideoEntity;)V
    .locals 2

    .line 85
    invoke-direct {p0}, Lcom/opensource/svgaplayer/SVGASoundManager;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_5

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    goto :goto_2

    :cond_1
    if-nez p2, :cond_3

    .line 95
    sput p1, Lcom/opensource/svgaplayer/SVGASoundManager;->volume:F

    .line 96
    sget-object p2, Lcom/opensource/svgaplayer/SVGASoundManager;->soundCallBackMap:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 97
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 99
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/opensource/svgaplayer/SVGASoundManager$SVGASoundCallBack;

    invoke-interface {v0, p1}, Lcom/opensource/svgaplayer/SVGASoundManager$SVGASoundCallBack;->onVolumeChange(F)V

    goto :goto_0

    :cond_2
    return-void

    .line 104
    :cond_3
    sget-object v0, Lcom/opensource/svgaplayer/SVGASoundManager;->soundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_4

    .line 106
    invoke-virtual {p2}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getAudioList$com_opensource_svgaplayer()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    .line 195
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;

    .line 107
    invoke-virtual {v1}, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->getPlayID()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 108
    invoke-virtual {v0, v1, p1, p1}, Landroid/media/SoundPool;->setVolume(IFF)V

    goto :goto_1

    :cond_4
    return-void

    .line 90
    :cond_5
    :goto_2
    sget-object p1, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    sget-object p2, Lcom/opensource/svgaplayer/SVGASoundManager;->TAG:Ljava/lang/String;

    const-string v0, "TAG"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "The volume level is in the range of 0 to 1 "

    invoke-virtual {p1, p2, v0}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final stop$com_opensource_svgaplayer(I)V
    .locals 4

    .line 175
    invoke-direct {p0}, Lcom/opensource/svgaplayer/SVGASoundManager;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 177
    :cond_0
    sget-object v0, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    sget-object v1, Lcom/opensource/svgaplayer/SVGASoundManager;->TAG:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop soundId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    sget-object v0, Lcom/opensource/svgaplayer/SVGASoundManager;->soundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v0, p1}, Landroid/media/SoundPool;->stop(I)V

    return-void
.end method

.method public final unload$com_opensource_svgaplayer(I)V
    .locals 4

    .line 158
    invoke-direct {p0}, Lcom/opensource/svgaplayer/SVGASoundManager;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 160
    :cond_0
    sget-object v0, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    sget-object v1, Lcom/opensource/svgaplayer/SVGASoundManager;->TAG:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unload soundId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    sget-object v0, Lcom/opensource/svgaplayer/SVGASoundManager;->soundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v0, p1}, Landroid/media/SoundPool;->unload(I)Z

    .line 164
    sget-object v0, Lcom/opensource/svgaplayer/SVGASoundManager;->soundCallBackMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
