.class public final enum Lcom/tencent/thumbplayer/h/f/a$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/thumbplayer/h/f/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/thumbplayer/h/f/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tencent/thumbplayer/h/f/a$a;

.field public static final enum b:Lcom/tencent/thumbplayer/h/f/a$a;

.field public static final enum c:Lcom/tencent/thumbplayer/h/f/a$a;

.field private static final synthetic d:[Lcom/tencent/thumbplayer/h/f/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/tencent/thumbplayer/h/f/a$a;

    const/4 v1, 0x0

    const-string v2, "ADAPTATION_WORKAROUND_MODE_NEVER"

    invoke-direct {v0, v2, v1}, Lcom/tencent/thumbplayer/h/f/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/thumbplayer/h/f/a$a;->a:Lcom/tencent/thumbplayer/h/f/a$a;

    new-instance v0, Lcom/tencent/thumbplayer/h/f/a$a;

    const/4 v2, 0x1

    const-string v3, "ADAPTATION_WORKAROUND_MODE_SAME_RESOLUTION"

    invoke-direct {v0, v3, v2}, Lcom/tencent/thumbplayer/h/f/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/thumbplayer/h/f/a$a;->b:Lcom/tencent/thumbplayer/h/f/a$a;

    new-instance v0, Lcom/tencent/thumbplayer/h/f/a$a;

    const/4 v3, 0x2

    const-string v4, "ADAPTATION_WORKAROUND_MODE_ALWAYS"

    invoke-direct {v0, v4, v3}, Lcom/tencent/thumbplayer/h/f/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/thumbplayer/h/f/a$a;->c:Lcom/tencent/thumbplayer/h/f/a$a;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/tencent/thumbplayer/h/f/a$a;

    sget-object v4, Lcom/tencent/thumbplayer/h/f/a$a;->a:Lcom/tencent/thumbplayer/h/f/a$a;

    aput-object v4, v0, v1

    sget-object v1, Lcom/tencent/thumbplayer/h/f/a$a;->b:Lcom/tencent/thumbplayer/h/f/a$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/thumbplayer/h/f/a$a;->c:Lcom/tencent/thumbplayer/h/f/a$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/tencent/thumbplayer/h/f/a$a;->d:[Lcom/tencent/thumbplayer/h/f/a$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/thumbplayer/h/f/a$a;
    .locals 1

    const-class v0, Lcom/tencent/thumbplayer/h/f/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/thumbplayer/h/f/a$a;

    return-object p0
.end method

.method public static values()[Lcom/tencent/thumbplayer/h/f/a$a;
    .locals 1

    sget-object v0, Lcom/tencent/thumbplayer/h/f/a$a;->d:[Lcom/tencent/thumbplayer/h/f/a$a;

    invoke-virtual {v0}, [Lcom/tencent/thumbplayer/h/f/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/thumbplayer/h/f/a$a;

    return-object v0
.end method
