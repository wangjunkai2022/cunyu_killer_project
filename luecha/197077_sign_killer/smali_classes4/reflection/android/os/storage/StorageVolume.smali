.class public Lreflection/android/os/storage/StorageVolume;
.super Ljava/lang/Object;
.source "StorageVolume.java"


# static fields
.field public static final REF:Lreflection/MirrorReflection;

.field public static mInternalPath:Lreflection/MirrorReflection$FieldWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lreflection/MirrorReflection$FieldWrapper<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public static mPath:Lreflection/MirrorReflection$FieldWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lreflection/MirrorReflection$FieldWrapper<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "android.os.storage.StorageVolume"

    .line 16
    invoke-static {v0}, Lreflection/MirrorReflection;->on(Ljava/lang/String;)Lreflection/MirrorReflection;

    move-result-object v0

    sput-object v0, Lreflection/android/os/storage/StorageVolume;->REF:Lreflection/MirrorReflection;

    const-string v1, "mPath"

    .line 18
    invoke-virtual {v0, v1}, Lreflection/MirrorReflection;->field(Ljava/lang/String;)Lreflection/MirrorReflection$FieldWrapper;

    move-result-object v1

    sput-object v1, Lreflection/android/os/storage/StorageVolume;->mPath:Lreflection/MirrorReflection$FieldWrapper;

    const-string v1, "mInternalPath"

    .line 19
    invoke-virtual {v0, v1}, Lreflection/MirrorReflection;->field(Ljava/lang/String;)Lreflection/MirrorReflection$FieldWrapper;

    move-result-object v0

    sput-object v0, Lreflection/android/os/storage/StorageVolume;->mInternalPath:Lreflection/MirrorReflection$FieldWrapper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
