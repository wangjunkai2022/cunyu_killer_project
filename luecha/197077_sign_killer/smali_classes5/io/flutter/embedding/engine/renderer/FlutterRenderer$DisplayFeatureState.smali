.class public final enum Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;
.super Ljava/lang/Enum;
.source "FlutterRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/renderer/FlutterRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DisplayFeatureState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;

.field public static final enum POSTURE_FLAT:Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;

.field public static final enum POSTURE_HALF_OPENED:Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;

.field public static final enum UNKNOWN:Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;


# instance fields
.field public final encodedValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 545
    new-instance v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v2, v1, v1}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;->UNKNOWN:Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;

    .line 551
    new-instance v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;

    const/4 v2, 0x1

    const-string v3, "POSTURE_FLAT"

    invoke-direct {v0, v3, v2, v2}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;->POSTURE_FLAT:Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;

    .line 558
    new-instance v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;

    const/4 v3, 0x2

    const-string v4, "POSTURE_HALF_OPENED"

    invoke-direct {v0, v4, v3, v3}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;->POSTURE_HALF_OPENED:Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;

    const/4 v0, 0x3

    new-array v0, v0, [Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;

    .line 543
    sget-object v4, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;->UNKNOWN:Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;

    aput-object v4, v0, v1

    sget-object v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;->POSTURE_FLAT:Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;

    aput-object v1, v0, v2

    sget-object v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;->POSTURE_HALF_OPENED:Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;

    aput-object v1, v0, v3

    sput-object v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;->$VALUES:[Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 562
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 563
    iput p3, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;->encodedValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;
    .locals 1

    .line 543
    const-class v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;

    return-object p0
.end method

.method public static values()[Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;
    .locals 1

    .line 543
    sget-object v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;->$VALUES:[Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;

    invoke-virtual {v0}, [Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureState;

    return-object v0
.end method
