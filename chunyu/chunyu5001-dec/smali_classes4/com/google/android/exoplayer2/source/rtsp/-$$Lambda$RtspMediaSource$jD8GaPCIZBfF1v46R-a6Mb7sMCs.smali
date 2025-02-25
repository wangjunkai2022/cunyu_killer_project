.class public final synthetic Lcom/google/android/exoplayer2/source/rtsp/-$$Lambda$RtspMediaSource$jD8GaPCIZBfF1v46R-a6Mb7sMCs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplayer2/source/rtsp/RtspMediaPeriod$Listener;


# instance fields
.field private final synthetic f$0:Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/-$$Lambda$RtspMediaSource$jD8GaPCIZBfF1v46R-a6Mb7sMCs;->f$0:Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;

    return-void
.end method


# virtual methods
.method public final onSourceInfoRefreshed(Lcom/google/android/exoplayer2/source/rtsp/RtspSessionTiming;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/-$$Lambda$RtspMediaSource$jD8GaPCIZBfF1v46R-a6Mb7sMCs;->f$0:Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;->lambda$createPeriod$0$RtspMediaSource(Lcom/google/android/exoplayer2/source/rtsp/RtspSessionTiming;)V

    return-void
.end method
