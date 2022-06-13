.class final enum Lio/flutter/plugins/imagepicker/CameraDevice;
.super Ljava/lang/Enum;
.source "ImagePickerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/flutter/plugins/imagepicker/CameraDevice;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/flutter/plugins/imagepicker/CameraDevice;

.field public static final enum FRONT:Lio/flutter/plugins/imagepicker/CameraDevice;

.field public static final enum REAR:Lio/flutter/plugins/imagepicker/CameraDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 32
    new-instance v0, Lio/flutter/plugins/imagepicker/CameraDevice;

    const/4 v1, 0x0

    const-string v2, "REAR"

    invoke-direct {v0, v2, v1}, Lio/flutter/plugins/imagepicker/CameraDevice;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/flutter/plugins/imagepicker/CameraDevice;->REAR:Lio/flutter/plugins/imagepicker/CameraDevice;

    .line 34
    new-instance v0, Lio/flutter/plugins/imagepicker/CameraDevice;

    const/4 v2, 0x1

    const-string v3, "FRONT"

    invoke-direct {v0, v3, v2}, Lio/flutter/plugins/imagepicker/CameraDevice;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/flutter/plugins/imagepicker/CameraDevice;->FRONT:Lio/flutter/plugins/imagepicker/CameraDevice;

    const/4 v0, 0x2

    new-array v0, v0, [Lio/flutter/plugins/imagepicker/CameraDevice;

    .line 31
    sget-object v3, Lio/flutter/plugins/imagepicker/CameraDevice;->REAR:Lio/flutter/plugins/imagepicker/CameraDevice;

    aput-object v3, v0, v1

    sget-object v1, Lio/flutter/plugins/imagepicker/CameraDevice;->FRONT:Lio/flutter/plugins/imagepicker/CameraDevice;

    aput-object v1, v0, v2

    sput-object v0, Lio/flutter/plugins/imagepicker/CameraDevice;->$VALUES:[Lio/flutter/plugins/imagepicker/CameraDevice;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/flutter/plugins/imagepicker/CameraDevice;
    .locals 1

    .line 31
    const-class v0, Lio/flutter/plugins/imagepicker/CameraDevice;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/flutter/plugins/imagepicker/CameraDevice;

    return-object p0
.end method

.method public static values()[Lio/flutter/plugins/imagepicker/CameraDevice;
    .locals 1

    .line 31
    sget-object v0, Lio/flutter/plugins/imagepicker/CameraDevice;->$VALUES:[Lio/flutter/plugins/imagepicker/CameraDevice;

    invoke-virtual {v0}, [Lio/flutter/plugins/imagepicker/CameraDevice;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/flutter/plugins/imagepicker/CameraDevice;

    return-object v0
.end method
