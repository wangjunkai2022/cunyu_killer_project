.class public final Ltop/niunaijun/blackbox/fake/delegate/AppInstrumentation;
.super Ltop/niunaijun/blackbox/fake/delegate/BaseInstrumentationDelegate;
.source "AppInstrumentation.java"

# interfaces
.implements Ltop/niunaijun/blackbox/fake/hook/IInjectHook;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final TAG:Ljava/lang/String; = "AppInstrumentation"

.field private static sAppInstrumentation:Ltop/niunaijun/blackbox/fake/delegate/AppInstrumentation;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/delegate/BaseInstrumentationDelegate;-><init>()V

    return-void
.end method

.method private checkHCallback()V
    .locals 2

    .line 97
    invoke-static {}, Ltop/niunaijun/blackbox/fake/hook/HookManager;->get()Ltop/niunaijun/blackbox/fake/hook/HookManager;

    move-result-object v0

    const-class v1, Ltop/niunaijun/blackbox/fake/service/HCallbackProxy;

    invoke-virtual {v0, v1}, Ltop/niunaijun/blackbox/fake/hook/HookManager;->checkEnv(Ljava/lang/Class;)V

    return-void
.end method

.method private checkInstrumentation(Landroid/app/Instrumentation;)Z
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instrumentation"
        }
    .end annotation

    .line 68
    instance-of v0, p1, Ltop/niunaijun/blackbox/fake/delegate/AppInstrumentation;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 71
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 72
    const-class v2, Landroid/app/Instrumentation;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    return v3

    .line 77
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 78
    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v2, v5

    .line 79
    const-class v7, Landroid/app/Instrumentation;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 80
    invoke-virtual {v6, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 82
    :try_start_0
    invoke-virtual {v6, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 83
    instance-of v6, v6, Ltop/niunaijun/blackbox/fake/delegate/AppInstrumentation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_2

    return v1

    :catch_0
    return v3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 91
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 92
    const-class v2, Landroid/app/Instrumentation;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v3
.end method

.method public static get()Ltop/niunaijun/blackbox/fake/delegate/AppInstrumentation;
    .locals 2

    .line 31
    sget-object v0, Ltop/niunaijun/blackbox/fake/delegate/AppInstrumentation;->sAppInstrumentation:Ltop/niunaijun/blackbox/fake/delegate/AppInstrumentation;

    if-nez v0, :cond_1

    .line 32
    const-class v0, Ltop/niunaijun/blackbox/fake/delegate/AppInstrumentation;

    monitor-enter v0

    .line 33
    :try_start_0
    sget-object v1, Ltop/niunaijun/blackbox/fake/delegate/AppInstrumentation;->sAppInstrumentation:Ltop/niunaijun/blackbox/fake/delegate/AppInstrumentation;

    if-nez v1, :cond_0

    .line 34
    new-instance v1, Ltop/niunaijun/blackbox/fake/delegate/AppInstrumentation;

    invoke-direct {v1}, Ltop/niunaijun/blackbox/fake/delegate/AppInstrumentation;-><init>()V

    sput-object v1, Ltop/niunaijun/blackbox/fake/delegate/AppInstrumentation;->sAppInstrumentation:Ltop/niunaijun/blackbox/fake/delegate/AppInstrumentation;

    .line 36
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 38
    :cond_1
    :goto_0
    sget-object v0, Ltop/niunaijun/blackbox/fake/delegate/AppInstrumentation;->sAppInstrumentation:Ltop/niunaijun/blackbox/fake/delegate/AppInstrumentation;

    return-object v0
.end method

.method private getCurrInstrumentation()Landroid/app/Instrumentation;
    .locals 2

    .line 58
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->mainThread()Ljava/lang/Object;

    move-result-object v0

    .line 59
    sget-object v1, Lreflection/android/app/ActivityThread;->mInstrumentation:Lreflection/MirrorReflection$FieldWrapper;

    invoke-virtual {v1, v0}, Lreflection/MirrorReflection$FieldWrapper;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Instrumentation;

    return-object v0
.end method


# virtual methods
.method public callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "icicle"
        }
    .end annotation

    .line 120
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/delegate/AppInstrumentation;->checkHCallback()V

    .line 121
    sget-object v0, Ltop/niunaijun/blackbox/fake/delegate/AppInstrumentation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callActivityOnCreate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-static {p1}, Ltop/niunaijun/blackbox/utils/compat/ContextCompat;->fix(Landroid/content/Context;)V

    .line 123
    invoke-super {p0, p1, p2}, Ltop/niunaijun/blackbox/fake/delegate/BaseInstrumentationDelegate;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public callApplicationOnCreate(Landroid/app/Application;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "app"
        }
    .end annotation

    .line 128
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/delegate/AppInstrumentation;->checkHCallback()V

    .line 129
    invoke-super {p0, p1}, Ltop/niunaijun/blackbox/fake/delegate/BaseInstrumentationDelegate;->callApplicationOnCreate(Landroid/app/Application;)V

    return-void
.end method

.method public injectHook()V
    .locals 2

    .line 47
    :try_start_0
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/delegate/AppInstrumentation;->getCurrInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    if-eq v0, p0, :cond_1

    .line 48
    invoke-direct {p0, v0}, Ltop/niunaijun/blackbox/fake/delegate/AppInstrumentation;->checkInstrumentation(Landroid/app/Instrumentation;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    iput-object v0, p0, Ltop/niunaijun/blackbox/fake/delegate/AppInstrumentation;->mBaseInstrumentation:Landroid/app/Instrumentation;

    .line 51
    sget-object v0, Lreflection/android/app/ActivityThread;->mInstrumentation:Lreflection/MirrorReflection$FieldWrapper;

    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->mainThread()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lreflection/MirrorReflection$FieldWrapper;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 53
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public isBadEnv()Z
    .locals 1

    .line 64
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/delegate/AppInstrumentation;->getCurrInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    invoke-direct {p0, v0}, Ltop/niunaijun/blackbox/fake/delegate/AppInstrumentation;->checkInstrumentation(Landroid/app/Instrumentation;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cl",
            "className",
            "intent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 134
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Ltop/niunaijun/blackbox/fake/delegate/BaseInstrumentationDelegate;->newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 136
    :catch_0
    iget-object v0, p0, Ltop/niunaijun/blackbox/fake/delegate/AppInstrumentation;->mBaseInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Instrumentation;->newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object p1

    return-object p1
.end method

.method public newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cl",
            "className",
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 102
    invoke-static {p3}, Ltop/niunaijun/blackbox/utils/compat/ContextCompat;->fix(Landroid/content/Context;)V

    .line 103
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->get()Ltop/niunaijun/blackbox/BlackBoxCore;

    move-result-object v0

    invoke-virtual {v0}, Ltop/niunaijun/blackbox/BlackBoxCore;->isEnableHookDump()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    new-instance v0, Ljava/io/File;

    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->get()Ltop/niunaijun/blackbox/BlackBoxCore;

    move-result-object v1

    invoke-virtual {v1}, Ltop/niunaijun/blackbox/BlackBoxCore;->getDexDumpDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-static {v0}, Ltop/niunaijun/blackbox/utils/FileUtils;->mkdirs(Ljava/lang/String;)V

    .line 106
    const-class v1, Ltop/niunaijun/blackbox/core/VMCore;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    :try_start_0
    const-string v2, "hookDumpDex"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 108
    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 109
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v2, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v6

    .line 110
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 112
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 115
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Ltop/niunaijun/blackbox/fake/delegate/BaseInstrumentationDelegate;->newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;

    move-result-object p1

    return-object p1
.end method
