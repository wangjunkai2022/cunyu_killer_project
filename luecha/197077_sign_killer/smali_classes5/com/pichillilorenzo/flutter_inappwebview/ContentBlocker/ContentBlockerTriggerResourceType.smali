.class public final enum Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;
.super Ljava/lang/Enum;
.source "ContentBlockerTriggerResourceType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;

.field public static final enum DOCUMENT:Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;

.field public static final enum FONT:Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;

.field public static final enum IMAGE:Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;

.field public static final enum MEDIA:Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;

.field public static final enum POPUP:Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;

.field public static final enum RAW:Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;

.field public static final enum SCRIPT:Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;

.field public static final enum STYLE_SHEET:Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;

.field public static final enum SVG_DOCUMENT:Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 4
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;

    const/4 v1, 0x0

    const-string v2, "DOCUMENT"

    const-string v3, "document"

    invoke-direct {v0, v2, v1, v3}, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;->DOCUMENT:Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;

    .line 5
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;

    const/4 v2, 0x1

    const-string v3, "IMAGE"

    const-string v4, "image"

    invoke-direct {v0, v3, v2, v4}, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;->IMAGE:Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;

    .line 6
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;

    const/4 v3, 0x2

    const-string v4, "STYLE_SHEET"

    const-string v5, "style-sheet"

    invoke-direct {v0, v4, v3, v5}, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;->STYLE_SHEET:Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;

    .line 7
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;

    const/4 v4, 0x3

    const-string v5, "SCRIPT"

    const-string v6, "script"

    invoke-direct {v0, v5, v4, v6}, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;->SCRIPT:Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;

    .line 8
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;

    const/4 v5, 0x4

    const-string v6, "FONT"

    const-string v7, "font"

    invoke-direct {v0, v6, v5, v7}, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;->FONT:Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;

    .line 9
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;

    const/4 v6, 0x5

    const-string v7, "SVG_DOCUMENT"

    const-string v8, "svg-document"

    invoke-direct {v0, v7, v6, v8}, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;->SVG_DOCUMENT:Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;

    .line 10
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;

    const/4 v7, 0x6

    const-string v8, "MEDIA"

    const-string v9, "media"

    invoke-direct {v0, v8, v7, v9}, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;->MEDIA:Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;

    .line 11
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;

    const/4 v8, 0x7

    const-string v9, "POPUP"

    const-string v10, "popup"

    invoke-direct {v0, v9, v8, v10}, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;->POPUP:Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;

    .line 12
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;

    const/16 v9, 0x8

    const-string v10, "RAW"

    const-string v11, "raw"

    invoke-direct {v0, v10, v9, v11}, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;->RAW:Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;

    .line 3
    sget-object v10, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;->DOCUMENT:Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;

    aput-object v10, v0, v1

    sget-object v1, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;->IMAGE:Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;->STYLE_SHEET:Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;->SCRIPT:Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;->FONT:Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;->SVG_DOCUMENT:Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;->MEDIA:Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;->POPUP:Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;->RAW:Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;

    aput-object v1, v0, v9

    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;->$VALUES:[Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;

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

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput-object p3, p0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;->value:Ljava/lang/String;

    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;
    .locals 5

    .line 25
    invoke-static {}, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;->values()[Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 26
    iget-object v4, v3, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;->value:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 29
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

.method public static valueOf(Ljava/lang/String;)Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;
    .locals 1

    .line 3
    const-class v0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;

    return-object p0
.end method

.method public static values()[Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;
    .locals 1

    .line 3
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;->$VALUES:[Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;

    invoke-virtual {v0}, [Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;

    return-object v0
.end method


# virtual methods
.method public equalsValue(Ljava/lang/String;)Z
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;->value:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;->value:Ljava/lang/String;

    return-object v0
.end method
