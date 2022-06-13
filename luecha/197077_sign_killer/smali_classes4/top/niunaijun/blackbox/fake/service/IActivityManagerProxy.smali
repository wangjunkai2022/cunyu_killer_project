.class public Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy;
.super Ltop/niunaijun/blackbox/fake/hook/ClassInvocationStub;
.source "IActivityManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$GrantUriPermission;,
        Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$RegisterReceiver;,
        Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$SendIntentSender;,
        Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$BroadcastIntent;,
        Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$BroadcastIntentWithFeature;,
        Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$GetIntentSenderWithFeature;,
        Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$GetIntentSender;,
        Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$UnbindService;,
        Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$BindIsolatedService;,
        Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$BindService;,
        Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$StopService;,
        Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$StartService;,
        Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$GetContentProvider;
    }
.end annotation

.annotation runtime Ltop/niunaijun/blackbox/fake/hook/ScanClass;
    value = {
        Ltop/niunaijun/blackbox/fake/service/ActivityManagerCommonProxy;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ActivityManagerStub"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/hook/ClassInvocationStub;-><init>()V

    return-void
.end method


# virtual methods
.method protected getWho()Ljava/lang/Object;
    .locals 3

    .line 34
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isOreo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    sget-object v0, Lreflection/android/app/ActivityManagerOreo;->IActivityManagerSingleton:Lreflection/MirrorReflection$FieldWrapper;

    invoke-virtual {v0}, Lreflection/MirrorReflection$FieldWrapper;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 36
    :cond_0
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isL()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    sget-object v0, Lreflection/android/app/ActivityManagerNative;->gDefault:Lreflection/MirrorReflection$FieldWrapper;

    invoke-virtual {v0}, Lreflection/MirrorReflection$FieldWrapper;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 39
    :goto_0
    sget-object v1, Lreflection/android/util/Singleton;->get:Lreflection/MirrorReflection$MethodWrapper;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lreflection/MirrorReflection$MethodWrapper;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "base",
            "proxy"
        }
    .end annotation

    .line 45
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isOreo()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 46
    sget-object p1, Lreflection/android/app/ActivityManagerOreo;->IActivityManagerSingleton:Lreflection/MirrorReflection$FieldWrapper;

    invoke-virtual {p1}, Lreflection/MirrorReflection$FieldWrapper;->get()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 47
    :cond_0
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isL()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 48
    sget-object p1, Lreflection/android/app/ActivityManagerNative;->gDefault:Lreflection/MirrorReflection$FieldWrapper;

    invoke-virtual {p1}, Lreflection/MirrorReflection$FieldWrapper;->get()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 50
    :goto_0
    sget-object v0, Lreflection/android/util/Singleton;->mInstance:Lreflection/MirrorReflection$FieldWrapper;

    invoke-virtual {v0, p1, p2}, Lreflection/MirrorReflection$FieldWrapper;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public isBadEnv()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
