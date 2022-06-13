.class public final synthetic Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$8bTteZPABkI5JE28kfz6l8u9Gn0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplayer2/util/ListenerSet$Event;


# instance fields
.field private final synthetic f$0:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

.field private final synthetic f$1:J

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$8bTteZPABkI5JE28kfz6l8u9Gn0;->f$0:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iput-wide p2, p0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$8bTteZPABkI5JE28kfz6l8u9Gn0;->f$1:J

    iput p4, p0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$8bTteZPABkI5JE28kfz6l8u9Gn0;->f$2:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$8bTteZPABkI5JE28kfz6l8u9Gn0;->f$0:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$8bTteZPABkI5JE28kfz6l8u9Gn0;->f$1:J

    iget v3, p0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$8bTteZPABkI5JE28kfz6l8u9Gn0;->f$2:I

    check-cast p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->lambda$onVideoFrameProcessingOffset$26(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;JILcom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    return-void
.end method
