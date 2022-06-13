.class public Ltop/niunaijun/blackbox/fake/delegate/ContentProviderDelegate;
.super Ljava/lang/Object;
.source "ContentProviderDelegate.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ContentProviderDelegate"

.field private static sInjected:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Ltop/niunaijun/blackbox/fake/delegate/ContentProviderDelegate;->sInjected:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clearContentProvider(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cache"
        }
    .end annotation

    .line 82
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isOreo()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 83
    sget-object v0, Lreflection/android/providers/Settings$NameValueCacheOreo;->mProviderHolder:Lreflection/MirrorReflection$FieldWrapper;

    invoke-virtual {v0, p0}, Lreflection/MirrorReflection$FieldWrapper;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 85
    sget-object v0, Lreflection/android/providers/Settings$ContentProviderHolder;->mContentProvider:Lreflection/MirrorReflection$FieldWrapper;

    invoke-virtual {v0, p0, v1}, Lreflection/MirrorReflection$FieldWrapper;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 88
    :cond_0
    sget-object v0, Lreflection/android/providers/Settings$NameValueCache;->mContentProvider:Lreflection/MirrorReflection$FieldWrapper;

    invoke-virtual {v0, p0, v1}, Lreflection/MirrorReflection$FieldWrapper;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static clearSettingProvider()V
    .locals 2

    .line 65
    sget-object v0, Lreflection/android/providers/Settings$System;->sNameValueCache:Lreflection/MirrorReflection$FieldWrapper;

    invoke-virtual {v0}, Lreflection/MirrorReflection$FieldWrapper;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    invoke-static {v0}, Ltop/niunaijun/blackbox/fake/delegate/ContentProviderDelegate;->clearContentProvider(Ljava/lang/Object;)V

    .line 69
    :cond_0
    sget-object v0, Lreflection/android/providers/Settings$Secure;->sNameValueCache:Lreflection/MirrorReflection$FieldWrapper;

    invoke-virtual {v0}, Lreflection/MirrorReflection$FieldWrapper;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 71
    invoke-static {v0}, Ltop/niunaijun/blackbox/fake/delegate/ContentProviderDelegate;->clearContentProvider(Ljava/lang/Object;)V

    .line 73
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_2

    sget-object v0, Lreflection/android/providers/Settings$Global;->REF:Lreflection/MirrorReflection;

    invoke-virtual {v0}, Lreflection/MirrorReflection;->getClazz()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 74
    sget-object v0, Lreflection/android/providers/Settings$Global;->sNameValueCache:Lreflection/MirrorReflection$FieldWrapper;

    invoke-virtual {v0}, Lreflection/MirrorReflection$FieldWrapper;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 76
    invoke-static {v0}, Ltop/niunaijun/blackbox/fake/delegate/ContentProviderDelegate;->clearContentProvider(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public static init()V
    .locals 4

    .line 58
    invoke-static {}, Ltop/niunaijun/blackbox/fake/delegate/ContentProviderDelegate;->clearSettingProvider()V

    .line 60
    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://settings"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method public static update(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "auth"
        }
    .end annotation

    .line 33
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isOreo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    sget-object v0, Lreflection/android/content/ContentProviderHolderOreo;->provider:Lreflection/MirrorReflection$FieldWrapper;

    invoke-virtual {v0, p0}, Lreflection/MirrorReflection$FieldWrapper;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IInterface;

    goto :goto_0

    .line 36
    :cond_0
    sget-object v0, Lreflection/android/app/IActivityManager$ContentProviderHolder;->provider:Lreflection/MirrorReflection$FieldWrapper;

    invoke-virtual {v0, p0}, Lreflection/MirrorReflection$FieldWrapper;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IInterface;

    .line 39
    :goto_0
    instance-of v1, v0, Ljava/lang/reflect/Proxy;

    if-eqz v1, :cond_1

    return-void

    .line 42
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v1, "settings"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 47
    new-instance p1, Ltop/niunaijun/blackbox/fake/service/provider/ContentProviderStub;

    invoke-direct {p1}, Ltop/niunaijun/blackbox/fake/service/provider/ContentProviderStub;-><init>()V

    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getHostPkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ltop/niunaijun/blackbox/fake/service/provider/ContentProviderStub;->wrapper(Landroid/os/IInterface;Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    goto :goto_1

    .line 44
    :cond_2
    new-instance p1, Ltop/niunaijun/blackbox/fake/service/provider/SettingsProviderStub;

    invoke-direct {p1}, Ltop/niunaijun/blackbox/fake/service/provider/SettingsProviderStub;-><init>()V

    invoke-static {}, Ltop/niunaijun/blackbox/BlackBoxCore;->getHostPkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ltop/niunaijun/blackbox/fake/service/provider/SettingsProviderStub;->wrapper(Landroid/os/IInterface;Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    .line 50
    :goto_1
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isOreo()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 51
    sget-object v0, Lreflection/android/content/ContentProviderHolderOreo;->provider:Lreflection/MirrorReflection$FieldWrapper;

    invoke-virtual {v0, p0, p1}, Lreflection/MirrorReflection$FieldWrapper;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 53
    :cond_3
    sget-object v0, Lreflection/android/app/IActivityManager$ContentProviderHolder;->provider:Lreflection/MirrorReflection$FieldWrapper;

    invoke-virtual {v0, p0, p1}, Lreflection/MirrorReflection$FieldWrapper;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    return-void
.end method
