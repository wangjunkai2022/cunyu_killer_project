.class public Lreflection/android/content/pm/ParceledListSlice;
.super Ljava/lang/Object;
.source "ParceledListSlice.java"


# static fields
.field public static final REF:Lreflection/MirrorReflection;

.field public static append:Lreflection/MirrorReflection$MethodWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lreflection/MirrorReflection$MethodWrapper<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static constructor:Lreflection/MirrorReflection$ConstructorWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lreflection/MirrorReflection$ConstructorWrapper<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field public static setLastSlice:Lreflection/MirrorReflection$MethodWrapper;
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
    .locals 4

    const-string v0, "android.content.pm.ParceledListSlice"

    .line 8
    invoke-static {v0}, Lreflection/MirrorReflection;->on(Ljava/lang/String;)Lreflection/MirrorReflection;

    move-result-object v0

    sput-object v0, Lreflection/android/content/pm/ParceledListSlice;->REF:Lreflection/MirrorReflection;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "append"

    .line 9
    invoke-virtual {v0, v3, v2}, Lreflection/MirrorReflection;->method(Ljava/lang/String;[Ljava/lang/Class;)Lreflection/MirrorReflection$MethodWrapper;

    move-result-object v2

    sput-object v2, Lreflection/android/content/pm/ParceledListSlice;->append:Lreflection/MirrorReflection$MethodWrapper;

    new-array v2, v1, [Ljava/lang/Class;

    .line 10
    invoke-virtual {v0, v2}, Lreflection/MirrorReflection;->constructor([Ljava/lang/Class;)Lreflection/MirrorReflection$ConstructorWrapper;

    move-result-object v2

    sput-object v2, Lreflection/android/content/pm/ParceledListSlice;->constructor:Lreflection/MirrorReflection$ConstructorWrapper;

    new-array v1, v1, [Ljava/lang/Class;

    const-string v2, "setLastSlice"

    .line 12
    invoke-virtual {v0, v2, v1}, Lreflection/MirrorReflection;->method(Ljava/lang/String;[Ljava/lang/Class;)Lreflection/MirrorReflection$MethodWrapper;

    move-result-object v0

    sput-object v0, Lreflection/android/content/pm/ParceledListSlice;->setLastSlice:Lreflection/MirrorReflection$MethodWrapper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
