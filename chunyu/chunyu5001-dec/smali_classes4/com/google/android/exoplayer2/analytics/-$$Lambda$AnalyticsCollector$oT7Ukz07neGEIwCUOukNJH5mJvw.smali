.class public final synthetic Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$oT7Ukz07neGEIwCUOukNJH5mJvw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplayer2/util/ListenerSet$Event;


# instance fields
.field private final synthetic f$0:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$oT7Ukz07neGEIwCUOukNJH5mJvw;->f$0:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$oT7Ukz07neGEIwCUOukNJH5mJvw;->f$1:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$oT7Ukz07neGEIwCUOukNJH5mJvw;->f$0:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$oT7Ukz07neGEIwCUOukNJH5mJvw;->f$1:Z

    check-cast p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->lambda$onIsLoadingChanged$39(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZLcom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    return-void
.end method
