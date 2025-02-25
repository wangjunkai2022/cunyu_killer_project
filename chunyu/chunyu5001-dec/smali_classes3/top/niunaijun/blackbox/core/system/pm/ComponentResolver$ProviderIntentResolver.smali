.class final Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ProviderIntentResolver;
.super Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;
.source "ComponentResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProviderIntentResolver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltop/niunaijun/blackbox/core/system/pm/IntentResolver<",
        "Ltop/niunaijun/blackbox/core/system/pm/BPackage$ProviderIntentInfo;",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mFlags:I

.field private final mProviders:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 529
    invoke-direct {p0}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;-><init>()V

    .line 639
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ProviderIntentResolver;->mProviders:Landroid/util/ArrayMap;

    return-void
.end method

.method synthetic constructor <init>(Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$1;)V
    .locals 0

    .line 529
    invoke-direct {p0}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ProviderIntentResolver;-><init>()V

    return-void
.end method

.method static synthetic access$600(Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ProviderIntentResolver;)Landroid/util/ArrayMap;
    .locals 0

    .line 529
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ProviderIntentResolver;->mProviders:Landroid/util/ArrayMap;

    return-object p0
.end method


# virtual methods
.method addProvider(Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 570
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ProviderIntentResolver;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    iget-object v0, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;->intents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 574
    iget-object v2, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;->intents:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ProviderIntentInfo;

    .line 575
    invoke-virtual {p0, v2}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ProviderIntentResolver;->addFilter(Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected bridge synthetic allowFilterResult(Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "filter",
            "dest"
        }
    .end annotation

    .line 529
    check-cast p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ProviderIntentInfo;

    invoke-virtual {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ProviderIntentResolver;->allowFilterResult(Ltop/niunaijun/blackbox/core/system/pm/BPackage$ProviderIntentInfo;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method protected allowFilterResult(Ltop/niunaijun/blackbox/core/system/pm/BPackage$ProviderIntentInfo;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "filter",
            "dest"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltop/niunaijun/blackbox/core/system/pm/BPackage$ProviderIntentInfo;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .line 592
    iget-object p1, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ProviderIntentInfo;->provider:Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;

    iget-object p1, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 593
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 594
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 595
    iget-object v3, v2, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 596
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method protected bridge synthetic isPackageForFilter(Ljava/lang/String;Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "packageName",
            "info"
        }
    .end annotation

    .line 529
    check-cast p2, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ProviderIntentInfo;

    invoke-virtual {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ProviderIntentResolver;->isPackageForFilter(Ljava/lang/String;Ltop/niunaijun/blackbox/core/system/pm/BPackage$ProviderIntentInfo;)Z

    move-result p1

    return p1
.end method

.method protected isPackageForFilter(Ljava/lang/String;Ltop/niunaijun/blackbox/core/system/pm/BPackage$ProviderIntentInfo;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageName",
            "info"
        }
    .end annotation

    .line 611
    iget-object p2, p2, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ProviderIntentInfo;->provider:Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;

    iget-object p2, p2, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;->owner:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    iget-object p2, p2, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected bridge synthetic newArray(I)[Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "size"
        }
    .end annotation

    .line 529
    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ProviderIntentResolver;->newArray(I)[Ltop/niunaijun/blackbox/core/system/pm/BPackage$ProviderIntentInfo;

    move-result-object p1

    return-object p1
.end method

.method protected newArray(I)[Ltop/niunaijun/blackbox/core/system/pm/BPackage$ProviderIntentInfo;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 605
    new-array p1, p1, [Ltop/niunaijun/blackbox/core/system/pm/BPackage$ProviderIntentInfo;

    return-object p1
.end method

.method protected newResult(Ltop/niunaijun/blackbox/core/system/pm/BPackage$ProviderIntentInfo;II)Landroid/content/pm/ResolveInfo;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "filter",
            "match",
            "userId"
        }
    .end annotation

    .line 617
    iget-object v0, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ProviderIntentInfo;->provider:Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;

    .line 618
    iget-object v1, v0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;->owner:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    iget-object v1, v1, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->mExtras:Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 623
    :cond_0
    iget v2, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ProviderIntentResolver;->mFlags:I

    invoke-virtual {v1, p3}, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->readUserState(I)Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;

    move-result-object v1

    invoke-static {v0, v2, v1, p3}, Ltop/niunaijun/blackbox/core/system/pm/PackageManagerCompat;->generateProviderInfo(Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;ILtop/niunaijun/blackbox/core/system/pm/BPackageUserState;I)Landroid/content/pm/ProviderInfo;

    move-result-object p3

    .line 624
    new-instance v1, Landroid/content/pm/ResolveInfo;

    invoke-direct {v1}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 625
    iput-object p3, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 626
    iget p3, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ProviderIntentResolver;->mFlags:I

    and-int/lit8 p3, p3, 0x40

    if-eqz p3, :cond_1

    .line 627
    iget-object p3, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ProviderIntentInfo;->intentFilter:Landroid/content/IntentFilter;

    iput-object p3, v1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 629
    :cond_1
    iget-object p3, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ProviderIntentInfo;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p3}, Landroid/content/IntentFilter;->getPriority()I

    move-result p3

    iput p3, v1, Landroid/content/pm/ResolveInfo;->priority:I

    .line 630
    iget-object p3, v0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;->owner:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    iget p3, p3, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->mPreferredOrder:I

    iput p3, v1, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 631
    iput p2, v1, Landroid/content/pm/ResolveInfo;->match:I

    .line 632
    iget-boolean p2, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ProviderIntentInfo;->hasDefault:Z

    iput-boolean p2, v1, Landroid/content/pm/ResolveInfo;->isDefault:Z

    .line 633
    iget p2, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ProviderIntentInfo;->labelRes:I

    iput p2, v1, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 634
    iget-object p2, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ProviderIntentInfo;->nonLocalizedLabel:Ljava/lang/String;

    iput-object p2, v1, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 635
    iget p1, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ProviderIntentInfo;->icon:I

    iput p1, v1, Landroid/content/pm/ResolveInfo;->icon:I

    return-object v1
.end method

.method protected bridge synthetic newResult(Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;II)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "filter",
            "match",
            "userId"
        }
    .end annotation

    .line 529
    check-cast p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ProviderIntentInfo;

    invoke-virtual {p0, p1, p2, p3}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ProviderIntentResolver;->newResult(Ltop/niunaijun/blackbox/core/system/pm/BPackage$ProviderIntentInfo;II)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    return-object p1
.end method

.method queryIntent(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .locals 1
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

    .line 540
    iput p3, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ProviderIntentResolver;->mFlags:I

    const/high16 v0, 0x10000

    and-int/2addr p3, v0

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 541
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;
    .locals 1
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
            "defaultOnly",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    if-eqz p3, :cond_0

    const/high16 v0, 0x10000

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 534
    :goto_0
    iput v0, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ProviderIntentResolver;->mFlags:I

    .line 535
    invoke-super {p0, p1, p2, p3, p4}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method queryIntentForPackage(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;
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
            "packageProviders",
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

    if-nez p4, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 551
    :cond_0
    iput p3, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ProviderIntentResolver;->mFlags:I

    const/high16 v0, 0x10000

    and-int/2addr p3, v0

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    const/4 p3, 0x1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 553
    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p3

    .line 554
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, p3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    if-ge v0, p3, :cond_3

    .line 558
    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;

    iget-object v1, v1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;->intents:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 559
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 561
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ltop/niunaijun/blackbox/core/system/pm/BPackage$ProviderIntentInfo;

    .line 562
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 563
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p5

    .line 566
    invoke-super/range {v1 .. v6}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->queryIntentFromList(Landroid/content/Intent;Ljava/lang/String;ZLjava/util/ArrayList;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method removeProvider(Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 580
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ProviderIntentResolver;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    iget-object v0, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;->intents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 584
    iget-object v2, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Provider;->intents:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ProviderIntentInfo;

    .line 585
    invoke-virtual {p0, v2}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ProviderIntentResolver;->removeFilter(Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
