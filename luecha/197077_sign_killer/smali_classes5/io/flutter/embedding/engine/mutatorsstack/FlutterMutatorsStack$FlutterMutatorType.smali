.class public final enum Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack$FlutterMutatorType;
.super Ljava/lang/Enum;
.source "FlutterMutatorsStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FlutterMutatorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack$FlutterMutatorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack$FlutterMutatorType;

.field public static final enum CLIP_PATH:Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack$FlutterMutatorType;

.field public static final enum CLIP_RECT:Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack$FlutterMutatorType;

.field public static final enum CLIP_RRECT:Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack$FlutterMutatorType;

.field public static final enum OPACITY:Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack$FlutterMutatorType;

.field public static final enum TRANSFORM:Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack$FlutterMutatorType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 30
    new-instance v0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack$FlutterMutatorType;

    const/4 v1, 0x0

    const-string v2, "CLIP_RECT"

    invoke-direct {v0, v2, v1}, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack$FlutterMutatorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack$FlutterMutatorType;->CLIP_RECT:Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack$FlutterMutatorType;

    .line 31
    new-instance v0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack$FlutterMutatorType;

    const/4 v2, 0x1

    const-string v3, "CLIP_RRECT"

    invoke-direct {v0, v3, v2}, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack$FlutterMutatorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack$FlutterMutatorType;->CLIP_RRECT:Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack$FlutterMutatorType;

    .line 32
    new-instance v0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack$FlutterMutatorType;

    const/4 v3, 0x2

    const-string v4, "CLIP_PATH"

    invoke-direct {v0, v4, v3}, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack$FlutterMutatorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack$FlutterMutatorType;->CLIP_PATH:Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack$FlutterMutatorType;

    .line 33
    new-instance v0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack$FlutterMutatorType;

    const/4 v4, 0x3

    const-string v5, "TRANSFORM"

    invoke-direct {v0, v5, v4}, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack$FlutterMutatorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack$FlutterMutatorType;->TRANSFORM:Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack$FlutterMutatorType;

    .line 34
    new-instance v0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack$FlutterMutatorType;

    const/4 v5, 0x4

    const-string v6, "OPACITY"

    invoke-direct {v0, v6, v5}, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack$FlutterMutatorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack$FlutterMutatorType;->OPACITY:Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack$FlutterMutatorType;

    const/4 v0, 0x5

    new-array v0, v0, [Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack$FlutterMutatorType;

    .line 29
    sget-object v6, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack$FlutterMutatorType;->CLIP_RECT:Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack$FlutterMutatorType;

    aput-object v6, v0, v1

    sget-object v1, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack$FlutterMutatorType;->CLIP_RRECT:Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack$FlutterMutatorType;

    aput-object v1, v0, v2

    sget-object v1, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack$FlutterMutatorType;->CLIP_PATH:Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack$FlutterMutatorType;

    aput-object v1, v0, v3

    sget-object v1, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack$FlutterMutatorType;->TRANSFORM:Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack$FlutterMutatorType;

    aput-object v1, v0, v4

    sget-object v1, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack$FlutterMutatorType;->OPACITY:Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack$FlutterMutatorType;

    aput-object v1, v0, v5

    sput-object v0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack$FlutterMutatorType;->$VALUES:[Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack$FlutterMutatorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack$FlutterMutatorType;
    .locals 1

    .line 29
    const-class v0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack$FlutterMutatorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack$FlutterMutatorType;

    return-object p0
.end method

.method public static values()[Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack$FlutterMutatorType;
    .locals 1

    .line 29
    sget-object v0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack$FlutterMutatorType;->$VALUES:[Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack$FlutterMutatorType;

    invoke-virtual {v0}, [Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack$FlutterMutatorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack$FlutterMutatorType;

    return-object v0
.end method
