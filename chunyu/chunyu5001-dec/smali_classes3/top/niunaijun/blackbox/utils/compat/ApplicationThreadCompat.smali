.class public Ltop/niunaijun/blackbox/utils/compat/ApplicationThreadCompat;
.super Ljava/lang/Object;
.source "ApplicationThreadCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "binder"
        }
    .end annotation

    .line 12
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isOreo()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 13
    sget-object v0, Lreflection/android/app/IApplicationThreadOreo$Stub;->asInterface:Lreflection/MirrorReflection$StaticMethodWrapper;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    invoke-virtual {v0, v2}, Lreflection/MirrorReflection$StaticMethodWrapper;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IInterface;

    return-object p0

    .line 15
    :cond_0
    sget-object v0, Lreflection/android/app/ApplicationThreadNative;->asInterface:Lreflection/MirrorReflection$MethodWrapper;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lreflection/MirrorReflection$MethodWrapper;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IInterface;

    return-object p0
.end method
