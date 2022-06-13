.class public Lreflection/android/os/ServiceManager;
.super Ljava/lang/Object;
.source "ServiceManager.java"


# static fields
.field public static final REF:Lreflection/MirrorReflection;

.field public static addService:Lreflection/MirrorReflection$StaticMethodWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lreflection/MirrorReflection$StaticMethodWrapper<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public static getIServiceManager:Lreflection/MirrorReflection$StaticMethodWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lreflection/MirrorReflection$StaticMethodWrapper<",
            "Landroid/os/IInterface;",
            ">;"
        }
    .end annotation
.end field

.field public static getService:Lreflection/MirrorReflection$StaticMethodWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lreflection/MirrorReflection$StaticMethodWrapper<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field public static sCache:Lreflection/MirrorReflection$FieldWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lreflection/MirrorReflection$FieldWrapper<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "android.os.ServiceManager"

    .line 11
    invoke-static {v0}, Lreflection/MirrorReflection;->on(Ljava/lang/String;)Lreflection/MirrorReflection;

    move-result-object v0

    sput-object v0, Lreflection/android/os/ServiceManager;->REF:Lreflection/MirrorReflection;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    .line 12
    const-class v2, Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-class v4, Landroid/os/IBinder;

    aput-object v4, v1, v2

    const-string v2, "addService"

    invoke-virtual {v0, v2, v1}, Lreflection/MirrorReflection;->staticMethod(Ljava/lang/String;[Ljava/lang/Class;)Lreflection/MirrorReflection$StaticMethodWrapper;

    move-result-object v1

    sput-object v1, Lreflection/android/os/ServiceManager;->addService:Lreflection/MirrorReflection$StaticMethodWrapper;

    new-array v1, v3, [Ljava/lang/Class;

    const-string v2, "getIServiceManager"

    .line 13
    invoke-virtual {v0, v2, v1}, Lreflection/MirrorReflection;->staticMethod(Ljava/lang/String;[Ljava/lang/Class;)Lreflection/MirrorReflection$StaticMethodWrapper;

    move-result-object v1

    sput-object v1, Lreflection/android/os/ServiceManager;->getIServiceManager:Lreflection/MirrorReflection$StaticMethodWrapper;

    new-array v1, v3, [Ljava/lang/Class;

    const-string v2, "getService"

    .line 14
    invoke-virtual {v0, v2, v1}, Lreflection/MirrorReflection;->staticMethod(Ljava/lang/String;[Ljava/lang/Class;)Lreflection/MirrorReflection$StaticMethodWrapper;

    move-result-object v1

    sput-object v1, Lreflection/android/os/ServiceManager;->getService:Lreflection/MirrorReflection$StaticMethodWrapper;

    const-string v1, "sCache"

    .line 15
    invoke-virtual {v0, v1}, Lreflection/MirrorReflection;->field(Ljava/lang/String;)Lreflection/MirrorReflection$FieldWrapper;

    move-result-object v0

    sput-object v0, Lreflection/android/os/ServiceManager;->sCache:Lreflection/MirrorReflection$FieldWrapper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
