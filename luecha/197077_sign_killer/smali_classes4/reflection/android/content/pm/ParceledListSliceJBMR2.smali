.class public Lreflection/android/content/pm/ParceledListSliceJBMR2;
.super Ljava/lang/Object;
.source "ParceledListSliceJBMR2.java"


# static fields
.field public static final REF:Lreflection/MirrorReflection;

.field public static constructor:Lreflection/MirrorReflection$ConstructorWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lreflection/MirrorReflection$ConstructorWrapper<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "android.content.pm.ParceledListSlice"

    .line 10
    invoke-static {v0}, Lreflection/MirrorReflection;->on(Ljava/lang/String;)Lreflection/MirrorReflection;

    move-result-object v0

    sput-object v0, Lreflection/android/content/pm/ParceledListSliceJBMR2;->REF:Lreflection/MirrorReflection;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    .line 11
    const-class v3, Ljava/util/List;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lreflection/MirrorReflection;->constructor([Ljava/lang/Class;)Lreflection/MirrorReflection$ConstructorWrapper;

    move-result-object v0

    sput-object v0, Lreflection/android/content/pm/ParceledListSliceJBMR2;->constructor:Lreflection/MirrorReflection$ConstructorWrapper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
