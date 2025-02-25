.class public Ltop/niunaijun/blackbox/fake/service/HCallbackProxy;
.super Ljava/lang/Object;
.source "HCallbackProxy.java"

# interfaces
.implements Ltop/niunaijun/blackbox/fake/hook/IInjectHook;
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final TAG:Ljava/lang/String; = "HCallbackStub"


# instance fields
.field private mBeing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mOtherCallback:Landroid/os/Handler$Callback;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Ltop/niunaijun/blackbox/fake/service/HCallbackProxy;->mBeing:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private getH()Landroid/os/Handler;
    .locals 2

    .line 40
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->mainThread()Ljava/lang/Object;

    move-result-object v0

    .line 41
    sget-object v1, Lreflection/android/app/ActivityThread;->mH:Lreflection/MirrorReflection$FieldWrapper;

    invoke-virtual {v1, v0}, Lreflection/MirrorReflection$FieldWrapper;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    return-object v0
.end method

.method private getHCallback()Landroid/os/Handler$Callback;
    .locals 2

    .line 36
    sget-object v0, Lreflection/android/os/Handler;->mCallback:Lreflection/MirrorReflection$FieldWrapper;

    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/service/HCallbackProxy;->getH()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lreflection/MirrorReflection$FieldWrapper;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler$Callback;

    return-object v0
.end method

.method private getLaunchActivityItem(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clientTransaction"
        }
    .end annotation

    .line 90
    sget-object v0, Lreflection/android/app/servertransaction/ClientTransaction;->mActivityCallbacks:Lreflection/MirrorReflection$FieldWrapper;

    invoke-virtual {v0, p1}, Lreflection/MirrorReflection$FieldWrapper;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 92
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 93
    sget-object v1, Lreflection/android/app/servertransaction/LaunchActivityItem;->REF:Lreflection/MirrorReflection;

    invoke-virtual {v1}, Lreflection/MirrorReflection;->getClazz()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private handleLaunchActivity(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "client"
        }
    .end annotation

    .line 102
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isPie()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/fake/service/HCallbackProxy;->getLaunchActivityItem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 113
    :cond_1
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isPie()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 114
    sget-object v1, Lreflection/android/app/servertransaction/LaunchActivityItem;->mIntent:Lreflection/MirrorReflection$FieldWrapper;

    invoke-virtual {v1, p1}, Lreflection/MirrorReflection$FieldWrapper;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    goto :goto_0

    .line 116
    :cond_2
    sget-object v1, Lreflection/android/app/ActivityThread$ActivityClientRecord;->intent:Lreflection/MirrorReflection$FieldWrapper;

    invoke-virtual {v1, p1}, Lreflection/MirrorReflection$FieldWrapper;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    :goto_0
    if-nez p1, :cond_3

    return v0

    .line 122
    :cond_3
    invoke-static {p1}, Ltop/niunaijun/blackbox/proxy/record/ProxyActivityRecord;->create(Landroid/content/Intent;)Ltop/niunaijun/blackbox/proxy/record/ProxyActivityRecord;

    move-result-object p1

    .line 123
    iget-object p1, p1, Ltop/niunaijun/blackbox/proxy/record/ProxyActivityRecord;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz p1, :cond_4

    .line 126
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->currentActivityThread()Ltop/niunaijun/blackbox/app/BActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Ltop/niunaijun/blackbox/app/BActivityThread;->isInit()Z

    move-result v1

    if-nez v1, :cond_4

    .line 127
    invoke-static {}, Ltop/niunaijun/blackbox/app/BActivityThread;->currentActivityThread()Ltop/niunaijun/blackbox/app/BActivityThread;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Ltop/niunaijun/blackbox/app/BActivityThread;->bindApplication(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Ltop/niunaijun/blackbox/fake/service/HCallbackProxy;->mBeing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 63
    :try_start_0
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isPie()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget v0, p1, Landroid/os/Message;->what:I

    sget-object v3, Lreflection/android/app/ActivityThread$H;->EXECUTE_TRANSACTION:Lreflection/MirrorReflection$FieldWrapper;

    invoke-virtual {v3}, Lreflection/MirrorReflection$FieldWrapper;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v0, v3, :cond_1

    .line 65
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v0}, Ltop/niunaijun/blackbox/fake/service/HCallbackProxy;->handleLaunchActivity(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/service/HCallbackProxy;->getH()Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :goto_0
    iget-object p1, p0, Ltop/niunaijun/blackbox/fake/service/HCallbackProxy;->mBeing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return v1

    .line 71
    :cond_0
    :try_start_1
    iget v0, p1, Landroid/os/Message;->what:I

    sget-object v3, Lreflection/android/app/ActivityThread$H;->LAUNCH_ACTIVITY:Lreflection/MirrorReflection$FieldWrapper;

    invoke-virtual {v3}, Lreflection/MirrorReflection$FieldWrapper;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v0, v3, :cond_1

    .line 72
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v0}, Ltop/niunaijun/blackbox/fake/service/HCallbackProxy;->handleLaunchActivity(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/service/HCallbackProxy;->getH()Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0

    .line 78
    :cond_1
    iget-object v0, p0, Ltop/niunaijun/blackbox/fake/service/HCallbackProxy;->mOtherCallback:Landroid/os/Handler$Callback;

    if-eqz v0, :cond_2

    .line 79
    invoke-interface {v0, p1}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    iget-object v0, p0, Ltop/niunaijun/blackbox/fake/service/HCallbackProxy;->mBeing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return p1

    :cond_2
    iget-object p1, p0, Ltop/niunaijun/blackbox/fake/service/HCallbackProxy;->mBeing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return v2

    :catchall_0
    move-exception p1

    iget-object v0, p0, Ltop/niunaijun/blackbox/fake/service/HCallbackProxy;->mBeing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 84
    throw p1

    :cond_3
    return v2
.end method

.method public injectHook()V
    .locals 2

    .line 46
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/service/HCallbackProxy;->getHCallback()Landroid/os/Handler$Callback;

    move-result-object v0

    iput-object v0, p0, Ltop/niunaijun/blackbox/fake/service/HCallbackProxy;->mOtherCallback:Landroid/os/Handler$Callback;

    if-eqz v0, :cond_1

    if-eq v0, p0, :cond_0

    .line 47
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Ltop/niunaijun/blackbox/fake/service/HCallbackProxy;->mOtherCallback:Landroid/os/Handler$Callback;

    .line 50
    :cond_1
    sget-object v0, Lreflection/android/os/Handler;->mCallback:Lreflection/MirrorReflection$FieldWrapper;

    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/service/HCallbackProxy;->getH()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lreflection/MirrorReflection$FieldWrapper;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public isBadEnv()Z
    .locals 1

    .line 55
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/service/HCallbackProxy;->getHCallback()Landroid/os/Handler$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
