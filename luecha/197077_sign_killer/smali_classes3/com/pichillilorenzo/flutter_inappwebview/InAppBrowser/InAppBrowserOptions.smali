.class public Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;
.super Ljava/lang/Object;
.source "InAppBrowserOptions.java"

# interfaces
.implements Lcom/pichillilorenzo/flutter_inappwebview/Options;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/pichillilorenzo/flutter_inappwebview/Options<",
        "Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;",
        ">;"
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "InAppBrowserOptions"


# instance fields
.field public closeOnCannotGoBack:Ljava/lang/Boolean;

.field public faceOrientation:Ljava/lang/String;

.field public hidden:Ljava/lang/Boolean;

.field public hideTitleBar:Ljava/lang/Boolean;

.field public hideUrlBar:Ljava/lang/Boolean;

.field public progressBar:Ljava/lang/Boolean;

.field public toolbarTop:Ljava/lang/Boolean;

.field public toolbarTopBackgroundColor:Ljava/lang/String;

.field public toolbarTopFixedTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;->hidden:Ljava/lang/Boolean;

    const/4 v1, 0x1

    .line 13
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;->toolbarTop:Ljava/lang/Boolean;

    const-string v2, ""

    .line 14
    iput-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;->toolbarTopBackgroundColor:Ljava/lang/String;

    .line 15
    iput-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;->toolbarTopFixedTitle:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;->hideUrlBar:Ljava/lang/Boolean;

    .line 17
    iput-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;->faceOrientation:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;->hideTitleBar:Ljava/lang/Boolean;

    .line 20
    iput-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;->closeOnCannotGoBack:Ljava/lang/Boolean;

    .line 21
    iput-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;->progressBar:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public getRealOptions(Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 83
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;->toMap()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getRealOptions(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0

    .line 8
    check-cast p1, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;

    invoke-virtual {p0, p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;->getRealOptions(Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/util/Map;)Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;"
        }
    .end annotation

    .line 25
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 26
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 27
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    .line 32
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v3, "toolbarTopBackgroundColor"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_1
    const-string v3, "progressBar"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x7

    goto :goto_1

    :sswitch_2
    const-string v3, "hideUrlBar"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_3
    const-string v3, "closeOnCannotGoBack"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x6

    goto :goto_1

    :sswitch_4
    const-string v3, "toolbarTop"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_5
    const-string v3, "toolbarTopFixedTitle"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_6
    const-string v3, "hidden"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_7
    const-string v3, "faceOrientation"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x8

    goto :goto_1

    :sswitch_8
    const-string v3, "hideTitleBar"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x5

    :cond_1
    :goto_1
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 58
    :pswitch_0
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;->faceOrientation:Ljava/lang/String;

    goto/16 :goto_0

    .line 55
    :pswitch_1
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;->progressBar:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 52
    :pswitch_2
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;->closeOnCannotGoBack:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 49
    :pswitch_3
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;->hideTitleBar:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 46
    :pswitch_4
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;->hideUrlBar:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 43
    :pswitch_5
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;->toolbarTopFixedTitle:Ljava/lang/String;

    goto/16 :goto_0

    .line 40
    :pswitch_6
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;->toolbarTopBackgroundColor:Ljava/lang/String;

    goto/16 :goto_0

    .line 37
    :pswitch_7
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;->toolbarTop:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 34
    :pswitch_8
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;->hidden:Ljava/lang/Boolean;

    goto/16 :goto_0

    :cond_2
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4df37e03 -> :sswitch_8
        -0x4a2be4cd -> :sswitch_7
        -0x48916256 -> :sswitch_6
        -0x7101142 -> :sswitch_5
        0x37dc7da -> :sswitch_4
        0x5616c69 -> :sswitch_3
        0x1836e406 -> :sswitch_2
        0x437176a6 -> :sswitch_1
        0x7ddcf79b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic parse(Ljava/util/Map;)Lcom/pichillilorenzo/flutter_inappwebview/Options;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;->parse(Ljava/util/Map;)Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;

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

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 69
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;->hidden:Ljava/lang/Boolean;

    const-string v2, "hidden"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;->toolbarTop:Ljava/lang/Boolean;

    const-string v2, "toolbarTop"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;->toolbarTopBackgroundColor:Ljava/lang/String;

    const-string v2, "toolbarTopBackgroundColor"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;->toolbarTopFixedTitle:Ljava/lang/String;

    const-string v2, "toolbarTopFixedTitle"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;->hideUrlBar:Ljava/lang/Boolean;

    const-string v2, "hideUrlBar"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;->hideTitleBar:Ljava/lang/Boolean;

    const-string v2, "hideTitleBar"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;->closeOnCannotGoBack:Ljava/lang/Boolean;

    const-string v2, "closeOnCannotGoBack"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;->progressBar:Ljava/lang/Boolean;

    const-string v2, "progressBar"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;->faceOrientation:Ljava/lang/String;

    const-string v2, "faceOrientation"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
