.class public final enum Lio/flutter/view/AccessibilityBridge$Action;
.super Ljava/lang/Enum;
.source "AccessibilityBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/view/AccessibilityBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/flutter/view/AccessibilityBridge$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/flutter/view/AccessibilityBridge$Action;

.field public static final enum COPY:Lio/flutter/view/AccessibilityBridge$Action;

.field public static final enum CUSTOM_ACTION:Lio/flutter/view/AccessibilityBridge$Action;

.field public static final enum CUT:Lio/flutter/view/AccessibilityBridge$Action;

.field public static final enum DECREASE:Lio/flutter/view/AccessibilityBridge$Action;

.field public static final enum DID_GAIN_ACCESSIBILITY_FOCUS:Lio/flutter/view/AccessibilityBridge$Action;

.field public static final enum DID_LOSE_ACCESSIBILITY_FOCUS:Lio/flutter/view/AccessibilityBridge$Action;

.field public static final enum DISMISS:Lio/flutter/view/AccessibilityBridge$Action;

.field public static final enum INCREASE:Lio/flutter/view/AccessibilityBridge$Action;

.field public static final enum LONG_PRESS:Lio/flutter/view/AccessibilityBridge$Action;

.field public static final enum MOVE_CURSOR_BACKWARD_BY_CHARACTER:Lio/flutter/view/AccessibilityBridge$Action;

.field public static final enum MOVE_CURSOR_BACKWARD_BY_WORD:Lio/flutter/view/AccessibilityBridge$Action;

.field public static final enum MOVE_CURSOR_FORWARD_BY_CHARACTER:Lio/flutter/view/AccessibilityBridge$Action;

.field public static final enum MOVE_CURSOR_FORWARD_BY_WORD:Lio/flutter/view/AccessibilityBridge$Action;

.field public static final enum PASTE:Lio/flutter/view/AccessibilityBridge$Action;

.field public static final enum SCROLL_DOWN:Lio/flutter/view/AccessibilityBridge$Action;

.field public static final enum SCROLL_LEFT:Lio/flutter/view/AccessibilityBridge$Action;

.field public static final enum SCROLL_RIGHT:Lio/flutter/view/AccessibilityBridge$Action;

.field public static final enum SCROLL_UP:Lio/flutter/view/AccessibilityBridge$Action;

.field public static final enum SET_SELECTION:Lio/flutter/view/AccessibilityBridge$Action;

.field public static final enum SET_TEXT:Lio/flutter/view/AccessibilityBridge$Action;

.field public static final enum SHOW_ON_SCREEN:Lio/flutter/view/AccessibilityBridge$Action;

