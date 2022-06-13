.class public Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTrigger;
.super Ljava/lang/Object;
.source "ContentBlockerTrigger.java"


# instance fields
.field public ifDomain:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public ifTopUrl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public loadType:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public resourceType:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;",
            ">;"
        }
    .end annotation
.end field

.field public unlessDomain:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public unlessTopUrl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public urlFilter:Ljava/lang/String;

.field public urlFilterIsCaseSensitive:Ljava/lang/Boolean;

.field public urlFilterPatternCompiled:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTrigger;->resourceType:Ljava/util/List;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTrigger;->ifDomain:Ljava/util/List;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTrigger;->unlessDomain:Ljava/util/List;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTrigger;->loadType:Ljava/util/List;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTrigger;->ifTopUrl:Ljava/util/List;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTrigger;->unlessTopUrl:Ljava/util/List;

    .line 24
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTrigger;->urlFilter:Ljava/lang/String;

    .line 25
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTrigger;->urlFilter:Ljava/lang/String;

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTrigger;->urlFilterPatternCompiled:Ljava/util/regex/Pattern;

    if-eqz p3, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    iget-object p3, p0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTrigger;->resourceType:Ljava/util/List;

    :goto_0
    iput-object p3, p0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTrigger;->resourceType:Ljava/util/List;

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    .line 28
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_1

    :cond_1
    move p2, p1

    :goto_1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTrigger;->urlFilterIsCaseSensitive:Ljava/lang/Boolean;

    if-eqz p4, :cond_2

    goto :goto_2

    .line 29
    :cond_2
    iget-object p4, p0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTrigger;->ifDomain:Ljava/util/List;

    :goto_2
    iput-object p4, p0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTrigger;->ifDomain:Ljava/util/List;

    if-eqz p5, :cond_3

    goto :goto_3

    .line 30
    :cond_3
    iget-object p5, p0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTrigger;->unlessDomain:Ljava/util/List;

    :goto_3
    iput-object p5, p0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTrigger;->unlessDomain:Ljava/util/List;

    .line 31
    iget-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTrigger;->ifDomain:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    const/4 p3, 0x1

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTrigger;->unlessDomain:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    move p2, p3

    goto :goto_4

    :cond_4
    move p2, p1

    :goto_4
    if-nez p2, :cond_b

    if-eqz p6, :cond_5

    goto :goto_5

    .line 33
    :cond_5
    iget-object p6, p0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTrigger;->loadType:Ljava/util/List;

    :goto_5
    iput-object p6, p0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTrigger;->loadType:Ljava/util/List;

    .line 34
    iget-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTrigger;->loadType:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 p4, 0x2

    if-gt p2, p4, :cond_a

    if-eqz p7, :cond_6

    goto :goto_6

    .line 35
    :cond_6
    iget-object p7, p0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTrigger;->ifTopUrl:Ljava/util/List;

    :goto_6
    iput-object p7, p0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTrigger;->ifTopUrl:Ljava/util/List;

    if-eqz p8, :cond_7

    goto :goto_7

    .line 36
    :cond_7
    iget-object p8, p0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTrigger;->unlessTopUrl:Ljava/util/List;

    :goto_7
    iput-object p8, p0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTrigger;->unlessTopUrl:Ljava/util/List;

    .line 37
    iget-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTrigger;->ifTopUrl:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_8

    iget-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTrigger;->unlessTopUrl:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_8

    move p1, p3

    :cond_8
    if-nez p1, :cond_9

    return-void

    .line 38
    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 34
    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 32
    :cond_b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public static fromMap(Ljava/util/Map;)Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTrigger;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTrigger;"
        }
    .end annotation

    const-string v0, "url-filter"

    .line 42
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    const-string v0, "url-filter-is-case-sensitive"

    .line 43
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/Boolean;

    const-string v0, "resource-type"

    .line 44
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 45
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_0

    .line 47
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 48
    invoke-static {v1}, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;->fromValue(Ljava/lang/String;)Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 51
    :cond_0
    invoke-static {}, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;->values()[Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    const-string v0, "if-domain"

    .line 53
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/util/List;

    const-string v0, "unless-domain"

    .line 54
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/List;

    const-string v0, "load-type"

    .line 55
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/util/List;

    const-string v0, "if-top-url"

    .line 56
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/util/List;

    const-string v0, "unless-top-url"

    .line 57
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v9, p0

    check-cast v9, Ljava/util/List;

    .line 58
    new-instance p0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTrigger;

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTrigger;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object p0
.end method
