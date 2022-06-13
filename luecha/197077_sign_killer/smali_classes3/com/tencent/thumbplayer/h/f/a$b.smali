.class public final enum Lcom/tencent/thumbplayer/h/f/a$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/thumbplayer/h/f/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/thumbplayer/h/f/a$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tencent/thumbplayer/h/f/a$b;

.field public static final enum b:Lcom/tencent/thumbplayer/h/f/a$b;

.field public static final enum c:Lcom/tencent/thumbplayer/h/f/a$b;

.field public static final enum d:Lcom/tencent/thumbplayer/h/f/a$b;

.field private static final synthetic e:[Lcom/tencent/thumbplayer/h/f/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/tencent/thumbplayer/h/f/a$b;

    const/4 v1, 0x0

    const-string v2, "KEEP_CODEC_RESULT_NO"

    invoke-direct {v0, v2, v1}, Lcom/tencent/thumbplayer/h/f/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/thumbplayer/h/f/a$b;->a:Lcom/tencent/thumbplayer/h/f/a$b;

    new-instance v0, Lcom/tencent/thumbplayer/h/f/a$b;

    const/4 v2, 0x1

    const-string v3, "KEEP_CODEC_RESULT_YES_WITH_FLUSH"

    invoke-direct {v0, v3, v2}, Lcom/tencent/thumbplayer/h/f/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/thumbplayer/h/f/a$b;->b:Lcom/tencent/thumbplayer/h/f/a$b;

    new-instance v0, Lcom/tencent/thumbplayer/h/f/a$b;

    const/4 v3, 0x2

    const-string v4, "KEEP_CODEC_RESULT_YES_WITH_RECONFIGURATION"

    invoke-direct {v0, v4, v3}, Lcom/tencent/thumbplayer/h/f/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/thumbplayer/h/f/a$b;->c:Lcom/tencent/thumbplayer/h/f/a$b;

    new-instance v0, Lcom/tencent/thumbplayer/h/f/a$b;

    const/4 v4, 0x3

    const-string v5, "KEEP_CODEC_RESULT_YES_WITHOUT_RECONFIGURATION"

    invoke-direct {v0, v5, v4}, Lcom/tencent/thumbplayer/h/f/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/thumbplayer/h/f/a$b;->d:Lcom/tencent/thumbplayer/h/f/a$b;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/tencent/thumbplayer/h/f/a$b;

    sget-object v5, Lcom/tencent/thumbplayer/h/f/a$b;->a:Lcom/tencent/thumbplayer/h/f/a$b;

    aput-object v5, v0, v1

    sget-object v1, Lcom/tencent/thumbplayer/h/f/a$b;->b:Lcom/tencent/thumbplayer/h/f/a$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/thumbplayer/h/f/a$b;->c:Lcom/tencent/thumbplayer/h/f/a$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/thumbplayer/h/f/a$b;->d:Lcom/tencent/thumbplayer/h/f/a$b;

    aput-object v1, v0, v4

    sput-object v0, Lcom/tencent/thumbplayer/h/f/a$b;->e:[Lcom/tencent/thumbplayer/h/f/a$b;

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

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/thumbplayer/h/f/a$b;
    .locals 1

    const-class v0, Lcom/tencent/thumbplayer/h/f/a$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/thumbplayer/h/f/a$b;

    return-object p0
.end method

.method public static values()[Lcom/tencent/thumbplayer/h/f/a$b;
    .locals 1

    sget-object v0, Lcom/tencent/thumbplayer/h/f/a$b;->e:[Lcom/tencent/thumbplayer/h/f/a$b;

    invoke-virtual {v0}, [Lcom/tencent/thumbplayer/h/f/a$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/thumbplayer/h/f/a$b;

    return-object v0
.end method
