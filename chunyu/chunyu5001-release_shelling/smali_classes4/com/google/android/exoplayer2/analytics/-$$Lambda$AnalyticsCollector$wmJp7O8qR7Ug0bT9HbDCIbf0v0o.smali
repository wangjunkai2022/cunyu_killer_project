.class public final synthetic Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$wmJp7O8qR7Ug0bT9HbDCIbf0v0o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplayer2/util/ListenerSet$Event;


# instance fields
.field private final synthetic f$0:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

.field private final synthetic f$1:Lcom/google/android/exoplayer2/source/LoadEventInfo;

.field private final synthetic f$2:Lcom/google/android/exoplayer2/source/MediaLoadData;

.field private final synthetic f$3:Ljava/io/IOException;

.field private final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;Ljava/io/IOException;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$wmJp7O8qR7Ug0bT9HbDCIbf0v0o;->f$0:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iput-object p2, p0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$wmJp7O8qR7Ug0bT9HbDCIbf0v0o;->f$1:Lcom/google/android/exoplayer2/source/LoadEventInfo;

    iput-object p3, p0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$wmJp7O8qR7Ug0bT9HbDCIbf0v0o;->f$2:Lcom/google/android/exoplayer2/source/MediaLoadData;

    iput-object p4, p0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$wmJp7O8qR7Ug0bT9HbDCIbf0v0o;->f$3:Ljava/io/IOException;

    iput-boolean p5, p0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$wmJp7O8qR7Ug0bT9HbDCIbf0v0o;->f$4:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$wmJp7O8qR7Ug0bT9HbDCIbf0v0o;->f$0:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$wmJp7O8qR7Ug0bT9HbDCIbf0v0o;->f$1:Lcom/google/android/exoplayer2/source/LoadEventInfo;

    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$wmJp7O8qR7Ug0bT9HbDCIbf0v0o;->f$2:Lcom/google/android/exoplayer2/source/MediaLoadData;

    iget-object v3, p0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$wmJp7O8qR7Ug0bT9HbDCIbf0v0o;->f$3:Ljava/io/IOException;

    iget-boolean v4, p0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$wmJp7O8qR7Ug0bT9HbDCIbf0v0o;->f$4:Z

    move-object v5, p1

    check-cast v5, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->lambda$onLoadError$32(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;Ljava/io/IOException;ZLcom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    return-void
.end method
