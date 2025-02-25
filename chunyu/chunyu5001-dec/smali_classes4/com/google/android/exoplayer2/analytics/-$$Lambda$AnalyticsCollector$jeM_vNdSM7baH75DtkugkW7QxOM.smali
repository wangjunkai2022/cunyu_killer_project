.class public final synthetic Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$jeM_vNdSM7baH75DtkugkW7QxOM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplayer2/util/ListenerSet$Event;


# instance fields
.field private final synthetic f$0:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

.field private final synthetic f$1:I

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$jeM_vNdSM7baH75DtkugkW7QxOM;->f$0:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iput p2, p0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$jeM_vNdSM7baH75DtkugkW7QxOM;->f$1:I

    iput p3, p0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$jeM_vNdSM7baH75DtkugkW7QxOM;->f$2:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$jeM_vNdSM7baH75DtkugkW7QxOM;->f$0:Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    iget v1, p0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$jeM_vNdSM7baH75DtkugkW7QxOM;->f$1:I

    iget v2, p0, Lcom/google/android/exoplayer2/analytics/-$$Lambda$AnalyticsCollector$jeM_vNdSM7baH75DtkugkW7QxOM;->f$2:I

    check-cast p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->lambda$onSurfaceSizeChanged$28(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IILcom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    return-void
.end method
