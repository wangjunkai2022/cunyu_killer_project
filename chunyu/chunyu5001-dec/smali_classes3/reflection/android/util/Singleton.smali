.class public Lreflection/android/util/Singleton;
.super Ljava/lang/Object;
.source "Singleton.java"


# static fields
.field public static final REF:Lreflection/MirrorReflection;

.field public static get:Lreflection/MirrorReflection$MethodWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lreflection/MirrorReflection$MethodWrapper<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static mInstance:Lreflection/MirrorReflection$FieldWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lreflection/MirrorReflection$FieldWrapper<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "android.util.Singleton"

    .line 7
    invoke-static {v0}, Lreflection/MirrorReflection;->on(Ljava/lang/String;)Lreflection/MirrorReflection;

    move-result-object v0

    sput-object v0, Lreflection/android/util/Singleton;->REF:Lreflection/MirrorReflection;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    const-string v2, "get"

    .line 8
    invoke-virtual {v0, v2, v1}, Lreflection/MirrorReflection;->method(Ljava/lang/String;[Ljava/lang/Class;)Lreflection/MirrorReflection$MethodWrapper;

    move-result-object v1

    sput-object v1, Lreflection/android/util/Singleton;->get:Lreflection/MirrorReflection$MethodWrapper;

    const-string v1, "mInstance"

    .line 9
    invoke-virtual {v0, v1}, Lreflection/MirrorReflection;->field(Ljava/lang/String;)Lreflection/MirrorReflection$FieldWrapper;

    move-result-object v0

    sput-object v0, Lreflection/android/util/Singleton;->mInstance:Lreflection/MirrorReflection$FieldWrapper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
