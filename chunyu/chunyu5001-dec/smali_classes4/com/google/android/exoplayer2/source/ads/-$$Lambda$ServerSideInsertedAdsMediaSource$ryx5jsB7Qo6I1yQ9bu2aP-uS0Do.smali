.class public final synthetic Lcom/google/android/exoplayer2/source/ads/-$$Lambda$ServerSideInsertedAdsMediaSource$ryx5jsB7Qo6I1yQ9bu2aP-uS0Do;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;

.field private final synthetic f$1:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/-$$Lambda$ServerSideInsertedAdsMediaSource$ryx5jsB7Qo6I1yQ9bu2aP-uS0Do;->f$0:Lcom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ads/-$$Lambda$ServerSideInsertedAdsMediaSource$ryx5jsB7Qo6I1yQ9bu2aP-uS0Do;->f$1:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/-$$Lambda$ServerSideInsertedAdsMediaSource$ryx5jsB7Qo6I1yQ9bu2aP-uS0Do;->f$0:Lcom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/-$$Lambda$ServerSideInsertedAdsMediaSource$ryx5jsB7Qo6I1yQ9bu2aP-uS0Do;->f$1:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/ads/ServerSideInsertedAdsMediaSource;->lambda$setAdPlaybackState$0$ServerSideInsertedAdsMediaSource(Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)V

    return-void
.end method
