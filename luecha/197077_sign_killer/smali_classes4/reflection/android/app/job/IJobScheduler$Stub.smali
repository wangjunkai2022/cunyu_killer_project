.class public Lreflection/android/app/job/IJobScheduler$Stub;
.super Ljava/lang/Object;
.source "IJobScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lreflection/android/app/job/IJobScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Stub"
.end annotation


# static fields
.field public static final REF:Lreflection/MirrorReflection;

.field public static asInterface:Lreflection/MirrorReflection$StaticMethodWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lreflection/MirrorReflection$StaticMethodWrapper<",
            "Landroid/os/IInterface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "android.app.job.IJobScheduler$Stub"

    .line 10
    invoke-static {v0}, Lreflection/MirrorReflection;->on(Ljava/lang/String;)Lreflection/MirrorReflection;

    move-result-object v0

    sput-object v0, Lreflection/android/app/job/IJobScheduler$Stub;->REF:Lreflection/MirrorReflection;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    .line 11
    const-class v3, Landroid/os/IBinder;

    aput-object v3, v1, v2

    const-string v2, "asInterface"

    invoke-virtual {v0, v2, v1}, Lreflection/MirrorReflection;->staticMethod(Ljava/lang/String;[Ljava/lang/Class;)Lreflection/MirrorReflection$StaticMethodWrapper;

    move-result-object v0

    sput-object v0, Lreflection/android/app/job/IJobScheduler$Stub;->asInterface:Lreflection/MirrorReflection$StaticMethodWrapper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
