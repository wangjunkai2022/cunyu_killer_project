.class public Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;
.super Ljava/lang/Object;
.source "ComponentResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ProviderIntentResolver;,
        Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;,
        Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ServiceIntentResolver;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ComponentResolver"


# instance fields
.field private final mActivities:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;

.field private final mLock:Ljava/lang/Object;

.field private final mProviders:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ProviderIntentResolver;

.field private final mProvidersByAuthority:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceivers:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;

.field private final mServices:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ServiceIntentResolver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    .line 34
    new-instance v0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;-><init>(Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$1;)V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mActivities:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;

    .line 39
    new-instance v0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ProviderIntentResolver;

    invoke-direct {v0, v1}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ProviderIntentResolver;-><init>(Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$1;)V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mProviders:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ProviderIntentResolver;

    .line 44
    new-instance v0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;

    invoke-direct {v0, v1}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;-><init>(Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$1;)V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mReceivers:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;

    .line 49
    new-instance v0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ServiceIntentResolver;

    invoke-direct {v0, v1}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ServiceIntentResolver;-><init>(Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$1;)V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mServices:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ServiceIntentResolver;

    .line 53
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mProvidersByAuthority:Landroid/util/ArrayMap;

    return-void
.end method

.method private addActivitiesLocked(Ltop/niunaijun/blackbox/core/system/pm/BPackage;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pkg",
            "newIntents"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltop/niunaijun/blackbox/core/system/pm/BPackage;",
            "Ljava/util/List<",
            "Ltop/niunaijun/blackbox/core/system/pm/BPackage$ActivityIntentInfo;",
            ">;)V"
        }
    .end annotation

    .line 121
    iget-object v0, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->activities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 123
    iget-object v2, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->activities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;

    .line 124
    iget-object v3, v2, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v5, v2, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 125
    invoke-static {v4, v5}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->fixProcessName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 126
    iget-object v3, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mActivities:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;

    const-string v4, "activity"

    invoke-static {v3, v2, v4, p2}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;->access$400(Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;Ljava/lang/String;Ljava/util/List;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addProvidersLocked(Ltop/niunaijun/blackbox/core/system/pm/BPackage;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pkg"
        }
    .end annotation

    .line 131
    iget-object v0, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->providers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_5

    .line 133
    iget-object v3, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->providers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;

    .line 134
    iget-object v4, v3, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v5, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v6, v3, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v6, v6, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-static {v5, v6}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->fixProcessName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    .line 136
    iget-object v4, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mProviders:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ProviderIntentResolver;

    invoke-virtual {v4, v3}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ProviderIntentResolver;->addProvider(Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;)V

    .line 137
    iget-object v4, v3, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 138
    iget-object v4, v3, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 139
    iget-object v6, v3, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/4 v7, 0x0

    iput-object v7, v6, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 140
    array-length v6, v4

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v6, :cond_4

    aget-object v9, v4, v8

    .line 141
    iget-object v10, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mProvidersByAuthority:Landroid/util/ArrayMap;

    invoke-virtual {v10, v9}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 142
    iget-object v10, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mProvidersByAuthority:Landroid/util/ArrayMap;

    invoke-virtual {v10, v9, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v10, v3, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v10, v10, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    if-nez v10, :cond_0

    .line 144
    iget-object v10, v3, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;->info:Landroid/content/pm/ProviderInfo;

    iput-object v9, v10, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    goto :goto_4

    .line 146
    :cond_0
    iget-object v10, v3, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;->info:Landroid/content/pm/ProviderInfo;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v3, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v12, v12, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v10, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    goto :goto_4

    .line 149
    :cond_1
    iget-object v10, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mProvidersByAuthority:Landroid/util/ArrayMap;

    .line 150
    invoke-virtual {v10, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;

    if-eqz v10, :cond_2

    .line 152
    invoke-virtual {v10}, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 153
    invoke-virtual {v10}, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v10

    goto :goto_2

    :cond_2
    move-object v10, v7

    :goto_2
    if-eqz v10, :cond_3

    .line 155
    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    :cond_3
    const-string v10, "?"

    .line 156
    :goto_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Skipping provider name "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " (in package "

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "): name already used by "

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "ComponentResolver"

    invoke-static {v10, v9}, Ltop/niunaijun/blackbox/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method private addReceiversLocked(Ltop/niunaijun/blackbox/core/system/pm/BPackage;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pkg"
        }
    .end annotation

    .line 166
    iget-object v0, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 168
    iget-object v2, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;

    .line 169
    iget-object v3, v2, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v5, v2, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-static {v4, v5}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->fixProcessName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 171
    iget-object v3, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mReceivers:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;

    const/4 v4, 0x0

    const-string v5, "receiver"

    invoke-static {v3, v2, v5, v4}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;->access$400(Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;Ljava/lang/String;Ljava/util/List;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addServicesLocked(Ltop/niunaijun/blackbox/core/system/pm/BPackage;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pkg"
        }
    .end annotation

    .line 176
    iget-object v0, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->services:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 178
    iget-object v2, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->services:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;

    .line 179
    iget-object v3, v2, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v4, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v5, v2, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-static {v4, v5}, Ltop/niunaijun/blackbox/core/system/pm/BPackageManagerService;->fixProcessName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    .line 181
    iget-object v3, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mServices:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ServiceIntentResolver;

    invoke-virtual {v3, v2}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ServiceIntentResolver;->addService(Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private removeAllComponentsLocked(Ltop/niunaijun/blackbox/core/system/pm/BPackage;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pkg"
        }
    .end annotation

    .line 79
    iget-object v0, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->activities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 82
    iget-object v3, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->activities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;

    .line 83
    iget-object v4, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mActivities:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;

    const-string v5, "activity"

    invoke-static {v4, v3, v5}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;->access$300(Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 85
    :cond_0
    iget-object v0, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->providers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_4

    .line 88
    iget-object v3, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->providers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;

    .line 89
    iget-object v4, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mProviders:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ProviderIntentResolver;

    invoke-virtual {v4, v3}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ProviderIntentResolver;->removeProvider(Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;)V

    .line 90
    iget-object v4, v3, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    if-nez v4, :cond_1

    goto :goto_3

    .line 96
    :cond_1
    iget-object v4, v3, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 97
    :goto_2
    array-length v6, v4

    if-ge v5, v6, :cond_3

    .line 98
    iget-object v6, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mProvidersByAuthority:Landroid/util/ArrayMap;

    aget-object v7, v4, v5

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v3, :cond_2

    .line 99
    iget-object v6, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mProvidersByAuthority:Landroid/util/ArrayMap;

    aget-object v7, v4, v5

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 104
    :cond_4
    iget-object v0, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_5

    .line 107
    iget-object v3, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;

    .line 108
    iget-object v4, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mReceivers:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;

    const-string v5, "receiver"

    invoke-static {v4, v3, v5}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;->access$300(Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 111
    :cond_5
    iget-object v0, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->services:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_5
    if-ge v1, v0, :cond_6

    .line 114
    iget-object v2, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->services:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;

    .line 115
    iget-object v3, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mServices:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ServiceIntentResolver;

    invoke-virtual {v3, v2}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ServiceIntentResolver;->removeService(Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_6
    return-void
.end method


# virtual methods
.method addAllComponents(Ltop/niunaijun/blackbox/core/system/pm/BPackage;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pkg"
        }
    .end annotation

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 60
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 61
    :try_start_0
    invoke-direct {p0, p1, v0}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->addActivitiesLocked(Ltop/niunaijun/blackbox/core/system/pm/BPackage;Ljava/util/List;)V

    .line 62
    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->addServicesLocked(Ltop/niunaijun/blackbox/core/system/pm/BPackage;)V

    .line 63
    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->addProvidersLocked(Ltop/niunaijun/blackbox/core/system/pm/BPackage;)V

    .line 64
    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->addReceiversLocked(Ltop/niunaijun/blackbox/core/system/pm/BPackage;)V

    .line 65
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method getActivity(Landroid/content/ComponentName;)Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    .line 190
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 191
    :try_start_0
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mActivities:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;

    invoke-static {v1}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;->access$500(Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 192
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method getProvider(Landroid/content/ComponentName;)Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    .line 199
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 200
    :try_start_0
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mProviders:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ProviderIntentResolver;

    invoke-static {v1}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ProviderIntentResolver;->access$600(Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ProviderIntentResolver;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 201
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method getReceiver(Landroid/content/ComponentName;)Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    .line 208
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 209
    :try_start_0
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mReceivers:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;

    invoke-static {v1}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;->access$500(Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 210
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method getService(Landroid/content/ComponentName;)Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    .line 217
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 218
    :try_start_0
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mServices:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ServiceIntentResolver;

    invoke-static {v1}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ServiceIntentResolver;->access$700(Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ServiceIntentResolver;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 219
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method queryActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "resolvedType",
            "flags",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 223
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 224
    :try_start_0
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mActivities:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;

    invoke-virtual {v1, p1, p2, p3, p4}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 225
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method queryActivities(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "resolvedType",
            "flags",
            "activities",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 230
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 231
    :try_start_0
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mActivities:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;->queryIntentForPackage(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 233
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method queryProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "authority",
            "flags",
            "userId"
        }
    .end annotation

    .line 284
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 285
    :try_start_0
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mProvidersByAuthority:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 287
    monitor-exit v0

    return-object p1

    .line 289
    :cond_0
    iget-object v1, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;->owner:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    iget-object v1, v1, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->mExtras:Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;

    .line 290
    invoke-virtual {v1, p3}, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->readUserState(I)Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;

    move-result-object v1

    invoke-static {p1, p2, v1, p3}, Ltop/niunaijun/blackbox/core/system/pm/PackageManagerCompat;->generateProviderInfo(Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;ILtop/niunaijun/blackbox/core/system/pm/BPackageUserState;I)Landroid/content/pm/ProviderInfo;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 291
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method queryProviders(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "resolvedType",
            "flags",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 238
    :try_start_0
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mProviders:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ProviderIntentResolver;

    invoke-virtual {v1, p1, p2, p3, p4}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ProviderIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 239
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method queryProviders(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "resolvedType",
            "flags",
            "providers",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 244
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 245
    :try_start_0
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mProviders:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ProviderIntentResolver;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ProviderIntentResolver;->queryIntentForPackage(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 246
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method queryProviders(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "processName",
            "metaDataKey",
            "flags",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation

    .line 251
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 252
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 253
    :try_start_0
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mProviders:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ProviderIntentResolver;

    invoke-static {v2}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ProviderIntentResolver;->access$600(Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ProviderIntentResolver;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_6

    .line 254
    iget-object v3, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mProviders:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ProviderIntentResolver;

    invoke-static {v3}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ProviderIntentResolver;->access$600(Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ProviderIntentResolver;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;

    .line 255
    iget-object v4, v3, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;->owner:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    iget-object v4, v4, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->mExtras:Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;

    if-nez v4, :cond_0

    goto :goto_1

    .line 259
    :cond_0
    iget-object v5, v3, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 262
    iget-object v5, v3, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    .line 266
    iget-object v5, v3, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_5

    iget-object v5, v3, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;->metaData:Landroid/os/Bundle;

    .line 267
    invoke-virtual {v5, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    .line 270
    :cond_3
    invoke-virtual {v4, p4}, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->readUserState(I)Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;

    move-result-object v4

    invoke-static {v3, p3, v4, p4}, Ltop/niunaijun/blackbox/core/system/pm/PackageManagerCompat;->generateProviderInfo(Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;ILtop/niunaijun/blackbox/core/system/pm/BPackageUserState;I)Landroid/content/pm/ProviderInfo;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_1

    .line 277
    :cond_4
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 279
    :cond_6
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method queryReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "resolvedType",
            "flags",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 295
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 296
    :try_start_0
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mReceivers:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;

    invoke-virtual {v1, p1, p2, p3, p4}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 297
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method queryReceivers(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "resolvedType",
            "flags",
            "receivers",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 302
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 303
    :try_start_0
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mReceivers:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;->queryIntentForPackage(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 304
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method queryServices(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "resolvedType",
            "flags",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 308
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 309
    :try_start_0
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mServices:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ServiceIntentResolver;

    invoke-virtual {v1, p1, p2, p3, p4}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ServiceIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 310
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method queryServices(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "resolvedType",
            "flags",
            "services",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 315
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 316
    :try_start_0
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mServices:Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ServiceIntentResolver;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ServiceIntentResolver;->queryIntentForPackage(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 317
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method removeAllComponents(Ltop/niunaijun/blackbox/core/system/pm/BPackage;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pkg"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 70
    :try_start_0
    invoke-direct {p0, p1}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;->removeAllComponentsLocked(Ltop/niunaijun/blackbox/core/system/pm/BPackage;)V

    .line 71
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
