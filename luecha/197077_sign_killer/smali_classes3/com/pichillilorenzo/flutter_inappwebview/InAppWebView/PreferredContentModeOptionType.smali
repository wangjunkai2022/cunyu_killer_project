.class public final enum Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/PreferredContentModeOptionType;
.super Ljava/lang/Enum;
.source "PreferredContentModeOptionType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/PreferredContentModeOptionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/PreferredContentModeOptionType;

.field public static final enum DESKTOP:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/PreferredContentModeOptionType;

.field public static final enum MOBILE:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/PreferredContentModeOptionType;

.field public static final enum RECOMMENDED:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/PreferredContentModeOptionType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 4
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/PreferredContentModeOptionType;

    const/4 v1, 0x0

    const-string v2, "RECOMMENDED"

    invoke-direct {v0, v2, v1, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/PreferredContentModeOptionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/PreferredContentModeOptionType;->RECOMMENDED:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/PreferredContentModeOptionType;

    .line 5
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/PreferredContentModeOptionType;

    const/4 v2, 0x1

    const-string v3, "MOBILE"

    invoke-direct {v0, v3, v2, v2}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/PreferredContentModeOptionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/PreferredContentModeOptionType;->MOBILE:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/PreferredContentModeOptionType;

    .line 6
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/PreferredContentModeOptionType;

    const/4 v3, 0x2

    const-string v4, "DESKTOP"

    invoke-direct {v0, v4, v3, v3}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/PreferredContentModeOptionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/PreferredContentModeOptionType;->DESKTOP:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/PreferredContentModeOptionType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/PreferredContentModeOptionType;

    .line 3
    sget-object v4, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/PreferredContentModeOptionType;->RECOMMENDED:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/PreferredContentModeOptionType;

    aput-object v4, v0, v1

    sget-object v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/PreferredContentModeOptionType;->MOBILE:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/PreferredContentModeOptionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/PreferredContentModeOptionType;->DESKTOP:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/PreferredContentModeOptionType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/PreferredContentModeOptionType;->$VALUES:[Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/PreferredContentModeOptionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput p3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/PreferredContentModeOptionType;->value:I

    return-void
.end method

.method public static fromValue(I)Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/PreferredContentModeOptionType;
    .locals 5

    .line 19
    invoke-static {}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/PreferredContentModeOptionType;->values()[Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/PreferredContentModeOptionType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 20
    invoke-virtual {v3}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/PreferredContentModeOptionType;->toValue()I

    move-result v4

    if-ne p0, v4, :cond_0

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

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/PreferredContentModeOptionType;
    .locals 1

    .line 3
    const-class v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/PreferredContentModeOptionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/PreferredContentModeOptionType;

    return-object p0
.end method

.method public static values()[Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/PreferredContentModeOptionType;
    .locals 1

    .line 3
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/PreferredContentModeOptionType;->$VALUES:[Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/PreferredContentModeOptionType;

    invoke-virtual {v0}, [Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/PreferredContentModeOptionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/PreferredContentModeOptionType;

    return-object v0
.end method


# virtual methods
.method public equalsValue(I)Z
    .locals 1

    .line 15
    iget v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/PreferredContentModeOptionType;->value:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toValue()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/PreferredContentModeOptionType;->value:I

    return v0
.end method
