.class public Lreflection/android/app/ActivityManagerNative;
.super Ljava/lang/Object;
.source "ActivityManagerNative.java"


# static fields
.field public static final REF:Lreflection/MirrorReflection;

.field public static gDefault:Lreflection/MirrorReflection$FieldWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lreflection/MirrorReflection$FieldWrapper<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static getDefault:Lreflection/MirrorReflection$StaticMethodWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lreflection/MirrorReflection$StaticMethodWrapper<",
            "Landroid/os/IInterface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "android.app.ActivityManagerNative"

    .line 17
    invoke-static {v0}, Lreflection/MirrorReflection;->on(Ljava/lang/String;)Lreflection/MirrorReflection;

    move-result-object v0

    sput-object v0, Lreflection/android/app/ActivityManagerNative;->REF:Lreflection/MirrorReflection;

    const-string v1, "gDefault"

    .line 19
    invoke-virtual {v0, v1}, Lreflection/MirrorReflection;->field(Ljava/lang/String;)Lreflection/MirrorReflection$FieldWrapper;

    move-result-object v1

    sput-object v1, Lreflection/android/app/ActivityManagerNative;->gDefault:Lreflection/MirrorReflection$FieldWrapper;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    const-string v2, "getDefault"

    .line 20
    invoke-virtual {v0, v2, v1}, Lreflection/MirrorReflection;->staticMethod(Ljava/lang/String;[Ljava/lang/Class;)Lreflection/MirrorReflection$StaticMethodWrapper;

    move-result-object v0

    sput-object v0, Lreflection/android/app/ActivityManagerNative;->getDefault:Lreflection/MirrorReflection$StaticMethodWrapper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
