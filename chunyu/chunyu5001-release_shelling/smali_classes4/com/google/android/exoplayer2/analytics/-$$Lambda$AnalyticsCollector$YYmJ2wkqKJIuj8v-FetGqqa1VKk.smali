.class public final synthetic Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$YYmJ2wkqKJIuj8v-FetGqqa1VKk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplayer2/util/ListenerSet$Event;


# instance fields
.field private final synthetic f$0:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

.field private final synthetic f$1:I

.field private final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$YYmJ2wkqKJIuj8v-FetGqqa1VKk;->f$0:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iput p2, p0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$YYmJ2wkqKJIuj8v-FetGqqa1VKk;->f$1:I

    iput-wide p3, p0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$YYmJ2wkqKJIuj8v-FetGqqa1VKk;->f$2:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$YYmJ2wkqKJIuj8v-FetGqqa1VKk;->f$0:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iget v1, p0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$YYmJ2wkqKJIuj8v-FetGqqa1VKk;->f$1:I

    iget-wide v2, p0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$YYmJ2wkqKJIuj8v-FetGqqa1VKk;->f$2:J

    check-cast p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->lambda$onDroppedFrames$21(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IJLcom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    return-void
.end method
