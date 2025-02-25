.class public final synthetic Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$37roEGy_wrpvmNZxrrdQN9WlKk8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplayer2/util/ListenerSet$Event;


# instance fields
.field private final synthetic f$0:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

.field private final synthetic f$1:Lcom/google/android/exoplayer2/source/TrackGroupArray;

.field private final synthetic f$2:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$37roEGy_wrpvmNZxrrdQN9WlKk8;->f$0:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iput-object p2, p0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$37roEGy_wrpvmNZxrrdQN9WlKk8;->f$1:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iput-object p3, p0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$37roEGy_wrpvmNZxrrdQN9WlKk8;->f$2:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$37roEGy_wrpvmNZxrrdQN9WlKk8;->f$0:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$37roEGy_wrpvmNZxrrdQN9WlKk8;->f$1:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$37roEGy_wrpvmNZxrrdQN9WlKk8;->f$2:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    check-cast p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->lambda$onTracksChanged$37(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    return-void
.end method
