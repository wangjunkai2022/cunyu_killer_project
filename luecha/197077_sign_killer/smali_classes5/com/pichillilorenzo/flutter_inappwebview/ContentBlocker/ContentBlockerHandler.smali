.class public Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerHandler;
.super Ljava/lang/Object;
.source "ContentBlockerHandler.java"


# static fields
.field protected static final LOG_TAG:Ljava/lang/String; = "ContentBlockerHandler"


# instance fields
.field protected ruleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlocker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerHandler;->ruleList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlocker;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerHandler;->ruleList:Ljava/util/List;

    .line 36
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerHandler;->ruleList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public checkUrl(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;,
            Ljava/lang/InterruptedException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 216
    invoke-virtual {p0, p2}, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerHandler;->getResourceTypeFromUrl(Ljava/lang/String;)Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;

    move-result-object v0

    .line 217
    invoke-virtual {p0, p1, p2, v0}, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerHandler;->checkUrl(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;Ljava/lang/String;Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public checkUrl(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;Ljava/lang/String;Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;)Landroid/webkit/WebResourceResponse;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;,
            Ljava/lang/InterruptedException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, "charset="

    .line 48
    iget-object v0, v2, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->contentBlockers:Ljava/util/List;

    const/4 v5, 0x0

    if-nez v0, :cond_0

    return-object v5

    :cond_0
    const/4 v6, 0x0

    .line 53
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v15, v0

    goto :goto_0

    :catch_0
    const-string v0, ":"

    .line 55
    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 56
    aget-object v8, v0, v6

    .line 57
    new-instance v0, Ljava/net/URL;

    const-string v7, "https"

    invoke-virtual {v3, v8, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 58
    new-instance v15, Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v11

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v14

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :goto_0
    invoke-virtual {v15}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v7

    .line 61
    invoke-virtual {v15}, Ljava/net/URI;->getPort()I

    move-result v8

    .line 62
    invoke-virtual {v15}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v9

    .line 64
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v10, v1, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerHandler;->ruleList:Ljava/util/List;

    invoke-direct {v0, v10}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    .line 66
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlocker;

    .line 67
    iget-object v11, v0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlocker;->trigger:Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTrigger;

    .line 68
    iget-object v12, v11, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTrigger;->resourceType:Ljava/util/List;

    .line 69
    sget-object v13, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;->IMAGE:Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;

    invoke-interface {v12, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    sget-object v13, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;->SVG_DOCUMENT:Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;

    invoke-interface {v12, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 70
    sget-object v13, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;->SVG_DOCUMENT:Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_1
    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlocker;->action:Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerAction;

    .line 75
    iget-object v13, v11, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTrigger;->urlFilterPatternCompiled:Ljava/util/regex/Pattern;

    invoke-virtual {v13, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    .line 76
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->matches()Z

    move-result v13

    if-eqz v13, :cond_20

    .line 78
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_2

    move-object/from16 v13, p3

    invoke-interface {v12, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    return-object v5

    :cond_2
    move-object/from16 v13, p3

    .line 81
    :cond_3
    iget-object v12, v11, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTrigger;->ifDomain:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v12

    const-string v14, "*"

    const-string v15, ""

    if-nez v12, :cond_8

    .line 83
    iget-object v12, v11, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTrigger;->ifDomain:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v6, v16

    check-cast v6, Ljava/lang/String;

    .line 84
    invoke-virtual {v6, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-virtual {v6, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    :cond_4
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_5
    const/4 v5, 0x1

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    goto :goto_2

    :cond_7
    const/4 v5, 0x0

    :goto_3
    if-nez v5, :cond_8

    const/4 v5, 0x0

    return-object v5

    .line 92
    :cond_8
    iget-object v5, v11, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTrigger;->unlessDomain:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_c

    .line 93
    iget-object v5, v11, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTrigger;->unlessDomain:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 94
    invoke-virtual {v6, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-virtual {v6, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_b

    :cond_a
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_b
    const/4 v2, 0x0

    return-object v2

    :cond_c
    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/String;

    .line 99
    iget-object v5, v11, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTrigger;->loadType:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, v11, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTrigger;->ifTopUrl:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, v11, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTrigger;->unlessTopUrl:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_e

    .line 100
    :cond_d
    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    const/4 v12, 0x1

    invoke-direct {v5, v12}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 101
    new-instance v12, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v14

    invoke-direct {v12, v14}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 102
    new-instance v14, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerHandler$1;

    invoke-direct {v14, v1, v6, v2, v5}, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerHandler$1;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerHandler;[Ljava/lang/String;Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v12, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 109
    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 112
    :cond_e
    iget-object v5, v11, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTrigger;->loadType:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_11

    .line 113
    new-instance v5, Ljava/net/URI;

    const/4 v12, 0x0

    aget-object v14, v6, v12

    invoke-direct {v5, v14}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v5}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v12

    .line 115
    invoke-virtual {v5}, Ljava/net/URI;->getPort()I

    move-result v14

    .line 116
    invoke-virtual {v5}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v17, v10

    .line 118
    iget-object v10, v11, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTrigger;->loadType:Ljava/util/List;

    const-string v13, "first-party"

    invoke-interface {v10, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    if-eqz v12, :cond_10

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    if-ne v14, v8, :cond_f

    goto :goto_5

    :cond_f
    :goto_4
    const/4 v2, 0x0

    goto :goto_6

    :cond_10
    :goto_5
    iget-object v5, v11, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTrigger;->loadType:Ljava/util/List;

    const-string v10, "third-party"

    .line 119
    invoke-interface {v5, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    if-eqz v12, :cond_12

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    goto :goto_4

    :goto_6
    return-object v2

    :cond_11
    move-object/from16 v17, v10

    .line 122
    :cond_12
    iget-object v5, v11, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTrigger;->ifTopUrl:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_15

    .line 124
    iget-object v5, v11, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTrigger;->ifTopUrl:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_13
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_14

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const/4 v12, 0x0

    .line 125
    aget-object v13, v6, v12

    invoke-virtual {v13, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_13

    const/4 v5, 0x1

    goto :goto_7

    :cond_14
    const/4 v5, 0x0

    :goto_7
    if-nez v5, :cond_15

    const/4 v5, 0x0

    return-object v5

    .line 133
    :cond_15
    iget-object v5, v11, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTrigger;->unlessTopUrl:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_17

    .line 134
    iget-object v5, v11, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTrigger;->unlessTopUrl:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_16
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_17

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const/4 v11, 0x0

    .line 135
    aget-object v12, v6, v11

    invoke-virtual {v12, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_16

    const/4 v10, 0x0

    return-object v10

    .line 139
    :cond_17
    sget-object v5, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerHandler$3;->$SwitchMap$com$pichillilorenzo$flutter_inappwebview$ContentBlocker$ContentBlockerActionType:[I

    iget-object v6, v0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerAction;->type:Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerActionType;

    invoke-virtual {v6}, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerActionType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1f

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1e

    const/4 v0, 0x3

    if-eq v5, v0, :cond_19

    :cond_18
    const/4 v5, 0x0

    const/4 v10, 0x0

    goto/16 :goto_b

    :cond_19
    const-string v0, "http"

    .line 176
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, -0x1

    if-eq v8, v0, :cond_1a

    const/16 v0, 0x50

    if-ne v8, v0, :cond_18

    :cond_1a
    const-string v0, "http://"

    const-string v5, "https://"

    .line 177
    invoke-virtual {v3, v0, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 179
    new-instance v5, Lokhttp3/Request$Builder;

    invoke-direct {v5}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v5, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 183
    :try_start_1
    invoke-static {}, Lcom/pichillilorenzo/flutter_inappwebview/Util;->getUnsafeOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v5

    invoke-virtual {v5, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 184
    :try_start_2
    invoke-virtual {v5}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object v0

    .line 185
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v0, "content-type"

    const-string v10, "text/plain"

    .line 187
    invoke-virtual {v5, v0, v10}, Lokhttp3/Response;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v10, ";"

    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v10, 0x0

    .line 189
    :try_start_3
    aget-object v11, v0, v10

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 190
    array-length v12, v0

    const/4 v13, 0x1

    if-le v12, v13, :cond_1b

    aget-object v12, v0, v13

    invoke-virtual {v12, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1b

    .line 191
    aget-object v0, v0, v13

    invoke-virtual {v0, v4, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_1b
    const-string v0, "utf-8"

    .line 194
    :goto_8
    invoke-virtual {v5}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v12

    invoke-virtual {v12}, Lokhttp3/ResponseBody;->close()V

    .line 195
    invoke-virtual {v5}, Lokhttp3/Response;->close()V

    .line 197
    new-instance v12, Landroid/webkit/WebResourceResponse;

    invoke-direct {v12, v11, v0, v6}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return-object v12

    :catch_1
    move-exception v0

    goto :goto_9

    :catch_2
    move-exception v0

    const/4 v10, 0x0

    goto :goto_9

    :catch_3
    move-exception v0

    const/4 v10, 0x0

    const/4 v5, 0x0

    .line 200
    :goto_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz v5, :cond_1c

    .line 202
    invoke-virtual {v5}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/ResponseBody;->close()V

    .line 203
    invoke-virtual {v5}, Lokhttp3/Response;->close()V

    .line 205
    :cond_1c
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v5, "ContentBlockerHandler"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_1d
    const/4 v10, 0x0

    goto :goto_a

    :cond_1e
    const/4 v10, 0x0

    .line 145
    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerAction;->selector:Ljava/lang/String;

    .line 146
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(function(d) {    function hide () {        if (!d.getElementById(\'css-display-none-style\')) {            var c = d.createElement(\'style\');            c.id = \'css-display-none-style\';            c.innerHTML = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " { display: none !important; }\';            d.body.appendChild(c);        }       d.querySelectorAll(\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\').forEach(function (item, index) {            item.setAttribute(\'style\', \'display: none !important;\');        });    };    hide();    d.addEventListener(\'DOMContentLoaded\', function(event) { hide(); }); })(document);"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 162
    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 163
    new-instance v6, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerHandler$2;

    invoke-direct {v6, v1, v2, v0}, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerHandler$2;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerHandler;Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_a
    const/4 v5, 0x0

    goto :goto_b

    .line 142
    :cond_1f
    new-instance v0, Landroid/webkit/WebResourceResponse;

    const/4 v5, 0x0

    invoke-direct {v0, v15, v15, v5}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object v0

    :cond_20
    move-object/from16 v17, v10

    move v10, v6

    :goto_b
    move v6, v10

    move-object/from16 v10, v17

    goto/16 :goto_1

    :cond_21
    return-object v5
.end method

.method public checkUrl(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;,
            Ljava/lang/InterruptedException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 221
    invoke-virtual {p0, p3}, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerHandler;->getResourceTypeFromContentType(Ljava/lang/String;)Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;

    move-result-object p3

    .line 222
    invoke-virtual {p0, p1, p2, p3}, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerHandler;->checkUrl(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;Ljava/lang/String;Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public getResourceTypeFromContentType(Ljava/lang/String;)Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;
    .locals 2

    .line 261
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;->RAW:Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;

    const-string v1, "text/css"

    .line 264
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 265
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;->STYLE_SHEET:Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;

    goto :goto_1

    :cond_0
    const-string v1, "image/svg+xml"

    .line 266
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 267
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;->SVG_DOCUMENT:Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;

    goto :goto_1

    :cond_1
    const-string v1, "image/"

    .line 268
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 269
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;->IMAGE:Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;

    goto :goto_1

    :cond_2
    const-string v1, "font/"

    .line 270
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 271
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;->FONT:Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;

    goto :goto_1

    :cond_3
    const-string v1, "audio/"

    .line 272
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "video/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "application/ogg"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    const-string v1, "javascript"

    .line 274
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 275
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;->SCRIPT:Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;

    goto :goto_1

    :cond_5
    const-string v1, "text/"

    .line 276
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 277
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;->DOCUMENT:Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;

    goto :goto_1

    .line 273
    :cond_6
    :goto_0
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;->MEDIA:Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;

    :cond_7
    :goto_1
    return-object v0
.end method

.method public getResourceTypeFromUrl(Ljava/lang/String;)Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;
    .locals 6

    const-string v0, "charset="

    const-string v1, "content-type"

    .line 226
    sget-object v2, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;->RAW:Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;

    const-string v3, "http://"

    .line 228
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "https://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 230
    :cond_0
    new-instance v3, Lokhttp3/Request$Builder;

    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v3, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->head()Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    const/4 v3, 0x0

    .line 233
    :try_start_0
    invoke-static {}, Lcom/pichillilorenzo/flutter_inappwebview/Util;->getUnsafeOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v4

    invoke-virtual {v4, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v3

    .line 235
    invoke-virtual {v3, v1}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 236
    invoke-virtual {v3, v1}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 238
    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 239
    array-length v4, p1

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    aget-object v4, p1, v5

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 240
    aget-object p1, p1, v5

    const-string v4, ""

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 243
    :cond_1
    invoke-virtual {v3}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->close()V

    .line 244
    invoke-virtual {v3}, Lokhttp3/Response;->close()V

    .line 245
    invoke-virtual {p0, v1}, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerHandler;->getResourceTypeFromContentType(Ljava/lang/String;)Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerTriggerResourceType;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    if-eqz v3, :cond_2

    .line 250
    invoke-virtual {v3}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    .line 251
    invoke-virtual {v3}, Lokhttp3/Response;->close()V

    .line 253
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 254
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ContentBlockerHandler"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-object v2
.end method

.method public getRuleList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlocker;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerHandler;->ruleList:Ljava/util/List;

    return-object v0
.end method

.method public setRuleList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlocker;",
            ">;)V"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/ContentBlocker/ContentBlockerHandler;->ruleList:Ljava/util/List;

    return-void
.end method
