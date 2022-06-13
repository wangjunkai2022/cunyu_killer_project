.class public final Lcom/opensource/svgaplayer/SVGAVideoEntity;
.super Ljava/lang/Object;
.source "SVGAVideoEntity.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSVGAVideoEntity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SVGAVideoEntity.kt\ncom/opensource/svgaplayer/SVGAVideoEntity\n+ 2 Iterators.kt\nkotlin/collections/CollectionsKt__IteratorsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,348:1\n32#2,2:349\n1587#3,2:351\n1313#3:353\n1382#3,3:354\n1313#3:357\n1382#3,3:358\n1587#3,2:365\n1587#3,2:367\n149#4,2:361\n149#4,2:363\n*E\n*S KotlinDebug\n*F\n+ 1 SVGAVideoEntity.kt\ncom/opensource/svgaplayer/SVGAVideoEntity\n*L\n122#1,2:349\n153#1,2:351\n187#1:353\n187#1,3:354\n205#1:357\n205#1,3:358\n271#1,2:365\n335#1,2:367\n219#1,2:361\n257#1,2:363\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0098\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0017\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006B\'\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\nB\u0017\u0008\u0016\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\rB\'\u0008\u0016\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\u000eJ\u0006\u0010H\u001a\u00020.J\u001a\u0010I\u001a\u0004\u0018\u00010&2\u0006\u0010J\u001a\u00020K2\u0006\u0010L\u001a\u00020\u0014H\u0002J\u0012\u0010I\u001a\u0004\u0018\u00010&2\u0006\u0010L\u001a\u00020\u0014H\u0002J$\u0010M\u001a\u00020\u001d2\u0006\u0010N\u001a\u00020O2\u0012\u0010P\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00050%H\u0002J\u0018\u0010Q\u001a\u00020\u00052\u0006\u0010R\u001a\u00020\u00052\u0006\u0010S\u001a\u00020KH\u0002J\u001c\u0010T\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00050%2\u0006\u0010\u000b\u001a\u00020\u000cH\u0002J\u001c\u0010U\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020K0%2\u0006\u0010\u000b\u001a\u00020\u000cH\u0002J\u0018\u0010V\u001a\u00020\u00142\u0006\u0010W\u001a\u00020\u00142\u0006\u0010X\u001a\u00020\u0014H\u0002J\u0012\u0010Y\u001a\u0004\u0018\u00010;2\u0006\u0010\u000b\u001a\u00020\u000cH\u0002J\u0010\u0010Z\u001a\u00020.2\u0006\u0010[\u001a\u00020\u000cH\u0002J\u0010\u0010Z\u001a\u00020.2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J%\u0010\\\u001a\u00020.2\u000c\u0010]\u001a\u0008\u0012\u0004\u0012\u00020.0-2\u0008\u0010^\u001a\u0004\u0018\u000102H\u0000\u00a2\u0006\u0002\u0008_J\u0010\u0010`\u001a\u00020.2\u0006\u0010\u000b\u001a\u00020\u000cH\u0002J\u0010\u0010`\u001a\u00020.2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J\u001e\u0010a\u001a\u00020.2\u0006\u0010\u000b\u001a\u00020\u000c2\u000c\u0010b\u001a\u0008\u0012\u0004\u0012\u00020.0-H\u0002J\u0010\u0010c\u001a\u00020.2\u0006\u0010d\u001a\u00020\u0003H\u0002J\u0010\u0010e\u001a\u00020.2\u0006\u0010f\u001a\u00020gH\u0002J\u001e\u0010h\u001a\u00020.2\u0006\u0010\u000b\u001a\u00020\u000c2\u000c\u0010b\u001a\u0008\u0012\u0004\u0012\u00020.0-H\u0002R\u001e\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u0008@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082D\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR \u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001cX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\u001e\u0010\"\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u0008@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010\u0012R&\u0010$\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020&0%X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*R\u000e\u0010+\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010,\u001a\u0008\u0012\u0004\u0012\u00020.0-X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010/\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00100\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00101\u001a\u0004\u0018\u000102X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u00103\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00084\u00105\"\u0004\u00086\u00107R\u0010\u00108\u001a\u0004\u0018\u000109X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010:\u001a\u0004\u0018\u00010;X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008<\u0010=\"\u0004\u0008>\u0010?R \u0010@\u001a\u0008\u0012\u0004\u0012\u00020A0\u001cX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008B\u0010\u001f\"\u0004\u0008C\u0010!R\u001e\u0010E\u001a\u00020D2\u0006\u0010\u000f\u001a\u00020D@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008F\u0010G\u00a8\u0006i"
    }
    d2 = {
        "Lcom/opensource/svgaplayer/SVGAVideoEntity;",
        "",
        "json",
        "Lorg/json/JSONObject;",
        "cacheDir",
        "Ljava/io/File;",
        "(Lorg/json/JSONObject;Ljava/io/File;)V",
        "frameWidth",
        "",
        "frameHeight",
        "(Lorg/json/JSONObject;Ljava/io/File;II)V",
        "entity",
        "Lcom/opensource/svgaplayer/proto/MovieEntity;",
        "(Lcom/opensource/svgaplayer/proto/MovieEntity;Ljava/io/File;)V",
        "(Lcom/opensource/svgaplayer/proto/MovieEntity;Ljava/io/File;II)V",
        "<set-?>",
        "FPS",
        "getFPS",
        "()I",
        "TAG",
        "",
        "antiAlias",
        "",
        "getAntiAlias",
        "()Z",
        "setAntiAlias",
        "(Z)V",
        "audioList",
        "",
        "Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;",
        "getAudioList$com_opensource_svgaplayer",
        "()Ljava/util/List;",
        "setAudioList$com_opensource_svgaplayer",
        "(Ljava/util/List;)V",
        "frames",
        "getFrames",
        "imageMap",
        "Ljava/util/HashMap;",
        "Landroid/graphics/Bitmap;",
        "getImageMap$com_opensource_svgaplayer",
        "()Ljava/util/HashMap;",
        "setImageMap$com_opensource_svgaplayer",
        "(Ljava/util/HashMap;)V",
        "mCacheDir",
        "mCallback",
        "Lkotlin/Function0;",
        "",
        "mFrameHeight",
        "mFrameWidth",
        "mPlayCallback",
        "Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;",
        "movieItem",
        "getMovieItem",
        "()Lcom/opensource/svgaplayer/proto/MovieEntity;",
        "setMovieItem",
        "(Lcom/opensource/svgaplayer/proto/MovieEntity;)V",
        "soundCallback",
        "Lcom/opensource/svgaplayer/SVGASoundManager$SVGASoundCallBack;",
        "soundPool",
        "Landroid/media/SoundPool;",
        "getSoundPool$com_opensource_svgaplayer",
        "()Landroid/media/SoundPool;",
        "setSoundPool$com_opensource_svgaplayer",
        "(Landroid/media/SoundPool;)V",
        "spriteList",
        "Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteEntity;",
        "getSpriteList$com_opensource_svgaplayer",
        "setSpriteList$com_opensource_svgaplayer",
        "Lcom/opensource/svgaplayer/utils/SVGARect;",
        "videoSize",
        "getVideoSize",
        "()Lcom/opensource/svgaplayer/utils/SVGARect;",
        "clear",
        "createBitmap",
        "byteArray",
        "",
        "filePath",
        "createSvgaAudioEntity",
        "audio",
        "Lcom/opensource/svgaplayer/proto/AudioEntity;",
        "audiosFileMap",
        "generateAudioFile",
        "audioCache",
        "value",
        "generateAudioFileMap",
        "generateAudioMap",
        "generateBitmapFilePath",
        "imgName",
        "imgKey",
        "generateSoundPool",
        "parserImages",
        "obj",
        "prepare",
        "callback",
        "playCallback",
        "prepare$com_opensource_svgaplayer",
        "resetSprites",
        "setupAudios",
        "completionBlock",
        "setupByJson",
        "movieObject",
        "setupByMovie",
        "movieParams",
        "Lcom/opensource/svgaplayer/proto/MovieParams;",
        "setupSoundPool",
        "com.opensource.svgaplayer"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private FPS:I

.field private final TAG:Ljava/lang/String;

.field private antiAlias:Z

.field private audioList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;",
            ">;"
        }
    .end annotation
