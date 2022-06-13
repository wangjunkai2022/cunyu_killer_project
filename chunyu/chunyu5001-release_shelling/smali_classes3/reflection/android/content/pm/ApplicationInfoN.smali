.class public Lreflection/android/content/pm/ApplicationInfoN;
.super Ljava/lang/Object;
.source "ApplicationInfoN.java"


# static fields
.field public static final REF:Lreflection/MirrorReflection;

.field public static credentialEncryptedDataDir:Lreflection/MirrorReflection$FieldWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lreflection/MirrorReflection$FieldWrapper<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static credentialProtectedDataDir:Lreflection/MirrorReflection$FieldWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lreflection/MirrorReflection$FieldWrapper<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static deviceEncryptedDataDir:Lreflection/MirrorReflection$FieldWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lreflection/MirrorReflection$FieldWrapper<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static deviceProtectedDataDir:Lreflection/MirrorReflection$FieldWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lreflection/MirrorReflection$FieldWrapper<",
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

    sput-object v0, Lreflection/android/content/pm/ApplicationInfoN;->REF:Lreflection/MirrorReflection;

    const-string v1, "deviceProtectedDataDir"

    .line 10
    invoke-virtual {v0, v1}, Lreflection/MirrorReflection;->field(Ljava/lang/String;)Lreflection/MirrorReflection$FieldWrapper;

    move-result-object v1

    sput-object v1, Lreflection/android/content/pm/ApplicationInfoN;->deviceProtectedDataDir:Lreflection/MirrorReflection$FieldWrapper;

    const-string v1, "deviceEncryptedDataDir"

    .line 11
    invoke-virtual {v0, v1}, Lreflection/MirrorReflection;->field(Ljava/lang/String;)Lreflection/MirrorReflection$FieldWrapper;

    move-result-object v1

    sput-object v1, Lreflection/android/content/pm/ApplicationInfoN;->deviceEncryptedDataDir:Lreflection/MirrorReflection$FieldWrapper;

    const-string v1, "credentialProtectedDataDir"

    .line 12
    invoke-virtual {v0, v1}, Lreflection/MirrorReflection;->field(Ljava/lang/String;)Lreflection/MirrorReflection$FieldWrapper;

    move-result-object v1

    sput-object v1, Lreflection/android/content/pm/ApplicationInfoN;->credentialProtectedDataDir:Lreflection/MirrorReflection$FieldWrapper;

    const-string v1, "credentialEncryptedDataDir"

    .line 13
    invoke-virtual {v0, v1}, Lreflection/MirrorReflection;->field(Ljava/lang/String;)Lreflection/MirrorReflection$FieldWrapper;

    move-result-object v0

    sput-object v0, Lreflection/android/content/pm/ApplicationInfoN;->credentialEncryptedDataDir:Lreflection/MirrorReflection$FieldWrapper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
