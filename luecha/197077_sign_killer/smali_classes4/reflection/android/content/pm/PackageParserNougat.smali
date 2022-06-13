.class public Lreflection/android/content/pm/PackageParserNougat;
.super Ljava/lang/Object;
.source "PackageParserNougat.java"


# static fields
.field public static final REF:Lreflection/MirrorReflection;

.field public static collectCertificates:Lreflection/MirrorReflection$StaticMethodWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lreflection/MirrorReflection$StaticMethodWrapper<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 8
    const-class v0, Landroid/content/pm/PackageParser;

    invoke-static {v0}, Lreflection/MirrorReflection;->on(Ljava/lang/Class;)Lreflection/MirrorReflection;

    move-result-object v0

    sput-object v0, Lreflection/android/content/pm/PackageParserNougat;->REF:Lreflection/MirrorReflection;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    .line 9
    const-class v3, Landroid/content/pm/PackageParser$Package;

    aput-object v3, v1, v2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "collectCertificates"

    invoke-virtual {v0, v2, v1}, Lreflection/MirrorReflection;->staticMethod(Ljava/lang/String;[Ljava/lang/Class;)Lreflection/MirrorReflection$StaticMethodWrapper;

    move-result-object v0

    sput-object v0, Lreflection/android/content/pm/PackageParserNougat;->collectCertificates:Lreflection/MirrorReflection$StaticMethodWrapper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
