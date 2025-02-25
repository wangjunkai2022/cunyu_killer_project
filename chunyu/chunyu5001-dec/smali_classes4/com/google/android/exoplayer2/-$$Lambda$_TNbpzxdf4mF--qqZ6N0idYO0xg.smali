.class public final synthetic Lcom/google/android/exoplayer2/-$$Lambda$_TNbpzxdf4mF--qqZ6N0idYO0xg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable$Creator;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/-$$Lambda$_TNbpzxdf4mF--qqZ6N0idYO0xg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/-$$Lambda$_TNbpzxdf4mF--qqZ6N0idYO0xg;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/-$$Lambda$_TNbpzxdf4mF--qqZ6N0idYO0xg;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/-$$Lambda$_TNbpzxdf4mF--qqZ6N0idYO0xg;->INSTANCE:Lcom/google/android/exoplayer2/-$$Lambda$_TNbpzxdf4mF--qqZ6N0idYO0xg;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/PlaybackException;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/PlaybackException;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method
