.class public final enum Lcom/afollestad/materialdialogs/WhichButton;
.super Ljava/lang/Enum;
.source "WhichButton.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afollestad/materialdialogs/WhichButton$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/afollestad/materialdialogs/WhichButton;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0008\u0086\u0001\u0018\u0000 \n2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\nB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/afollestad/materialdialogs/WhichButton;",
        "",
        "index",
        "",
        "(Ljava/lang/String;II)V",
        "getIndex",
        "()I",
        "POSITIVE",
        "NEGATIVE",
        "NEUTRAL",
        "Companion",
        "core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/afollestad/materialdialogs/WhichButton;

.field public static final Companion:Lcom/afollestad/materialdialogs/WhichButton$Companion;

.field public static final enum NEGATIVE:Lcom/afollestad/materialdialogs/WhichButton;

.field public static final enum NEUTRAL:Lcom/afollestad/materialdialogs/WhichButton;

.field public static final enum POSITIVE:Lcom/afollestad/materialdialogs/WhichButton;


# instance fields
.field private final index:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/afollestad/materialdialogs/WhichButton;

    new-instance v1, Lcom/afollestad/materialdialogs/WhichButton;

    const-string v2, "POSITIVE"

    const/4 v3, 0x0

    .line 23
    invoke-direct {v1, v2, v3, v3}, Lcom/afollestad/materialdialogs/WhichButton;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/afollestad/materialdialogs/WhichButton;->POSITIVE:Lcom/afollestad/materialdialogs/WhichButton;

    aput-object v1, v0, v3

    new-instance v1, Lcom/afollestad/materialdialogs/WhichButton;

    const-string v2, "NEGATIVE"

    const/4 v3, 0x1

    .line 24
    invoke-direct {v1, v2, v3, v3}, Lcom/afollestad/materialdialogs/WhichButton;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/afollestad/materialdialogs/WhichButton;->NEGATIVE:Lcom/afollestad/materialdialogs/WhichButton;

    aput-object v1, v0, v3

    new-instance v1, Lcom/afollestad/materialdialogs/WhichButton;

    const-string v2, "NEUTRAL"

    const/4 v3, 0x2

    .line 25
    invoke-direct {v1, v2, v3, v3}, Lcom/afollestad/materialdialogs/WhichButton;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/afollestad/materialdialogs/WhichButton;->NEUTRAL:Lcom/afollestad/materialdialogs/WhichButton;

    aput-object v1, v0, v3

    sput-object v0, Lcom/afollestad/materialdialogs/WhichButton;->$VALUES:[Lcom/afollestad/materialdialogs/WhichButton;

    new-instance v0, Lcom/afollestad/materialdialogs/WhichButton$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/WhichButton$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/afollestad/materialdialogs/WhichButton;->Companion:Lcom/afollestad/materialdialogs/WhichButton$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/afollestad/materialdialogs/WhichButton;->index:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/afollestad/materialdialogs/WhichButton;
    .locals 1

    const-class v0, Lcom/afollestad/materialdialogs/WhichButton;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/afollestad/materialdialogs/WhichButton;

    return-object p0
.end method

.method public static values()[Lcom/afollestad/materialdialogs/WhichButton;
    .locals 1

    sget-object v0, Lcom/afollestad/materialdialogs/WhichButton;->$VALUES:[Lcom/afollestad/materialdialogs/WhichButton;

    invoke-virtual {v0}, [Lcom/afollestad/materialdialogs/WhichButton;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/afollestad/materialdialogs/WhichButton;

    return-object v0
.end method


# virtual methods
.method public final getIndex()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/afollestad/materialdialogs/WhichButton;->index:I

    return v0
.end method
