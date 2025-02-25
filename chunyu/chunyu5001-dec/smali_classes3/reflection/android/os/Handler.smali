.class public Lreflection/android/os/Handler;
.super Ljava/lang/Object;
.source "Handler.java"


# static fields
.field public static final REF:Lreflection/MirrorReflection;

.field public static mCallback:Lreflection/MirrorReflection$FieldWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lreflection/MirrorReflection$FieldWrapper<",
            "Landroid/os/Handler$Callback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 6
    const-class v0, Landroid/os/Handler;

    invoke-static {v0}, Lreflection/MirrorReflection;->on(Ljava/lang/Class;)Lreflection/MirrorReflection;

    move-result-object v0

    sput-object v0, Lreflection/android/os/Handler;->REF:Lreflection/MirrorReflection;

    const-string v1, "mCallback"

    .line 8
    invoke-virtual {v0, v1}, Lreflection/MirrorReflection;->field(Ljava/lang/String;)Lreflection/MirrorReflection$FieldWrapper;

    move-result-object v0

    sput-object v0, Lreflection/android/os/Handler;->mCallback:Lreflection/MirrorReflection$FieldWrapper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
