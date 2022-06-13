.class final enum Lio/flutter/view/AccessibilityBridge$Flag;
.super Ljava/lang/Enum;
.source "AccessibilityBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/view/AccessibilityBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Flag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/flutter/view/AccessibilityBridge$Flag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/flutter/view/AccessibilityBridge$Flag;

.field public static final enum HAS_CHECKED_STATE:Lio/flutter/view/AccessibilityBridge$Flag;

.field public static final enum HAS_ENABLED_STATE:Lio/flutter/view/AccessibilityBridge$Flag;

.field public static final enum HAS_IMPLICIT_SCROLLING:Lio/flutter/view/AccessibilityBridge$Flag;

.field public static final enum HAS_TOGGLED_STATE:Lio/flutter/view/AccessibilityBridge$Flag;

.field public static final enum IS_BUTTON:Lio/flutter/view/AccessibilityBridge$Flag;

.field public static final enum IS_CHECKED:Lio/flutter/view/AccessibilityBridge$Flag;

.field public static final enum IS_ENABLED:Lio/flutter/view/AccessibilityBridge$Flag;

.field public static final enum IS_FOCUSABLE:Lio/flutter/view/AccessibilityBridge$Flag;

.field public static final enum IS_FOCUSED:Lio/flutter/view/AccessibilityBridge$Flag;

.field public static final enum IS_HEADER:Lio/flutter/view/AccessibilityBridge$Flag;

.field public static final enum IS_HIDDEN:Lio/flutter/view/AccessibilityBridge$Flag;

.field public static final enum IS_IMAGE:Lio/flutter/view/AccessibilityBridge$Flag;

.field public static final enum IS_IN_MUTUALLY_EXCLUSIVE_GROUP:Lio/flutter/view/AccessibilityBridge$Flag;

.field public static final enum IS_KEYBOARD_KEY:Lio/flutter/view/AccessibilityBridge$Flag;

.field public static final enum IS_LINK:Lio/flutter/view/AccessibilityBridge$Flag;

.field public static final enum IS_LIVE_REGION:Lio/flutter/view/AccessibilityBridge$Flag;

.field public static final enum IS_OBSCURED:Lio/flutter/view/AccessibilityBridge$Flag;

.field public static final enum IS_READ_ONLY:Lio/flutter/view/AccessibilityBridge$Flag;

.field public static final enum IS_SELECTED:Lio/flutter/view/AccessibilityBridge$Flag;

.field public static final enum IS_SLIDER:Lio/flutter/view/AccessibilityBridge$Flag;

.field public static final enum IS_TEXT_FIELD:Lio/flutter/view/AccessibilityBridge$Flag;

.field public static final enum IS_TOGGLED:Lio/flutter/view/AccessibilityBridge$Flag;

.field public static final enum NAMES_ROUTE:Lio/flutter/view/AccessibilityBridge$Flag;

.field public static final enum SCOPES_ROUTE:Lio/flutter/view/AccessibilityBridge$Flag;


