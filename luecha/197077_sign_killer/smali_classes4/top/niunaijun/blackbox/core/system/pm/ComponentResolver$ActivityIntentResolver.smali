.class final Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;
.super Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;
.source "ComponentResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ActivityIntentResolver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltop/niunaijun/blackbox/core/system/pm/IntentResolver<",
        "Ltop/niunaijun/blackbox/core/system/pm/BPackage$ActivityIntentInfo;",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mActivities:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mFlags:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 423
    invoke-direct {p0}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;-><init>()V

    .line 524
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;->mActivities:Landroid/util/ArrayMap;

    return-void
.end method

.method synthetic constructor <init>(Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$1;)V
    .locals 0

    .line 423
    invoke-direct {p0}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;-><init>()V

    return-void
.end method

.method static synthetic access$300(Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;Ljava/lang/String;)V
    .locals 0

    .line 423
    invoke-direct {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;->removeActivity(Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 423
    invoke-direct {p0, p1, p2, p3}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;->addActivity(Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$500(Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;)Landroid/util/ArrayMap;
    .locals 0

    .line 423
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;->mActivities:Landroid/util/ArrayMap;

    return-object p0
.end method

.method private addActivity(Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "type",
            "newIntents"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ltop/niunaijun/blackbox/core/system/pm/BPackage$ActivityIntentInfo;",
            ">;)V"
        }
    .end annotation

    .line 465
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    iget-object v0, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 468
    iget-object v2, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ActivityIntentInfo;

    if-eqz p3, :cond_0

    const-string v3, "activity"

    .line 469
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 470
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 471
    invoke-virtual {p0, v2}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;->addFilter(Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private removeActivity(Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "type"
        }
    .end annotation

    .line 477
    iget-object p2, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    iget-object p2, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 480
    iget-object v1, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ActivityIntentInfo;

    .line 481
    invoke-virtual {p0, v1}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;->removeFilter(Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected isPackageForFilter(Ljava/lang/String;Ltop/niunaijun/blackbox/core/system/pm/BPackage$ActivityIntentInfo;)Z
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

    .line 488
    iget-object p2, p2, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ActivityIntentInfo;->activity:Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;

    iget-object p2, p2, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;->owner:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    iget-object p2, p2, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
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

    .line 423
    check-cast p2, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ActivityIntentInfo;

    invoke-virtual {p0, p1, p2}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;->isPackageForFilter(Ljava/lang/String;Ltop/niunaijun/blackbox/core/system/pm/BPackage$ActivityIntentInfo;)Z

    move-result p1

    return p1
.end method

.method protected newArray(I)[Ltop/niunaijun/blackbox/core/system/pm/BPackage$ActivityIntentInfo;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 493
    new-array p1, p1, [Ltop/niunaijun/blackbox/core/system/pm/BPackage$ActivityIntentInfo;

    return-object p1
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

    .line 423
    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;->newArray(I)[Ltop/niunaijun/blackbox/core/system/pm/BPackage$ActivityIntentInfo;

    move-result-object p1

    return-object p1
.end method

.method protected newResult(Ltop/niunaijun/blackbox/core/system/pm/BPackage$ActivityIntentInfo;II)Landroid/content/pm/ResolveInfo;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "info",
            "match",
            "userId"
        }
    .end annotation

    .line 498
    iget-object v0, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ActivityIntentInfo;->activity:Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;

    .line 499
    iget-object v1, v0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;->owner:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    iget-object v1, v1, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->mExtras:Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 503
    :cond_0
    iget v2, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;->mFlags:I

    .line 504
    invoke-virtual {v1, p3}, Ltop/niunaijun/blackbox/core/system/pm/BPackageSettings;->readUserState(I)Ltop/niunaijun/blackbox/core/system/pm/BPackageUserState;

    move-result-object v1

    invoke-static {v0, v2, v1, p3}, Ltop/niunaijun/blackbox/core/system/pm/PackageManagerCompat;->generateActivityInfo(Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;ILtop/niunaijun/blackbox/core/system/pm/BPackageUserState;I)Landroid/content/pm/ActivityInfo;

    move-result-object p3

    .line 506
    new-instance v1, Landroid/content/pm/ResolveInfo;

    invoke-direct {v1}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 507
    iput-object p3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 508
    iget p3, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;->mFlags:I

    and-int/lit8 p3, p3, 0x40

    if-eqz p3, :cond_1

    .line 509
    iget-object p3, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ActivityIntentInfo;->intentFilter:Landroid/content/IntentFilter;

    iput-object p3, v1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 511
    :cond_1
    iget-object p3, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ActivityIntentInfo;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p3}, Landroid/content/IntentFilter;->getPriority()I

    move-result p3

    iput p3, v1, Landroid/content/pm/ResolveInfo;->priority:I

    .line 512
    iget-object p3, v0, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;->owner:Ltop/niunaijun/blackbox/core/system/pm/BPackage;

    iget p3, p3, Ltop/niunaijun/blackbox/core/system/pm/BPackage;->mPreferredOrder:I

    iput p3, v1, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 515
    iput p2, v1, Landroid/content/pm/ResolveInfo;->match:I

    .line 516
    iget-boolean p2, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ActivityIntentInfo;->hasDefault:Z

    iput-boolean p2, v1, Landroid/content/pm/ResolveInfo;->isDefault:Z

    .line 517
    iget p2, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ActivityIntentInfo;->labelRes:I

    iput p2, v1, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 518
    iget-object p2, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ActivityIntentInfo;->nonLocalizedLabel:Ljava/lang/String;

    iput-object p2, v1, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 519
    iget p1, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ActivityIntentInfo;->icon:I

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
            "info",
            "match",
            "userId"
        }
    .end annotation

    .line 423
    check-cast p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$ActivityIntentInfo;

    invoke-virtual {p0, p1, p2, p3}, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;->newResult(Ltop/niunaijun/blackbox/core/system/pm/BPackage$ActivityIntentInfo;II)Landroid/content/pm/ResolveInfo;

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

    .line 434
    iput p3, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;->mFlags:I

    const/high16 v0, 0x10000

    and-int/2addr p3, v0

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 435
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

    .line 428
    :goto_0
    iput v0, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;->mFlags:I

    .line 429
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
            "packageActivities",
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

    if-nez p4, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 445
    :cond_0
    iput p3, p0, Ltop/niunaijun/blackbox/core/system/pm/ComponentResolver$ActivityIntentResolver;->mFlags:I

    const/high16 v0, 0x10000

    and-int/2addr p3, v0

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    const/4 p3, 0x1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 447
    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p3

    .line 448
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, p3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    if-ge v0, p3, :cond_3

    .line 452
    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;

    iget-object v1, v1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$Activity;->intents:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 453
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 455
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ltop/niunaijun/blackbox/core/system/pm/BPackage$ActivityIntentInfo;

    .line 456
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 457
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p5

    .line 460
    invoke-super/range {v1 .. v6}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->queryIntentFromList(Landroid/content/Intent;Ljava/lang/String;ZLjava/util/ArrayList;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
