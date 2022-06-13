.class public Lreflection/android/app/LoadedApk;
.super Ljava/lang/Object;
.source "LoadedApk.java"


# static fields
.field public static final REF:Lreflection/MirrorReflection;

.field public static getClassloader:Lreflection/MirrorReflection$MethodWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lreflection/MirrorReflection$MethodWrapper<",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field public static mApplicationInfo:Lreflection/MirrorReflection$FieldWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lreflection/MirrorReflection$FieldWrapper<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static mSecurityViolation:Lreflection/MirrorReflection$FieldWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lreflection/MirrorReflection$FieldWrapper<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static makeApplication:Lreflection/MirrorReflection$MethodWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lreflection/MirrorReflection$MethodWrapper<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "android.app.LoadedApk"

    .line 9
    invoke-static {v0}, Lreflection/MirrorReflection;->on(Ljava/lang/String;)Lreflection/MirrorReflection;

    move-result-object v0

    sput-object v0, Lreflection/android/app/LoadedApk;->REF:Lreflection/MirrorReflection;

    const-string v1, "mApplicationInfo"

    .line 10
    invoke-virtual {v0, v1}, Lreflection/MirrorReflection;->field(Ljava/lang/String;)Lreflection/MirrorReflection$FieldWrapper;

    move-result-object v1

    sput-object v1, Lreflection/android/app/LoadedApk;->mApplicationInfo:Lreflection/MirrorReflection$FieldWrapper;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    .line 11
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-class v4, Landroid/app/Instrumentation;

    aput-object v4, v1, v2

    const-string v2, "makeApplication"

    invoke-virtual {v0, v2, v1}, Lreflection/MirrorReflection;->method(Ljava/lang/String;[Ljava/lang/Class;)Lreflection/MirrorReflection$MethodWrapper;

    move-result-object v1

    sput-object v1, Lreflection/android/app/LoadedApk;->makeApplication:Lreflection/MirrorReflection$MethodWrapper;

    new-array v1, v3, [Ljava/lang/Class;

    const-string v2, "getClassloader"

    .line 12
    invoke-virtual {v0, v2, v1}, Lreflection/MirrorReflection;->method(Ljava/lang/String;[Ljava/lang/Class;)Lreflection/MirrorReflection$MethodWrapper;

    move-result-object v1

    sput-object v1, Lreflection/android/app/LoadedApk;->getClassloader:Lreflection/MirrorReflection$MethodWrapper;

    const-string v1, "mSecurityViolation"

    .line 14
    invoke-virtual {v0, v1}, Lreflection/MirrorReflection;->field(Ljava/lang/String;)Lreflection/MirrorReflection$FieldWrapper;

    move-result-object v0

    sput-object v0, Lreflection/android/app/LoadedApk;->mSecurityViolation:Lreflection/MirrorReflection$FieldWrapper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
