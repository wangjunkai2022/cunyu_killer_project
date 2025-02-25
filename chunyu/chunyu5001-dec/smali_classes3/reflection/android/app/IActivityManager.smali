.class public Lreflection/android/app/IActivityManager;
.super Ljava/lang/Object;
.source "IActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lreflection/android/app/IActivityManager$ContentProviderHolder;
    }
.end annotation


# static fields
.field public static final REF:Lreflection/MirrorReflection;

.field public static startActivity:Lreflection/MirrorReflection$MethodWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lreflection/MirrorReflection$MethodWrapper<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "android.app.IActivityManager"

    .line 9
    invoke-static {v0}, Lreflection/MirrorReflection;->on(Ljava/lang/String;)Lreflection/MirrorReflection;

    move-result-object v0

    sput-object v0, Lreflection/android/app/IActivityManager;->REF:Lreflection/MirrorReflection;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    const-string v2, "startActivity"

    .line 11
    invoke-virtual {v0, v2, v1}, Lreflection/MirrorReflection;->method(Ljava/lang/String;[Ljava/lang/Class;)Lreflection/MirrorReflection$MethodWrapper;

    move-result-object v0

    sput-object v0, Lreflection/android/app/IActivityManager;->startActivity:Lreflection/MirrorReflection$MethodWrapper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
