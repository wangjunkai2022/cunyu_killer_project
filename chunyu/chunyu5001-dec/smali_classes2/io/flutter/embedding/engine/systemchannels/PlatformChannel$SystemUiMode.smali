.class public final enum Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;
.super Ljava/lang/Enum;
.source "PlatformChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/systemchannels/PlatformChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SystemUiMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;

.field public static final enum EDGE_TO_EDGE:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;

.field public static final enum IMMERSIVE:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;

.field public static final enum IMMERSIVE_STICKY:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;

.field public static final enum LEAN_BACK:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;


# instance fields
.field private encodedName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 640
    new-instance v0, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;

    const/4 v1, 0x0

    const-string v2, "LEAN_BACK"

    const-string v3, "SystemUiMode.leanBack"

    invoke-direct {v0, v2, v1, v3}, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;->LEAN_BACK:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;

    .line 641
    new-instance v0, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;

    const/4 v2, 0x1

    const-string v3, "IMMERSIVE"

    const-string v4, "SystemUiMode.immersive"

    invoke-direct {v0, v3, v2, v4}, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;->IMMERSIVE:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;

    .line 642
    new-instance v0, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;

    const/4 v3, 0x2

    const-string v4, "IMMERSIVE_STICKY"

    const-string v5, "SystemUiMode.immersiveSticky"

    invoke-direct {v0, v4, v3, v5}, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;->IMMERSIVE_STICKY:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;

    .line 643
    new-instance v0, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;

    const/4 v4, 0x3

    const-string v5, "EDGE_TO_EDGE"

    const-string v6, "SystemUiMode.edgeToEdge"

    invoke-direct {v0, v5, v4, v6}, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;->EDGE_TO_EDGE:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;

    const/4 v0, 0x4

    new-array v0, v0, [Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;

    .line 639
    sget-object v5, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;->LEAN_BACK:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;

    aput-object v5, v0, v1

    sget-object v1, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;->IMMERSIVE:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;

    aput-object v1, v0, v2

    sget-object v1, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;->IMMERSIVE_STICKY:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;

    aput-object v1, v0, v3

    sget-object v1, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;->EDGE_TO_EDGE:Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;

    aput-object v1, v0, v4

    sput-object v0, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;->$VALUES:[Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;

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

    .line 662
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 663
    iput-object p3, p0, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;->encodedName:Ljava/lang/String;

    return-void
.end method

.method static fromValue(Ljava/lang/String;)Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 651
    invoke-static {}, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;->values()[Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 652
    iget-object v4, v3, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;->encodedName:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 656
    :cond_1
    new-instance v0, Ljava/lang/NoSuchFieldException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No such SystemUiMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;
    .locals 1

    .line 639
    const-class v0, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;

    return-object p0
.end method

.method public static values()[Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;
    .locals 1

    .line 639
    sget-object v0, Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;->$VALUES:[Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;

    invoke-virtual {v0}, [Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;

    return-object v0
.end method
