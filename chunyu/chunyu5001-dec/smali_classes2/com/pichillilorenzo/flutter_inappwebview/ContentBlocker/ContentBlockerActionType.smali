.class public final enum Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerActionType;
.super Ljava/lang/Enum;
.source "ContentBlockerActionType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerActionType;

.field public static final enum BLOCK:Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerActionType;

.field public static final enum CSS_DISPLAY_NONE:Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerActionType;

.field public static final enum MAKE_HTTPS:Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerActionType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 4
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerActionType;

    const/4 v1, 0x0

    const-string v2, "BLOCK"

    const-string v3, "block"

    invoke-direct {v0, v2, v1, v3}, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerActionType;->BLOCK:Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerActionType;

    .line 5
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerActionType;

    const/4 v2, 0x1

    const-string v3, "CSS_DISPLAY_NONE"

    const-string v4, "css-display-none"

    invoke-direct {v0, v3, v2, v4}, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerActionType;->CSS_DISPLAY_NONE:Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerActionType;

    .line 6
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerActionType;

    const/4 v3, 0x2

    const-string v4, "MAKE_HTTPS"

    const-string v5, "make-https"

    invoke-direct {v0, v4, v3, v5}, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerActionType;->MAKE_HTTPS:Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerActionType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerActionType;

    .line 3
    sget-object v4, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerActionType;->BLOCK:Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerActionType;

    aput-object v4, v0, v1

    sget-object v1, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerActionType;->CSS_DISPLAY_NONE:Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerActionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerActionType;->MAKE_HTTPS:Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerActionType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerActionType;->$VALUES:[Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerActionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput-object p3, p0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerActionType;->value:Ljava/lang/String;

    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerActionType;
    .locals 5

    .line 19
    invoke-static {}, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerActionType;->values()[Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerActionType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 20
    iget-object v4, v3, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerActionType;->value:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 23
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No enum constant: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerActionType;
    .locals 1

    .line 3
    const-class v0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerActionType;

    return-object p0
.end method

.method public static values()[Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerActionType;
    .locals 1

    .line 3
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerActionType;->$VALUES:[Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerActionType;

    invoke-virtual {v0}, [Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerActionType;

    return-object v0
.end method


# virtual methods
.method public equalsValue(Ljava/lang/String;)Z
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerActionType;->value:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerActionType;->value:Ljava/lang/String;

    return-object v0
.end method
