.class public Lreflection/android/app/ActivityThread;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lreflection/android/app/ActivityThread$H;,
        Lreflection/android/app/ActivityThread$AppBindData;,
        Lreflection/android/app/ActivityThread$ActivityClientRecord;
    }
.end annotation


# static fields
.field public static final REF:Lreflection/MirrorReflection;

.field public static currentActivityThread:Lreflection/MirrorReflection$StaticMethodWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lreflection/MirrorReflection$StaticMethodWrapper<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static getApplicationThread:Lreflection/MirrorReflection$MethodWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lreflection/MirrorReflection$MethodWrapper<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field public static getSystemContext:Lreflection/MirrorReflection$MethodWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lreflection/MirrorReflection$MethodWrapper<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static mBoundApplication:Lreflection/MirrorReflection$FieldWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lreflection/MirrorReflection$FieldWrapper<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static mH:Lreflection/MirrorReflection$FieldWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lreflection/MirrorReflection$FieldWrapper<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field public static mInitialApplication:Lreflection/MirrorReflection$FieldWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lreflection/MirrorReflection$FieldWrapper<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field public static mInstrumentation:Lreflection/MirrorReflection$FieldWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lreflection/MirrorReflection$FieldWrapper<",
            "Landroid/app/Instrumentation;",
            ">;"
        }
    .end annotation
.end field

.field public static mProviderMap:Lreflection/MirrorReflection$FieldWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lreflection/MirrorReflection$FieldWrapper<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public static sPackageManager:Lreflection/MirrorReflection$FieldWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lreflection/MirrorReflection$FieldWrapper<",
            "Landroid/os/IInterface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "android.app.ActivityThread"

    .line 30
    invoke-static {v0}, Lreflection/MirrorReflection;->on(Ljava/lang/String;)Lreflection/MirrorReflection;

    move-result-object v0

    sput-object v0, Lreflection/android/app/ActivityThread;->REF:Lreflection/MirrorReflection;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "currentActivityThread"

    .line 32
    invoke-virtual {v0, v3, v2}, Lreflection/MirrorReflection;->staticMethod(Ljava/lang/String;[Ljava/lang/Class;)Lreflection/MirrorReflection$StaticMethodWrapper;

    move-result-object v2

    sput-object v2, Lreflection/android/app/ActivityThread;->currentActivityThread:Lreflection/MirrorReflection$StaticMethodWrapper;

    const-string v2, "mBoundApplication"

    .line 33
    invoke-virtual {v0, v2}, Lreflection/MirrorReflection;->field(Ljava/lang/String;)Lreflection/MirrorReflection$FieldWrapper;

    move-result-object v2

    sput-object v2, Lreflection/android/app/ActivityThread;->mBoundApplication:Lreflection/MirrorReflection$FieldWrapper;

    const-string v2, "mH"

    .line 34
    invoke-virtual {v0, v2}, Lreflection/MirrorReflection;->field(Ljava/lang/String;)Lreflection/MirrorReflection$FieldWrapper;

    move-result-object v2

    sput-object v2, Lreflection/android/app/ActivityThread;->mH:Lreflection/MirrorReflection$FieldWrapper;

    const-string v2, "mInitialApplication"

    .line 35
    invoke-virtual {v0, v2}, Lreflection/MirrorReflection;->field(Ljava/lang/String;)Lreflection/MirrorReflection$FieldWrapper;

    move-result-object v2

    sput-object v2, Lreflection/android/app/ActivityThread;->mInitialApplication:Lreflection/MirrorReflection$FieldWrapper;

    const-string v2, "mProviderMap"

    .line 36
    invoke-virtual {v0, v2}, Lreflection/MirrorReflection;->field(Ljava/lang/String;)Lreflection/MirrorReflection$FieldWrapper;

    move-result-object v2

    sput-object v2, Lreflection/android/app/ActivityThread;->mProviderMap:Lreflection/MirrorReflection$FieldWrapper;

    const-string v2, "mInstrumentation"

    .line 37
    invoke-virtual {v0, v2}, Lreflection/MirrorReflection;->field(Ljava/lang/String;)Lreflection/MirrorReflection$FieldWrapper;

    move-result-object v2

    sput-object v2, Lreflection/android/app/ActivityThread;->mInstrumentation:Lreflection/MirrorReflection$FieldWrapper;

    const-string v2, "sPackageManager"

    .line 38
    invoke-virtual {v0, v2}, Lreflection/MirrorReflection;->field(Ljava/lang/String;)Lreflection/MirrorReflection$FieldWrapper;

    move-result-object v2

    sput-object v2, Lreflection/android/app/ActivityThread;->sPackageManager:Lreflection/MirrorReflection$FieldWrapper;

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getApplicationThread"

    .line 39
    invoke-virtual {v0, v3, v2}, Lreflection/MirrorReflection;->method(Ljava/lang/String;[Ljava/lang/Class;)Lreflection/MirrorReflection$MethodWrapper;

    move-result-object v2

    sput-object v2, Lreflection/android/app/ActivityThread;->getApplicationThread:Lreflection/MirrorReflection$MethodWrapper;

    new-array v1, v1, [Ljava/lang/Class;

    const-string v2, "getSystemContext"

    .line 40
    invoke-virtual {v0, v2, v1}, Lreflection/MirrorReflection;->method(Ljava/lang/String;[Ljava/lang/Class;)Lreflection/MirrorReflection$MethodWrapper;

    move-result-object v0

    sput-object v0, Lreflection/android/app/ActivityThread;->getSystemContext:Lreflection/MirrorReflection$MethodWrapper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
