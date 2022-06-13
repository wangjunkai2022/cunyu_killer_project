.class public Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabaseHandler;
.super Ljava/lang/Object;
.source "CredentialDatabaseHandler.java"

# interfaces
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "CredentialDatabaseHandler"

.field public static channel:Lio/flutter/plugin/common/MethodChannel;

.field public static credentialDatabase:Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabase;


# direct methods
.method public constructor <init>(Lio/flutter/plugin/common/BinaryMessenger;)V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    const-string v1, "com.pichillilorenzo/flutter_inappwebview_credential_database"

    invoke-direct {v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabaseHandler;->channel:Lio/flutter/plugin/common/MethodChannel;

    .line 32
    sget-object p1, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabaseHandler;->channel:Lio/flutter/plugin/common/MethodChannel;

    invoke-virtual {p1, p0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 33
    sget-object p1, Lcom/pichillilorenzo/flutter_inappwebview/Shared;->applicationContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabase;->getInstance(Landroid/content/Context;)Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabase;

    move-result-object p1

    sput-object p1, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabaseHandler;->credentialDatabase:Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabase;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 121
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabaseHandler;->channel:Lio/flutter/plugin/common/MethodChannel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    return-void
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 21

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 38
    iget-object v2, v0, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "getAllAuthCredentials"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_1
    const-string v3, "removeHttpAuthCredentials"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v5

    goto :goto_1

    :sswitch_2
    const-string v3, "setHttpAuthCredential"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v7

    goto :goto_1

    :sswitch_3
    const-string v3, "removeHttpAuthCredential"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v6

    goto :goto_1

    :sswitch_4
    const-string v3, "getHttpAuthCredentials"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v8

    goto :goto_1

    :sswitch_5
    const-string v3, "clearAllAuthCredentials"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v2, -0x1

    :goto_1
    if-eqz v2, :cond_7

    const-string v3, "port"

    const-string v10, "realm"

    const-string v11, "protocol"

    const-string v12, "host"

    if-eq v2, v8, :cond_5

    const-string v8, "password"

    const-string v13, "username"

    if-eq v2, v7, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_1

    .line 116
    invoke-interface/range {p2 .. p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    goto/16 :goto_5

    .line 111
    :cond_1
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabaseHandler;->credentialDatabase:Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabase;

    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabase;->clearAllAuthCredentials()V

    .line 112
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview/Shared;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->clearHttpAuthUsernamePassword()V

    .line 113
    invoke-interface {v1, v9}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 100
    :cond_2
    invoke-virtual {v0, v12}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 101
    invoke-virtual {v0, v11}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 102
    invoke-virtual {v0, v10}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 103
    invoke-virtual {v0, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 105
    sget-object v3, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabaseHandler;->credentialDatabase:Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabase;

    invoke-virtual {v3, v2, v4, v5, v0}, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabase;->removeHttpAuthCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 107
    invoke-interface {v1, v9}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 86
    :cond_3
    invoke-virtual {v0, v12}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Ljava/lang/String;

    .line 87
    invoke-virtual {v0, v11}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Ljava/lang/String;

    .line 88
    invoke-virtual {v0, v10}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Ljava/lang/String;

    .line 89
    invoke-virtual {v0, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Ljava/lang/Integer;

    .line 90
    invoke-virtual {v0, v13}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Ljava/lang/String;

    .line 91
    invoke-virtual {v0, v8}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/String;

    .line 93
    sget-object v14, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabaseHandler;->credentialDatabase:Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabase;

    invoke-virtual/range {v14 .. v20}, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabase;->removeHttpAuthCredential(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-interface {v1, v9}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 72
    :cond_4
    invoke-virtual {v0, v12}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Ljava/lang/String;

    .line 73
    invoke-virtual {v0, v11}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Ljava/lang/String;

    .line 74
    invoke-virtual {v0, v10}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Ljava/lang/String;

    .line 75
    invoke-virtual {v0, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Ljava/lang/Integer;

    .line 76
    invoke-virtual {v0, v13}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Ljava/lang/String;

    .line 77
    invoke-virtual {v0, v8}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/String;

    .line 79
    sget-object v14, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabaseHandler;->credentialDatabase:Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabase;

    invoke-virtual/range {v14 .. v20}, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabase;->setHttpAuthCredential(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-interface {v1, v9}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 58
    :cond_5
    invoke-virtual {v0, v12}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 59
    invoke-virtual {v0, v11}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 60
    invoke-virtual {v0, v10}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 61
    invoke-virtual {v0, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 63
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 64
    sget-object v6, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabaseHandler;->credentialDatabase:Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabase;

    invoke-virtual {v6, v2, v4, v5, v0}, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabase;->getHttpAuthCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/Credential;

    .line 65
    invoke-virtual {v2}, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/Credential;->toMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 67
    :cond_6
    invoke-interface {v1, v3}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_5

    .line 41
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    sget-object v2, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabaseHandler;->credentialDatabase:Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabase;

    iget-object v2, v2, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabase;->protectionSpaceDao:Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/ProtectionSpaceDao;

    invoke-virtual {v2}, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/ProtectionSpaceDao;->getAll()Ljava/util/List;

    move-result-object v2

    .line 43
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/ProtectionSpace;

    .line 44
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 45
    sget-object v5, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabaseHandler;->credentialDatabase:Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabase;

    iget-object v5, v5, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabase;->credentialDao:Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDao;

    iget-object v6, v3, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/ProtectionSpace;->id:Ljava/lang/Long;

    invoke-virtual {v5, v6}, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDao;->getAllByProtectionSpaceId(Ljava/lang/Long;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/Credential;

    .line 46
    invoke-virtual {v6}, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/Credential;->toMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 48
    :cond_8
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 49
    invoke-virtual {v3}, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/ProtectionSpace;->toMap()Ljava/util/Map;

    move-result-object v3

    const-string v6, "protectionSpace"

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "credentials"

    .line 50
    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 53
    :cond_9
    invoke-interface {v1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    :goto_5
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6e5eaa80 -> :sswitch_5
        -0x187440aa -> :sswitch_4
        0x231e126b -> :sswitch_3
        0x3b8adac9 -> :sswitch_2
        0x40a43b68 -> :sswitch_1
        0x73165e49 -> :sswitch_0
    .end sparse-switch
.end method
