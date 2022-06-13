.class public final synthetic Lcom/google/android/exoplayer2/ui/-$$Lambda$SubtitleViewUtils$WWoulX1cKMZkU9ERrhIaPPKPtuU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/common/base/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/ui/-$$Lambda$SubtitleViewUtils$WWoulX1cKMZkU9ERrhIaPPKPtuU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/ui/-$$Lambda$SubtitleViewUtils$WWoulX1cKMZkU9ERrhIaPPKPtuU;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/ui/-$$Lambda$SubtitleViewUtils$WWoulX1cKMZkU9ERrhIaPPKPtuU;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/ui/-$$Lambda$SubtitleViewUtils$WWoulX1cKMZkU9ERrhIaPPKPtuU;->INSTANCE:Lcom/google/android/exoplayer2/ui/-$$Lambda$SubtitleViewUtils$WWoulX1cKMZkU9ERrhIaPPKPtuU;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/SubtitleViewUtils;->lambda$removeEmbeddedFontSizes$1(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
