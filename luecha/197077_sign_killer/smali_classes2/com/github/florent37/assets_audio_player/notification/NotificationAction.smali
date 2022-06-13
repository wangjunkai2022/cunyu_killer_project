.class public abstract Lcom/github/florent37/assets_audio_player/notification/NotificationAction;
.super Ljava/lang/Object;
.source "NotificationAction.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Companion;,
        Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Show;,
        Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Hide;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u0000 \u00032\u00020\u0001:\u0003\u0003\u0004\u0005B\u0007\u0008\u0004\u00a2\u0006\u0002\u0010\u0002\u0082\u0001\u0002\u0006\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/github/florent37/assets_audio_player/notification/NotificationAction;",
        "Ljava/io/Serializable;",
        "()V",
        "Companion",
        "Hide",
        "Show",
        "Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Show;",
        "Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Hide;",
        "assets_audio_player_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final ACTION_NEXT:Ljava/lang/String; = "next"

.field public static final ACTION_PREV:Ljava/lang/String; = "prev"

.field public static final ACTION_SELECT:Ljava/lang/String; = "select"

.field public static final ACTION_STOP:Ljava/lang/String; = "stop"

.field public static final ACTION_TOGGLE:Ljava/lang/String; = "toggle"

.field public static final Companion:Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/github/florent37/assets_audio_player/notification/NotificationAction;->Companion:Lcom/github/florent37/assets_audio_player/notification/NotificationAction$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/github/florent37/assets_audio_player/notification/NotificationAction;-><init>()V

    return-void
.end method
