.class public final synthetic Lcom/google/android/exoplayer2/offline/-$$Lambda$DownloadHelper$RArUVj0-AG_uAtPAERIixR2buK8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/google/android/exoplayer2/offline/DownloadHelper;

.field private final synthetic f$1:Lcom/google/android/exoplayer2/offline/DownloadHelper$Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/offline/DownloadHelper;Lcom/google/android/exoplayer2/offline/DownloadHelper$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/-$$Lambda$DownloadHelper$RArUVj0-AG_uAtPAERIixR2buK8;->f$0:Lcom/google/android/exoplayer2/offline/DownloadHelper;

    iput-object p2, p0, Lcom/google/android/exoplayer2/offline/-$$Lambda$DownloadHelper$RArUVj0-AG_uAtPAERIixR2buK8;->f$1:Lcom/google/android/exoplayer2/offline/DownloadHelper$Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/-$$Lambda$DownloadHelper$RArUVj0-AG_uAtPAERIixR2buK8;->f$0:Lcom/google/android/exoplayer2/offline/DownloadHelper;

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/-$$Lambda$DownloadHelper$RArUVj0-AG_uAtPAERIixR2buK8;->f$1:Lcom/google/android/exoplayer2/offline/DownloadHelper$Callback;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->lambda$prepare$3$DownloadHelper(Lcom/google/android/exoplayer2/offline/DownloadHelper$Callback;)V

    return-void
.end method
