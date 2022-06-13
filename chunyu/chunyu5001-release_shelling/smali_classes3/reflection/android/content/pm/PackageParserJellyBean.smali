.class public Lreflection/android/content/pm/PackageParserJellyBean;
.super Ljava/lang/Object;
.source "PackageParserJellyBean.java"


# static fields
.field public static final REF:Lreflection/MirrorReflection;

.field public static collectCertificates:Lreflection/MirrorReflection$MethodWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lreflection/MirrorReflection$MethodWrapper<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public static constructor:Lreflection/MirrorReflection$ConstructorWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lreflection/MirrorReflection$ConstructorWrapper<",
            "Landroid/content/pm/PackageParser;",
            ">;"
        }
    .end annotation
.end field

.field public static parsePackage:Lreflection/MirrorReflection$MethodWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lreflection/MirrorReflection$MethodWrapper<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 11
    const-class v0, Landroid/content/pm/PackageParser;

    invoke-static {v0}, Lreflection/MirrorReflection;->on(Ljava/lang/Class;)Lreflection/MirrorReflection;

    move-result-object v0

    sput-object v0, Lreflection/android/content/pm/PackageParserJellyBean;->REF:Lreflection/MirrorReflection;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    .line 13
    const-class v3, Landroid/content/pm/PackageParser$Package;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "collectCertificates"

    invoke-virtual {v0, v3, v2}, Lreflection/MirrorReflection;->method(Ljava/lang/String;[Ljava/lang/Class;)Lreflection/MirrorReflection$MethodWrapper;

    move-result-object v2

    sput-object v2, Lreflection/android/content/pm/PackageParserJellyBean;->collectCertificates:Lreflection/MirrorReflection$MethodWrapper;

    new-array v2, v5, [Ljava/lang/Class;

    .line 14
    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lreflection/MirrorReflection;->constructor([Ljava/lang/Class;)Lreflection/MirrorReflection$ConstructorWrapper;

    move-result-object v2

    sput-object v2, Lreflection/android/content/pm/PackageParserJellyBean;->constructor:Lreflection/MirrorReflection$ConstructorWrapper;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Class;

    .line 15
    const-class v3, Ljava/io/File;

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v5

    const-class v3, Landroid/util/DisplayMetrics;

    aput-object v3, v2, v1

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x3

    aput-object v1, v2, v3

    const-string v1, "parsePackage"

    invoke-virtual {v0, v1, v2}, Lreflection/MirrorReflection;->method(Ljava/lang/String;[Ljava/lang/Class;)Lreflection/MirrorReflection$MethodWrapper;

    move-result-object v0

    sput-object v0, Lreflection/android/content/pm/PackageParserJellyBean;->parsePackage:Lreflection/MirrorReflection$MethodWrapper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