.field public static final enum TAP:Lio/flutter/view/AccessibilityBridge$Action;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 2023
    new-instance v0, Lio/flutter/view/AccessibilityBridge$Action;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "TAP"

    invoke-direct {v0, v3, v1, v2}, Lio/flutter/view/AccessibilityBridge$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$Action;->TAP:Lio/flutter/view/AccessibilityBridge$Action;

    .line 2024
    new-instance v0, Lio/flutter/view/AccessibilityBridge$Action;

    const/4 v3, 0x2

    const-string v4, "LONG_PRESS"

    invoke-direct {v0, v4, v2, v3}, Lio/flutter/view/AccessibilityBridge$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$Action;->LONG_PRESS:Lio/flutter/view/AccessibilityBridge$Action;

    .line 2025
    new-instance v0, Lio/flutter/view/AccessibilityBridge$Action;

    const/4 v4, 0x4

    const-string v5, "SCROLL_LEFT"

    invoke-direct {v0, v5, v3, v4}, Lio/flutter/view/AccessibilityBridge$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_LEFT:Lio/flutter/view/AccessibilityBridge$Action;

    .line 2026
    new-instance v0, Lio/flutter/view/AccessibilityBridge$Action;

    const/4 v5, 0x3

    const/16 v6, 0x8

    const-string v7, "SCROLL_RIGHT"

    invoke-direct {v0, v7, v5, v6}, Lio/flutter/view/AccessibilityBridge$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_RIGHT:Lio/flutter/view/AccessibilityBridge$Action;

    .line 2027
    new-instance v0, Lio/flutter/view/AccessibilityBridge$Action;

    const/16 v7, 0x10

    const-string v8, "SCROLL_UP"

    invoke-direct {v0, v8, v4, v7}, Lio/flutter/view/AccessibilityBridge$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_UP:Lio/flutter/view/AccessibilityBridge$Action;

    .line 2028
    new-instance v0, Lio/flutter/view/AccessibilityBridge$Action;

    const/4 v8, 0x5

    const-string v9, "SCROLL_DOWN"

    const/16 v10, 0x20

    invoke-direct {v0, v9, v8, v10}, Lio/flutter/view/AccessibilityBridge$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_DOWN:Lio/flutter/view/AccessibilityBridge$Action;

    .line 2029
    new-instance v0, Lio/flutter/view/AccessibilityBridge$Action;

    const/4 v9, 0x6

    const-string v10, "INCREASE"

    const/16 v11, 0x40

    invoke-direct {v0, v10, v9, v11}, Lio/flutter/view/AccessibilityBridge$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$Action;->INCREASE:Lio/flutter/view/AccessibilityBridge$Action;

    .line 2030
    new-instance v0, Lio/flutter/view/AccessibilityBridge$Action;

    const/4 v10, 0x7

    const-string v11, "DECREASE"

    const/16 v12, 0x80

    invoke-direct {v0, v11, v10, v12}, Lio/flutter/view/AccessibilityBridge$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$Action;->DECREASE:Lio/flutter/view/AccessibilityBridge$Action;

    .line 2031
    new-instance v0, Lio/flutter/view/AccessibilityBridge$Action;

    const-string v11, "SHOW_ON_SCREEN"

    const/16 v12, 0x100

    invoke-direct {v0, v11, v6, v12}, Lio/flutter/view/AccessibilityBridge$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$Action;->SHOW_ON_SCREEN:Lio/flutter/view/AccessibilityBridge$Action;

    .line 2032
    new-instance v0, Lio/flutter/view/AccessibilityBridge$Action;

    const/16 v11, 0x9

    const-string v12, "MOVE_CURSOR_FORWARD_BY_CHARACTER"

    const/16 v13, 0x200

    invoke-direct {v0, v12, v11, v13}, Lio/flutter/view/AccessibilityBridge$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$Action;->MOVE_CURSOR_FORWARD_BY_CHARACTER:Lio/flutter/view/AccessibilityBridge$Action;

    .line 2033
    new-instance v0, Lio/flutter/view/AccessibilityBridge$Action;

    const/16 v12, 0xa

    const-string v13, "MOVE_CURSOR_BACKWARD_BY_CHARACTER"

    const/16 v14, 0x400

    invoke-direct {v0, v13, v12, v14}, Lio/flutter/view/AccessibilityBridge$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$Action;->MOVE_CURSOR_BACKWARD_BY_CHARACTER:Lio/flutter/view/AccessibilityBridge$Action;

    .line 2034
    new-instance v0, Lio/flutter/view/AccessibilityBridge$Action;

    const/16 v13, 0xb

    const-string v14, "SET_SELECTION"

    const/16 v15, 0x800

    invoke-direct {v0, v14, v13, v15}, Lio/flutter/view/AccessibilityBridge$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$Action;->SET_SELECTION:Lio/flutter/view/AccessibilityBridge$Action;

    .line 2035
    new-instance v0, Lio/flutter/view/AccessibilityBridge$Action;

    const/16 v14, 0xc

    const-string v15, "COPY"

    const/16 v13, 0x1000

    invoke-direct {v0, v15, v14, v13}, Lio/flutter/view/AccessibilityBridge$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$Action;->COPY:Lio/flutter/view/AccessibilityBridge$Action;

    .line 2036
    new-instance v0, Lio/flutter/view/AccessibilityBridge$Action;

    const/16 v13, 0xd

    const-string v15, "CUT"

    const/16 v14, 0x2000

    invoke-direct {v0, v15, v13, v14}, Lio/flutter/view/AccessibilityBridge$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$Action;->CUT:Lio/flutter/view/AccessibilityBridge$Action;

    .line 2037
    new-instance v0, Lio/flutter/view/AccessibilityBridge$Action;

    const-string v14, "PASTE"

    const/16 v15, 0xe

    const/16 v13, 0x4000

    invoke-direct {v0, v14, v15, v13}, Lio/flutter/view/AccessibilityBridge$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$Action;->PASTE:Lio/flutter/view/AccessibilityBridge$Action;

    .line 2038
    new-instance v0, Lio/flutter/view/AccessibilityBridge$Action;

    const-string v13, "DID_GAIN_ACCESSIBILITY_FOCUS"

    const/16 v14, 0xf

    const v15, 0x8000

    invoke-direct {v0, v13, v14, v15}, Lio/flutter/view/AccessibilityBridge$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$Action;->DID_GAIN_ACCESSIBILITY_FOCUS:Lio/flutter/view/AccessibilityBridge$Action;

    .line 2039
    new-instance v0, Lio/flutter/view/AccessibilityBridge$Action;

    const-string v13, "DID_LOSE_ACCESSIBILITY_FOCUS"

    const/high16 v14, 0x10000

    invoke-direct {v0, v13, v7, v14}, Lio/flutter/view/AccessibilityBridge$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$Action;->DID_LOSE_ACCESSIBILITY_FOCUS:Lio/flutter/view/AccessibilityBridge$Action;

    .line 2040
    new-instance v0, Lio/flutter/view/AccessibilityBridge$Action;

    const-string v13, "CUSTOM_ACTION"

    const/16 v14, 0x11

    const/high16 v15, 0x20000

    invoke-direct {v0, v13, v14, v15}, Lio/flutter/view/AccessibilityBridge$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$Action;->CUSTOM_ACTION:Lio/flutter/view/AccessibilityBridge$Action;

    .line 2041
    new-instance v0, Lio/flutter/view/AccessibilityBridge$Action;

    const-string v13, "DISMISS"

    const/16 v14, 0x12

    const/high16 v15, 0x40000

    invoke-direct {v0, v13, v14, v15}, Lio/flutter/view/AccessibilityBridge$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$Action;->DISMISS:Lio/flutter/view/AccessibilityBridge$Action;

    .line 2042
    new-instance v0, Lio/flutter/view/AccessibilityBridge$Action;

    const-string v13, "MOVE_CURSOR_FORWARD_BY_WORD"

    const/16 v14, 0x13

    const/high16 v15, 0x80000

    invoke-direct {v0, v13, v14, v15}, Lio/flutter/view/AccessibilityBridge$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$Action;->MOVE_CURSOR_FORWARD_BY_WORD:Lio/flutter/view/AccessibilityBridge$Action;

    .line 2043
    new-instance v0, Lio/flutter/view/AccessibilityBridge$Action;

    const-string v13, "MOVE_CURSOR_BACKWARD_BY_WORD"

    const/16 v14, 0x14

    const/high16 v15, 0x100000

    invoke-direct {v0, v13, v14, v15}, Lio/flutter/view/AccessibilityBridge$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$Action;->MOVE_CURSOR_BACKWARD_BY_WORD:Lio/flutter/view/AccessibilityBridge$Action;

    .line 2044
    new-instance v0, Lio/flutter/view/AccessibilityBridge$Action;

    const-string v13, "SET_TEXT"

    const/16 v14, 0x15

    const/high16 v15, 0x200000

    invoke-direct {v0, v13, v14, v15}, Lio/flutter/view/AccessibilityBridge$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/AccessibilityBridge$Action;->SET_TEXT:Lio/flutter/view/AccessibilityBridge$Action;

    const/16 v0, 0x16

    new-array v0, v0, [Lio/flutter/view/AccessibilityBridge$Action;

    .line 2022
    sget-object v13, Lio/flutter/view/AccessibilityBridge$Action;->TAP:Lio/flutter/view/AccessibilityBridge$Action;

    aput-object v13, v0, v1

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Action;->LONG_PRESS:Lio/flutter/view/AccessibilityBridge$Action;

    aput-object v1, v0, v2

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_LEFT:Lio/flutter/view/AccessibilityBridge$Action;

    aput-object v1, v0, v3

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_RIGHT:Lio/flutter/view/AccessibilityBridge$Action;

    aput-object v1, v0, v5

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_UP:Lio/flutter/view/AccessibilityBridge$Action;

    aput-object v1, v0, v4

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_DOWN:Lio/flutter/view/AccessibilityBridge$Action;

    aput-object v1, v0, v8

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Action;->INCREASE:Lio/flutter/view/AccessibilityBridge$Action;

    aput-object v1, v0, v9

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Action;->DECREASE:Lio/flutter/view/AccessibilityBridge$Action;

    aput-object v1, v0, v10

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Action;->SHOW_ON_SCREEN:Lio/flutter/view/AccessibilityBridge$Action;

    aput-object v1, v0, v6

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Action;->MOVE_CURSOR_FORWARD_BY_CHARACTER:Lio/flutter/view/AccessibilityBridge$Action;

    aput-object v1, v0, v11

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Action;->MOVE_CURSOR_BACKWARD_BY_CHARACTER:Lio/flutter/view/AccessibilityBridge$Action;

    aput-object v1, v0, v12

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Action;->SET_SELECTION:Lio/flutter/view/AccessibilityBridge$Action;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Action;->COPY:Lio/flutter/view/AccessibilityBridge$Action;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Action;->CUT:Lio/flutter/view/AccessibilityBridge$Action;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Action;->PASTE:Lio/flutter/view/AccessibilityBridge$Action;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Action;->DID_GAIN_ACCESSIBILITY_FOCUS:Lio/flutter/view/AccessibilityBridge$Action;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Action;->DID_LOSE_ACCESSIBILITY_FOCUS:Lio/flutter/view/AccessibilityBridge$Action;

    aput-object v1, v0, v7

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Action;->CUSTOM_ACTION:Lio/flutter/view/AccessibilityBridge$Action;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Action;->DISMISS:Lio/flutter/view/AccessibilityBridge$Action;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Action;->MOVE_CURSOR_FORWARD_BY_WORD:Lio/flutter/view/AccessibilityBridge$Action;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Action;->MOVE_CURSOR_BACKWARD_BY_WORD:Lio/flutter/view/AccessibilityBridge$Action;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Action;->SET_TEXT:Lio/flutter/view/AccessibilityBridge$Action;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sput-object v0, Lio/flutter/view/AccessibilityBridge$Action;->$VALUES:[Lio/flutter/view/AccessibilityBridge$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 2048
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2049
    iput p3, p0, Lio/flutter/view/AccessibilityBridge$Action;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/flutter/view/AccessibilityBridge$Action;
    .locals 1

    .line 2022
    const-class v0, Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/flutter/view/AccessibilityBridge$Action;

    return-object p0
.end method

.method public static values()[Lio/flutter/view/AccessibilityBridge$Action;
    .locals 1

    .line 2022
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Action;->$VALUES:[Lio/flutter/view/AccessibilityBridge$Action;

    invoke-virtual {v0}, [Lio/flutter/view/AccessibilityBridge$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/flutter/view/AccessibilityBridge$Action;

    return-object v0
.end method