# instance fields
.field final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 2056
    new-instance v0, Lio/flutter/view/AccessibilityBridge$Flag;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "HAS_CHECKED_STATE"

    invoke-direct {v0, v3, v1, v2}, Lio/flutter/view/AccessibilityBridge$Flag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$Flag;->HAS_CHECKED_STATE:Lio/flutter/view/AccessibilityBridge$Flag;

    .line 2057
    new-instance v0, Lio/flutter/view/AccessibilityBridge$Flag;

    const/4 v3, 0x2

    const-string v4, "IS_CHECKED"

    invoke-direct {v0, v4, v2, v3}, Lio/flutter/view/AccessibilityBridge$Flag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$Flag;->IS_CHECKED:Lio/flutter/view/AccessibilityBridge$Flag;

    .line 2058
    new-instance v0, Lio/flutter/view/AccessibilityBridge$Flag;

    const/4 v4, 0x4

    const-string v5, "IS_SELECTED"

    invoke-direct {v0, v5, v3, v4}, Lio/flutter/view/AccessibilityBridge$Flag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$Flag;->IS_SELECTED:Lio/flutter/view/AccessibilityBridge$Flag;

    .line 2059
    new-instance v0, Lio/flutter/view/AccessibilityBridge$Flag;

    const/4 v5, 0x3

    const/16 v6, 0x8

    const-string v7, "IS_BUTTON"

    invoke-direct {v0, v7, v5, v6}, Lio/flutter/view/AccessibilityBridge$Flag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$Flag;->IS_BUTTON:Lio/flutter/view/AccessibilityBridge$Flag;

    .line 2060
    new-instance v0, Lio/flutter/view/AccessibilityBridge$Flag;

    const/16 v7, 0x10

    const-string v8, "IS_TEXT_FIELD"

    invoke-direct {v0, v8, v4, v7}, Lio/flutter/view/AccessibilityBridge$Flag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$Flag;->IS_TEXT_FIELD:Lio/flutter/view/AccessibilityBridge$Flag;

    .line 2061
    new-instance v0, Lio/flutter/view/AccessibilityBridge$Flag;

    const/4 v8, 0x5

    const-string v9, "IS_FOCUSED"

    const/16 v10, 0x20

    invoke-direct {v0, v9, v8, v10}, Lio/flutter/view/AccessibilityBridge$Flag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$Flag;->IS_FOCUSED:Lio/flutter/view/AccessibilityBridge$Flag;

    .line 2062
    new-instance v0, Lio/flutter/view/AccessibilityBridge$Flag;

    const/4 v9, 0x6

    const-string v10, "HAS_ENABLED_STATE"

    const/16 v11, 0x40

    invoke-direct {v0, v10, v9, v11}, Lio/flutter/view/AccessibilityBridge$Flag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$Flag;->HAS_ENABLED_STATE:Lio/flutter/view/AccessibilityBridge$Flag;

    .line 2063
    new-instance v0, Lio/flutter/view/AccessibilityBridge$Flag;

    const/4 v10, 0x7

    const-string v11, "IS_ENABLED"

    const/16 v12, 0x80

    invoke-direct {v0, v11, v10, v12}, Lio/flutter/view/AccessibilityBridge$Flag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$Flag;->IS_ENABLED:Lio/flutter/view/AccessibilityBridge$Flag;

    .line 2064
    new-instance v0, Lio/flutter/view/AccessibilityBridge$Flag;

    const-string v11, "IS_IN_MUTUALLY_EXCLUSIVE_GROUP"

    const/16 v12, 0x100

    invoke-direct {v0, v11, v6, v12}, Lio/flutter/view/AccessibilityBridge$Flag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$Flag;->IS_IN_MUTUALLY_EXCLUSIVE_GROUP:Lio/flutter/view/AccessibilityBridge$Flag;

    .line 2065
    new-instance v0, Lio/flutter/view/AccessibilityBridge$Flag;

    const/16 v11, 0x9

    const-string v12, "IS_HEADER"

    const/16 v13, 0x200

    invoke-direct {v0, v12, v11, v13}, Lio/flutter/view/AccessibilityBridge$Flag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$Flag;->IS_HEADER:Lio/flutter/view/AccessibilityBridge$Flag;

    .line 2066
    new-instance v0, Lio/flutter/view/AccessibilityBridge$Flag;

    const/16 v12, 0xa

    const-string v13, "IS_OBSCURED"

    const/16 v14, 0x400

    invoke-direct {v0, v13, v12, v14}, Lio/flutter/view/AccessibilityBridge$Flag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$Flag;->IS_OBSCURED:Lio/flutter/view/AccessibilityBridge$Flag;

    .line 2067
    new-instance v0, Lio/flutter/view/AccessibilityBridge$Flag;

    const/16 v13, 0xb

    const-string v14, "SCOPES_ROUTE"

    const/16 v15, 0x800

    invoke-direct {v0, v14, v13, v15}, Lio/flutter/view/AccessibilityBridge$Flag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$Flag;->SCOPES_ROUTE:Lio/flutter/view/AccessibilityBridge$Flag;

    .line 2068
    new-instance v0, Lio/flutter/view/AccessibilityBridge$Flag;

    const/16 v14, 0xc

    const-string v15, "NAMES_ROUTE"

    const/16 v13, 0x1000

    invoke-direct {v0, v15, v14, v13}, Lio/flutter/view/AccessibilityBridge$Flag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$Flag;->NAMES_ROUTE:Lio/flutter/view/AccessibilityBridge$Flag;

    .line 2069
    new-instance v0, Lio/flutter/view/AccessibilityBridge$Flag;

    const/16 v13, 0xd

    const-string v15, "IS_HIDDEN"

    const/16 v14, 0x2000

    invoke-direct {v0, v15, v13, v14}, Lio/flutter/view/AccessibilityBridge$Flag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$Flag;->IS_HIDDEN:Lio/flutter/view/AccessibilityBridge$Flag;

    .line 2070
    new-instance v0, Lio/flutter/view/AccessibilityBridge$Flag;

    const-string v14, "IS_IMAGE"

    const/16 v15, 0xe

    const/16 v13, 0x4000

    invoke-direct {v0, v14, v15, v13}, Lio/flutter/view/AccessibilityBridge$Flag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$Flag;->IS_IMAGE:Lio/flutter/view/AccessibilityBridge$Flag;

    .line 2071
    new-instance v0, Lio/flutter/view/AccessibilityBridge$Flag;

    const-string v13, "IS_LIVE_REGION"

    const/16 v14, 0xf

    const v15, 0x8000

    invoke-direct {v0, v13, v14, v15}, Lio/flutter/view/AccessibilityBridge$Flag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$Flag;->IS_LIVE_REGION:Lio/flutter/view/AccessibilityBridge$Flag;

    .line 2072
    new-instance v0, Lio/flutter/view/AccessibilityBridge$Flag;

    const-string v13, "HAS_TOGGLED_STATE"

    const/high16 v14, 0x10000

    invoke-direct {v0, v13, v7, v14}, Lio/flutter/view/AccessibilityBridge$Flag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$Flag;->HAS_TOGGLED_STATE:Lio/flutter/view/AccessibilityBridge$Flag;

    .line 2073
    new-instance v0, Lio/flutter/view/AccessibilityBridge$Flag;

    const-string v13, "IS_TOGGLED"

    const/16 v14, 0x11

    const/high16 v15, 0x20000

    invoke-direct {v0, v13, v14, v15}, Lio/flutter/view/AccessibilityBridge$Flag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$Flag;->IS_TOGGLED:Lio/flutter/view/AccessibilityBridge$Flag;

    .line 2074
    new-instance v0, Lio/flutter/view/AccessibilityBridge$Flag;

    const-string v13, "HAS_IMPLICIT_SCROLLING"

    const/16 v14, 0x12

    const/high16 v15, 0x40000

    invoke-direct {v0, v13, v14, v15}, Lio/flutter/view/AccessibilityBridge$Flag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$Flag;->HAS_IMPLICIT_SCROLLING:Lio/flutter/view/AccessibilityBridge$Flag;

    .line 2077
    new-instance v0, Lio/flutter/view/AccessibilityBridge$Flag;

    const-string v13, "IS_READ_ONLY"

    const/16 v14, 0x13

    const/high16 v15, 0x100000

    invoke-direct {v0, v13, v14, v15}, Lio/flutter/view/AccessibilityBridge$Flag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$Flag;->IS_READ_ONLY:Lio/flutter/view/AccessibilityBridge$Flag;

    .line 2078
    new-instance v0, Lio/flutter/view/AccessibilityBridge$Flag;

    const-string v13, "IS_FOCUSABLE"

    const/16 v14, 0x14

    const/high16 v15, 0x200000

    invoke-direct {v0, v13, v14, v15}, Lio/flutter/view/AccessibilityBridge$Flag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$Flag;->IS_FOCUSABLE:Lio/flutter/view/AccessibilityBridge$Flag;

    .line 2079
    new-instance v0, Lio/flutter/view/AccessibilityBridge$Flag;

    const-string v13, "IS_LINK"

    const/16 v14, 0x15

    const/high16 v15, 0x400000

    invoke-direct {v0, v13, v14, v15}, Lio/flutter/view/AccessibilityBridge$Flag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$Flag;->IS_LINK:Lio/flutter/view/AccessibilityBridge$Flag;

    .line 2080
    new-instance v0, Lio/flutter/view/AccessibilityBridge$Flag;

    const-string v13, "IS_SLIDER"

    const/16 v14, 0x16

    const/high16 v15, 0x800000

    invoke-direct {v0, v13, v14, v15}, Lio/flutter/view/AccessibilityBridge$Flag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$Flag;->IS_SLIDER:Lio/flutter/view/AccessibilityBridge$Flag;

    .line 2081
    new-instance v0, Lio/flutter/view/AccessibilityBridge$Flag;

    const-string v13, "IS_KEYBOARD_KEY"

    const/16 v14, 0x17

    const/high16 v15, 0x1000000

    invoke-direct {v0, v13, v14, v15}, Lio/flutter/view/AccessibilityBridge$Flag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$Flag;->IS_KEYBOARD_KEY:Lio/flutter/view/AccessibilityBridge$Flag;

    const/16 v0, 0x18

    new-array v0, v0, [Lio/flutter/view/AccessibilityBridge$Flag;

    .line 2055
    sget-object v13, Lio/flutter/view/AccessibilityBridge$Flag;->HAS_CHECKED_STATE:Lio/flutter/view/AccessibilityBridge$Flag;

    aput-object v13, v0, v1

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Flag;->IS_CHECKED:Lio/flutter/view/AccessibilityBridge$Flag;

    aput-object v1, v0, v2

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Flag;->IS_SELECTED:Lio/flutter/view/AccessibilityBridge$Flag;

    aput-object v1, v0, v3

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Flag;->IS_BUTTON:Lio/flutter/view/AccessibilityBridge$Flag;

    aput-object v1, v0, v5

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Flag;->IS_TEXT_FIELD:Lio/flutter/view/AccessibilityBridge$Flag;

    aput-object v1, v0, v4

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Flag;->IS_FOCUSED:Lio/flutter/view/AccessibilityBridge$Flag;

    aput-object v1, v0, v8

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Flag;->HAS_ENABLED_STATE:Lio/flutter/view/AccessibilityBridge$Flag;

    aput-object v1, v0, v9

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Flag;->IS_ENABLED:Lio/flutter/view/AccessibilityBridge$Flag;

    aput-object v1, v0, v10

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Flag;->IS_IN_MUTUALLY_EXCLUSIVE_GROUP:Lio/flutter/view/AccessibilityBridge$Flag;

    aput-object v1, v0, v6

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Flag;->IS_HEADER:Lio/flutter/view/AccessibilityBridge$Flag;

    aput-object v1, v0, v11

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Flag;->IS_OBSCURED:Lio/flutter/view/AccessibilityBridge$Flag;

    aput-object v1, v0, v12

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Flag;->SCOPES_ROUTE:Lio/flutter/view/AccessibilityBridge$Flag;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Flag;->NAMES_ROUTE:Lio/flutter/view/AccessibilityBridge$Flag;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Flag;->IS_HIDDEN:Lio/flutter/view/AccessibilityBridge$Flag;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Flag;->IS_IMAGE:Lio/flutter/view/AccessibilityBridge$Flag;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Flag;->IS_LIVE_REGION:Lio/flutter/view/AccessibilityBridge$Flag;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Flag;->HAS_TOGGLED_STATE:Lio/flutter/view/AccessibilityBridge$Flag;

    aput-object v1, v0, v7

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Flag;->IS_TOGGLED:Lio/flutter/view/AccessibilityBridge$Flag;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Flag;->HAS_IMPLICIT_SCROLLING:Lio/flutter/view/AccessibilityBridge$Flag;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Flag;->IS_READ_ONLY:Lio/flutter/view/AccessibilityBridge$Flag;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Flag;->IS_FOCUSABLE:Lio/flutter/view/AccessibilityBridge$Flag;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Flag;->IS_LINK:Lio/flutter/view/AccessibilityBridge$Flag;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Flag;->IS_SLIDER:Lio/flutter/view/AccessibilityBridge$Flag;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Flag;->IS_KEYBOARD_KEY:Lio/flutter/view/AccessibilityBridge$Flag;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sput-object v0, Lio/flutter/view/AccessibilityBridge$Flag;->$VALUES:[Lio/flutter/view/AccessibilityBridge$Flag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 2085
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2086
    iput p3, p0, Lio/flutter/view/AccessibilityBridge$Flag;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/flutter/view/AccessibilityBridge$Flag;
    .locals 1

    .line 2055
    const-class v0, Lio/flutter/view/AccessibilityBridge$Flag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/flutter/view/AccessibilityBridge$Flag;

    return-object p0
.end method

.method public static values()[Lio/flutter/view/AccessibilityBridge$Flag;
    .locals 1

    .line 2055
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Flag;->$VALUES:[Lio/flutter/view/AccessibilityBridge$Flag;

    invoke-virtual {v0}, [Lio/flutter/view/AccessibilityBridge$Flag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/flutter/view/AccessibilityBridge$Flag;

    return-object v0
.end method
