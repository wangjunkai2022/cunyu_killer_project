.class public Ltop/niunaijun/blackbox/core/system/pm/BPackage;
.super Ljava/lang/Object;
.source "BPackage.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackbox/core/system/pm/BPackage$Component;,
        Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;,
        Ltop/niunaijun/blackbox/core/system/pm/BPackage$SigningDetails;,
        Ltop/niunaijun/blackbox/core/system/pm/BPackage$ProviderIntentInfo;,
        Ltop/niunaijun/blackbox/core/system/pm/BPackage$ServiceIntentInfo;,
        Ltop/niunaijun/blackbox/core/system/pm/BPackage$ActivityIntentInfo;,
        Ltop/niunaijun/blackbox/core/system/pm/BPackage$PermissionGroup;,
        Ltop/niunaijun/blackbox/core/system/pm/BPackage$Permission;,
        Ltop/niunaijun/blackbox/core/system/pm/BPackage$Instrumentation;,
        Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;,
        Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;,
        Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ltop/niunaijun/blackbox/core/system/pm/BPackage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public activities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;",
            ">;"
        }
    .end annotation
.end field

.field public applicationInfo:Landroid/content/pm/ApplicationInfo;

.field public baseCodePath:Ljava/lang/String;

.field public configPreferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ConfigurationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public instrumentation:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ltop/niunaijun/blackbox/core/system/pm/BPackage$Instrumentation;",
            ">;"
        }
    .end annotation
.end field

.field public mAppMetaData:Landroid/os/Bundle;

.field public mExtras:Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;

.field public mPreferredOrder:I

.field public mSharedUserId:Ljava/lang/String;

.field public mSharedUserLabel:I

.field public mSignatures:[Landroid/content/pm/Signature;

.field public mSigningDetails:Ltop/niunaijun/blackbox/core/system/pm/BPackage$SigningDetails;

.field public mVersionCode:I

.field public mVersionName:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public permissionGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ltop/niunaijun/blackbox/core/system/pm/BPackage$PermissionGroup;",
            ">;"
        }
    .end annotation
.end field

.field public permissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ltop/niunaijun/blackbox/core/system/pm/BPackage$Permission;",
            ">;"
        }
    .end annotation
.end field

.field public providers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;",
            ">;"
        }
    .end annotation
.end field

.field public receivers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;",
            ">;"
        }
    .end annotation
.end field

.field public reqFeatures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/FeatureInfo;",
            ">;"
        }
    .end annotation
.end field

.field public requestedPermissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public services:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;",
            ">;"
        }
    .end annotation
.end field

