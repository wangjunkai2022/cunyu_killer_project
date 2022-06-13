.class public final enum Lcom/tencent/thumbplayer/h/b/f$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/thumbplayer/h/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/thumbplayer/h/b/f$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tencent/thumbplayer/h/b/f$b;

.field public static final enum b:Lcom/tencent/thumbplayer/h/b/f$b;

.field public static final enum c:Lcom/tencent/thumbplayer/h/b/f$b;

.field public static final enum d:Lcom/tencent/thumbplayer/h/b/f$b;

.field public static final enum e:Lcom/tencent/thumbplayer/h/b/f$b;

.field private static final synthetic f:[Lcom/tencent/thumbplayer/h/b/f$b;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/tencent/thumbplayer/h/b/f$b;

    const/4 v1, 0x0

    const-string v2, "Started"

    invoke-direct {v0, v2, v1}, Lcom/tencent/thumbplayer/h/b/f$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/thumbplayer/h/b/f$b;->a:Lcom/tencent/thumbplayer/h/b/f$b;

    new-instance v0, Lcom/tencent/thumbplayer/h/b/f$b;

    const/4 v2, 0x1

    const-string v3, "DequeueIn"

    invoke-direct {v0, v3, v2}, Lcom/tencent/thumbplayer/h/b/f$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/thumbplayer/h/b/f$b;->b:Lcom/tencent/thumbplayer/h/b/f$b;

    new-instance v0, Lcom/tencent/thumbplayer/h/b/f$b;

    const/4 v3, 0x2

    const-string v4, "QueueIn"

    invoke-direct {v0, v4, v3}, Lcom/tencent/thumbplayer/h/b/f$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/thumbplayer/h/b/f$b;->c:Lcom/tencent/thumbplayer/h/b/f$b;

    new-instance v0, Lcom/tencent/thumbplayer/h/b/f$b;

    const/4 v4, 0x3

    const-string v5, "DequeueOut"

    invoke-direct {v0, v5, v4}, Lcom/tencent/thumbplayer/h/b/f$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/thumbplayer/h/b/f$b;->d:Lcom/tencent/thumbplayer/h/b/f$b;

    new-instance v0, Lcom/tencent/thumbplayer/h/b/f$b;

    const/4 v5, 0x4

    const-string v6, "ReleaseOut"

    invoke-direct {v0, v6, v5}, Lcom/tencent/thumbplayer/h/b/f$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/thumbplayer/h/b/f$b;->e:Lcom/tencent/thumbplayer/h/b/f$b;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/tencent/thumbplayer/h/b/f$b;

    sget-object v6, Lcom/tencent/thumbplayer/h/b/f$b;->a:Lcom/tencent/thumbplayer/h/b/f$b;

    aput-object v6, v0, v1

    sget-object v1, Lcom/tencent/thumbplayer/h/b/f$b;->b:Lcom/tencent/thumbplayer/h/b/f$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/thumbplayer/h/b/f$b;->c:Lcom/tencent/thumbplayer/h/b/f$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/thumbplayer/h/b/f$b;->d:Lcom/tencent/thumbplayer/h/b/f$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/thumbplayer/h/b/f$b;->e:Lcom/tencent/thumbplayer/h/b/f$b;

    aput-object v1, v0, v5

    sput-object v0, Lcom/tencent/thumbplayer/h/b/f$b;->f:[Lcom/tencent/thumbplayer/h/b/f$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/thumbplayer/h/b/f$b;
    .locals 1

    const-class v0, Lcom/tencent/thumbplayer/h/b/f$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/thumbplayer/h/b/f$b;

    return-object p0
.end method

.method public static values()[Lcom/tencent/thumbplayer/h/b/f$b;
    .locals 1

    sget-object v0, Lcom/tencent/thumbplayer/h/b/f$b;->f:[Lcom/tencent/thumbplayer/h/b/f$b;

    invoke-virtual {v0}, [Lcom/tencent/thumbplayer/h/b/f$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/thumbplayer/h/b/f$b;

    return-object v0
.end method
