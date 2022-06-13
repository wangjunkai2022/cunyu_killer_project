.class public Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/ContextMenuOptions;
.super Ljava/lang/Object;
.source "ContextMenuOptions.java"

# interfaces
.implements Lcom/pichillilorenzo/flutter_inappwebview/Options;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/pichillilorenzo/flutter_inappwebview/Options<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "ContextMenuOptions"


# instance fields
.field public hideDefaultSystemContextMenuItems:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/ContextMenuOptions;->hideDefaultSystemContextMenuItems:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public getRealOptions(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 39
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/ContextMenuOptions;->toMap()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/util/Map;)Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/ContextMenuOptions;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/ContextMenuOptions;"
        }
    .end annotation

    .line 14
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 15
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 16
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    .line 21
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x3fbf6580

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_1
    const-string v3, "hideDefaultSystemContextMenuItems"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    goto :goto_0

    .line 23
    :cond_3
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/ContextMenuOptions;->hideDefaultSystemContextMenuItems:Ljava/lang/Boolean;

    goto :goto_0

    :cond_4
    return-object p0
.end method

.method public bridge synthetic parse(Ljava/util/Map;)Lcom/pichillilorenzo/flutter_inappwebview/Options;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/ContextMenuOptions;->parse(Ljava/util/Map;)Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/ContextMenuOptions;

    move-result-object p1

    return-object p1
.end method

.method public toMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 33
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/ContextMenuOptions;->hideDefaultSystemContextMenuItems:Ljava/lang/Boolean;

    const-string v2, "hideDefaultSystemContextMenuItems"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
