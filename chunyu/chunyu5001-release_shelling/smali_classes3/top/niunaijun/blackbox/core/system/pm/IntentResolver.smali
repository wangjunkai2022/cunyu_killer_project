.class public abstract Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;
.super Ljava/lang/Object;
.source "IntentResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackbox/core/system/pm/IntentResolver$IteratorWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "IntentResolver"

.field private static final localLOGV:Z = false

.field private static final localVerificationLOGV:Z = false

.field private static final mResolvePrioritySorter:Ljava/util/Comparator;


# instance fields
.field private final mActionToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final mBaseTypeToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final mFilters:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "TF;>;"
        }
    .end annotation
.end field

.field private final mSchemeToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final mTypeToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final mTypedActionToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final mWildTypeToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 691
    new-instance v0, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver$1;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver$1;-><init>()V

    sput-object v0, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->mResolvePrioritySorter:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 702
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->mFilters:Ljava/util/HashSet;

    .line 708
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    .line 715
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    .line 724
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    .line 729
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    .line 735
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    .line 740
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    return-void
.end method

.method private final addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "map",
            "name",
            "filter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            "TF;)V"
        }
    .end annotation

    .line 460
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 462
    invoke-virtual {p0, v1}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->newArray(I)[Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;

    move-result-object v0

    .line 463
    invoke-virtual {p1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    aput-object p3, v0, v2

    goto :goto_1

    .line 466
    :cond_0
    array-length v3, v0

    move v4, v3

    :goto_0
    if-lez v4, :cond_1

    add-int/lit8 v5, v4, -0x1

    .line 468
    aget-object v5, v0, v5

    if-nez v5, :cond_1

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_1
    if-ge v4, v3, :cond_2

    .line 472
    aput-object p3, v0, v4

    goto :goto_1

    :cond_2
    mul-int/lit8 v4, v3, 0x3

    .line 474
    div-int/2addr v4, v1

    invoke-virtual {p0, v4}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->newArray(I)[Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;

    move-result-object v1

    .line 475
    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 476
    aput-object p3, v1, v3

    .line 477
    invoke-virtual {p1, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method private buildResolveList(Landroid/content/Intent;Ltop/niunaijun/blackbox/core/system/pm/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;Ljava/util/List;I)V
    .locals 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "categories",
            "debug",
            "defaultOnly",
            "resolvedType",
            "scheme",
            "src",
            "dest",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ltop/niunaijun/blackbox/core/system/pm/FastImmutableArraySet<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[TF;",
            "Ljava/util/List<",
            "TR;>;I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    .line 614
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    .line 615
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    .line 616
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v12

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 620
    array-length v4, v1

    move v13, v4

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    :goto_0
    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_1
    const/4 v9, 0x1

    const-string v8, "IntentResolver"

    if-ge v14, v13, :cond_f

    .line 624
    aget-object v7, v1, v14

    if-eqz v7, :cond_f

    if-eqz p3, :cond_1

    .line 626
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Matching against filter "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Ltop/niunaijun/blackbox/utils/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v12, :cond_2

    .line 636
    invoke-virtual {v0, v12, v7}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->isPackageForFilter(Ljava/lang/String;Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz p3, :cond_3

    .line 638
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Filter is not from package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; skipping"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Ltop/niunaijun/blackbox/utils/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 644
    :cond_2
    invoke-virtual {v0, v7, v2}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->allowFilterResult(Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz p3, :cond_3

    const-string v3, "  Filter\'s target already added"

    .line 646
    invoke-static {v8, v3}, Ltop/niunaijun/blackbox/utils/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    move/from16 v4, p9

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    goto/16 :goto_5

    .line 651
    :cond_4
    iget-object v3, v7, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->intentFilter:Landroid/content/IntentFilter;

    const-string v16, "IntentResolver"

    move-object v4, v10

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object v1, v7

    move-object v7, v11

    move-object/from16 v17, v10

    move-object v10, v8

    move-object/from16 v8, p2

    move-object/from16 v18, v11

    const/4 v11, 0x1

    move-object/from16 v9, v16

    invoke-virtual/range {v3 .. v9}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_9

    const-string v4, "android.intent.category.DEFAULT"

    if-eqz p3, :cond_5

    .line 653
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  Filter matched!  match=0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " hasDefault="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->intentFilter:Landroid/content/IntentFilter;

    .line 655
    invoke-virtual {v6, v4}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 653
    invoke-static {v10, v5}, Ltop/niunaijun/blackbox/utils/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-eqz p4, :cond_7

    .line 656
    iget-object v5, v1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v5, v4}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_3

    :cond_6
    move/from16 v4, p9

    const/4 v15, 0x1

    goto :goto_5

    :cond_7
    :goto_3
    move/from16 v4, p9

    .line 657
    invoke-virtual {v0, v1, v3, v4}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->newResult(Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;II)Ljava/lang/Object;

    move-result-object v1

    if-eqz p3, :cond_8

    .line 658
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    Created result: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Ltop/niunaijun/blackbox/utils/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    if-eqz v1, :cond_e

    .line 660
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    move/from16 v4, p9

    if-eqz p3, :cond_e

    const/4 v1, -0x4

    if-eq v3, v1, :cond_d

    const/4 v1, -0x3

    if-eq v3, v1, :cond_c

    const/4 v1, -0x2

    if-eq v3, v1, :cond_b

    const/4 v1, -0x1

    if-eq v3, v1, :cond_a

    const-string v1, "unknown reason"

    goto :goto_4

    :cond_a
    const-string v1, "type"

    goto :goto_4

    :cond_b
    const-string v1, "data"

    goto :goto_4

    :cond_c
    const-string v1, "action"

    goto :goto_4

    :cond_d
    const-string v1, "category"

    .line 675
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Filter did not match: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Ltop/niunaijun/blackbox/utils/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_5
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p7

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    goto/16 :goto_1

    :cond_f
    move-object v10, v8

    const/4 v11, 0x1

    if-eqz p3, :cond_11

    if-eqz v15, :cond_11

    .line 681
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "resolveIntent failed: found match, but none with CATEGORY_DEFAULT"

    .line 682
    invoke-static {v10, v1}, Ltop/niunaijun/blackbox/utils/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 683
    :cond_10
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v11, :cond_11

    const-string v1, "resolveIntent: multiple matches, only some with CATEGORY_DEFAULT"

    .line 684
    invoke-static {v10, v1}, Ltop/niunaijun/blackbox/utils/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    :goto_6
    return-void
.end method

.method private collectFilters([Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;Landroid/content/IntentFilter;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "array",
            "matching"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TF;",
            "Landroid/content/IntentFilter;",
            ")",
            "Ljava/util/ArrayList<",
            "TF;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const/4 v1, 0x0

    .line 113
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 114
    aget-object v2, p1, v1

    if-nez v2, :cond_0

    goto :goto_1

    .line 118
    :cond_0
    iget-object v3, v2, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->intentFilter:Landroid/content/IntentFilter;

    invoke-static {v3, p2}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->filterEquals(Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v0, :cond_1

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 122
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public static filterEquals(Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "f1",
            "f2"
        }
    .end annotation

    .line 72
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countActions()I

    move-result v0

    .line 73
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 78
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 82
    :cond_2
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countCategories()I

    move-result v0

    .line 83
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countCategories()I

    move-result v1

    if-eq v0, v1, :cond_3

    return v2

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_5

    .line 88
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 92
    :cond_5
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v0

    .line 93
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v1

    if-eq v0, v1, :cond_6

    return v2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_8

    .line 98
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/IntentFilter;->hasDataScheme(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    return v2

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 102
    :cond_8
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataSchemeSpecificParts()I

    move-result p0

    .line 103
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemeSpecificParts()I

    move-result p1

    if-eq p0, p1, :cond_9

    return v2

    :cond_9
    const/4 p0, 0x1

    return p0
.end method

.method private static getFastIntentCategories(Landroid/content/Intent;)Ltop/niunaijun/blackbox/core/system/pm/FastImmutableArraySet;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ltop/niunaijun/blackbox/core/system/pm/FastImmutableArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 604
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 608
    :cond_0
    new-instance v0, Ltop/niunaijun/blackbox/core/system/pm/FastImmutableArraySet;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Ltop/niunaijun/blackbox/core/system/pm/FastImmutableArraySet;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method private final register_intent_filter(Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "filter",
            "i",
            "dest",
            "prefix"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    const/4 p4, 0x0

    if-nez p2, :cond_0

    return p4

    .line 550
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 551
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    add-int/lit8 p4, p4, 0x1

    .line 554
    invoke-direct {p0, p3, v0, p1}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;)V

    goto :goto_0

    :cond_1
    return p4
.end method

.method private final register_mime_types(Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;Ljava/lang/String;)I
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "filter",
            "prefix"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 483
    iget-object p2, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p2}, Landroid/content/IntentFilter;->typesIterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 489
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 490
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    const/16 v3, 0x2f

    .line 494
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_1

    .line 496
    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 498
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    move-object v4, v2

    move-object v2, v6

    .line 501
    :goto_1
    iget-object v5, p0, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    invoke-direct {p0, v5, v2, p1}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;)V

    if-lez v3, :cond_2

    .line 504
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    invoke-direct {p0, v2, v4, p1}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;)V

    goto :goto_0

    .line 506
    :cond_2
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    invoke-direct {p0, v2, v4, p1}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;)V

    goto :goto_0

    :cond_3
    return v1
.end method

.method private final remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "map",
            "name",
            "object"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 577
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;

    if-eqz v0, :cond_5

    .line 579
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 580
    aget-object v2, v0, v1

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_1
    if-ltz v1, :cond_3

    .line 584
    aget-object v3, v0, v1

    if-ne v3, p3, :cond_2

    sub-int v3, v2, v1

    if-lez v3, :cond_1

    add-int/lit8 v4, v1, 0x1

    .line 587
    invoke-static {v0, v4, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    const/4 v3, 0x0

    .line 589
    aput-object v3, v0, v2

    add-int/lit8 v2, v2, -0x1

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    if-gez v2, :cond_4

    .line 594
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 595
    :cond_4
    array-length p3, v0

    div-int/lit8 p3, p3, 0x2

    if-ge v2, p3, :cond_5

    add-int/lit8 p3, v2, 0x2

    .line 596
    invoke-virtual {p0, p3}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->newArray(I)[Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;

    move-result-object p3

    add-int/lit8 v2, v2, 0x1

    const/4 v1, 0x0

    .line 597
    invoke-static {v0, v1, p3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 598
    invoke-virtual {p1, p2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_2
    return-void
.end method

.method private final unregister_intent_filter(Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "filter",
            "i",
            "dest",
            "prefix"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    const/4 p4, 0x0

    if-nez p2, :cond_0

    return p4

    .line 566
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 567
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    add-int/lit8 p4, p4, 0x1

    .line 570
    invoke-direct {p0, p3, v0, p1}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return p4
.end method

.method private final unregister_mime_types(Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;Ljava/lang/String;)I
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "filter",
            "prefix"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 514
    iget-object p2, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p2}, Landroid/content/IntentFilter;->typesIterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 520
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 521
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    const/16 v3, 0x2f

    .line 525
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_1

    .line 527
    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 529
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    move-object v4, v2

    move-object v2, v6

    .line 532
    :goto_1
    iget-object v5, p0, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    invoke-direct {p0, v5, v2, p1}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    if-lez v3, :cond_2

    .line 535
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    invoke-direct {p0, v2, v4, p1}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 537
    :cond_2
    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    invoke-direct {p0, v2, v4, p1}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    return v1
.end method


# virtual methods
.method public addFilter(Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "f"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->mFilters:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0}, Landroid/content/IntentFilter;->schemesIterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    const-string v2, "      Scheme: "

    invoke-direct {p0, p1, v0, v1, v2}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->register_intent_filter(Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    move-result v0

    const-string v1, "      Type: "

    .line 60
    invoke-direct {p0, p1, v1}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->register_mime_types(Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;Ljava/lang/String;)I

    move-result v1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 62
    iget-object v0, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    const-string v3, "      Action: "

    invoke-direct {p0, p1, v0, v2, v3}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->register_intent_filter(Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    :cond_0
    if-eqz v1, :cond_1

    .line 66
    iget-object v0, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    const-string v2, "      TypedAction: "

    invoke-direct {p0, p1, v0, v1, v2}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->register_intent_filter(Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method protected allowFilterResult(Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;Ljava/util/List;)Z
    .locals 0
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
            "(TF;",
            "Ljava/util/List<",
            "TR;>;)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method protected dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "out",
            "prefix",
            "filter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "TF;)V"
        }
    .end annotation

    .line 448
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method protected dumpFilterLabel(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "out",
            "prefix",
            "label",
            "count"
        }
    .end annotation

    .line 456
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(I)V

    return-void
.end method

.method dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z
    .locals 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "out",
            "titlePrefix",
            "title",
            "prefix",
            "map",
            "packageName",
            "printFilter",
            "collapseDuplicates"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            "ZZ)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    .line 182
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 183
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "    "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 184
    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v10, p3

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 187
    :goto_0
    invoke-virtual/range {p5 .. p5}, Landroid/util/ArrayMap;->size()I

    move-result v14

    if-ge v11, v14, :cond_d

    .line 188
    invoke-virtual {v3, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;

    .line 189
    array-length v15, v14

    const-string v8, ":"

    if-eqz p8, :cond_6

    if-nez p7, :cond_6

    .line 193
    invoke-virtual {v7}, Landroid/util/ArrayMap;->clear()V

    const/4 v9, 0x0

    :goto_1
    move-object/from16 v16, v10

    if-ge v9, v15, :cond_2

    .line 194
    aget-object v10, v14, v9

    if-eqz v10, :cond_2

    if-eqz v4, :cond_0

    .line 195
    invoke-virtual {v0, v4, v10}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->isPackageForFilter(Ljava/lang/String;Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;)Z

    move-result v17

    if-nez v17, :cond_0

    move/from16 v18, v12

    move-object/from16 v17, v13

    const/4 v12, 0x1

    goto :goto_2

    .line 198
    :cond_0
    invoke-virtual {v0, v10}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->filterToLabel(Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;)Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v17, v13

    .line 199
    invoke-virtual {v7, v10}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v13

    if-gez v13, :cond_1

    .line 201
    new-instance v13, Landroid/util/MutableInt;

    move/from16 v18, v12

    const/4 v12, 0x1

    invoke-direct {v13, v12}, Landroid/util/MutableInt;-><init>(I)V

    invoke-virtual {v7, v10, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    move/from16 v18, v12

    const/4 v12, 0x1

    .line 203
    invoke-virtual {v7, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/MutableInt;

    iget v13, v10, Landroid/util/MutableInt;->value:I

    add-int/2addr v13, v12

    iput v13, v10, Landroid/util/MutableInt;->value:I

    :goto_2
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v10, v16

    move-object/from16 v13, v17

    move/from16 v12, v18

    goto :goto_1

    :cond_2
    move/from16 v18, v12

    move-object/from16 v17, v13

    const/4 v12, 0x1

    move-object/from16 v10, v16

    const/4 v9, 0x0

    const/4 v13, 0x0

    .line 206
    :goto_3
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v14

    if-ge v9, v14, :cond_5

    if-eqz v10, :cond_3

    .line 208
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v10, 0x0

    :cond_3
    if-nez v13, :cond_4

    .line 212
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v13, 0x1

    .line 216
    :cond_4
    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/MutableInt;

    iget v15, v15, Landroid/util/MutableInt;->value:I

    invoke-virtual {v0, v1, v2, v14, v15}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->dumpFilterLabel(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;I)V

    add-int/lit8 v9, v9, 0x1

    const/16 v18, 0x1

    goto :goto_3

    :cond_5
    move-object/from16 v13, v17

    goto :goto_6

    :cond_6
    move-object/from16 v16, v10

    move/from16 v18, v12

    move-object/from16 v17, v13

    const/4 v12, 0x1

    move-object/from16 v10, v16

    move-object/from16 v13, v17

    const/4 v9, 0x0

    const/16 v16, 0x0

    :goto_4
    if-ge v9, v15, :cond_c

    .line 219
    aget-object v12, v14, v9

    if-eqz v12, :cond_c

    if-eqz v4, :cond_7

    .line 220
    invoke-virtual {v0, v4, v12}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->isPackageForFilter(Ljava/lang/String;Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;)Z

    move-result v17

    if-nez v17, :cond_7

    goto :goto_5

    :cond_7
    if-eqz v10, :cond_8

    .line 224
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v10, 0x0

    :cond_8
    if-nez v16, :cond_9

    .line 228
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v3, v16

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v16, 0x1

    .line 232
    :cond_9
    invoke-virtual {v0, v1, v2, v12}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;)V

    if-eqz p7, :cond_b

    if-nez v13, :cond_a

    .line 235
    new-instance v13, Landroid/util/PrintWriterPrinter;

    invoke-direct {v13, v1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 237
    :cond_a
    iget-object v3, v12, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->intentFilter:Landroid/content/IntentFilter;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v13, v12}, Landroid/content/IntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    :cond_b
    const/16 v18, 0x1

    :goto_5
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v3, p5

    const/4 v12, 0x1

    goto :goto_4

    :cond_c
    :goto_6
    move/from16 v12, v18

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v3, p5

    goto/16 :goto_0

    :cond_d
    move/from16 v18, v12

    return v18
.end method

.method public filterIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TF;>;"
        }
    .end annotation

    .line 274
    new-instance v0, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver$IteratorWrapper;

    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->mFilters:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver$IteratorWrapper;-><init>(Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;Ljava/util/Iterator;)V

    return-object v0
.end method

.method protected filterResults(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "results"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TR;>;)V"
        }
    .end annotation

    return-void
.end method

.method public filterSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TF;>;"
        }
    .end annotation

    .line 281
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->mFilters:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected filterToLabel(Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string p1, "IntentFilter"

    return-object p1
.end method

.method public findFilters(Landroid/content/IntentFilter;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matching"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/IntentFilter;",
            ")",
            "Ljava/util/ArrayList<",
            "TF;>;"
        }
    .end annotation

    .line 130
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 132
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;

    invoke-direct {p0, v0, p1}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->collectFilters([Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;Landroid/content/IntentFilter;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    .line 133
    :cond_0
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 135
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;

    invoke-direct {p0, v0, p1}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->collectFilters([Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;Landroid/content/IntentFilter;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    .line 136
    :cond_1
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v0

    if-nez v0, :cond_2

    .line 137
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 139
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;

    invoke-direct {p0, v0, p1}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->collectFilters([Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;Landroid/content/IntentFilter;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v0, 0x0

    .line 142
    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->mFilters:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;

    .line 143
    iget-object v3, v2, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->intentFilter:Landroid/content/IntentFilter;

    invoke-static {v3, p1}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->filterEquals(Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez v0, :cond_4

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 147
    :cond_4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method protected isFilterStopped(Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "filter",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;I)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method protected abstract isPackageForFilter(Ljava/lang/String;Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageName",
            "filter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TF;)Z"
        }
    .end annotation
.end method

.method protected abstract newArray(I)[Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TF;"
        }
    .end annotation
.end method

.method protected newResult(Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;II)Ljava/lang/Object;
    .locals 0
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;II)TR;"
        }
    .end annotation

    return-object p1
.end method

.method public queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;
    .locals 20
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
            "TR;>;"
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p2

    .line 305
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v12

    .line 307
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 310
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    const/4 v14, 0x0

    if-eqz v0, :cond_0

    const/4 v15, 0x1

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    :goto_0
    const-string v9, "IntentResolver"

    if-eqz v15, :cond_1

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resolving type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " scheme="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " defaultOnly="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p3

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " userId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p4

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Ltop/niunaijun/blackbox/utils/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    move-object/from16 v6, p1

    move/from16 v8, p3

    move/from16 v7, p4

    :goto_1
    if-eqz v11, :cond_9

    const/16 v2, 0x2f

    .line 324
    invoke-virtual {v11, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_9

    .line 326
    invoke-virtual {v11, v14, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "*"

    .line 327
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 328
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v0, v2, 0x2

    const-string v14, "Second type cut: "

    const-string v6, "First type cut: "

    if-ne v5, v0, :cond_4

    add-int/2addr v2, v1

    .line 329
    invoke-virtual {v11, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_2

    goto :goto_2

    .line 339
    :cond_2
    iget-object v0, v10, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;

    if-eqz v15, :cond_3

    .line 340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Ltop/niunaijun/blackbox/utils/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_3
    iget-object v1, v10, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;

    if-eqz v15, :cond_6

    .line 342
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 342
    invoke-static {v9, v2}, Ltop/niunaijun/blackbox/utils/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 332
    :cond_4
    :goto_2
    iget-object v0, v10, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;

    if-eqz v15, :cond_5

    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Ltop/niunaijun/blackbox/utils/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_5
    iget-object v1, v10, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;

    if-eqz v15, :cond_6

    .line 335
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 335
    invoke-static {v9, v2}, Ltop/niunaijun/blackbox/utils/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_6
    :goto_3
    iget-object v2, v10, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;

    if-eqz v15, :cond_7

    .line 348
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Third type cut: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Ltop/niunaijun/blackbox/utils/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move-object v14, v1

    move-object/from16 v17, v2

    goto :goto_5

    .line 349
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 353
    iget-object v0, v10, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;

    if-eqz v15, :cond_a

    .line 354
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Typed Action list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Ltop/niunaijun/blackbox/utils/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_9
    const/4 v0, 0x0

    :cond_a
    :goto_4
    const/4 v14, 0x0

    const/16 v17, 0x0

    :goto_5
    if-eqz v12, :cond_c

    .line 363
    iget-object v1, v10, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v1, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;

    if-eqz v15, :cond_b

    .line 364
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scheme list: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Ltop/niunaijun/blackbox/utils/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    move-object/from16 v16, v1

    goto :goto_6

    :cond_c
    const/16 v16, 0x0

    :goto_6
    if-nez v11, :cond_d

    if-nez v12, :cond_d

    .line 370
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 371
    iget-object v0, v10, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;

    if-eqz v15, :cond_d

    .line 372
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Action list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Ltop/niunaijun/blackbox/utils/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    move-object/from16 v18, v0

    .line 375
    invoke-static/range {p1 .. p1}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->getFastIntentCategories(Landroid/content/Intent;)Ltop/niunaijun/blackbox/core/system/pm/FastImmutableArraySet;

    move-result-object v19

    if-eqz v18, :cond_e

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move v3, v15

    move/from16 v4, p3

    move-object/from16 v5, p2

    move-object v6, v12

    move-object/from16 v7, v18

    move-object v8, v13

    move-object v11, v9

    move/from16 v9, p4

    .line 377
    invoke-direct/range {v0 .. v9}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->buildResolveList(Landroid/content/Intent;Ltop/niunaijun/blackbox/core/system/pm/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;Ljava/util/List;I)V

    goto :goto_7

    :cond_e
    move-object v11, v9

    :goto_7
    if-eqz v14, :cond_f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move v3, v15

    move/from16 v4, p3

    move-object/from16 v5, p2

    move-object v6, v12

    move-object v7, v14

    move-object v8, v13

    move/from16 v9, p4

    .line 381
    invoke-direct/range {v0 .. v9}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->buildResolveList(Landroid/content/Intent;Ltop/niunaijun/blackbox/core/system/pm/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;Ljava/util/List;I)V

    :cond_f
    if-eqz v17, :cond_10

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move v3, v15

    move/from16 v4, p3

    move-object/from16 v5, p2

    move-object v6, v12

    move-object/from16 v7, v17

    move-object v8, v13

    move/from16 v9, p4

    .line 385
    invoke-direct/range {v0 .. v9}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->buildResolveList(Landroid/content/Intent;Ltop/niunaijun/blackbox/core/system/pm/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;Ljava/util/List;I)V

    :cond_10
    if-eqz v16, :cond_11

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move v3, v15

    move/from16 v4, p3

    move-object/from16 v5, p2

    move-object v6, v12

    move-object/from16 v7, v16

    move-object v8, v13

    move/from16 v9, p4

    .line 389
    invoke-direct/range {v0 .. v9}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->buildResolveList(Landroid/content/Intent;Ltop/niunaijun/blackbox/core/system/pm/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;Ljava/util/List;I)V

    .line 392
    :cond_11
    invoke-virtual {v10, v13}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->filterResults(Ljava/util/List;)V

    if-eqz v15, :cond_12

    const-string v0, "Final result list:"

    .line 396
    invoke-static {v11, v0}, Ltop/niunaijun/blackbox/utils/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    .line 397
    :goto_8
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v14, v0, :cond_12

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Ltop/niunaijun/blackbox/utils/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    :cond_12
    return-object v13
.end method

.method public queryIntentFromList(Landroid/content/Intent;Ljava/lang/String;ZLjava/util/ArrayList;I)Ljava/util/List;
    .locals 16
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
            "defaultOnly",
            "listCut",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList<",
            "[TF;>;I)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 286
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 289
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    .line 291
    :goto_0
    invoke-static/range {p1 .. p1}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->getFastIntentCategories(Landroid/content/Intent;)Ltop/niunaijun/blackbox/core/system/pm/FastImmutableArraySet;

    move-result-object v12

    .line 292
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v13

    .line 293
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v14, :cond_1

    move-object/from16 v9, p4

    .line 296
    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, [Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v12

    move v3, v11

    move/from16 v4, p3

    move-object/from16 v5, p2

    move-object v6, v13

    move-object v8, v10

    move/from16 v9, p5

    .line 295
    invoke-direct/range {v0 .. v9}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->buildResolveList(Landroid/content/Intent;Ltop/niunaijun/blackbox/core/system/pm/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;Ljava/util/List;I)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v0, p0

    .line 298
    invoke-virtual {v0, v10}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->filterResults(Ljava/util/List;)V

    return-object v10
.end method

.method public removeFilter(Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "f"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .line 155
    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->removeFilterInternal(Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;)V

    .line 156
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->mFilters:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method removeFilterInternal(Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "f"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .line 166
    iget-object v0, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0}, Landroid/content/IntentFilter;->schemesIterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    const-string v2, "      Scheme: "

    invoke-direct {p0, p1, v0, v1, v2}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->unregister_intent_filter(Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    move-result v0

    const-string v1, "      Type: "

    .line 168
    invoke-direct {p0, p1, v1}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->unregister_mime_types(Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;Ljava/lang/String;)I

    move-result v1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 170
    iget-object v0, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v2, p0, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    const-string v3, "      Action: "

    invoke-direct {p0, p1, v0, v2, v3}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->unregister_intent_filter(Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    :cond_0
    if-eqz v1, :cond_1

    .line 174
    iget-object v0, p1, Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    const-string v2, "      TypedAction: "

    invoke-direct {p0, p1, v0, v1, v2}, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->unregister_intent_filter(Ltop/niunaijun/blackbox/core/system/pm/BPackage$IntentInfo;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method protected sortResults(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "results"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TR;>;)V"
        }
    .end annotation

    .line 438
    sget-object v0, Ltop/niunaijun/blackbox/core/system/pm/IntentResolver;->mResolvePrioritySorter:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method
