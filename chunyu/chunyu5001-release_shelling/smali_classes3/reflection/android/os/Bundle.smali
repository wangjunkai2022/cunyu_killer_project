.class public Lreflection/android/os/Bundle;
.super Ljava/lang/Object;
.source "Bundle.java"


# static fields
.field public static final REF:Lreflection/MirrorReflection;

.field public static getIBinder:Lreflection/MirrorReflection$MethodWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lreflection/MirrorReflection$MethodWrapper<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field public static putIBinder:Lreflection/MirrorReflection$MethodWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lreflection/MirrorReflection$MethodWrapper<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 8
    const-class v0, Landroid/os/Bundle;

    invoke-static {v0}, Lreflection/MirrorReflection;->on(Ljava/lang/Class;)Lreflection/MirrorReflection;

    move-result-object v0

    sput-object v0, Lreflection/android/os/Bundle;->REF:Lreflection/MirrorReflection;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    .line 10
    const-class v2, Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Landroid/os/IBinder;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "putIBinder"

    invoke-virtual {v0, v2, v1}, Lreflection/MirrorReflection;->method(Ljava/lang/String;[Ljava/lang/Class;)Lreflection/MirrorReflection$MethodWrapper;

    move-result-object v1

    sput-object v1, Lreflection/android/os/Bundle;->putIBinder:Lreflection/MirrorReflection$MethodWrapper;

    new-array v1, v4, [Ljava/lang/Class;

    .line 12
    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v3

    const-string v2, "getIBinder"

    invoke-virtual {v0, v2, v1}, Lreflection/MirrorReflection;->method(Ljava/lang/String;[Ljava/lang/Class;)Lreflection/MirrorReflection$MethodWrapper;

    move-result-object v0

    sput-object v0, Lreflection/android/os/Bundle;->getIBinder:Lreflection/MirrorReflection$MethodWrapper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
