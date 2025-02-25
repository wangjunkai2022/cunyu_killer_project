.class public final enum Lcom/tencent/thumbplayer/h/b$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/thumbplayer/h/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/thumbplayer/h/b$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tencent/thumbplayer/h/b$b;

.field public static final enum b:Lcom/tencent/thumbplayer/h/b$b;

.field private static final synthetic c:[Lcom/tencent/thumbplayer/h/b$b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/tencent/thumbplayer/h/b$b;

    const/4 v1, 0x0

    const-string v2, "CreateByName"

    invoke-direct {v0, v2, v1}, Lcom/tencent/thumbplayer/h/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/thumbplayer/h/b$b;->a:Lcom/tencent/thumbplayer/h/b$b;

    new-instance v0, Lcom/tencent/thumbplayer/h/b$b;

    const/4 v2, 0x1

    const-string v3, "CreateByType"

    invoke-direct {v0, v3, v2}, Lcom/tencent/thumbplayer/h/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/thumbplayer/h/b$b;->b:Lcom/tencent/thumbplayer/h/b$b;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/tencent/thumbplayer/h/b$b;

    sget-object v3, Lcom/tencent/thumbplayer/h/b$b;->a:Lcom/tencent/thumbplayer/h/b$b;

    aput-object v3, v0, v1

    sget-object v1, Lcom/tencent/thumbplayer/h/b$b;->b:Lcom/tencent/thumbplayer/h/b$b;

    aput-object v1, v0, v2

    sput-object v0, Lcom/tencent/thumbplayer/h/b$b;->c:[Lcom/tencent/thumbplayer/h/b$b;

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

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/thumbplayer/h/b$b;
    .locals 1

    const-class v0, Lcom/tencent/thumbplayer/h/b$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/thumbplayer/h/b$b;

    return-object p0
.end method

.method public static values()[Lcom/tencent/thumbplayer/h/b$b;
    .locals 1

    sget-object v0, Lcom/tencent/thumbplayer/h/b$b;->c:[Lcom/tencent/thumbplayer/h/b$b;

    invoke-virtual {v0}, [Lcom/tencent/thumbplayer/h/b$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/thumbplayer/h/b$b;

    return-object v0
.end method
