.class public Lreflection/android/os/BundleICS;
.super Ljava/lang/Object;
.source "BundleICS.java"


# static fields
.field public static final REF:Lreflection/MirrorReflection;

.field public static mParcelledData:Lreflection/MirrorReflection$FieldWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lreflection/MirrorReflection$FieldWrapper<",
            "Landroid/os/Parcel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 8
    const-class v0, Landroid/os/Bundle;

    invoke-static {v0}, Lreflection/MirrorReflection;->on(Ljava/lang/Class;)Lreflection/MirrorReflection;

    move-result-object v0

    sput-object v0, Lreflection/android/os/BundleICS;->REF:Lreflection/MirrorReflection;

    const-string v1, "mParcelledData"

    .line 9
    invoke-virtual {v0, v1}, Lreflection/MirrorReflection;->field(Ljava/lang/String;)Lreflection/MirrorReflection$FieldWrapper;

    move-result-object v0

    sput-object v0, Lreflection/android/os/BundleICS;->mParcelledData:Lreflection/MirrorReflection$FieldWrapper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
