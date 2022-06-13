.class public final Lcom/opensource/svgaplayer/SVGAParser;
.super Ljava/lang/Object;
.source "SVGAParser.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;,
        Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;,
        Lcom/opensource/svgaplayer/SVGAParser$FileDownloader;,
        Lcom/opensource/svgaplayer/SVGAParser$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSVGAParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SVGAParser.kt\ncom/opensource/svgaplayer/SVGAParser\n*L\n1#1,566:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000|\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0018\u0000 <2\u00020\u0001:\u0004<=>?B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J$\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016J$\u0010\u0017\u001a\u00020\u00102\u0006\u0010\u0018\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0012H\u0002JB\u0010\u001a\u001a\u00020\u00102\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0018\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u001e2\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0012J.\u0010\u001f\u001a\u00020\u00102\u0006\u0010\u0018\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00162\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0012J,\u0010 \u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010!2\u0006\u0010\"\u001a\u00020#2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016J\u0018\u0010$\u001a\u00020\u00102\u0006\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020\u0012H\u0002J\u0012\u0010(\u001a\u0004\u0018\u00010)2\u0006\u0010*\u001a\u00020)H\u0002J\u000e\u0010+\u001a\u00020\u00102\u0006\u0010\u0002\u001a\u00020\u0003J$\u0010,\u001a\u00020\u00102\u0006\u0010-\u001a\u00020.2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0012H\u0002J(\u0010/\u001a\u00020\u00102\n\u00100\u001a\u000601j\u0002`22\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0012H\u0002J\u0010\u00103\u001a\u00020\u001e2\u0006\u00104\u001a\u00020)H\u0002J,\u00105\u001a\u00020\u00102\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0018\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u001eH\u0007J\u001a\u00105\u001a\u00020\u00102\u0006\u0010\"\u001a\u00020#2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0007J\u001a\u00105\u001a\u00020\u00102\u0006\u00106\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0007J\u0012\u00107\u001a\u0004\u0018\u00010)2\u0006\u0010\u001b\u001a\u00020\u001cH\u0002J\u0016\u00108\u001a\u00020\u00102\u0006\u00109\u001a\u00020\r2\u0006\u0010:\u001a\u00020\rJ\u0018\u0010;\u001a\u00020\u00102\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0018\u001a\u00020\u0012H\u0002R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006@"
    }
    d2 = {
        "Lcom/opensource/svgaplayer/SVGAParser;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "fileDownloader",
        "Lcom/opensource/svgaplayer/SVGAParser$FileDownloader;",
        "getFileDownloader",
        "()Lcom/opensource/svgaplayer/SVGAParser$FileDownloader;",
        "setFileDownloader",
        "(Lcom/opensource/svgaplayer/SVGAParser$FileDownloader;)V",
        "mContext",
        "mFrameHeight",
        "",
        "mFrameWidth",
        "decodeFromAssets",
        "",
        "name",
        "",
        "callback",
        "Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;",
        "playCallback",
        "Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;",
        "decodeFromCacheKey",
        "cacheKey",
        "alias",
        "decodeFromInputStream",
        "inputStream",
        "Ljava/io/InputStream;",
        "closeInputStream",
        "",
        "decodeFromSVGAFileCacheKey",
        "decodeFromURL",
        "Lkotlin/Function0;",
        "url",
        "Ljava/net/URL;",
        "ensureUnzipSafety",
        "outputFile",
        "Ljava/io/File;",
        "dstDirPath",
        "inflate",
        "",
        "byteArray",
        "init",
        "invokeCompleteCallback",
        "videoItem",
        "Lcom/opensource/svgaplayer/SVGAVideoEntity;",
        "invokeErrorCallback",
        "e",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "isZipFile",
        "bytes",
        "parse",
        "assetsName",
        "readAsBytes",
        "setFrameSize",
        "frameWidth",
        "frameHeight",
        "unzip",
        "Companion",
        "FileDownloader",
        "ParseCompletion",
        "PlayCallback",
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
.field public static final Companion:Lcom/opensource/svgaplayer/SVGAParser$Companion;

.field private static final TAG:Ljava/lang/String; = "SVGAParser"

.field private static mShareParser:Lcom/opensource/svgaplayer/SVGAParser;

.field private static final threadNum:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static threadPoolExecutor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private fileDownloader:Lcom/opensource/svgaplayer/SVGAParser$FileDownloader;

.field private mContext:Landroid/content/Context;

.field private volatile mFrameHeight:I

.field private volatile mFrameWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/opensource/svgaplayer/SVGAParser$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/opensource/svgaplayer/SVGAParser$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/opensource/svgaplayer/SVGAParser;->Companion:Lcom/opensource/svgaplayer/SVGAParser$Companion;

    .line 110
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/opensource/svgaplayer/SVGAParser;->threadNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 111
    new-instance v0, Lcom/opensource/svgaplayer/SVGAParser;

    invoke-direct {v0, v1}, Lcom/opensource/svgaplayer/SVGAParser;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/opensource/svgaplayer/SVGAParser;->mShareParser:Lcom/opensource/svgaplayer/SVGAParser;

    .line 113
    sget-object v0, Lcom/opensource/svgaplayer/SVGAParser$Companion$threadPoolExecutor$1;->INSTANCE:Lcom/opensource/svgaplayer/SVGAParser$Companion$threadPoolExecutor$1;

    check-cast v0, Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/opensource/svgaplayer/SVGAParser;->threadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGAParser;->mContext:Landroid/content/Context;

    .line 29
    sget-object v0, Lcom/opensource/svgaplayer/SVGACache;->INSTANCE:Lcom/opensource/svgaplayer/SVGACache;

    invoke-virtual {v0, p1}, Lcom/opensource/svgaplayer/SVGACache;->onCreate(Landroid/content/Context;)V

    .line 105
    new-instance p1, Lcom/opensource/svgaplayer/SVGAParser$FileDownloader;

    invoke-direct {p1}, Lcom/opensource/svgaplayer/SVGAParser$FileDownloader;-><init>()V

    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGAParser;->fileDownloader:Lcom/opensource/svgaplayer/SVGAParser$FileDownloader;

    return-void
.end method

.method public static final synthetic access$decodeFromCacheKey(Lcom/opensource/svgaplayer/SVGAParser;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromCacheKey(Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getMContext$p(Lcom/opensource/svgaplayer/SVGAParser;)Landroid/content/Context;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/opensource/svgaplayer/SVGAParser;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getMFrameHeight$p(Lcom/opensource/svgaplayer/SVGAParser;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/opensource/svgaplayer/SVGAParser;->mFrameHeight:I

    return p0
.end method

.method public static final synthetic access$getMFrameWidth$p(Lcom/opensource/svgaplayer/SVGAParser;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/opensource/svgaplayer/SVGAParser;->mFrameWidth:I

    return p0
.end method

.method public static final synthetic access$getMShareParser$cp()Lcom/opensource/svgaplayer/SVGAParser;
    .locals 1

    .line 25
    sget-object v0, Lcom/opensource/svgaplayer/SVGAParser;->mShareParser:Lcom/opensource/svgaplayer/SVGAParser;

    return-object v0
.end method

.method public static final synthetic access$getThreadNum$cp()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 25
    sget-object v0, Lcom/opensource/svgaplayer/SVGAParser;->threadNum:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public static final synthetic access$getThreadPoolExecutor$cp()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 25
    sget-object v0, Lcom/opensource/svgaplayer/SVGAParser;->threadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static final synthetic access$inflate(Lcom/opensource/svgaplayer/SVGAParser;[B)[B
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/opensource/svgaplayer/SVGAParser;->inflate([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$invokeCompleteCallback(Lcom/opensource/svgaplayer/SVGAParser;Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/opensource/svgaplayer/SVGAParser;->invokeCompleteCallback(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$invokeErrorCallback(Lcom/opensource/svgaplayer/SVGAParser;Ljava/lang/Exception;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/opensource/svgaplayer/SVGAParser;->invokeErrorCallback(Ljava/lang/Exception;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$isZipFile(Lcom/opensource/svgaplayer/SVGAParser;[B)Z
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/opensource/svgaplayer/SVGAParser;->isZipFile([B)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$readAsBytes(Lcom/opensource/svgaplayer/SVGAParser;Ljava/io/InputStream;)[B
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/opensource/svgaplayer/SVGAParser;->readAsBytes(Ljava/io/InputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setMContext$p(Lcom/opensource/svgaplayer/SVGAParser;Landroid/content/Context;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGAParser;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static final synthetic access$setMFrameHeight$p(Lcom/opensource/svgaplayer/SVGAParser;I)V
    .locals 0

    .line 25
    iput p1, p0, Lcom/opensource/svgaplayer/SVGAParser;->mFrameHeight:I

    return-void
.end method

.method public static final synthetic access$setMFrameWidth$p(Lcom/opensource/svgaplayer/SVGAParser;I)V
    .locals 0

    .line 25
    iput p1, p0, Lcom/opensource/svgaplayer/SVGAParser;->mFrameWidth:I

    return-void
.end method

.method public static final synthetic access$setMShareParser$cp(Lcom/opensource/svgaplayer/SVGAParser;)V
    .locals 0

    .line 25
    sput-object p0, Lcom/opensource/svgaplayer/SVGAParser;->mShareParser:Lcom/opensource/svgaplayer/SVGAParser;

    return-void
.end method

.method public static final synthetic access$setThreadPoolExecutor$cp(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 25
    sput-object p0, Lcom/opensource/svgaplayer/SVGAParser;->threadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static final synthetic access$unzip(Lcom/opensource/svgaplayer/SVGAParser;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/opensource/svgaplayer/SVGAParser;->unzip(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic decodeFromAssets$default(Lcom/opensource/svgaplayer/SVGAParser;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 139
    check-cast p3, Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromAssets(Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;)V

    return-void
.end method

.method private final decodeFromCacheKey(Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Ljava/lang/String;)V
    .locals 12

    .line 402
    sget-object v0, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "================ decode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from cache ================"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SVGAParser"

    invoke-virtual {v0, v2, v1}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    sget-object v0, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decodeFromCacheKey called with cacheKey : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAParser;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 405
    sget-object p1, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    const-string p2, "\u5728\u914d\u7f6e SVGAParser context \u524d, \u65e0\u6cd5\u89e3\u6790 SVGA \u6587\u4ef6\u3002"

    invoke-virtual {p1, v2, p2}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 409
    :cond_0
    :try_start_0
    sget-object v0, Lcom/opensource/svgaplayer/SVGACache;->INSTANCE:Lcom/opensource/svgaplayer/SVGACache;

    invoke-virtual {v0, p1}, Lcom/opensource/svgaplayer/SVGACache;->buildCacheDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 410
    new-instance v0, Ljava/io/File;

    const-string v1, "movie.binary"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v3

    :goto_0
    if-eqz v0, :cond_2

    .line 412
    :try_start_1
    sget-object v1, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    const-string v4, "binary change to entity"

    invoke-virtual {v1, v2, v4}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    check-cast v1, Ljava/io/Closeable;

    move-object v4, v3

    check-cast v4, Ljava/lang/Throwable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    move-object v5, v1

    check-cast v5, Ljava/io/FileInputStream;

    .line 414
    sget-object v6, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    const-string v7, "binary change to entity success"

    invoke-virtual {v6, v2, v7}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    new-instance v6, Lcom/opensource/svgaplayer/SVGAVideoEntity;

    .line 417
    sget-object v7, Lcom/opensource/svgaplayer/proto/MovieEntity;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    check-cast v5, Ljava/io/InputStream;

    invoke-virtual {v7, v5}, Lcom/squareup/wire/ProtoAdapter;->decode(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v5

    const-string v7, "MovieEntity.ADAPTER.decode(it)"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/opensource/svgaplayer/proto/MovieEntity;

    .line 419
    iget v7, p0, Lcom/opensource/svgaplayer/SVGAParser;->mFrameWidth:I

    .line 420
    iget v8, p0, Lcom/opensource/svgaplayer/SVGAParser;->mFrameHeight:I

    .line 416
    invoke-direct {v6, v5, p1, v7, v8}, Lcom/opensource/svgaplayer/SVGAVideoEntity;-><init>(Lcom/opensource/svgaplayer/proto/MovieEntity;Ljava/io/File;II)V

    .line 415
    invoke-direct {p0, v6, p2, p3}, Lcom/opensource/svgaplayer/SVGAParser;->invokeCompleteCallback(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Ljava/lang/String;)V

    .line 425
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 413
    :try_start_3
    invoke-static {v1, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v3

    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v4

    :try_start_5
    invoke-static {v1, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v1

    .line 428
    :try_start_6
    sget-object v3, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    const-string v4, "binary change to entity fail"

    move-object v5, v1

    check-cast v5, Ljava/lang/Throwable;

    invoke-virtual {v3, v2, v4, v5}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 429
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 430
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 431
    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 434
    :cond_2
    :goto_1
    new-instance v0, Ljava/io/File;

    const-string v1, "movie.spec"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    move-object v0, v3

    :goto_2
    if-eqz v0, :cond_5

    .line 436
    :try_start_7
    sget-object v1, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    const-string v4, "spec change to entity"

    invoke-virtual {v1, v2, v4}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    check-cast v1, Ljava/io/Closeable;

    move-object v4, v3

    check-cast v4, Ljava/lang/Throwable;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    :try_start_8
    move-object v5, v1

    check-cast v5, Ljava/io/FileInputStream;

    .line 438
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    check-cast v6, Ljava/io/Closeable;

    check-cast v3, Ljava/lang/Throwable;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :try_start_9
    move-object v7, v6

    check-cast v7, Ljava/io/ByteArrayOutputStream;

    const/16 v8, 0x800

    new-array v8, v8, [B

    .line 441
    :goto_3
    array-length v9, v8

    const/4 v10, 0x0

    invoke-virtual {v5, v8, v10, v9}, Ljava/io/FileInputStream;->read([BII)I

    move-result v9

    const/4 v11, -0x1

    if-ne v9, v11, :cond_4

    .line 447
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v5

    .line 448
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 449
    sget-object v5, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    const-string v8, "spec change to entity success"

    invoke-virtual {v5, v2, v8}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    new-instance v5, Lcom/opensource/svgaplayer/SVGAVideoEntity;

    .line 454
    iget v8, p0, Lcom/opensource/svgaplayer/SVGAParser;->mFrameWidth:I

    .line 455
    iget v9, p0, Lcom/opensource/svgaplayer/SVGAParser;->mFrameHeight:I

    .line 451
    invoke-direct {v5, v7, p1, v8, v9}, Lcom/opensource/svgaplayer/SVGAVideoEntity;-><init>(Lorg/json/JSONObject;Ljava/io/File;II)V

    .line 450
    invoke-direct {p0, v5, p2, p3}, Lcom/opensource/svgaplayer/SVGAParser;->invokeCompleteCallback(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Ljava/lang/String;)V

    .line 462
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 438
    :try_start_a
    invoke-static {v6, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 463
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 437
    :try_start_b
    invoke-static {v1, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_4

    .line 445
    :cond_4
    :try_start_c
    invoke-virtual {v7, v8, v10, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v3

    .line 438
    :try_start_d
    throw v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :catchall_3
    move-exception v4

    :try_start_e
    invoke-static {v6, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :catchall_4
    move-exception v3

    .line 437
    :try_start_f
    throw v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    :catchall_5
    move-exception v4

    :try_start_10
    invoke-static {v1, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1

    :catch_1
    move-exception v1

    .line 465
    :try_start_11
    sget-object v3, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " movie.spec change to entity fail"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    check-cast v5, Ljava/lang/Throwable;

    invoke-virtual {v3, v2, v4, v5}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 466
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 467
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 468
    check-cast v1, Ljava/lang/Throwable;

    throw v1
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_2

    :catch_2
    move-exception p1

    .line 472
    invoke-direct {p0, p1, p2, p3}, Lcom/opensource/svgaplayer/SVGAParser;->invokeErrorCallback(Ljava/lang/Exception;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Ljava/lang/String;)V

    :cond_5
    :goto_4
    return-void
.end method

.method public static synthetic decodeFromInputStream$default(Lcom/opensource/svgaplayer/SVGAParser;Ljava/io/InputStream;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;ZLcom/opensource/svgaplayer/SVGAParser$PlayCallback;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_0

    const/4 p4, 0x0

    :cond_0
    move v4, p4

    and-int/lit8 p4, p7, 0x10

    const/4 p8, 0x0

    if-eqz p4, :cond_1

    .line 265
    move-object p5, p8

    check-cast p5, Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;

    :cond_1
    move-object v5, p5

    and-int/lit8 p4, p7, 0x20

    if-eqz p4, :cond_2

    .line 266
    move-object p6, p8

    check-cast p6, Ljava/lang/String;

    :cond_2
    move-object v6, p6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromInputStream(Ljava/io/InputStream;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;ZLcom/opensource/svgaplayer/SVGAParser$PlayCallback;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic decodeFromSVGAFileCacheKey$default(Lcom/opensource/svgaplayer/SVGAParser;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 215
    check-cast p4, Ljava/lang/String;

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromSVGAFileCacheKey(Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic decodeFromURL$default(Lcom/opensource/svgaplayer/SVGAParser;Ljava/net/URL;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;ILjava/lang/Object;)Lkotlin/jvm/functions/Function0;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 168
    check-cast p3, Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromURL(Ljava/net/URL;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;)Lkotlin/jvm/functions/Function0;

    move-result-object p0

    return-object p0
.end method

.method private final ensureUnzipSafety(Ljava/io/File;Ljava/lang/String;)V
    .locals 3

    .line 559
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p2

    .line 560
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    const-string v0, "outputFileCanonicalPath"

    .line 561
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dstDirCanonicalPath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v1, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 562
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found Zip Path Traversal Vulnerability with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method private final inflate([B)[B
    .locals 7

    .line 492
    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    .line 493
    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Ljava/util/zip/Inflater;->setInput([BII)V

    const/16 p1, 0x800

    new-array v1, p1, [B

    .line 495
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    check-cast v3, Ljava/io/Closeable;

    const/4 v4, 0x0

    check-cast v4, Ljava/lang/Throwable;

    :try_start_0
    move-object v5, v3

    check-cast v5, Ljava/io/ByteArrayOutputStream;

    .line 497
    :goto_0
    invoke-virtual {v0, v1, v2, p1}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v6

    if-gtz v6, :cond_0

    .line 504
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 505
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p1

    .line 501
    :cond_0
    :try_start_1
    invoke-virtual {v5, v1, v2, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 495
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v3, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private final invokeCompleteCallback(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Ljava/lang/String;)V
    .locals 2

    .line 378
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/opensource/svgaplayer/SVGAParser$invokeCompleteCallback$1;

    invoke-direct {v1, p3, p2, p1}, Lcom/opensource/svgaplayer/SVGAParser$invokeCompleteCallback$1;-><init>(Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Lcom/opensource/svgaplayer/SVGAVideoEntity;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final invokeErrorCallback(Ljava/lang/Exception;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Ljava/lang/String;)V
    .locals 3

    .line 389
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 390
    sget-object v0, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "================ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " parser error ================"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SVGAParser"

    invoke-virtual {v0, v2, v1}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    sget-object v0, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " parse error"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, v2, p3, p1}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 392
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p3, Lcom/opensource/svgaplayer/SVGAParser$invokeErrorCallback$1;

    invoke-direct {p3, p2}, Lcom/opensource/svgaplayer/SVGAParser$invokeErrorCallback$1;-><init>(Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;)V

    check-cast p3, Ljava/lang/Runnable;

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final isZipFile([B)Z
    .locals 5

    .line 511
    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-le v0, v3, :cond_0

    aget-byte v0, p1, v2

    const/16 v4, 0x50

    if-ne v0, v4, :cond_0

    aget-byte v0, p1, v1

    const/16 v4, 0x4b

    if-ne v0, v4, :cond_0

    const/4 v0, 0x2

    aget-byte v0, p1, v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_0

    aget-byte p1, p1, v4

    if-ne p1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method public static synthetic parse$default(Lcom/opensource/svgaplayer/SVGAParser;Ljava/io/InputStream;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 368
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/opensource/svgaplayer/SVGAParser;->parse(Ljava/io/InputStream;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Z)V

    return-void
.end method

.method private final readAsBytes(Ljava/io/InputStream;)[B
    .locals 7

    .line 477
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    check-cast v0, Ljava/io/Closeable;

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Throwable;

    :try_start_0
    move-object v2, v0

    check-cast v2, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0x800

    new-array v4, v3, [B

    :goto_0
    const/4 v5, 0x0

    .line 480
    invoke-virtual {p1, v4, v5, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    if-gtz v6, :cond_0

    .line 487
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p1

    .line 484
    :cond_0
    :try_start_1
    invoke-virtual {v2, v4, v5, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 477
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private final unzip(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 16

    const-string v0, "zipItem.name"

    const-string v1, "cacheDir.absolutePath"

    .line 516
    sget-object v2, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    const-string v3, "SVGAParser"

    const-string v4, "================ unzip prepare ================"

    invoke-virtual {v2, v3, v4}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    sget-object v2, Lcom/opensource/svgaplayer/SVGACache;->INSTANCE:Lcom/opensource/svgaplayer/SVGACache;

    move-object/from16 v4, p2

    invoke-virtual {v2, v4}, Lcom/opensource/svgaplayer/SVGACache;->buildCacheDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 518
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 520
    :try_start_0
    new-instance v4, Ljava/io/BufferedInputStream;

    move-object/from16 v5, p1

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    check-cast v4, Ljava/io/Closeable;

    const/4 v5, 0x0

    move-object v6, v5

    check-cast v6, Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    move-object v7, v4

    check-cast v7, Ljava/io/BufferedInputStream;

    .line 521
    new-instance v8, Ljava/util/zip/ZipInputStream;

    check-cast v7, Ljava/io/InputStream;

    invoke-direct {v8, v7}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    check-cast v8, Ljava/io/Closeable;

    move-object v7, v5

    check-cast v7, Ljava/lang/Throwable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    :try_start_2
    move-object v9, v8

    check-cast v9, Ljava/util/zip/ZipInputStream;

    .line 523
    :goto_0
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 524
    invoke-virtual {v10}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Ljava/lang/CharSequence;

    const-string v12, "../"

    check-cast v12, Ljava/lang/CharSequence;

    const/4 v13, 0x2

    const/4 v14, 0x0

    invoke-static {v11, v12, v14, v13, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    goto :goto_0

    .line 528
    :cond_0
    invoke-virtual {v10}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Ljava/lang/CharSequence;

    const-string v12, "/"

    check-cast v12, Ljava/lang/CharSequence;

    invoke-static {v11, v12, v14, v13, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    goto :goto_0

    .line 531
    :cond_1
    new-instance v11, Ljava/io/File;

    invoke-virtual {v10}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v11, v2, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 532
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object/from16 v12, p0

    :try_start_3
    invoke-direct {v12, v11, v10}, Lcom/opensource/svgaplayer/SVGAParser;->ensureUnzipSafety(Ljava/io/File;Ljava/lang/String;)V

    .line 533
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v10, Ljava/io/Closeable;

    move-object v11, v5

    check-cast v11, Ljava/lang/Throwable;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    move-object v13, v10

    check-cast v13, Ljava/io/FileOutputStream;

    const/16 v15, 0x800

    new-array v15, v15, [B

    .line 536
    :goto_1
    invoke-virtual {v9, v15}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v5

    if-gtz v5, :cond_2

    .line 542
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 533
    :try_start_5
    invoke-static {v10, v11}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 543
    sget-object v5, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    const-string v10, "================ unzip complete ================"

    invoke-virtual {v5, v3, v10}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/4 v5, 0x0

    goto :goto_0

    .line 540
    :cond_2
    :try_start_6
    invoke-virtual {v13, v15, v14, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v5, v0

    .line 533
    :try_start_7
    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    move-object v6, v0

    :try_start_8
    invoke-static {v10, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v6

    :cond_3
    move-object/from16 v12, p0

    .line 546
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 521
    :try_start_9
    invoke-static {v8, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 547
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 520
    :try_start_a
    invoke-static {v4, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    return-void

    :catchall_2
    move-exception v0

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object/from16 v12, p0

    :goto_2
    move-object v5, v0

    .line 521
    :try_start_b
    throw v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :catchall_4
    move-exception v0

    move-object v6, v0

    :try_start_c
    invoke-static {v8, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :catchall_5
    move-exception v0

    goto :goto_3

    :catchall_6
    move-exception v0

    move-object/from16 v12, p0

    :goto_3
    move-object v5, v0

    .line 520
    :try_start_d
    throw v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    :catchall_7
    move-exception v0

    move-object v6, v0

    :try_start_e
    invoke-static {v4, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v6
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object/from16 v12, p0

    .line 549
    :goto_4
    sget-object v4, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    const-string v5, "================ unzip error ================"

    invoke-virtual {v4, v3, v5}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    sget-object v4, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    check-cast v0, Ljava/lang/Throwable;

    const-string v5, "error"

    invoke-virtual {v4, v3, v5, v0}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 551
    sget-object v3, Lcom/opensource/svgaplayer/SVGACache;->INSTANCE:Lcom/opensource/svgaplayer/SVGACache;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/opensource/svgaplayer/SVGACache;->clearDir$com_opensource_svgaplayer(Ljava/lang/String;)V

    .line 552
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 553
    throw v0
.end method


# virtual methods
.method public final decodeFromAssets(Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;)V
    .locals 4

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAParser;->mContext:Landroid/content/Context;

    const-string v1, "SVGAParser"

    if-nez v0, :cond_0

    .line 142
    sget-object p1, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    const-string p2, "\u5728\u914d\u7f6e SVGAParser context \u524d, \u65e0\u6cd5\u89e3\u6790 SVGA \u6587\u4ef6\u3002"

    invoke-virtual {p1, v1, p2}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 145
    :cond_0
    sget-object v0, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "================ decode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from assets ================"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    sget-object v0, Lcom/opensource/svgaplayer/SVGAParser;->threadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/opensource/svgaplayer/SVGAParser$decodeFromAssets$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/opensource/svgaplayer/SVGAParser$decodeFromAssets$1;-><init>(Lcom/opensource/svgaplayer/SVGAParser;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final decodeFromInputStream(Ljava/io/InputStream;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;ZLcom/opensource/svgaplayer/SVGAParser$PlayCallback;Ljava/lang/String;)V
    .locals 11

    const-string v0, "inputStream"

    move-object v3, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cacheKey"

    move-object v4, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    .line 268
    iget-object v1, v0, Lcom/opensource/svgaplayer/SVGAParser;->mContext:Landroid/content/Context;

    const-string v2, "SVGAParser"

    if-nez v1, :cond_0

    .line 269
    sget-object v1, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    const-string v3, "\u5728\u914d\u7f6e SVGAParser context \u524d, \u65e0\u6cd5\u89e3\u6790 SVGA \u6587\u4ef6\u3002"

    invoke-virtual {v1, v2, v3}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 272
    :cond_0
    sget-object v1, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "================ decode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " from input stream ================"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    sget-object v9, Lcom/opensource/svgaplayer/SVGAParser;->threadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v10, Lcom/opensource/svgaplayer/SVGAParser$decodeFromInputStream$1;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v7, p5

    move v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/opensource/svgaplayer/SVGAParser$decodeFromInputStream$1;-><init>(Lcom/opensource/svgaplayer/SVGAParser;Ljava/io/InputStream;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;Z)V

    check-cast v10, Ljava/lang/Runnable;

    invoke-interface {v9, v10}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final decodeFromSVGAFileCacheKey(Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;Ljava/lang/String;)V
    .locals 8

    const-string v0, "cacheKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    sget-object v0, Lcom/opensource/svgaplayer/SVGAParser;->threadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/opensource/svgaplayer/SVGAParser$decodeFromSVGAFileCacheKey$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/opensource/svgaplayer/SVGAParser$decodeFromSVGAFileCacheKey$1;-><init>(Lcom/opensource/svgaplayer/SVGAParser;Ljava/lang/String;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;)V

    check-cast v7, Ljava/lang/Runnable;

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final decodeFromURL(Ljava/net/URL;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;)Lkotlin/jvm/functions/Function0;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;",
            "Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;",
            ")",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAParser;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "SVGAParser"

    if-nez v0, :cond_0

    .line 171
    sget-object p1, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    const-string p2, "\u5728\u914d\u7f6e SVGAParser context \u524d, \u65e0\u6cd5\u89e3\u6790 SVGA \u6587\u4ef6\u3002"

    invoke-virtual {p1, v2, p2}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 174
    :cond_0
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "url.toString()"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    sget-object v3, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "================ decode from url: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ================"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    sget-object v3, Lcom/opensource/svgaplayer/SVGACache;->INSTANCE:Lcom/opensource/svgaplayer/SVGACache;

    invoke-virtual {v3, p1}, Lcom/opensource/svgaplayer/SVGACache;->buildCacheKey(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v5

    .line 177
    sget-object v3, Lcom/opensource/svgaplayer/SVGACache;->INSTANCE:Lcom/opensource/svgaplayer/SVGACache;

    invoke-virtual {v3, v5}, Lcom/opensource/svgaplayer/SVGACache;->isCached(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 178
    sget-object p1, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    const-string v3, "this url cached"

    invoke-virtual {p1, v2, v3}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    sget-object p1, Lcom/opensource/svgaplayer/SVGAParser;->threadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/opensource/svgaplayer/SVGAParser$decodeFromURL$1;

    move-object v3, v2

    move-object v4, p0

    move-object v6, p2

    move-object v7, v0

    move-object v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/opensource/svgaplayer/SVGAParser$decodeFromURL$1;-><init>(Lcom/opensource/svgaplayer/SVGAParser;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {p1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-object v1

    .line 188
    :cond_1
    sget-object v1, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    const-string v3, "no cached, prepare to download"

    invoke-virtual {v1, v2, v3}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v1, p0, Lcom/opensource/svgaplayer/SVGAParser;->fileDownloader:Lcom/opensource/svgaplayer/SVGAParser$FileDownloader;

    new-instance v2, Lcom/opensource/svgaplayer/SVGAParser$decodeFromURL$2;

    move-object v3, v2

    move-object v4, p0

    move-object v6, p2

    move-object v7, p3

    move-object v8, v0

    invoke-direct/range {v3 .. v8}, Lcom/opensource/svgaplayer/SVGAParser$decodeFromURL$2;-><init>(Lcom/opensource/svgaplayer/SVGAParser;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;Ljava/lang/String;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 198
    new-instance p3, Lcom/opensource/svgaplayer/SVGAParser$decodeFromURL$3;

    invoke-direct {p3, p0, p1, p2, v0}, Lcom/opensource/svgaplayer/SVGAParser$decodeFromURL$3;-><init>(Lcom/opensource/svgaplayer/SVGAParser;Ljava/net/URL;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Ljava/lang/String;)V

    check-cast p3, Lkotlin/jvm/functions/Function1;

    .line 189
    invoke-virtual {v1, p1, v2, p3}, Lcom/opensource/svgaplayer/SVGAParser$FileDownloader;->resume(Ljava/net/URL;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function0;

    move-result-object p1

    return-object p1
.end method

.method public final getFileDownloader()Lcom/opensource/svgaplayer/SVGAParser$FileDownloader;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAParser;->fileDownloader:Lcom/opensource/svgaplayer/SVGAParser$FileDownloader;

    return-object v0
.end method

.method public final init(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGAParser;->mContext:Landroid/content/Context;

    .line 128
    sget-object p1, Lcom/opensource/svgaplayer/SVGACache;->INSTANCE:Lcom/opensource/svgaplayer/SVGACache;

    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGAParser;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/opensource/svgaplayer/SVGACache;->onCreate(Landroid/content/Context;)V

    return-void
.end method

.method public final parse(Ljava/io/InputStream;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Z)V
    .locals 10
    .annotation runtime Lkotlin/Deprecated;
        message = "This method has been deprecated from 2.4.0."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "this.decodeFromInputStream(inputStream, cacheKey, callback, closeInputStream)"
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "inputStream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cacheKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x20

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 370
    invoke-static/range {v1 .. v9}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromInputStream$default(Lcom/opensource/svgaplayer/SVGAParser;Ljava/io/InputStream;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;ZLcom/opensource/svgaplayer/SVGAParser$PlayCallback;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final parse(Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;)V
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "This method has been deprecated from 2.4.0."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "this.decodeFromAssets(assetsName, callback)"
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "assetsName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 349
    invoke-virtual {p0, p1, p2, v0}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromAssets(Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;)V

    return-void
.end method

.method public final parse(Ljava/net/URL;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;)V
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "This method has been deprecated from 2.4.0."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "this.decodeFromURL(url, callback)"
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 357
    invoke-virtual {p0, p1, p2, v0}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromURL(Ljava/net/URL;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Lcom/opensource/svgaplayer/SVGAParser$PlayCallback;)Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setFileDownloader(Lcom/opensource/svgaplayer/SVGAParser$FileDownloader;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGAParser;->fileDownloader:Lcom/opensource/svgaplayer/SVGAParser$FileDownloader;

    return-void
.end method

.method public final setFrameSize(II)V
    .locals 0

    .line 132
    iput p1, p0, Lcom/opensource/svgaplayer/SVGAParser;->mFrameWidth:I

    .line 133
    iput p2, p0, Lcom/opensource/svgaplayer/SVGAParser;->mFrameHeight:I

    return-void
.end method
