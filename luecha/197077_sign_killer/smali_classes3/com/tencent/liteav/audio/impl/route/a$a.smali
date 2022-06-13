.class public final enum Lcom/tencent/liteav/audio/impl/route/a$a;
.super Ljava/lang/Enum;
.source "AudioConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/audio/impl/route/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/liteav/audio/impl/route/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tencent/liteav/audio/impl/route/a$a;

.field public static final enum b:Lcom/tencent/liteav/audio/impl/route/a$a;

.field public static final enum c:Lcom/tencent/liteav/audio/impl/route/a$a;

.field public static final enum d:Lcom/tencent/liteav/audio/impl/route/a$a;

.field public static final enum e:Lcom/tencent/liteav/audio/impl/route/a$a;

.field public static final enum f:Lcom/tencent/liteav/audio/impl/route/a$a;

.field private static final synthetic g:[Lcom/tencent/liteav/audio/impl/route/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 8
    new-instance v0, Lcom/tencent/liteav/audio/impl/route/a$a;

    const/4 v1, 0x0

    const-string v2, "STOPPED"

    invoke-direct {v0, v2, v1}, Lcom/tencent/liteav/audio/impl/route/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/liteav/audio/impl/route/a$a;->a:Lcom/tencent/liteav/audio/impl/route/a$a;

    .line 9
    new-instance v0, Lcom/tencent/liteav/audio/impl/route/a$a;

    const/4 v2, 0x1

    const-string v3, "VOICE_CHAT"

    invoke-direct {v0, v3, v2}, Lcom/tencent/liteav/audio/impl/route/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/liteav/audio/impl/route/a$a;->b:Lcom/tencent/liteav/audio/impl/route/a$a;

    .line 10
    new-instance v0, Lcom/tencent/liteav/audio/impl/route/a$a;

    const/4 v3, 0x2

    const-string v4, "MEDIA_PLAY_AND_RECORD"

    invoke-direct {v0, v4, v3}, Lcom/tencent/liteav/audio/impl/route/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/liteav/audio/impl/route/a$a;->c:Lcom/tencent/liteav/audio/impl/route/a$a;

    .line 11
    new-instance v0, Lcom/tencent/liteav/audio/impl/route/a$a;

    const/4 v4, 0x3

    const-string v5, "MEDIA_PLAYBACK"

    invoke-direct {v0, v5, v4}, Lcom/tencent/liteav/audio/impl/route/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/liteav/audio/impl/route/a$a;->d:Lcom/tencent/liteav/audio/impl/route/a$a;

    .line 12
    new-instance v0, Lcom/tencent/liteav/audio/impl/route/a$a;

    const/4 v5, 0x4

    const-string v6, "VOICE_PLAYBACK"

    invoke-direct {v0, v6, v5}, Lcom/tencent/liteav/audio/impl/route/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/liteav/audio/impl/route/a$a;->e:Lcom/tencent/liteav/audio/impl/route/a$a;

    .line 13
    new-instance v0, Lcom/tencent/liteav/audio/impl/route/a$a;

    const/4 v6, 0x5

    const-string v7, "IDLE"

    invoke-direct {v0, v7, v6}, Lcom/tencent/liteav/audio/impl/route/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/liteav/audio/impl/route/a$a;->f:Lcom/tencent/liteav/audio/impl/route/a$a;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/tencent/liteav/audio/impl/route/a$a;

    .line 7
    sget-object v7, Lcom/tencent/liteav/audio/impl/route/a$a;->a:Lcom/tencent/liteav/audio/impl/route/a$a;

    aput-object v7, v0, v1

    sget-object v1, Lcom/tencent/liteav/audio/impl/route/a$a;->b:Lcom/tencent/liteav/audio/impl/route/a$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/liteav/audio/impl/route/a$a;->c:Lcom/tencent/liteav/audio/impl/route/a$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/liteav/audio/impl/route/a$a;->d:Lcom/tencent/liteav/audio/impl/route/a$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/liteav/audio/impl/route/a$a;->e:Lcom/tencent/liteav/audio/impl/route/a$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tencent/liteav/audio/impl/route/a$a;->f:Lcom/tencent/liteav/audio/impl/route/a$a;

    aput-object v1, v0, v6

    sput-object v0, Lcom/tencent/liteav/audio/impl/route/a$a;->g:[Lcom/tencent/liteav/audio/impl/route/a$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/liteav/audio/impl/route/a$a;
    .locals 1

    .line 7
    const-class v0, Lcom/tencent/liteav/audio/impl/route/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/liteav/audio/impl/route/a$a;

    return-object p0
.end method

.method public static values()[Lcom/tencent/liteav/audio/impl/route/a$a;
    .locals 1

    .line 7
    sget-object v0, Lcom/tencent/liteav/audio/impl/route/a$a;->g:[Lcom/tencent/liteav/audio/impl/route/a$a;

    invoke-virtual {v0}, [Lcom/tencent/liteav/audio/impl/route/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/liteav/audio/impl/route/a$a;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 16
    sget-object v0, Lcom/tencent/liteav/audio/impl/route/a$a;->c:Lcom/tencent/liteav/audio/impl/route/a$a;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/tencent/liteav/audio/impl/route/a$a;->d:Lcom/tencent/liteav/audio/impl/route/a$a;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public b()Z
    .locals 1

    .line 20
    sget-object v0, Lcom/tencent/liteav/audio/impl/route/a$a;->b:Lcom/tencent/liteav/audio/impl/route/a$a;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/tencent/liteav/audio/impl/route/a$a;->e:Lcom/tencent/liteav/audio/impl/route/a$a;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
