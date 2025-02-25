.class public Ltop/niunaijun/blackbox/utils/compat/BundleCompat;
.super Ljava/lang/Object;
.source "BundleCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearParcelledData(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bundle"
        }
    .end annotation

    .line 44
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 45
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 48
    sget-object v1, Lreflection/android/os/BaseBundle;->REF:Lreflection/MirrorReflection;

    invoke-virtual {v1}, Lreflection/MirrorReflection;->getClazz()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 49
    sget-object v1, Lreflection/android/os/BaseBundle;->mParcelledData:Lreflection/MirrorReflection$FieldWrapper;

    invoke-virtual {v1, p0}, Lreflection/MirrorReflection$FieldWrapper;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcel;

    if-eqz v1, :cond_0

    .line 51
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 53
    :cond_0
    sget-object v1, Lreflection/android/os/BaseBundle;->mParcelledData:Lreflection/MirrorReflection$FieldWrapper;

    invoke-virtual {v1, p0, v0}, Lreflection/MirrorReflection$FieldWrapper;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 54
    :cond_1
    sget-object v1, Lreflection/android/os/BundleICS;->REF:Lreflection/MirrorReflection;

    invoke-virtual {v1}, Lreflection/MirrorReflection;->getClazz()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 55
    sget-object v1, Lreflection/android/os/BundleICS;->mParcelledData:Lreflection/MirrorReflection$FieldWrapper;

    invoke-virtual {v1, p0}, Lreflection/MirrorReflection$FieldWrapper;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcel;

    if-eqz v1, :cond_2

    .line 57
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 59
    :cond_2
    sget-object v1, Lreflection/android/os/BundleICS;->mParcelledData:Lreflection/MirrorReflection$FieldWrapper;

    invoke-virtual {v1, p0, v0}, Lreflection/MirrorReflection$FieldWrapper;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static getBinder(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/IBinder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "intent",
            "key"
        }
    .end annotation

    .line 36
    invoke-virtual {p0, p1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "binder"

    .line 38
    invoke-static {p0, p1}, Ltop/niunaijun/blackbox/utils/compat/BundleCompat;->getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bundle",
            "key"
        }
    .end annotation

    .line 14
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 15
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0

    .line 17
    :cond_0
    sget-object v0, Lreflection/android/os/Bundle;->getIBinder:Lreflection/MirrorReflection$MethodWrapper;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Lreflection/MirrorReflection$MethodWrapper;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;

    return-object p0
.end method

.method public static putBinder(Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "key",
            "value"
        }
    .end annotation

    .line 30
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "binder"

    .line 31
    invoke-static {v0, v1, p2}, Ltop/niunaijun/blackbox/utils/compat/BundleCompat;->putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 32
    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-void
.end method

.method public static putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bundle",
            "key",
            "value"
        }
    .end annotation

    .line 22
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 23
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_0

    .line 25
    :cond_0
    sget-object v0, Lreflection/android/os/Bundle;->putIBinder:Lreflection/MirrorReflection$MethodWrapper;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-virtual {v0, p0, v1}, Lreflection/MirrorReflection$MethodWrapper;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
