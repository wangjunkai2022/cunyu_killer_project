.class public Ltop/niunaijun/blackbox/utils/compat/ContextCompat;
.super Ljava/lang/Object;
.source "ContextCompat.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ContextFixer"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fix(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    .line 23
    :cond_0
    :try_start_0
    instance-of v1, p0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1

    .line 24
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    return-void

    .line 30
    :cond_1
    sget-object v0, Lreflection/android/app/ContextImpl;->mPackageManager:Lreflection/MirrorReflection$FieldWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lreflection/MirrorReflection$FieldWrapper;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 34
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 37
    :goto_0
    sget-object v0, Lreflection/android/app/ContextImpl;->mBasePackageName:Lreflection/MirrorReflection$FieldWrapper;

    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getHostPkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lreflection/MirrorReflection$FieldWrapper;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 38
    sget-object v0, Lreflection/android/app/ContextImpl;->mOpPackageName:Lreflection/MirrorReflection$FieldWrapper;

    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getHostPkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lreflection/MirrorReflection$FieldWrapper;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 40
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
