.class public final enum Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;
.super Ljava/lang/Enum;
.source "FlutterRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/renderer/FlutterRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DisplayFeatureType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;

.field public static final enum CUTOUT:Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;

.field public static final enum FOLD:Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;

.field public static final enum HINGE:Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;

.field public static final enum UNKNOWN:Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;


# instance fields
.field public final encodedValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 511
    new-instance v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v2, v1, v1}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;->UNKNOWN:Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;

    .line 517
    new-instance v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;

    const/4 v2, 0x1

    const-string v3, "FOLD"

    invoke-direct {v0, v3, v2, v2}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;->FOLD:Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;

    .line 523
    new-instance v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;

    const/4 v3, 0x2

    const-string v4, "HINGE"

    invoke-direct {v0, v4, v3, v3}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;->HINGE:Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;

    .line 529
    new-instance v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;

    const/4 v4, 0x3

    const-string v5, "CUTOUT"

    invoke-direct {v0, v5, v4, v4}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;->CUTOUT:Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;

    const/4 v0, 0x4

    new-array v0, v0, [Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;

    .line 506
    sget-object v5, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;->UNKNOWN:Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;

    aput-object v5, v0, v1

    sget-object v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;->FOLD:Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;

    aput-object v1, v0, v2

    sget-object v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;->HINGE:Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;

    aput-object v1, v0, v3

    sget-object v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;->CUTOUT:Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;

    aput-object v1, v0, v4

    sput-object v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;->$VALUES:[Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 533
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 534
    iput p3, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;->encodedValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;
    .locals 1

    .line 506
    const-class v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;

    return-object p0
.end method

.method public static values()[Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;
    .locals 1

    .line 506
    sget-object v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;->$VALUES:[Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;

    invoke-virtual {v0}, [Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/flutter/embedding/engine/renderer/FlutterRenderer$DisplayFeatureType;

    return-object v0
.end method
