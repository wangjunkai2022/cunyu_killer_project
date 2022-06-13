.class public final synthetic Lcom/google/android/exoplayer2/-$$Lambda$MediaMetadata$Dq7db011SDbliqSv7Vj5upXooFY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable$Creator;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/-$$Lambda$MediaMetadata$Dq7db011SDbliqSv7Vj5upXooFY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/-$$Lambda$MediaMetadata$Dq7db011SDbliqSv7Vj5upXooFY;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/-$$Lambda$MediaMetadata$Dq7db011SDbliqSv7Vj5upXooFY;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/-$$Lambda$MediaMetadata$Dq7db011SDbliqSv7Vj5upXooFY;->INSTANCE:Lcom/google/android/exoplayer2/-$$Lambda$MediaMetadata$Dq7db011SDbliqSv7Vj5upXooFY;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;
    .locals 0

    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaMetadata;->lambda$Dq7db011SDbliqSv7Vj5upXooFY(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object p1

    return-object p1
.end method
