.class public Lreflection/libcore/io/Libcore;
.super Ljava/lang/Object;
.source "Libcore.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "libcore.io.Libcore"

.field public static final REF:Lreflection/MirrorReflection;

.field public static os:Lreflection/MirrorReflection$FieldWrapper;
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
    .locals 2

    const-string v0, "libcore.io.Libcore"

    .line 7
    invoke-static {v0}, Lreflection/MirrorReflection;->on(Ljava/lang/String;)Lreflection/MirrorReflection;

    move-result-object v0

    sput-object v0, Lreflection/libcore/io/Libcore;->REF:Lreflection/MirrorReflection;

    const-string v1, "os"

    .line 9
    invoke-virtual {v0, v1}, Lreflection/MirrorReflection;->field(Ljava/lang/String;)Lreflection/MirrorReflection$FieldWrapper;

    move-result-object v0

    sput-object v0, Lreflection/libcore/io/Libcore;->os:Lreflection/MirrorReflection$FieldWrapper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
