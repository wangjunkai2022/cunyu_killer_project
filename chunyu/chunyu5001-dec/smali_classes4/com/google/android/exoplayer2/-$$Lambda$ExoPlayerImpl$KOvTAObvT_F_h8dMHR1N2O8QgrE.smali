.class public final synthetic Lcom/google/android/exoplayer2/-$$Lambda$ExoPlayerImpl$KOvTAObvT_F_h8dMHR1N2O8QgrE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplayer2/util/ListenerSet$Event;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/-$$Lambda$ExoPlayerImpl$KOvTAObvT_F_h8dMHR1N2O8QgrE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/-$$Lambda$ExoPlayerImpl$KOvTAObvT_F_h8dMHR1N2O8QgrE;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/-$$Lambda$ExoPlayerImpl$KOvTAObvT_F_h8dMHR1N2O8QgrE;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/-$$Lambda$ExoPlayerImpl$KOvTAObvT_F_h8dMHR1N2O8QgrE;->INSTANCE:Lcom/google/android/exoplayer2/-$$Lambda$ExoPlayerImpl$KOvTAObvT_F_h8dMHR1N2O8QgrE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/Player$EventListener;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->lambda$release$5(Lcom/google/android/exoplayer2/Player$EventListener;)V

    return-void
.end method
