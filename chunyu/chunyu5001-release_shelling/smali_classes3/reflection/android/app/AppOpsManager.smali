.class public Lreflection/android/app/AppOpsManager;
.super Ljava/lang/Object;
.source "AppOpsManager.java"


# static fields
.field public static final REF:Lreflection/MirrorReflection;

.field public static mService:Lreflection/MirrorReflection$FieldWrapper;
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
    .locals 2

    .line 16
    const-class v0, Landroid/app/AppOpsManager;

    invoke-static {v0}, Lreflection/MirrorReflection;->on(Ljava/lang/Class;)Lreflection/MirrorReflection;

    move-result-object v0

    sput-object v0, Lreflection/android/app/AppOpsManager;->REF:Lreflection/MirrorReflection;

    const-string v1, "mService"

    .line 17
    invoke-virtual {v0, v1}, Lreflection/MirrorReflection;->field(Ljava/lang/String;)Lreflection/MirrorReflection$FieldWrapper;

    move-result-object v0

    sput-object v0, Lreflection/android/app/AppOpsManager;->mService:Lreflection/MirrorReflection$FieldWrapper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
