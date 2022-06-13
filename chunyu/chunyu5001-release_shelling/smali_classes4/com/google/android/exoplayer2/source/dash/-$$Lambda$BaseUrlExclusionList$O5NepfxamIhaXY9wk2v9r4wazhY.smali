.class public final synthetic Lcom/google/android/exoplayer2/source/dash/-$$Lambda$BaseUrlExclusionList$O5NepfxamIhaXY9wk2v9r4wazhY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/source/dash/-$$Lambda$BaseUrlExclusionList$O5NepfxamIhaXY9wk2v9r4wazhY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/source/dash/-$$Lambda$BaseUrlExclusionList$O5NepfxamIhaXY9wk2v9r4wazhY;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/dash/-$$Lambda$BaseUrlExclusionList$O5NepfxamIhaXY9wk2v9r4wazhY;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/source/dash/-$$Lambda$BaseUrlExclusionList$O5NepfxamIhaXY9wk2v9r4wazhY;->INSTANCE:Lcom/google/android/exoplayer2/source/dash/-$$Lambda$BaseUrlExclusionList$O5NepfxamIhaXY9wk2v9r4wazhY;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;

    check-cast p2, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/source/dash/BaseUrlExclusionList;->lambda$O5NepfxamIhaXY9wk2v9r4wazhY(Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;)I

    move-result p1

    return p1
.end method
