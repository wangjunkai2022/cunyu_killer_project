.class public abstract Lcom/tencent/thumbplayer/h/b/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/thumbplayer/h/b/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/thumbplayer/h/b/f$b;,
        Lcom/tencent/thumbplayer/h/b/f$a;
    }
.end annotation


# static fields
.field private static final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/Surface;",
            "Lcom/tencent/thumbplayer/h/b/f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:I

.field private B:Lcom/tencent/thumbplayer/h/e/a/a;

.field public a:Lcom/tencent/thumbplayer/h/b/f$b;

.field public b:Z

.field public c:Z

.field public d:Z

.field public final e:Lcom/tencent/thumbplayer/h/b/e;

.field protected f:Landroid/view/Surface;

.field protected final g:Lcom/tencent/thumbplayer/h/b/b;

.field protected final h:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Lcom/tencent/thumbplayer/h/f/a$a;

.field private final l:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/graphics/SurfaceTexture;",
            ">;"
        }
    .end annotation
.end field

.field private final o:[I

.field private final p:Landroid/media/MediaCodec;

.field private q:Z

.field private r:Lcom/tencent/thumbplayer/h/b/f$a;

.field private s:Landroid/media/MediaCodecInfo$CodecCapabilities;

.field private t:J

.field private u:Lcom/tencent/thumbplayer/h/a/a;

.field private v:Z

.field private w:Lcom/tencent/thumbplayer/h/f/a$b;

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tencent/thumbplayer/h/b/f;->i:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/media/MediaCodec;Lcom/tencent/thumbplayer/h/b/e;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/tencent/thumbplayer/h/b/f$b;->a:Lcom/tencent/thumbplayer/h/b/f$b;

    iput-object v0, p0, Lcom/tencent/thumbplayer/h/b/f;->a:Lcom/tencent/thumbplayer/h/b/f$b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReuseCodecWrapper["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/thumbplayer/h/b/f;->j:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tencent/thumbplayer/h/b/f;->l:Ljava/util/HashSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/thumbplayer/h/b/f;->m:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/tencent/thumbplayer/h/b/f;->n:Ljava/util/Set;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/tencent/thumbplayer/h/b/f;->o:[I

    sget-object v0, Lcom/tencent/thumbplayer/h/b/f$a;->a:Lcom/tencent/thumbplayer/h/b/f$a;

    iput-object v0, p0, Lcom/tencent/thumbplayer/h/b/f;->r:Lcom/tencent/thumbplayer/h/b/f$a;

    sget-object v0, Lcom/tencent/thumbplayer/h/f/a$b;->a:Lcom/tencent/thumbplayer/h/f/a$b;

    iput-object v0, p0, Lcom/tencent/thumbplayer/h/b/f;->w:Lcom/tencent/thumbplayer/h/f/a$b;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/thumbplayer/h/b/f;->y:Z

    iput-boolean v0, p0, Lcom/tencent/thumbplayer/h/b/f;->z:Z

    iput v0, p0, Lcom/tencent/thumbplayer/h/b/f;->A:I

    iput-object p1, p0, Lcom/tencent/thumbplayer/h/b/f;->p:Landroid/media/MediaCodec;

    iput-object p2, p0, Lcom/tencent/thumbplayer/h/b/f;->e:Lcom/tencent/thumbplayer/h/b/e;

    new-instance p1, Lcom/tencent/thumbplayer/h/b/b;

    iget v1, p2, Lcom/tencent/thumbplayer/h/b/e;->g:I

    iget v2, p2, Lcom/tencent/thumbplayer/h/b/e;->h:I

    iget v3, p2, Lcom/tencent/thumbplayer/h/b/e;->i:I

    invoke-direct {p1, v1, v2, v3}, Lcom/tencent/thumbplayer/h/b/b;-><init>(III)V

    iput-object p1, p0, Lcom/tencent/thumbplayer/h/b/f;->g:Lcom/tencent/thumbplayer/h/b/b;

    iget-object p1, p0, Lcom/tencent/thumbplayer/h/b/f;->p:Landroid/media/MediaCodec;

    invoke-static {p1}, Lcom/tencent/thumbplayer/h/h/c;->a(Landroid/media/MediaCodec;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/thumbplayer/h/b/f;->h:Ljava/lang/String;

    iget-object p1, p0, Lcom/tencent/thumbplayer/h/b/f;->h:Ljava/lang/String;

    invoke-static {p1}, Lcom/tencent/thumbplayer/h/f/a;->a(Ljava/lang/String;)Lcom/tencent/thumbplayer/h/f/a$a;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/thumbplayer/h/b/f;->k:Lcom/tencent/thumbplayer/h/f/a$a;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x12

    if-lt p1, v2, :cond_2

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-ne p1, v2, :cond_1

    iget p1, p2, Lcom/tencent/thumbplayer/h/b/e;->d:I

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v1

    :goto_1
    iget-object v2, p0, Lcom/tencent/thumbplayer/h/b/f;->j:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canCallGetCodecInfo:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/thumbplayer/h/h/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/tencent/thumbplayer/h/b/f;->p:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object p1

    iget-object p2, p2, Lcom/tencent/thumbplayer/h/b/e;->j:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/thumbplayer/h/b/f;->s:Landroid/media/MediaCodecInfo$CodecCapabilities;

    :cond_2
    iget-object p1, p0, Lcom/tencent/thumbplayer/h/b/f;->s:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-eqz p1, :cond_3

    invoke-static {p1}, Lcom/tencent/thumbplayer/h/h/c;->a(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v1

    goto :goto_2

    :cond_3
    move p1, v0

    :goto_2
    iput-boolean p1, p0, Lcom/tencent/thumbplayer/h/b/f;->c:Z

    iget-object p1, p0, Lcom/tencent/thumbplayer/h/b/f;->s:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-eqz p1, :cond_4

    invoke-static {p1}, Lcom/tencent/thumbplayer/h/h/c;->b(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_4

    move v0, v1

    :cond_4
    iput-boolean v0, p0, Lcom/tencent/thumbplayer/h/b/f;->d:Z

    return-void
.end method

.method static synthetic a(Lcom/tencent/thumbplayer/h/b/f;)Landroid/media/MediaCodec;
    .locals 0

    iget-object p0, p0, Lcom/tencent/thumbplayer/h/b/f;->p:Landroid/media/MediaCodec;

    return-object p0
.end method

.method public static a(Landroid/media/MediaCodec;Ljava/lang/String;Lcom/tencent/thumbplayer/h/b/e;)Lcom/tencent/thumbplayer/h/b/c;
    .locals 0

    invoke-static {p1}, Lcom/tencent/thumbplayer/h/h/c;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/tencent/thumbplayer/h/b/g;

    invoke-direct {p1, p0, p2}, Lcom/tencent/thumbplayer/h/b/g;-><init>(Landroid/media/MediaCodec;Lcom/tencent/thumbplayer/h/b/e;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/tencent/thumbplayer/h/b/a;

    invoke-direct {p1, p0, p2}, Lcom/tencent/thumbplayer/h/b/a;-><init>(Landroid/media/MediaCodec;Lcom/tencent/thumbplayer/h/b/e;)V

    :goto_0
    return-object p1
.end method

.method private a(I)V
    .locals 3

    const v0, 0x9c40

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/thumbplayer/h/b/f;->j:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "    releaseCodecWhenError, errorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/thumbplayer/h/h/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/h/b/f;->g()V

    :cond_1
    return-void
.end method

.method private a(II)V
    .locals 3

    iget-boolean v0, p0, Lcom/tencent/thumbplayer/h/b/f;->z:Z

    if-nez v0, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/tencent/thumbplayer/h/b/f;->b(II)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/tencent/thumbplayer/h/b/f;->z:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", trackDecodeApi state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/thumbplayer/h/b/f;->r:Lcom/tencent/thumbplayer/h/b/f$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "  surfaceState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/thumbplayer/h/b/f;->f:Landroid/view/Surface;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_1

    const p1, 0x9c42

    :goto_1
    invoke-direct {p0, p1, v0, v2}, Lcom/tencent/thumbplayer/h/b/f;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_1
    if-ne p1, p2, :cond_2

    const p1, 0xea62

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method private a(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    iget-object v5, p0, Lcom/tencent/thumbplayer/h/b/f;->f:Landroid/view/Surface;

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/tencent/thumbplayer/h/b/f;->a(ILjava/lang/String;Ljava/lang/Throwable;ZLandroid/view/Surface;)V

    return-void
.end method

.method private a(ILjava/lang/String;Ljava/lang/Throwable;ZLandroid/view/Surface;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/thumbplayer/h/b/f;->y:Z

    if-nez p3, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " handleCoreAPIException exception:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    if-eqz p4, :cond_1

    invoke-direct {p0, p5}, Lcom/tencent/thumbplayer/h/b/f;->d(Landroid/view/Surface;)I

    move-result p4

    if-eqz p4, :cond_1

    move p1, p4

    :cond_1
    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string p5, "errorCode"

    invoke-virtual {p4, p5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p5, "exceptionMsg"

    invoke-virtual {p4, p5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p5, p0, Lcom/tencent/thumbplayer/h/b/f;->u:Lcom/tencent/thumbplayer/h/a/a;

    if-eqz p5, :cond_2

    iget-object p5, p0, Lcom/tencent/thumbplayer/h/b/f;->u:Lcom/tencent/thumbplayer/h/a/a;

    invoke-virtual {p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p5, p4, p3}, Lcom/tencent/thumbplayer/h/a/a;->onReuseCodecAPIException(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p4

    invoke-virtual {p4}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    :goto_1
    iget-object p4, p0, Lcom/tencent/thumbplayer/h/b/f;->j:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "hasReused:"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/tencent/thumbplayer/h/b/f;->v:Z

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "    errorCode:"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, p2, p3}, Lcom/tencent/thumbplayer/h/h/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/h/b/f;->a(I)V

    return-void
.end method

.method private a(Landroid/view/Surface;ZZ)V
    .locals 7

    iget-object v0, p0, Lcom/tencent/thumbplayer/h/b/f;->f:Landroid/view/Surface;

    if-ne v0, p1, :cond_0

    iget-object p2, p0, Lcom/tencent/thumbplayer/h/b/f;->j:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", innerSetOutputSurface error surface:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is same, stack:"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/tencent/thumbplayer/h/h/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {}, Lcom/tencent/thumbplayer/h/h/b;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " configure, call innerSetOutputSurface surface:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "  decodeState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/thumbplayer/h/b/f;->a:Lcom/tencent/thumbplayer/h/b/f$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " callByInner:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p2, p0, Lcom/tencent/thumbplayer/h/b/f;->j:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/tencent/thumbplayer/h/h/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object v3, v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/h/b/f;->b(Landroid/view/Surface;)V

    iget-object p2, p0, Lcom/tencent/thumbplayer/h/b/f;->p:Landroid/media/MediaCodec;

    invoke-virtual {p2, p1}, Landroid/media/MediaCodec;->setOutputSurface(Landroid/view/Surface;)V

    if-nez p3, :cond_2

    invoke-direct {p0}, Lcom/tencent/thumbplayer/h/b/f;->p()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-void

    :catchall_0
    move-exception p2

    const/4 p3, 0x0

    instance-of v0, p2, Ljava/lang/IllegalStateException;

    if-nez v0, :cond_4

    instance-of v0, p2, Ljava/lang/IllegalArgumentException;

    if-eqz v0, :cond_3

    const/16 p3, 0x7531

    :cond_3
    :goto_0
    move v2, p3

    goto :goto_1

    :cond_4
    const/16 p3, 0x7530

    goto :goto_0

    :goto_1
    const/4 v5, 0x1

    move-object v1, p0

    move-object v4, p2

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/tencent/thumbplayer/h/b/f;->a(ILjava/lang/String;Ljava/lang/Throwable;ZLandroid/view/Surface;)V

    throw p2
.end method

.method static synthetic b(Lcom/tencent/thumbplayer/h/b/f;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/thumbplayer/h/b/f;->j:Ljava/lang/String;

    return-object p0
.end method

.method private final b(IIIJI)V
    .locals 8

    sget-object v0, Lcom/tencent/thumbplayer/h/b/f$2;->a:[I

    iget-object v1, p0, Lcom/tencent/thumbplayer/h/b/f;->w:Lcom/tencent/thumbplayer/h/f/a$b;

    invoke-virtual {v1}, Lcom/tencent/thumbplayer/h/f/a$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/tencent/thumbplayer/h/b/f;->p:Landroid/media/MediaCodec;

    move v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_0

    :cond_1
    invoke-direct/range {p0 .. p6}, Lcom/tencent/thumbplayer/h/b/f;->c(IIIJI)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/tencent/thumbplayer/h/b/f;->j:Ljava/lang/String;

    const-string p2, "queueInputBufferForAdaptation error for KEEP_CODEC_RESULT_NO"

    invoke-static {p1, p2}, Lcom/tencent/thumbplayer/h/h/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private b(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/tencent/thumbplayer/h/h/b;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", realConfigure mediaFormat:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " surface:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " crypto:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " flags:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/thumbplayer/h/b/f;->r:Lcom/tencent/thumbplayer/h/b/f$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mHasConfigureCalled\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/tencent/thumbplayer/h/b/f;->x:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/thumbplayer/h/b/f;->j:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/tencent/thumbplayer/h/h/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/tencent/thumbplayer/h/b/f;->p:Landroid/media/MediaCodec;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    invoke-direct {p0, p2}, Lcom/tencent/thumbplayer/h/b/f;->b(Landroid/view/Surface;)V

    sget-object p1, Lcom/tencent/thumbplayer/h/b/f$a;->b:Lcom/tencent/thumbplayer/h/b/f$a;

    iput-object p1, p0, Lcom/tencent/thumbplayer/h/b/f;->r:Lcom/tencent/thumbplayer/h/b/f$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    move-object v3, v0

    const/4 p3, 0x0

    instance-of p4, p1, Ljava/lang/IllegalStateException;

    if-nez p4, :cond_2

    instance-of p4, p1, Landroid/media/MediaCodec$CryptoException;

    if-eqz p4, :cond_1

    const/16 p3, 0x2711

    :cond_1
    :goto_0
    move v2, p3

    goto :goto_1

    :cond_2
    const/16 p3, 0x2710

    goto :goto_0

    :goto_1
    const/4 v5, 0x1

    move-object v1, p0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/tencent/thumbplayer/h/b/f;->a(ILjava/lang/String;Ljava/lang/Throwable;ZLandroid/view/Surface;)V

    throw p1
.end method

.method private b(Landroid/view/Surface;)V
    .locals 3

    invoke-static {}, Lcom/tencent/thumbplayer/h/h/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/thumbplayer/h/b/f;->j:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", oldSurface:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/thumbplayer/h/b/f;->f:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " CodecWrapperSetSurface surface:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/thumbplayer/h/h/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lcom/tencent/thumbplayer/h/b/f;->f:Landroid/view/Surface;

    return-void
.end method

.method private b(II)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    iget-object p2, p0, Lcom/tencent/thumbplayer/h/b/f;->o:[I

    aget v1, p2, p1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    aput v1, p2, p1

    aget p1, p2, p1

    const/16 p2, 0x64

    if-le p1, p2, :cond_0

    move v0, v2

    :cond_0
    return v0

    :cond_1
    iget-object p2, p0, Lcom/tencent/thumbplayer/h/b/f;->o:[I

    aput v0, p2, p1

    return v0
.end method

.method static synthetic c(Lcom/tencent/thumbplayer/h/b/f;)Lcom/tencent/thumbplayer/h/a/a;
    .locals 0

    iget-object p0, p0, Lcom/tencent/thumbplayer/h/b/f;->u:Lcom/tencent/thumbplayer/h/a/a;

    return-object p0
.end method

.method private final c(IIIJI)V
    .locals 7

    iget-object v0, p0, Lcom/tencent/thumbplayer/h/b/f;->p:Landroid/media/MediaCodec;

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    return-void
.end method

.method private c(Landroid/view/Surface;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/thumbplayer/h/b/f;->a(Landroid/view/Surface;ZZ)V

    return-void
.end method

.method private d(Landroid/view/Surface;)I
    .locals 0

    if-nez p1, :cond_0

    const/16 p1, 0x2713

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result p1

    if-nez p1, :cond_1

    const/16 p1, 0x2714

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private n()Z
    .locals 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/thumbplayer/h/b/f;->t:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private o()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/thumbplayer/h/b/f;->B:Lcom/tencent/thumbplayer/h/e/a/a;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/tencent/thumbplayer/h/e/a/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lcom/tencent/thumbplayer/h/e/a/a;-><init>(II)V

    iput-object v0, p0, Lcom/tencent/thumbplayer/h/b/f;->B:Lcom/tencent/thumbplayer/h/e/a/a;

    iget-object v0, p0, Lcom/tencent/thumbplayer/h/b/f;->B:Lcom/tencent/thumbplayer/h/e/a/a;

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/h/e/a/a;->d()Landroid/view/Surface;

    move-result-object v0

    invoke-direct {p0, v0, v1, v1}, Lcom/tencent/thumbplayer/h/b/f;->a(Landroid/view/Surface;ZZ)V

    return-void
.end method

.method private p()V
    .locals 3

    invoke-static {}, Lcom/tencent/thumbplayer/h/h/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/thumbplayer/h/b/f;->j:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "unBindingBackupSurface"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/thumbplayer/h/h/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/h/b/f;->B:Lcom/tencent/thumbplayer/h/e/a/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/h/e/a/a;->b()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/thumbplayer/h/b/f;->B:Lcom/tencent/thumbplayer/h/e/a/a;

    return-void
.end method

.method private q()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/thumbplayer/h/b/f;->z:Z

    iput v0, p0, Lcom/tencent/thumbplayer/h/b/f;->A:I

    return-void
.end method

.method private r()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/thumbplayer/h/b/f;->o:[I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    return-void
.end method


# virtual methods
.method public a(J)I
    .locals 3

    invoke-direct {p0}, Lcom/tencent/thumbplayer/h/b/f;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/tencent/thumbplayer/h/b/f;->j:Ljava/lang/String;

    const-string p2, "ignore call method dequeueInputBuffer for isNotMyThread"

    invoke-static {p1, p2}, Lcom/tencent/thumbplayer/h/h/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/tencent/thumbplayer/h/b/f;->p:Landroid/media/MediaCodec;

    invoke-virtual {v2, p1, p2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result p1

    invoke-static {}, Lcom/tencent/thumbplayer/h/h/b;->a()Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", dequeueInputBuffer state:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/thumbplayer/h/b/f;->r:Lcom/tencent/thumbplayer/h/b/f$a;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " decodeState:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/thumbplayer/h/b/f;->a:Lcom/tencent/thumbplayer/h/b/f$b;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " , result="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p2, p0, Lcom/tencent/thumbplayer/h/b/f;->j:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/tencent/thumbplayer/h/h/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-object p2, Lcom/tencent/thumbplayer/h/b/f$b;->b:Lcom/tencent/thumbplayer/h/b/f$b;

    iput-object p2, p0, Lcom/tencent/thumbplayer/h/b/f;->a:Lcom/tencent/thumbplayer/h/b/f$b;

    sget-object p2, Lcom/tencent/thumbplayer/h/b/f$a;->e:Lcom/tencent/thumbplayer/h/b/f$a;

    iput-object p2, p0, Lcom/tencent/thumbplayer/h/b/f;->r:Lcom/tencent/thumbplayer/h/b/f$a;

    invoke-direct {p0, v1, p1}, Lcom/tencent/thumbplayer/h/b/f;->a(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    instance-of p2, p1, Ljava/lang/IllegalStateException;

    if-nez p2, :cond_2

    instance-of p2, p1, Ljava/lang/IllegalArgumentException;

    if-eqz p2, :cond_3

    const v1, 0x9c41

    goto :goto_0

    :cond_2
    const v1, 0x9c40

    :cond_3
    :goto_0
    invoke-direct {p0, v1, v0, p1}, Lcom/tencent/thumbplayer/h/b/f;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public a(Landroid/media/MediaCodec$BufferInfo;J)I
    .locals 2

    invoke-direct {p0}, Lcom/tencent/thumbplayer/h/b/f;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/tencent/thumbplayer/h/b/f;->j:Ljava/lang/String;

    const-string p2, "ignore call method dequeueOutputBuffer for isNotMyThread"

    invoke-static {p1, p2}, Lcom/tencent/thumbplayer/h/h/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/thumbplayer/h/b/f;->p:Landroid/media/MediaCodec;

    invoke-virtual {v1, p1, p2, p3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result p1

    invoke-static {}, Lcom/tencent/thumbplayer/h/h/b;->a()Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", dequeueOutputBuffer outIndex:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    instance-of p2, p0, Lcom/tencent/thumbplayer/h/b/g;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/tencent/thumbplayer/h/b/f;->j:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/tencent/thumbplayer/h/h/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object p2, p0, Lcom/tencent/thumbplayer/h/b/f;->l:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object p2, Lcom/tencent/thumbplayer/h/b/f$b;->d:Lcom/tencent/thumbplayer/h/b/f$b;

    iput-object p2, p0, Lcom/tencent/thumbplayer/h/b/f;->a:Lcom/tencent/thumbplayer/h/b/f$b;

    const/4 p2, 0x1

    invoke-direct {p0, p2, p1}, Lcom/tencent/thumbplayer/h/b/f;->a(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    const/4 p2, 0x0

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt p3, v1, :cond_3

    instance-of p3, p1, Landroid/media/MediaCodec$CodecException;

    if-nez p3, :cond_2

    goto :goto_0

    :cond_2
    const p2, 0xea61

    goto :goto_1

    :cond_3
    :goto_0
    instance-of p3, p1, Ljava/lang/IllegalStateException;

    if-eqz p3, :cond_4

    const p2, 0xea60

    :cond_4
    :goto_1
    invoke-direct {p0, p2, v0, p1}, Lcom/tencent/thumbplayer/h/b/f;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public a()Landroid/media/MediaCodec;
    .locals 1

    iget-object v0, p0, Lcom/tencent/thumbplayer/h/b/f;->p:Landroid/media/MediaCodec;

    return-object v0
.end method

.method public abstract a(Lcom/tencent/thumbplayer/h/b/e;)Lcom/tencent/thumbplayer/h/f/a$b;
.end method

.method public a(IIIJI)V
    .locals 8

    invoke-direct {p0}, Lcom/tencent/thumbplayer/h/b/f;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/tencent/thumbplayer/h/b/f;->j:Ljava/lang/String;

    const-string p2, "ignore call method queueInputBuffer for isNotMyThread"

    invoke-static {p1, p2}, Lcom/tencent/thumbplayer/h/h/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {}, Lcom/tencent/thumbplayer/h/h/b;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", queueInputBuffer index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " offset:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " presentationTimeUs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "flags:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/thumbplayer/h/b/f;->r:Lcom/tencent/thumbplayer/h/b/f$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " decodeState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/thumbplayer/h/b/f;->a:Lcom/tencent/thumbplayer/h/b/f$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/thumbplayer/h/b/f;->j:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/tencent/thumbplayer/h/h/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :try_start_0
    iget-boolean v1, p0, Lcom/tencent/thumbplayer/h/b/f;->v:Z

    if-eqz v1, :cond_2

    invoke-direct/range {p0 .. p6}, Lcom/tencent/thumbplayer/h/b/f;->b(IIIJI)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/tencent/thumbplayer/h/b/f;->p:Landroid/media/MediaCodec;

    move v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    :goto_0
    sget-object p1, Lcom/tencent/thumbplayer/h/b/f$b;->c:Lcom/tencent/thumbplayer/h/b/f$b;

    iput-object p1, p0, Lcom/tencent/thumbplayer/h/b/f;->a:Lcom/tencent/thumbplayer/h/b/f$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const/4 p2, 0x0

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x15

    if-lt p3, p4, :cond_4

    instance-of p3, p1, Landroid/media/MediaCodec$CodecException;

    if-nez p3, :cond_3

    goto :goto_1

    :cond_3
    const p2, 0xc351

    goto :goto_2

    :cond_4
    :goto_1
    instance-of p3, p1, Ljava/lang/IllegalStateException;

    if-nez p3, :cond_5

    instance-of p3, p1, Landroid/media/MediaCodec$CryptoException;

    if-eqz p3, :cond_6

    const p2, 0xc352

    goto :goto_2

    :cond_5
    const p2, 0xc350

    :cond_6
    :goto_2
    invoke-direct {p0, p2, v0, p1}, Lcom/tencent/thumbplayer/h/b/f;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public a(IZ)V
    .locals 3

    invoke-direct {p0}, Lcom/tencent/thumbplayer/h/b/f;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/tencent/thumbplayer/h/b/f;->j:Ljava/lang/String;

    const-string p2, "ignore call method releaseOutputBuffer for isNotMyThread"

    invoke-static {p1, p2}, Lcom/tencent/thumbplayer/h/h/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {}, Lcom/tencent/thumbplayer/h/h/b;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", releaseOutputBuffer render:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/thumbplayer/h/b/f;->j:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/tencent/thumbplayer/h/h/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/tencent/thumbplayer/h/b/f;->l:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/tencent/thumbplayer/h/b/f;->p:Landroid/media/MediaCodec;

    invoke-virtual {v1, p1, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/tencent/thumbplayer/h/b/f;->r:Lcom/tencent/thumbplayer/h/b/f$a;

    sget-object v1, Lcom/tencent/thumbplayer/h/b/f$a;->d:Lcom/tencent/thumbplayer/h/b/f$a;

    if-eq p2, v1, :cond_2

    iget-object p2, p0, Lcom/tencent/thumbplayer/h/b/f;->j:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", releaseOutputBuffer failed, ignore e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1, p1}, Lcom/tencent/thumbplayer/h/h/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    const/4 p2, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_3

    instance-of v1, p1, Landroid/media/MediaCodec$CodecException;

    if-eqz v1, :cond_3

    const p2, 0x11172

    goto :goto_0

    :cond_3
    instance-of v1, p1, Ljava/lang/IllegalStateException;

    if-eqz v1, :cond_4

    const p2, 0x11171

    :cond_4
    :goto_0
    invoke-direct {p0, p2, v0, p1}, Lcom/tencent/thumbplayer/h/b/f;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    sget-object p1, Lcom/tencent/thumbplayer/h/b/f$b;->e:Lcom/tencent/thumbplayer/h/b/f$b;

    iput-object p1, p0, Lcom/tencent/thumbplayer/h/b/f;->a:Lcom/tencent/thumbplayer/h/b/f$b;

    return-void
.end method

.method public a(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    .locals 2

    invoke-direct {p0}, Lcom/tencent/thumbplayer/h/b/f;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/tencent/thumbplayer/h/b/f;->j:Ljava/lang/String;

    const-string p2, "ignore call method configure for isNotMyThread"

    invoke-static {p1, p2}, Lcom/tencent/thumbplayer/h/h/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/thumbplayer/h/b/f;->x:Z

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/tencent/thumbplayer/h/b/f;->q:Z

    iget-object v0, p0, Lcom/tencent/thumbplayer/h/b/f;->r:Lcom/tencent/thumbplayer/h/b/f$a;

    sget-object v1, Lcom/tencent/thumbplayer/h/b/f$a;->a:Lcom/tencent/thumbplayer/h/b/f$a;

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/thumbplayer/h/b/f;->b(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    invoke-direct {p0}, Lcom/tencent/thumbplayer/h/b/f;->r()V

    invoke-direct {p0, p2}, Lcom/tencent/thumbplayer/h/b/f;->c(Landroid/view/Surface;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    throw p1
.end method

.method public a(Landroid/view/Surface;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/tencent/thumbplayer/h/b/f;->a(Landroid/view/Surface;ZZ)V

    return-void
.end method

.method public a(Lcom/tencent/thumbplayer/h/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/thumbplayer/h/b/f;->u:Lcom/tencent/thumbplayer/h/a/a;

    return-void
.end method

.method public b(Lcom/tencent/thumbplayer/h/b/e;)Lcom/tencent/thumbplayer/h/f/a$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/tencent/thumbplayer/h/b/f;->a(Lcom/tencent/thumbplayer/h/b/e;)Lcom/tencent/thumbplayer/h/f/a$b;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/thumbplayer/h/b/f;->w:Lcom/tencent/thumbplayer/h/f/a$b;

    iget-object p1, p0, Lcom/tencent/thumbplayer/h/b/f;->w:Lcom/tencent/thumbplayer/h/f/a$b;

    return-object p1
.end method

.method public b()V
    .locals 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/tencent/thumbplayer/h/b/f;->m:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iput-wide v0, p0, Lcom/tencent/thumbplayer/h/b/f;->t:J

    iget-object v0, p0, Lcom/tencent/thumbplayer/h/b/f;->m:Ljava/util/ArrayList;

    iget-wide v1, p0, Lcom/tencent/thumbplayer/h/b/f;->t:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/thumbplayer/h/b/f;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/tencent/thumbplayer/h/b/f;->m:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public c()V
    .locals 3

    invoke-direct {p0}, Lcom/tencent/thumbplayer/h/b/f;->q()V

    invoke-static {}, Lcom/tencent/thumbplayer/h/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/thumbplayer/h/b/f;->r:Lcom/tencent/thumbplayer/h/b/f$a;

    sget-object v1, Lcom/tencent/thumbplayer/h/b/f$a;->e:Lcom/tencent/thumbplayer/h/b/f$a;

    if-ne v0, v1, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/thumbplayer/h/b/f;->e()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/tencent/thumbplayer/h/b/f;->j:Ljava/lang/String;

    const-string v2, "flush failed in prepareToReUse"

    invoke-static {v1, v2, v0}, Lcom/tencent/thumbplayer/h/h/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/h/b/f;->r:Lcom/tencent/thumbplayer/h/b/f$a;

    sget-object v1, Lcom/tencent/thumbplayer/h/b/f$a;->d:Lcom/tencent/thumbplayer/h/b/f$a;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/h/b/f;->e()V

    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/thumbplayer/h/b/f;->v:Z

    return-void
.end method

.method public d()V
    .locals 5

    iget-object v0, p0, Lcom/tencent/thumbplayer/h/b/f;->r:Lcom/tencent/thumbplayer/h/b/f$a;

    sget-object v1, Lcom/tencent/thumbplayer/h/b/f$a;->b:Lcom/tencent/thumbplayer/h/b/f$a;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/thumbplayer/h/b/f;->j:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start ignore:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/thumbplayer/h/b/f;->r:Lcom/tencent/thumbplayer/h/b/f$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/thumbplayer/h/h/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/tencent/thumbplayer/h/h/b;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", start state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/thumbplayer/h/b/f;->r:Lcom/tencent/thumbplayer/h/b/f$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/thumbplayer/h/b/f;->j:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/tencent/thumbplayer/h/h/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/tencent/thumbplayer/h/b/f;->r:Lcom/tencent/thumbplayer/h/b/f$a;

    sget-object v2, Lcom/tencent/thumbplayer/h/b/f$a;->b:Lcom/tencent/thumbplayer/h/b/f$a;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/tencent/thumbplayer/h/b/f;->p:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    sget-object v1, Lcom/tencent/thumbplayer/h/b/f$a;->e:Lcom/tencent/thumbplayer/h/b/f$a;

    iput-object v1, p0, Lcom/tencent/thumbplayer/h/b/f;->r:Lcom/tencent/thumbplayer/h/b/f$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    const/4 v2, 0x0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_4

    instance-of v3, v1, Landroid/media/MediaCodec$CodecException;

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    const/16 v2, 0x4e21

    goto :goto_1

    :cond_4
    :goto_0
    instance-of v3, v1, Ljava/lang/IllegalStateException;

    if-eqz v3, :cond_5

    const/16 v2, 0x4e20

    :cond_5
    :goto_1
    invoke-direct {p0, v2, v0, v1}, Lcom/tencent/thumbplayer/h/b/f;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public e()V
    .locals 5

    invoke-direct {p0}, Lcom/tencent/thumbplayer/h/b/f;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/thumbplayer/h/b/f;->j:Ljava/lang/String;

    const-string v1, "call method flush for isNotMyThread..."

    invoke-static {v0, v1}, Lcom/tencent/thumbplayer/h/h/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/tencent/thumbplayer/h/h/b;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", flush state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/thumbplayer/h/b/f;->r:Lcom/tencent/thumbplayer/h/b/f$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/thumbplayer/h/b/f;->j:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/tencent/thumbplayer/h/h/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/tencent/thumbplayer/h/b/f;->p:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->flush()V

    sget-object v1, Lcom/tencent/thumbplayer/h/b/f$a;->d:Lcom/tencent/thumbplayer/h/b/f$a;

    iput-object v1, p0, Lcom/tencent/thumbplayer/h/b/f;->r:Lcom/tencent/thumbplayer/h/b/f$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    const/4 v2, 0x0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_3

    instance-of v3, v1, Landroid/media/MediaCodec$CodecException;

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const v2, 0x15f91

    goto :goto_1

    :cond_3
    :goto_0
    instance-of v3, v1, Ljava/lang/IllegalStateException;

    if-eqz v3, :cond_4

    const v2, 0x15f90

    :cond_4
    :goto_1
    invoke-direct {p0, v2, v0, v1}, Lcom/tencent/thumbplayer/h/b/f;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public f()V
    .locals 3

    invoke-static {}, Lcom/tencent/thumbplayer/h/h/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/thumbplayer/h/b/f;->j:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", stop"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/thumbplayer/h/h/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/thumbplayer/h/b/f;->j()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/tencent/thumbplayer/h/h/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/thumbplayer/h/b/f;->j:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", codec real stop"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/thumbplayer/h/h/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/h/b/f;->p:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v0, Lcom/tencent/thumbplayer/h/b/f$a;->a:Lcom/tencent/thumbplayer/h/b/f$a;

    iput-object v0, p0, Lcom/tencent/thumbplayer/h/b/f;->r:Lcom/tencent/thumbplayer/h/b/f$a;

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/tencent/thumbplayer/h/b/f$a;->a:Lcom/tencent/thumbplayer/h/b/f$a;

    iput-object v1, p0, Lcom/tencent/thumbplayer/h/b/f;->r:Lcom/tencent/thumbplayer/h/b/f$a;

    iget-object v1, p0, Lcom/tencent/thumbplayer/h/b/f;->j:Ljava/lang/String;

    const-string v2, "stop failed"

    invoke-static {v1, v2, v0}, Lcom/tencent/thumbplayer/h/h/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    :goto_0
    return-void
.end method

.method public g()V
    .locals 3

    invoke-static {}, Lcom/tencent/thumbplayer/h/h/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/thumbplayer/h/b/f;->j:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " call release mHoldBufferOutIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/thumbplayer/h/b/f;->l:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mReleaseCalled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/tencent/thumbplayer/h/b/f;->q:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " stack:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/thumbplayer/h/h/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/thumbplayer/h/b/f;->q:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/thumbplayer/h/b/f;->x:Z

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/h/b/f;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/thumbplayer/h/b/f;->e()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/tencent/thumbplayer/h/b/f;->j:Ljava/lang/String;

    const-string v2, "flush failed for not in the Executing state."

    invoke-static {v1, v2, v0}, Lcom/tencent/thumbplayer/h/h/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-direct {p0}, Lcom/tencent/thumbplayer/h/b/f;->o()V

    invoke-static {}, Lcom/tencent/thumbplayer/h/a;->a()Lcom/tencent/thumbplayer/h/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/thumbplayer/h/a;->b(Lcom/tencent/thumbplayer/h/b/c;)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/tencent/thumbplayer/h/h/b;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/thumbplayer/h/b/f;->j:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Don\'t not keep the codec, release it ..., mErrorHappened:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/tencent/thumbplayer/h/b/f;->y:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/thumbplayer/h/h/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/tencent/thumbplayer/h/a;->a()Lcom/tencent/thumbplayer/h/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/thumbplayer/h/a;->a(Lcom/tencent/thumbplayer/h/b/c;)V

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/h/b/f;->i()V

    sget-object v0, Lcom/tencent/thumbplayer/h/b/f$a;->g:Lcom/tencent/thumbplayer/h/b/f$a;

    iput-object v0, p0, Lcom/tencent/thumbplayer/h/b/f;->r:Lcom/tencent/thumbplayer/h/b/f$a;

    :goto_1
    return-void
.end method

.method public final h()Lcom/tencent/thumbplayer/h/a/a;
    .locals 1

    iget-object v0, p0, Lcom/tencent/thumbplayer/h/b/f;->u:Lcom/tencent/thumbplayer/h/a/a;

    return-object v0
.end method

.method public final i()V
    .locals 3

    invoke-static {}, Lcom/tencent/thumbplayer/h/h/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/thumbplayer/h/b/f;->j:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", recycle isRecycled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/tencent/thumbplayer/h/b/f;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "  mSurfaceMap.size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/tencent/thumbplayer/h/b/f;->i:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "...... stack:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/thumbplayer/h/h/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/tencent/thumbplayer/h/b/f;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/thumbplayer/h/b/f;->j:Ljava/lang/String;

    const-string v1, "ignore recycle for has isRecycled is true."

    invoke-static {v0, v1}, Lcom/tencent/thumbplayer/h/h/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/thumbplayer/h/b/f;->x:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/thumbplayer/h/b/f;->b:Z

    new-instance v0, Lcom/tencent/thumbplayer/h/b/f$1;

    invoke-direct {v0, p0}, Lcom/tencent/thumbplayer/h/b/f$1;-><init>(Lcom/tencent/thumbplayer/h/b/f;)V

    invoke-static {v0}, Lcom/tencent/thumbplayer/h/h/d;->a(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/tencent/thumbplayer/h/b/f$a;->a:Lcom/tencent/thumbplayer/h/b/f$a;

    iput-object v0, p0, Lcom/tencent/thumbplayer/h/b/f;->r:Lcom/tencent/thumbplayer/h/b/f$a;

    return-void
.end method

.method public j()Z
    .locals 3

    invoke-static {}, Lcom/tencent/thumbplayer/h/a;->b()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/tencent/thumbplayer/h/b/f;->y:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/thumbplayer/h/a;->a()Lcom/tencent/thumbplayer/h/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/h/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/thumbplayer/h/a;->a()Lcom/tencent/thumbplayer/h/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/h/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    iget-boolean v0, p0, Lcom/tencent/thumbplayer/h/b/f;->y:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/tencent/thumbplayer/h/a;->a()Lcom/tencent/thumbplayer/h/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/h/a;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method public k()V
    .locals 1

    iget v0, p0, Lcom/tencent/thumbplayer/h/b/f;->A:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/thumbplayer/h/b/f;->A:I

    return-void
.end method

.method public l()Z
    .locals 2

    iget v0, p0, Lcom/tencent/thumbplayer/h/b/f;->A:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/thumbplayer/h/b/f;->h:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mReleaseCalled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/thumbplayer/h/b/f;->q:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isRecycled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tencent/thumbplayer/h/b/f;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
