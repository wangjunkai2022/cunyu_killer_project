.class public final synthetic Lcom/google/android/exoplayer2/drm/-$$Lambda$DefaultDrmSession$LXJah8_BNDBoWje7pAg06neqK7s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplayer2/util/Consumer;


# instance fields
.field private final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplayer2/drm/-$$Lambda$DefaultDrmSession$LXJah8_BNDBoWje7pAg06neqK7s;->f$0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/drm/-$$Lambda$DefaultDrmSession$LXJah8_BNDBoWje7pAg06neqK7s;->f$0:I

    check-cast p1, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->lambda$openInternal$0(ILcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V

    return-void
.end method