.field public usesLibraries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public usesOptionalLibraries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 721
    new-instance v0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$1;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/core/system/pm/BPackage$1;-><init>()V

    sput-object v0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageParser$Package;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aPackage"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->activities:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->receivers:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->providers:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->services:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->instrumentation:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->permissions:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->permissionGroups:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->requestedPermissions:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->configPreferences:Ljava/util/ArrayList;

    .line 59
    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->reqFeatures:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->activities:Ljava/util/ArrayList;

    .line 63
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Activity;

    .line 64
    new-instance v2, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;

    invoke-direct {v2, v1}, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;-><init>(Landroid/content/pm/PackageParser$Activity;)V

    .line 65
    iget-object v1, v2, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ActivityIntentInfo;

    .line 66
    iput-object v2, v3, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ActivityIntentInfo;->activity:Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;

    goto :goto_1

    .line 68
    :cond_0
    iput-object p0, v2, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;->owner:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    .line 69
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->activities:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 72
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->receivers:Ljava/util/ArrayList;

    .line 73
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Activity;

    .line 74
    new-instance v2, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;

    invoke-direct {v2, v1}, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;-><init>(Landroid/content/pm/PackageParser$Activity;)V

    .line 75
    iget-object v1, v2, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ActivityIntentInfo;

    .line 76
    iput-object v2, v3, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ActivityIntentInfo;->activity:Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;

    goto :goto_3

    .line 78
    :cond_2
    iput-object p0, v2, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;->owner:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    .line 79
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 82
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->providers:Ljava/util/ArrayList;

    .line 83
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Provider;

    .line 84
    new-instance v2, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;

    invoke-direct {v2, v1}, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;-><init>(Landroid/content/pm/PackageParser$Provider;)V

    .line 85
    iget-object v1, v2, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;->intents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ProviderIntentInfo;

    .line 86
    iput-object v2, v3, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ProviderIntentInfo;->provider:Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;

    goto :goto_5

    .line 88
    :cond_4
    iput-object p0, v2, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;->owner:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    .line 89
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->providers:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 92
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->services:Ljava/util/ArrayList;

    .line 93
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Service;

    .line 94
    new-instance v2, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;

    invoke-direct {v2, v1}, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;-><init>(Landroid/content/pm/PackageParser$Service;)V

    .line 95
    iget-object v1, v2, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;->intents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ServiceIntentInfo;

    .line 96
    iput-object v2, v3, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ServiceIntentInfo;->service:Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;

    goto :goto_7

    .line 98
    :cond_6
    iput-object p0, v2, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;->owner:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    .line 99
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->services:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 102
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->instrumentation:Ljava/util/ArrayList;

    .line 103
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Instrumentation;

    .line 104
    new-instance v2, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Instrumentation;

    invoke-direct {v2, v1}, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Instrumentation;-><init>(Landroid/content/pm/PackageParser$Instrumentation;)V

    .line 105
    iput-object p0, v2, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Instrumentation;->owner:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    .line 106
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 109
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->permissions:Ljava/util/ArrayList;

    .line 110
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Permission;

    .line 111
    new-instance v2, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Permission;

    invoke-direct {v2, v1}, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Permission;-><init>(Landroid/content/pm/PackageParser$Permission;)V

    .line 112
    iput-object p0, v2, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Permission;->owner:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    .line 113
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 116
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->permissionGroups:Ljava/util/ArrayList;

    .line 117
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$PermissionGroup;

    .line 118
    new-instance v2, Ltop/niunaijun/blackbox/core/system/pm/BPackage$PermissionGroup;

    invoke-direct {v2, v1}, Ltop/niunaijun/blackbox/core/system/pm/BPackage$PermissionGroup;-><init>(Landroid/content/pm/PackageParser$PermissionGroup;)V

    .line 119
    iput-object p0, v2, Ltop/niunaijun/blackbox/core/system/pm/BPackage$PermissionGroup;->owner:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    .line 120
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->permissionGroups:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 123
    :cond_a
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->requestedPermissions:Ljava/util/ArrayList;

    .line 124
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isPie()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 125
    new-instance v0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$SigningDetails;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-direct {v0, v1}, Ltop/niunaijun/blackbox/core/system/pm/BPackage$SigningDetails;-><init>(Landroid/content/pm/PackageParser$SigningDetails;)V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->mSigningDetails:Ltop/niunaijun/blackbox/core/system/pm/BPackage$SigningDetails;

    .line 126
    iget-object v0, v0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->mSignatures:[Landroid/content/pm/Signature;

    goto :goto_b

    .line 128
    :cond_b
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->mSignatures:[Landroid/content/pm/Signature;

    .line 130
    :goto_b
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->mAppMetaData:Landroid/os/Bundle;

    .line 132
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->packageName:Ljava/lang/String;

    .line 133
    iget v0, p1, Landroid/content/pm/PackageParser$Package;->mPreferredOrder:I

    iput v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->mPreferredOrder:I

    .line 134
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->mSharedUserId:Ljava/lang/String;

    .line 135
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->usesLibraries:Ljava/util/ArrayList;

    .line 136
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->usesOptionalLibraries:Ljava/util/ArrayList;

    .line 137
    iget v0, p1, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iput v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->mVersionCode:I

    .line 138
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 139
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->mVersionName:Ljava/lang/String;

    .line 140
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->baseCodePath:Ljava/lang/String;

    .line 141
    iget v0, p1, Landroid/content/pm/PackageParser$Package;->mSharedUserLabel:I

    iput v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->mSharedUserLabel:I

    .line 142
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->configPreferences:Ljava/util/ArrayList;

    .line 143
    iget-object p1, p1, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    iput-object p1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->reqFeatures:Ljava/util/ArrayList;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->activities:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->receivers:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->providers:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->services:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->instrumentation:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->permissions:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->permissionGroups:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->requestedPermissions:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->configPreferences:Ljava/util/ArrayList;

    .line 59
    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->reqFeatures:Ljava/util/ArrayList;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 148
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->activities:Ljava/util/ArrayList;

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_1

    .line 150
    new-instance v0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;

    invoke-direct {v0, p1}, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;-><init>(Landroid/os/Parcel;)V

    .line 151
    iget-object v2, v0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ActivityIntentInfo;

    .line 152
    iput-object v0, v3, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ActivityIntentInfo;->activity:Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;

    goto :goto_1

    .line 154
    :cond_0
    iput-object p0, v0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;->owner:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    .line 155
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->activities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_0

    .line 158
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 159
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->receivers:Ljava/util/ArrayList;

    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_3

    .line 161
    new-instance v0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;

    invoke-direct {v0, p1}, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;-><init>(Landroid/os/Parcel;)V

    .line 162
    iget-object v2, v0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ActivityIntentInfo;

    .line 163
    iput-object v0, v3, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ActivityIntentInfo;->activity:Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;

    goto :goto_3

    .line 165
    :cond_2
    iput-object p0, v0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;->owner:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    .line 166
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_2

    .line 169
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 170
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->providers:Ljava/util/ArrayList;

    :goto_4
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_5

    .line 172
    new-instance v0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;

    invoke-direct {v0, p1}, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;-><init>(Landroid/os/Parcel;)V

    .line 173
    iget-object v2, v0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;->intents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ProviderIntentInfo;

    .line 174
    iput-object v0, v3, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ProviderIntentInfo;->provider:Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;

    goto :goto_5

    .line 176
    :cond_4
    iput-object p0, v0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;->owner:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    .line 177
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->providers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_4

    .line 180
    :cond_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 181
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->services:Ljava/util/ArrayList;

    :goto_6
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_7

    .line 183
    new-instance v0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;

    invoke-direct {v0, p1}, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;-><init>(Landroid/os/Parcel;)V

    .line 184
    iget-object v2, v0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;->intents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ServiceIntentInfo;

    .line 185
    iput-object v0, v3, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ServiceIntentInfo;->service:Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;

    goto :goto_7

    .line 187
    :cond_6
    iput-object p0, v0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;->owner:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    .line 188
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->services:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_6

    .line 191
    :cond_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 192
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->instrumentation:Ljava/util/ArrayList;

    :goto_8
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_8

    .line 194
    new-instance v0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Instrumentation;

    invoke-direct {v0, p1}, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Instrumentation;-><init>(Landroid/os/Parcel;)V

    .line 195
    iput-object p0, v0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Instrumentation;->owner:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    .line 196
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_8

    .line 199
    :cond_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 200
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->permissions:Ljava/util/ArrayList;

    :goto_9
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_9

    .line 202
    new-instance v0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Permission;

    invoke-direct {v0, p1}, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Permission;-><init>(Landroid/os/Parcel;)V

    .line 203
    iput-object p0, v0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Permission;->owner:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    .line 204
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_9

    .line 207
    :cond_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 208
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->permissionGroups:Ljava/util/ArrayList;

    :goto_a
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_a

    .line 210
    new-instance v0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$PermissionGroup;

    invoke-direct {v0, p1}, Ltop/niunaijun/blackbox/core/system/pm/BPackage$PermissionGroup;-><init>(Landroid/os/Parcel;)V

    .line 211
    iput-object p0, v0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$PermissionGroup;->owner:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    .line 212
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->permissionGroups:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_a

    .line 215
    :cond_a
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 216
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isPie()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 217
    const-class v0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$SigningDetails;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$SigningDetails;

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->mSigningDetails:Ltop/niunaijun/blackbox/core/system/pm/BPackage$SigningDetails;

    .line 219
    :cond_b
    sget-object v0, Landroid/content/pm/Signature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/Signature;

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->mSignatures:[Landroid/content/pm/Signature;

    .line 220
    const-class v0, Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->mAppMetaData:Landroid/os/Bundle;

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->packageName:Ljava/lang/String;

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->mPreferredOrder:I

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->mSharedUserId:Ljava/lang/String;

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->usesLibraries:Ljava/util/ArrayList;

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->usesOptionalLibraries:Ljava/util/ArrayList;

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->mVersionCode:I

    .line 228
    const-class v0, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->mVersionName:Ljava/lang/String;

    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->baseCodePath:Ljava/lang/String;

    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->mSharedUserLabel:I

    .line 232
    sget-object v0, Landroid/content/pm/ConfigurationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->configPreferences:Ljava/util/ArrayList;

    .line 233
    sget-object v0, Landroid/content/pm/FeatureInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->reqFeatures:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dest",
            "flags"
        }
    .end annotation

    .line 574
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->activities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 575
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 576
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->activities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;

    .line 577
    iget-object v3, v1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;->className:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 578
    iget-object v3, v1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;->metaData:Landroid/os/Bundle;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 580
    iget-object v3, v1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 581
    iget-object v3, v1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;->intents:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 582
    iget-object v2, v1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 583
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_0

    .line 585
    iget-object v2, v1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    move v2, v3

    goto :goto_1

    .line 588
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 592
    :cond_2
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 593
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 594
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;

    .line 595
    iget-object v3, v1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;->className:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 596
    iget-object v3, v1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;->metaData:Landroid/os/Bundle;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 598
    iget-object v3, v1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 599
    iget-object v3, v1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;->intents:Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    .line 600
    iget-object v3, v1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 601
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    add-int/lit8 v4, v3, -0x1

    if-lez v3, :cond_3

    .line 603
    iget-object v3, v1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    move v3, v4

    goto :goto_3

    .line 606
    :cond_4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 610
    :cond_5
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->providers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 611
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 612
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->providers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;

    .line 613
    iget-object v3, v1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;->className:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 614
    iget-object v3, v1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;->metaData:Landroid/os/Bundle;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 616
    iget-object v3, v1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;->info:Landroid/content/pm/ProviderInfo;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 617
    iget-object v3, v1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;->intents:Ljava/util/ArrayList;

    if-eqz v3, :cond_7

    .line 618
    iget-object v3, v1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;->intents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 619
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5
    add-int/lit8 v4, v3, -0x1

    if-lez v3, :cond_6

    .line 621
    iget-object v3, v1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;->intents:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    move v3, v4

    goto :goto_5

    .line 624
    :cond_7
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 628
    :cond_8
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->services:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 629
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 630
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->services:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;

    .line 631
    iget-object v3, v1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;->className:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 632
    iget-object v3, v1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;->metaData:Landroid/os/Bundle;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 634
    iget-object v3, v1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;->info:Landroid/content/pm/ServiceInfo;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 635
    iget-object v3, v1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;->intents:Ljava/util/ArrayList;

    if-eqz v3, :cond_a

    .line 636
    iget-object v3, v1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;->intents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 637
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_7
    add-int/lit8 v4, v3, -0x1

    if-lez v3, :cond_9

    .line 639
    iget-object v3, v1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;->intents:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    move v3, v4

    goto :goto_7

    .line 642
    :cond_a
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 646
    :cond_b
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 647
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 648
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Instrumentation;

    .line 649
    iget-object v3, v1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Instrumentation;->className:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 650
    iget-object v3, v1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Instrumentation;->metaData:Landroid/os/Bundle;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 652
    iget-object v3, v1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 653
    iget-object v3, v1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Instrumentation;->intents:Ljava/util/ArrayList;

    if-eqz v3, :cond_d

    .line 654
    iget-object v3, v1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Instrumentation;->intents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 655
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_9
    add-int/lit8 v4, v3, -0x1

    if-lez v3, :cond_c

    .line 657
    iget-object v3, v1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Instrumentation;->intents:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    move v3, v4

    goto :goto_9

    .line 660
    :cond_d
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 664
    :cond_e
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 665
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 666
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Permission;

    .line 667
    iget-object v3, v1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Permission;->className:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 668
    iget-object v3, v1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Permission;->metaData:Landroid/os/Bundle;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 670
    iget-object v3, v1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Permission;->info:Landroid/content/pm/PermissionInfo;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 671
    iget-object v3, v1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Permission;->intents:Ljava/util/ArrayList;

    if-eqz v3, :cond_10

    .line 672
    iget-object v3, v1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Permission;->intents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 673
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_b
    add-int/lit8 v4, v3, -0x1

    if-lez v3, :cond_f

    .line 675
    iget-object v3, v1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Permission;->intents:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    move v3, v4

    goto :goto_b

    .line 678
    :cond_10
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 682
    :cond_11
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->permissionGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 683
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 684
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->permissionGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$PermissionGroup;

    .line 685
    iget-object v3, v1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$PermissionGroup;->className:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 686
    iget-object v3, v1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$PermissionGroup;->metaData:Landroid/os/Bundle;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 688
    iget-object v3, v1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 689
    iget-object v3, v1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$PermissionGroup;->intents:Ljava/util/ArrayList;

    if-eqz v3, :cond_13

    .line 690
    iget-object v3, v1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$PermissionGroup;->intents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 691
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_d
    add-int/lit8 v4, v3, -0x1

    if-lez v3, :cond_12

    .line 693
    iget-object v3, v1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$PermissionGroup;->intents:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    move v3, v4

    goto :goto_d

    .line 696
    :cond_13
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_c

    .line 700
    :cond_14
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 701
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isPie()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 702
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->mSigningDetails:Ltop/niunaijun/blackbox/core/system/pm/BPackage$SigningDetails;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 704
    :cond_15
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->mSignatures:[Landroid/content/pm/Signature;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 705
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->mAppMetaData:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 707
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 708
    iget v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->mPreferredOrder:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 709
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->mSharedUserId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 710
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->usesLibraries:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 711
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->usesOptionalLibraries:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 712
    iget v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->mVersionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 713
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 714
    iget-object p2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->mVersionName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 715
    iget-object p2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->baseCodePath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 716
    iget p2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->mSharedUserLabel:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 717
    iget-object p2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->configPreferences:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 718
    iget-object p2, p0, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->reqFeatures:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
