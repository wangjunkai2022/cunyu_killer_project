.class public Lreflection/android/content/pm/SigningInfo;
.super Ljava/lang/Object;
.source "SigningInfo.java"


# static fields
.field public static final REF:Lreflection/MirrorReflection;

.field public static mSigningDetails:Lreflection/MirrorReflection$FieldWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lreflection/MirrorReflection$FieldWrapper<",
            "Landroid/content/pm/PackageParser$SigningDetails;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "android.content.pm.SigningInfo"

    .line 16
    invoke-static {v0}, Lreflection/MirrorReflection;->on(Ljava/lang/String;)Lreflection/MirrorReflection;

    move-result-object v0

    sput-object v0, Lreflection/android/content/pm/SigningInfo;->REF:Lreflection/MirrorReflection;

    const-string v1, "mSigningDetails"

    .line 18
    invoke-virtual {v0, v1}, Lreflection/MirrorReflection;->field(Ljava/lang/String;)Lreflection/MirrorReflection$FieldWrapper;

    move-result-object v0

    sput-object v0, Lreflection/android/content/pm/SigningInfo;->mSigningDetails:Lreflection/MirrorReflection$FieldWrapper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
