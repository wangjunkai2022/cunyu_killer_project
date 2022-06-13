.class final Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ServiceIntentResolver;
.super Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;
.source "ComponentResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ServiceIntentResolver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltop/niunaijun/blackbox/core/system/pm/IntentResolver<",
        "Ltop/niunaijun/blackbox/core/system/pm/BPackage$ServiceIntentInfo;",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mFlags:I

.field private final mServices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 321
    invoke-direct {p0}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;-><init>()V

    .line 418
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ServiceIntentResolver;->mServices:Landroid/util/ArrayMap;

    return-void
.end method

.method synthetic constructor <init>(Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$1;)V
    .locals 0

    .line 321
    invoke-direct {p0}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ServiceIntentResolver;-><init>()V

    return-void
.end method

.method static synthetic access$700(Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ServiceIntentResolver;)Landroid/util/ArrayMap;
    .locals 0

    .line 321
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ServiceIntentResolver;->mServices:Landroid/util/ArrayMap;

    return-object p0
.end method


# virtual methods
.method addService(Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 362
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ServiceIntentResolver;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    iget-object v0, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;->intents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 366
    iget-object v2, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;->intents:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ServiceIntentInfo;

    .line 367
    invoke-virtual {p0, v2}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ServiceIntentResolver;->addFilter(Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
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

    .line 321
    check-cast p2, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ServiceIntentInfo;

    invoke-virtual {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ServiceIntentResolver;->isPackageForFilter(Ljava/lang/String;Ltop/niunaijun/blackbox/core/system/pm/BPackage$ServiceIntentInfo;)Z

    move-result p1

    return p1
.end method

.method protected isPackageForFilter(Ljava/lang/String;Ltop/niunaijun/blackbox/core/system/pm/BPackage$ServiceIntentInfo;)Z
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

    .line 384
    iget-object p2, p2, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ServiceIntentInfo;->service:Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;

    iget-object p2, p2, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;->owner:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

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

    .line 321
    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ServiceIntentResolver;->newArray(I)[Ltop/niunaijun/blackbox/core/system/pm/BPackage$ServiceIntentInfo;

    move-result-object p1

    return-object p1
.end method

.method protected newArray(I)[Ltop/niunaijun/blackbox/core/system/pm/BPackage$ServiceIntentInfo;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 389
    new-array p1, p1, [Ltop/niunaijun/blackbox/core/system/pm/BPackage$ServiceIntentInfo;

    return-object p1
.end method

.method protected newResult(Ltop/niunaijun/blackbox/core/system/pm/BPackage$ServiceIntentInfo;II)Landroid/content/pm/ResolveInfo;
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

    .line 395
    iget-object v0, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ServiceIntentInfo;->service:Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;

    .line 396
    iget-object v1, v0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;->owner:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    iget-object v1, v1, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->mExtras:Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 400
    :cond_0
    iget v2, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ServiceIntentResolver;->mFlags:I

    invoke-virtual {v1, p3}, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->readUserState(I)Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;

    move-result-object v1

    invoke-static {v0, v2, v1, p3}, Ltop/niunaijun/blackbox/core/system/pm/PackageManagerCompat;->generateServiceInfo(Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;ILtop/niunaijun/blackbox/core/system/pm/BPackageUserState;I)Landroid/content/pm/ServiceInfo;

    move-result-object p3

    .line 402
    new-instance v1, Landroid/content/pm/ResolveInfo;

    invoke-direct {v1}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 403
    iput-object p3, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 404
    iget p3, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ServiceIntentResolver;->mFlags:I

    and-int/lit8 p3, p3, 0x40

    if-eqz p3, :cond_1

    .line 405
    iget-object p3, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ServiceIntentInfo;->intentFilter:Landroid/content/IntentFilter;

    iput-object p3, v1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 407
    :cond_1
    iget-object p3, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ServiceIntentInfo;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p3}, Landroid/content/IntentFilter;->getPriority()I

    move-result p3

    iput p3, v1, Landroid/content/pm/ResolveInfo;->priority:I

    .line 408
    iget-object p3, v0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;->owner:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    iget p3, p3, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->mPreferredOrder:I

    iput p3, v1, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 409
    iput p2, v1, Landroid/content/pm/ResolveInfo;->match:I

    .line 410
    iget-boolean p2, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ServiceIntentInfo;->hasDefault:Z

    iput-boolean p2, v1, Landroid/content/pm/ResolveInfo;->isDefault:Z

    .line 411
    iget p2, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ServiceIntentInfo;->labelRes:I

    iput p2, v1, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 412
    iget-object p2, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ServiceIntentInfo;->nonLocalizedLabel:Ljava/lang/String;

    iput-object p2, v1, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 413
    iget p1, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ServiceIntentInfo;->icon:I

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

    .line 321
    check-cast p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ServiceIntentInfo;

    invoke-virtual {p0, p1, p2, p3}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ServiceIntentResolver;->newResult(Ltop/niunaijun/blackbox/core/system/pm/BPackage$ServiceIntentInfo;II)Landroid/content/pm/ResolveInfo;

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

    .line 332
    iput p3, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ServiceIntentResolver;->mFlags:I

    const/high16 v0, 0x10000

    and-int/2addr p3, v0

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 333
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

    .line 326
    :goto_0
    iput v0, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ServiceIntentResolver;->mFlags:I

    .line 327
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
            "packageServices",
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

    if-nez p4, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 343
    :cond_0
    iput p3, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ServiceIntentResolver;->mFlags:I

    const/high16 v0, 0x10000

    and-int/2addr p3, v0

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    const/4 p3, 0x1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 345
    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p3

    .line 346
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, p3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    if-ge v0, p3, :cond_3

    .line 350
    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;

    iget-object v1, v1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;->intents:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 351
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 353
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ltop/niunaijun/blackbox/core/system/pm/BPackage$ServiceIntentInfo;

    .line 354
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 355
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p5

    .line 358
    invoke-super/range {v1 .. v6}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->queryIntentFromList(Landroid/content/Intent;Ljava/lang/String;ZLjava/util/ArrayList;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method removeService(Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 372
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ServiceIntentResolver;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    iget-object v0, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;->intents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 376
    iget-object v2, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Service;->intents:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ServiceIntentInfo;

    .line 377
    invoke-virtual {p0, v2}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ServiceIntentResolver;->removeFilter(Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
