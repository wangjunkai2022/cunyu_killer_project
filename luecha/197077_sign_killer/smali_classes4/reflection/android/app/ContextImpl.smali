.class public Lreflection/android/app/ContextImpl;
.super Ljava/lang/Object;
.source "ContextImpl.java"


# static fields
.field public static final REF:Lreflection/MirrorReflection;

.field public static mBasePackageName:Lreflection/MirrorReflection$FieldWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lreflection/MirrorReflection$FieldWrapper<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mOpPackageName:Lreflection/MirrorReflection$FieldWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lreflection/MirrorReflection$FieldWrapper<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mPackageInfo:Lreflection/MirrorReflection$FieldWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lreflection/MirrorReflection$FieldWrapper<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static mPackageManager:Lreflection/MirrorReflection$FieldWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lreflection/MirrorReflection$FieldWrapper<",
            "Landroid/content/pm/PackageManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "android.app.ContextImpl"

    .line 9
    invoke-static {v0}, Lreflection/MirrorReflection;->on(Ljava/lang/String;)Lreflection/MirrorReflection;

    move-result-object v0

    sput-object v0, Lreflection/android/app/ContextImpl;->REF:Lreflection/MirrorReflection;

    const-string v1, "mBasePackageName"

    .line 11
    invoke-virtual {v0, v1}, Lreflection/MirrorReflection;->field(Ljava/lang/String;)Lreflection/MirrorReflection$FieldWrapper;

    move-result-object v1

    sput-object v1, Lreflection/android/app/ContextImpl;->mBasePackageName:Lreflection/MirrorReflection$FieldWrapper;

    const-string v1, "mPackageInfo"

    .line 12
    invoke-virtual {v0, v1}, Lreflection/MirrorReflection;->field(Ljava/lang/String;)Lreflection/MirrorReflection$FieldWrapper;

    move-result-object v1

    sput-object v1, Lreflection/android/app/ContextImpl;->mPackageInfo:Lreflection/MirrorReflection$FieldWrapper;

    const-string v1, "mPackageManager"

    .line 13
    invoke-virtual {v0, v1}, Lreflection/MirrorReflection;->field(Ljava/lang/String;)Lreflection/MirrorReflection$FieldWrapper;

    move-result-object v1

    sput-object v1, Lreflection/android/app/ContextImpl;->mPackageManager:Lreflection/MirrorReflection$FieldWrapper;

    const-string v1, "mOpPackageName"

    .line 14
    invoke-virtual {v0, v1}, Lreflection/MirrorReflection;->field(Ljava/lang/String;)Lreflection/MirrorReflection$FieldWrapper;

    move-result-object v0

    sput-object v0, Lreflection/android/app/ContextImpl;->mOpPackageName:Lreflection/MirrorReflection$FieldWrapper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
