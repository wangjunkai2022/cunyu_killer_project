.class public Lreflection/android/content/pm/ApplicationInfoL;
.super Ljava/lang/Object;
.source "ApplicationInfoL.java"


# static fields
.field public static final REF:Lreflection/MirrorReflection;

.field public static primaryCpuAbi:Lreflection/MirrorReflection$FieldWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lreflection/MirrorReflection$FieldWrapper<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static scanPublicSourceDir:Lreflection/MirrorReflection$FieldWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lreflection/MirrorReflection$FieldWrapper<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static scanSourceDir:Lreflection/MirrorReflection$FieldWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lreflection/MirrorReflection$FieldWrapper<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static secondaryCpuAbi:Lreflection/MirrorReflection$FieldWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lreflection/MirrorReflection$FieldWrapper<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static splitPublicSourceDirs:Lreflection/MirrorReflection$FieldWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lreflection/MirrorReflection$FieldWrapper<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 8
    const-class v0, Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lreflection/MirrorReflection;->on(Ljava/lang/Class;)Lreflection/MirrorReflection;

    move-result-object v0

    sput-object v0, Lreflection/android/content/pm/ApplicationInfoL;->REF:Lreflection/MirrorReflection;

    const-string v1, "primaryCpuAbi"

    .line 9
    invoke-virtual {v0, v1}, Lreflection/MirrorReflection;->field(Ljava/lang/String;)Lreflection/MirrorReflection$FieldWrapper;

    move-result-object v1

    sput-object v1, Lreflection/android/content/pm/ApplicationInfoL;->primaryCpuAbi:Lreflection/MirrorReflection$FieldWrapper;

    const-string v1, "scanPublicSourceDir"

    .line 10
    invoke-virtual {v0, v1}, Lreflection/MirrorReflection;->field(Ljava/lang/String;)Lreflection/MirrorReflection$FieldWrapper;

    move-result-object v1

    sput-object v1, Lreflection/android/content/pm/ApplicationInfoL;->scanPublicSourceDir:Lreflection/MirrorReflection$FieldWrapper;

    const-string v1, "scanSourceDir"

    .line 11
    invoke-virtual {v0, v1}, Lreflection/MirrorReflection;->field(Ljava/lang/String;)Lreflection/MirrorReflection$FieldWrapper;

    move-result-object v1

    sput-object v1, Lreflection/android/content/pm/ApplicationInfoL;->scanSourceDir:Lreflection/MirrorReflection$FieldWrapper;

    const-string v1, "secondaryCpuAbi"

    .line 12
    invoke-virtual {v0, v1}, Lreflection/MirrorReflection;->field(Ljava/lang/String;)Lreflection/MirrorReflection$FieldWrapper;

    move-result-object v1

    sput-object v1, Lreflection/android/content/pm/ApplicationInfoL;->secondaryCpuAbi:Lreflection/MirrorReflection$FieldWrapper;

    const-string v1, "splitPublicSourceDirs"

    .line 13
    invoke-virtual {v0, v1}, Lreflection/MirrorReflection;->field(Ljava/lang/String;)Lreflection/MirrorReflection$FieldWrapper;

    move-result-object v0

    sput-object v0, Lreflection/android/content/pm/ApplicationInfoL;->splitPublicSourceDirs:Lreflection/MirrorReflection$FieldWrapper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