.end field

.field private frames:I

.field private imageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mCacheDir:Ljava/io/File;

.field private mCallback:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private mFrameHeight:I

.field private mFrameWidth:I

.field private mPlayCallback:Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;

.field private movieItem:Lcom/opensource/svgaplayer/proto/MovieEntity;

.field private soundCallback:Lcom/opensource/svgaplayer/SVGASoundManager$SVGASoundCallBack;

.field private soundPool:Landroid/media/SoundPool;

.field private spriteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteEntity;",
            ">;"
        }
    .end annotation
.end field

.field private videoSize:Lcom/opensource/svgaplayer/utils/SVGARect;


# direct methods
.method public constructor <init>(Lcom/opensource/svgaplayer/proto/MovieEntity;Ljava/io/File;)V
    .locals 1

    const-string v0, "entity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cacheDir"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/opensource/svgaplayer/SVGAVideoEntity;-><init>(Lcom/opensource/svgaplayer/proto/MovieEntity;Ljava/io/File;II)V

    return-void
.end method

.method public constructor <init>(Lcom/opensource/svgaplayer/proto/MovieEntity;Ljava/io/File;II)V
    .locals 10

    const-string v0, "entity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cacheDir"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SVGAVideoEntity"

    .line 29
    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->antiAlias:Z

    .line 34
    new-instance v0, Lcom/opensource/svgaplayer/utils/SVGARect;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/opensource/svgaplayer/utils/SVGARect;-><init>(DDDD)V

    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->videoSize:Lcom/opensource/svgaplayer/utils/SVGARect;

    const/16 v0, 0xf

    .line 37
    iput v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->FPS:I

    .line 43
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->spriteList:Ljava/util/List;

    .line 44
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->audioList:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->imageMap:Ljava/util/HashMap;

    .line 85
    iput p3, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->mFrameWidth:I

    .line 86
    iput p4, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->mFrameHeight:I

    .line 87
    iput-object p2, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->mCacheDir:Ljava/io/File;

    .line 88
    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->movieItem:Lcom/opensource/svgaplayer/proto/MovieEntity;

    .line 89
    iget-object p2, p1, Lcom/opensource/svgaplayer/proto/MovieEntity;->params:Lcom/opensource/svgaplayer/proto/MovieParams;

    if-eqz p2, :cond_0

    move-object p3, p0

    check-cast p3, Lcom/opensource/svgaplayer/SVGAVideoEntity;

    invoke-direct {p3, p2}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->setupByMovie(Lcom/opensource/svgaplayer/proto/MovieParams;)V

    .line 91
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->parserImages(Lcom/opensource/svgaplayer/proto/MovieEntity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 95
    invoke-virtual {p2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p2

    .line 93
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 97
    :goto_0
    invoke-direct {p0, p1}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->resetSprites(Lcom/opensource/svgaplayer/proto/MovieEntity;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Ljava/io/File;)V
    .locals 1

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cacheDir"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/opensource/svgaplayer/SVGAVideoEntity;-><init>(Lorg/json/JSONObject;Ljava/io/File;II)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Ljava/io/File;II)V
    .locals 10

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cacheDir"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SVGAVideoEntity"

    .line 29
    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->antiAlias:Z

    .line 34
    new-instance v0, Lcom/opensource/svgaplayer/utils/SVGARect;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/opensource/svgaplayer/utils/SVGARect;-><init>(DDDD)V

    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->videoSize:Lcom/opensource/svgaplayer/utils/SVGARect;

    const/16 v0, 0xf

    .line 37
    iput v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->FPS:I

    .line 43
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->spriteList:Ljava/util/List;

    .line 44
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->audioList:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->imageMap:Ljava/util/HashMap;

    .line 57
    iput p3, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->mFrameWidth:I

    .line 58
    iput p4, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->mFrameHeight:I

    .line 59
    iput-object p2, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->mCacheDir:Ljava/io/File;

    const-string p2, "movie"

    .line 60
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 61
    invoke-direct {p0, p2}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->setupByJson(Lorg/json/JSONObject;)V

    .line 63
    :try_start_0
    invoke-direct {p0, p1}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->parserImages(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 67
    invoke-virtual {p2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p2

    .line 65
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 69
    :goto_0
    invoke-direct {p0, p1}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->resetSprites(Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method public static final synthetic access$getMCallback$p(Lcom/opensource/svgaplayer/SVGAVideoEntity;)Lkotlin/jvm/functions/Function0;
    .locals 1

    .line 27
    iget-object p0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->mCallback:Lkotlin/jvm/functions/Function0;

    if-nez p0, :cond_0

    const-string v0, "mCallback"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$setMCallback$p(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->mCallback:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method private final createBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    .line 149
    sget-object v0, Lcom/opensource/svgaplayer/bitmap/SVGABitmapFileDecoder;->INSTANCE:Lcom/opensource/svgaplayer/bitmap/SVGABitmapFileDecoder;

    iget v1, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->mFrameWidth:I

    iget v2, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->mFrameHeight:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/opensource/svgaplayer/bitmap/SVGABitmapFileDecoder;->decodeBitmapFrom(Ljava/lang/Object;II)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private final createBitmap([BLjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    .line 170
    sget-object v0, Lcom/opensource/svgaplayer/bitmap/SVGABitmapByteArrayDecoder;->INSTANCE:Lcom/opensource/svgaplayer/bitmap/SVGABitmapByteArrayDecoder;

    iget v1, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->mFrameWidth:I

    iget v2, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->mFrameHeight:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/opensource/svgaplayer/bitmap/SVGABitmapByteArrayDecoder;->decodeBitmapFrom(Ljava/lang/Object;II)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    invoke-direct {p0, p2}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->createBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private final createSvgaAudioEntity(Lcom/opensource/svgaplayer/proto/AudioEntity;Ljava/util/HashMap;)Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opensource/svgaplayer/proto/AudioEntity;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;)",
            "Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 211
    new-instance v3, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;

    invoke-direct {v3, v0}, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;-><init>(Lcom/opensource/svgaplayer/proto/AudioEntity;)V

    .line 212
    iget-object v4, v0, Lcom/opensource/svgaplayer/proto/AudioEntity;->startTime:Ljava/lang/Integer;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    int-to-double v6, v4

    .line 213
    iget-object v4, v0, Lcom/opensource/svgaplayer/proto/AudioEntity;->totalTime:Ljava/lang/Integer;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :cond_1
    int-to-double v4, v5

    double-to-int v8, v4

    if-nez v8, :cond_2

    return-object v3

    .line 219
    :cond_2
    iget-object v8, v1, Lcom/opensource/svgaplayer/SVGAVideoEntity;->mPlayCallback:Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;

    if-eqz v8, :cond_5

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 221
    check-cast v2, Ljava/util/Map;

    .line 361
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 222
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 224
    :cond_3
    invoke-interface {v8, v0}, Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;->onPlay(Ljava/util/List;)V

    .line 225
    iget-object v0, v1, Lcom/opensource/svgaplayer/SVGAVideoEntity;->mCallback:Lkotlin/jvm/functions/Function0;

    if-nez v0, :cond_4

    const-string v2, "mCallback"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-object v3

    .line 229
    :cond_5
    iget-object v0, v0, Lcom/opensource/svgaplayer/proto/AudioEntity;->audioKey:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    if-eqz v0, :cond_8

    .line 230
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    check-cast v2, Ljava/io/Closeable;

    const/4 v0, 0x0

    move-object v8, v0

    check-cast v8, Ljava/lang/Throwable;

    :try_start_0
    move-object v9, v2

    check-cast v9, Ljava/io/FileInputStream;

    .line 231
    invoke-virtual {v9}, Ljava/io/FileInputStream;->available()I

    move-result v10

    int-to-double v10, v10

    div-double/2addr v6, v4

    mul-double/2addr v6, v10

    double-to-long v4, v6

    .line 233
    sget-object v6, Lcom/opensource/svgaplayer/SVGASoundManager;->INSTANCE:Lcom/opensource/svgaplayer/SVGASoundManager;

    invoke-virtual {v6}, Lcom/opensource/svgaplayer/SVGASoundManager;->isInit$com_opensource_svgaplayer()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 234
    sget-object v12, Lcom/opensource/svgaplayer/SVGASoundManager;->INSTANCE:Lcom/opensource/svgaplayer/SVGASoundManager;

    iget-object v13, v1, Lcom/opensource/svgaplayer/SVGAVideoEntity;->soundCallback:Lcom/opensource/svgaplayer/SVGASoundManager$SVGASoundCallBack;

    .line 235
    invoke-virtual {v9}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v14

    double-to-long v6, v10

    const/16 v19, 0x1

    move-wide v15, v4

    move-wide/from16 v17, v6

    .line 234
    invoke-virtual/range {v12 .. v19}, Lcom/opensource/svgaplayer/SVGASoundManager;->load$com_opensource_svgaplayer(Lcom/opensource/svgaplayer/SVGASoundManager$SVGASoundCallBack;Ljava/io/FileDescriptor;JJI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->setSoundID(Ljava/lang/Integer;)V

    goto :goto_2

    .line 240
    :cond_6
    iget-object v12, v1, Lcom/opensource/svgaplayer/SVGAVideoEntity;->soundPool:Landroid/media/SoundPool;

    if-eqz v12, :cond_7

    invoke-virtual {v9}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v13

    double-to-long v6, v10

    const/16 v18, 0x1

    move-wide v14, v4

    move-wide/from16 v16, v6

    invoke-virtual/range {v12 .. v18}, Landroid/media/SoundPool;->load(Ljava/io/FileDescriptor;JJI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_7
    invoke-virtual {v3, v0}, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->setSoundID(Ljava/lang/Integer;)V

    .line 242
    :goto_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    invoke-static {v2, v8}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v3, v0

    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object v4, v0

    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4

    :cond_8
    :goto_3
    return-object v3
.end method

.method private final generateAudioFile(Ljava/io/File;[B)Ljava/io/File;
    .locals 1

    .line 248
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 249
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write([B)V

    return-object p1
.end method

.method private final generateAudioFileMap(Lcom/opensource/svgaplayer/proto/MovieEntity;)Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opensource/svgaplayer/proto/MovieEntity;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 254
    invoke-direct {p0, p1}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->generateAudioMap(Lcom/opensource/svgaplayer/proto/MovieEntity;)Ljava/util/HashMap;

    move-result-object p1

    .line 255
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 256
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 363
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 258
    sget-object v2, Lcom/opensource/svgaplayer/SVGACache;->INSTANCE:Lcom/opensource/svgaplayer/SVGACache;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/opensource/svgaplayer/SVGACache;->buildAudioFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 259
    move-object v3, v0

    check-cast v3, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 260
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v2

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_1

    goto :goto_2

    .line 262
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 260
    invoke-direct {p0, v2, v1}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->generateAudioFile(Ljava/io/File;[B)Ljava/io/File;

    move-result-object v5

    .line 259
    :goto_2
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private final generateAudioMap(Lcom/opensource/svgaplayer/proto/MovieEntity;)Ljava/util/HashMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opensource/svgaplayer/proto/MovieEntity;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .line 270
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 271
    iget-object p1, p1, Lcom/opensource/svgaplayer/proto/MovieEntity;->images:Ljava/util/Map;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Ljava/lang/Iterable;

    .line 365
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 272
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 273
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokio/ByteString;

    invoke-virtual {v1}, Lokio/ByteString;->toByteArray()[B

    move-result-object v1

    const-string v3, "byteArray"

    .line 274
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v3, v1

    const/4 v4, 0x4

    if-ge v3, v4, :cond_1

    goto :goto_0

    .line 277
    :cond_1
    new-instance v3, Lkotlin/ranges/IntRange;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-direct {v3, v5, v4}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-static {v1, v3}, Lkotlin/collections/ArraysKt;->slice([BLkotlin/ranges/IntRange;)Ljava/util/List;

    move-result-object v3

    .line 278
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->byteValue()B

    move-result v4

    const/16 v6, 0x49

    const-string v7, "imageKey"

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-ne v4, v6, :cond_2

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->byteValue()B

    move-result v4

    const/16 v6, 0x44

    if-ne v4, v6, :cond_2

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->byteValue()B

    move-result v4

    const/16 v6, 0x33

    if-ne v4, v6, :cond_2

    .line 279
    move-object v3, v0

    check-cast v3, Ljava/util/Map;

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 280
    :cond_2
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->byteValue()B

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->byteValue()B

    move-result v4

    const/4 v5, -0x5

    if-ne v4, v5, :cond_0

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->byteValue()B

    move-result v3

    const/16 v4, -0x6c

    if-ne v3, v4, :cond_0

    .line 281
    move-object v3, v0

    check-cast v3, Ljava/util/Map;

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_3
    return-object v0
.end method

.method private final generateBitmapFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->mCacheDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".png"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->mCacheDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 141
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    move-object p1, v0

    goto :goto_0

    .line 143
    :cond_1
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    move-object p1, p2

    goto :goto_0

    :cond_2
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method private final generateSoundPool(Lcom/opensource/svgaplayer/proto/MovieEntity;)Landroid/media/SoundPool;
    .locals 4

    .line 317
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x15

    const-string v2, "entity.audios"

    const/16 v3, 0xc

    if-lt v0, v1, :cond_0

    .line 318
    :try_start_1
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x1

    .line 319
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 320
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 321
    new-instance v1, Landroid/media/SoundPool$Builder;

    invoke-direct {v1}, Landroid/media/SoundPool$Builder;-><init>()V

    invoke-virtual {v1, v0}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v0

    .line 322
    iget-object p1, p1, Lcom/opensource/svgaplayer/proto/MovieEntity;->audios:Ljava/util/List;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    invoke-static {v3, p1}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object p1

    .line 323
    invoke-virtual {p1}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object p1

    goto :goto_0

    .line 325
    :cond_0
    iget-object p1, p1, Lcom/opensource/svgaplayer/proto/MovieEntity;->audios:Ljava/util/List;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    invoke-static {v3, p1}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result p1

    const/4 v0, 0x3

    const/4 v1, 0x0

    new-instance v2, Landroid/media/SoundPool;

    invoke-direct {v2, p1, v0, v1}, Landroid/media/SoundPool;-><init>(III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object p1, v2

    goto :goto_0

    :catch_0
    move-exception p1

    .line 328
    sget-object v0, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    iget-object v1, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->TAG:Ljava/lang/String;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, v1, p1}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private final parserImages(Lcom/opensource/svgaplayer/proto/MovieEntity;)V
    .locals 5

    .line 153
    iget-object p1, p1, Lcom/opensource/svgaplayer/proto/MovieEntity;->images:Ljava/util/Map;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Ljava/lang/Iterable;

    .line 351
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 154
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokio/ByteString;

    invoke-virtual {v1}, Lokio/ByteString;->toByteArray()[B

    move-result-object v1

    const-string v2, "byteArray"

    .line 155
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v2, v1

    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    goto :goto_0

    .line 158
    :cond_1
    new-instance v2, Lkotlin/ranges/IntRange;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-static {v1, v2}, Lkotlin/collections/ArraysKt;->slice([BLkotlin/ranges/IntRange;)Ljava/util/List;

    move-result-object v2

    .line 159
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->byteValue()B

    move-result v3

    const/16 v4, 0x49

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->byteValue()B

    move-result v3

    const/16 v4, 0x44

    if-ne v3, v4, :cond_2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->byteValue()B

    move-result v2

    const/16 v3, 0x33

    if-ne v2, v3, :cond_2

    goto :goto_0

    .line 162
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokio/ByteString;

    invoke-virtual {v2}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v2

    const-string v3, "entry.value.utf8()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "entry.key"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->generateBitmapFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 163
    invoke-direct {p0, v1, v2}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->createBitmap([BLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 164
    iget-object v2, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->imageMap:Ljava/util/HashMap;

    check-cast v2, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method private final parserImages(Lorg/json/JSONObject;)V
    .locals 8

    const-string v0, "images"

    .line 121
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 122
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "imgJson.keys()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 349
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    .line 123
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "imgKey"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1, v2}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->generateBitmapFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 124
    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    return-void

    :cond_2
    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, ".matte"

    const-string v4, ""

    .line 127
    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 128
    invoke-direct {p0, v1}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->createBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 130
    iget-object v3, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->imageMap:Ljava/util/HashMap;

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-void
.end method

.method private final resetSprites(Lcom/opensource/svgaplayer/proto/MovieEntity;)V
    .locals 4

    .line 187
    iget-object p1, p1, Lcom/opensource/svgaplayer/proto/MovieEntity;->sprites:Ljava/util/List;

    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/Iterable;

    .line 353
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 354
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 355
    check-cast v1, Lcom/opensource/svgaplayer/proto/SpriteEntity;

    .line 188
    new-instance v2, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteEntity;

    const-string v3, "it"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v1}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteEntity;-><init>(Lcom/opensource/svgaplayer/proto/SpriteEntity;)V

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 356
    :cond_0
    check-cast v0, Ljava/util/List;

    goto :goto_1

    .line 189
    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->spriteList:Ljava/util/List;

    return-void
.end method

.method private final resetSprites(Lorg/json/JSONObject;)V
    .locals 5

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    const-string v1, "sprites"

    .line 176
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    .line 177
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 178
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 179
    new-instance v4, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteEntity;

    invoke-direct {v4, v3}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteEntity;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 183
    :cond_1
    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->spriteList:Ljava/util/List;

    return-void
.end method

.method private final setupAudios(Lcom/opensource/svgaplayer/proto/MovieEntity;Lkotlin/jvm/functions/Function0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opensource/svgaplayer/proto/MovieEntity;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 193
    iget-object v0, p1, Lcom/opensource/svgaplayer/proto/MovieEntity;->audios:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/opensource/svgaplayer/proto/MovieEntity;->audios:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 197
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->setupSoundPool(Lcom/opensource/svgaplayer/proto/MovieEntity;Lkotlin/jvm/functions/Function0;)V

    .line 198
    invoke-direct {p0, p1}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->generateAudioFileMap(Lcom/opensource/svgaplayer/proto/MovieEntity;)Ljava/util/HashMap;

    move-result-object v0

    .line 201
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 202
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void

    .line 205
    :cond_1
    iget-object p1, p1, Lcom/opensource/svgaplayer/proto/MovieEntity;->audios:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    .line 357
    new-instance p2, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p2, Ljava/util/Collection;

    .line 358
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 359
    check-cast v1, Lcom/opensource/svgaplayer/proto/AudioEntity;

    const-string v2, "audio"

    .line 206
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1, v0}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->createSvgaAudioEntity(Lcom/opensource/svgaplayer/proto/AudioEntity;Ljava/util/HashMap;)Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 360
    :cond_2
    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->audioList:Ljava/util/List;

    return-void

    .line 194
    :cond_3
    :goto_1
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private final setupByJson(Lorg/json/JSONObject;)V
    .locals 13

    const-string v0, "viewBox"

    .line 73
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x0

    const-string v3, "width"

    .line 74
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    const-string v3, "height"

    .line 75
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v11

    .line 76
    new-instance v0, Lcom/opensource/svgaplayer/utils/SVGARect;

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v12}, Lcom/opensource/svgaplayer/utils/SVGARect;-><init>(DDDD)V

    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->videoSize:Lcom/opensource/svgaplayer/utils/SVGARect;

    :cond_0
    const/16 v0, 0x14

    const-string v1, "fps"

    .line 78
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->FPS:I

    const/4 v0, 0x0

    const-string v1, "frames"

    .line 79
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->frames:I

    return-void
.end method

.method private final setupByMovie(Lcom/opensource/svgaplayer/proto/MovieParams;)V
    .locals 11

    .line 101
    iget-object v0, p1, Lcom/opensource/svgaplayer/proto/MovieParams;->viewBoxWidth:Ljava/lang/Float;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    float-to-double v7, v0

    .line 102
    iget-object v0, p1, Lcom/opensource/svgaplayer/proto/MovieParams;->viewBoxHeight:Ljava/lang/Float;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :cond_1
    float-to-double v9, v1

    .line 103
    new-instance v0, Lcom/opensource/svgaplayer/utils/SVGARect;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcom/opensource/svgaplayer/utils/SVGARect;-><init>(DDDD)V

    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->videoSize:Lcom/opensource/svgaplayer/utils/SVGARect;

    .line 104
    iget-object v0, p1, Lcom/opensource/svgaplayer/proto/MovieParams;->fps:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_2
    const/16 v0, 0x14

    :goto_1
    iput v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->FPS:I

    .line 105
    iget-object p1, p1, Lcom/opensource/svgaplayer/proto/MovieParams;->frames:Ljava/lang/Integer;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    iput p1, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->frames:I

    return-void
.end method

.method private final setupSoundPool(Lcom/opensource/svgaplayer/proto/MovieEntity;Lkotlin/jvm/functions/Function0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opensource/svgaplayer/proto/MovieEntity;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 288
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 289
    sget-object v1, Lcom/opensource/svgaplayer/SVGASoundManager;->INSTANCE:Lcom/opensource/svgaplayer/SVGASoundManager;

    invoke-virtual {v1}, Lcom/opensource/svgaplayer/SVGASoundManager;->isInit$com_opensource_svgaplayer()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 290
    new-instance v1, Lcom/opensource/svgaplayer/SVGAVideoEntity$setupSoundPool$1;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/opensource/svgaplayer/SVGAVideoEntity$setupSoundPool$1;-><init>(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lkotlin/jvm/internal/Ref$IntRef;Lcom/opensource/svgaplayer/proto/MovieEntity;Lkotlin/jvm/functions/Function0;)V

    check-cast v1, Lcom/opensource/svgaplayer/SVGASoundManager$SVGASoundCallBack;

    iput-object v1, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->soundCallback:Lcom/opensource/svgaplayer/SVGASoundManager$SVGASoundCallBack;

    return-void

    .line 304
    :cond_0
    invoke-direct {p0, p1}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->generateSoundPool(Lcom/opensource/svgaplayer/proto/MovieEntity;)Landroid/media/SoundPool;

    move-result-object v1

    iput-object v1, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->soundPool:Landroid/media/SoundPool;

    .line 305
    sget-object v1, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    const-string v2, "SVGAParser"

    const-string v3, "pool_start"

    invoke-virtual {v1, v2, v3}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget-object v1, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->soundPool:Landroid/media/SoundPool;

    if-eqz v1, :cond_1

    new-instance v2, Lcom/opensource/svgaplayer/SVGAVideoEntity$setupSoundPool$2;

    invoke-direct {v2, v0, p1, p2}, Lcom/opensource/svgaplayer/SVGAVideoEntity$setupSoundPool$2;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Lcom/opensource/svgaplayer/proto/MovieEntity;Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Landroid/media/SoundPool$OnLoadCompleteListener;

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 4

    .line 334
    sget-object v0, Lcom/opensource/svgaplayer/SVGASoundManager;->INSTANCE:Lcom/opensource/svgaplayer/SVGASoundManager;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGASoundManager;->isInit$com_opensource_svgaplayer()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 335
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->audioList:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 367
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;

    .line 336
    invoke-virtual {v2}, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->getSoundID()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    sget-object v3, Lcom/opensource/svgaplayer/SVGASoundManager;->INSTANCE:Lcom/opensource/svgaplayer/SVGASoundManager;

    invoke-virtual {v3, v2}, Lcom/opensource/svgaplayer/SVGASoundManager;->unload$com_opensource_svgaplayer(I)V

    goto :goto_0

    .line 338
    :cond_1
    move-object v0, v1

    check-cast v0, Lcom/opensource/svgaplayer/SVGASoundManager$SVGASoundCallBack;

    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->soundCallback:Lcom/opensource/svgaplayer/SVGASoundManager$SVGASoundCallBack;

    .line 340
    :cond_2
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->soundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 341
    :cond_3
    check-cast v1, Landroid/media/SoundPool;

    iput-object v1, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->soundPool:Landroid/media/SoundPool;

    .line 342
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->audioList:Ljava/util/List;

    .line 343
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->spriteList:Ljava/util/List;

    .line 344
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->imageMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public final getAntiAlias()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->antiAlias:Z

    return v0
.end method

.method public final getAudioList$com_opensource_svgaplayer()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->audioList:Ljava/util/List;

    return-object v0
.end method

.method public final getFPS()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->FPS:I

    return v0
.end method

.method public final getFrames()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->frames:I

    return v0
.end method

.method public final getImageMap$com_opensource_svgaplayer()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->imageMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public final getMovieItem()Lcom/opensource/svgaplayer/proto/MovieEntity;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->movieItem:Lcom/opensource/svgaplayer/proto/MovieEntity;

    return-object v0
.end method

.method public final getSoundPool$com_opensource_svgaplayer()Landroid/media/SoundPool;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->soundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method public final getSpriteList$com_opensource_svgaplayer()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteEntity;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->spriteList:Ljava/util/List;

    return-object v0
.end method

.method public final getVideoSize()Lcom/opensource/svgaplayer/utils/SVGARect;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->videoSize:Lcom/opensource/svgaplayer/utils/SVGARect;

    return-object v0
.end method

.method public final prepare$com_opensource_svgaplayer(Lkotlin/jvm/functions/Function0;Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->mCallback:Lkotlin/jvm/functions/Function0;

    .line 110
    iput-object p2, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->mPlayCallback:Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;

    .line 111
    iget-object p1, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->movieItem:Lcom/opensource/svgaplayer/proto/MovieEntity;

    if-nez p1, :cond_1

    .line 112
    iget-object p1, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->mCallback:Lkotlin/jvm/functions/Function0;

    if-nez p1, :cond_0

    const-string p2, "mCallback"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 114
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    new-instance p2, Lcom/opensource/svgaplayer/SVGAVideoEntity$prepare$1;

    invoke-direct {p2, p0}, Lcom/opensource/svgaplayer/SVGAVideoEntity$prepare$1;-><init>(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, p1, p2}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->setupAudios(Lcom/opensource/svgaplayer/proto/MovieEntity;Lkotlin/jvm/functions/Function0;)V

    :goto_0
    return-void
.end method

.method public final setAntiAlias(Z)V
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->antiAlias:Z

    return-void
.end method

.method public final setAudioList$com_opensource_svgaplayer(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->audioList:Ljava/util/List;

    return-void
.end method

.method public final setImageMap$com_opensource_svgaplayer(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->imageMap:Ljava/util/HashMap;

    return-void
.end method

.method public final setMovieItem(Lcom/opensource/svgaplayer/proto/MovieEntity;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->movieItem:Lcom/opensource/svgaplayer/proto/MovieEntity;

    return-void
.end method

.method public final setSoundPool$com_opensource_svgaplayer(Landroid/media/SoundPool;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->soundPool:Landroid/media/SoundPool;

    return-void
.end method

.method public final setSpriteList$com_opensource_svgaplayer(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteEntity;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGAVideoEntity;->spriteList:Ljava/util/List;

    return-void
.end method
