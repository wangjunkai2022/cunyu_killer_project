.class public final synthetic Lcreativemaybeno/wakelock/Messages$WakelockApi$-CC;
.super Ljava/lang/Object;
.source "Messages.java"


# direct methods
.method public static getCodec()Lio/flutter/plugin/common/MessageCodec;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/flutter/plugin/common/MessageCodec<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 99
    sget-object v0, Lcreativemaybeno/wakelock/Messages$WakelockApiCodec;->INSTANCE:Lcreativemaybeno/wakelock/Messages$WakelockApiCodec;

    return-object v0
.end method

.method public static synthetic lambda$setup$0(Lcreativemaybeno/wakelock/Messages$WakelockApi;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .locals 2

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 111
    :try_start_0
    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 112
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcreativemaybeno/wakelock/Messages$ToggleMessage;

    if-eqz p1, :cond_0

    .line 116
    invoke-interface {p0, p1}, Lcreativemaybeno/wakelock/Messages$WakelockApi;->toggle(Lcreativemaybeno/wakelock/Messages$ToggleMessage;)V

    const-string p0, "result"

    const/4 p1, 0x0

    .line 117
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 114
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "msgArg unexpectedly null."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 120
    :goto_0
    invoke-static {p0}, Lcreativemaybeno/wakelock/Messages;->access$000(Ljava/lang/Throwable;)Ljava/util/Map;

    move-result-object p0

    const-string p1, "error"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :goto_1
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$setup$1(Lcreativemaybeno/wakelock/Messages$WakelockApi;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .locals 1

    .line 133
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 135
    :try_start_0
    invoke-interface {p0}, Lcreativemaybeno/wakelock/Messages$WakelockApi;->isEnabled()Lcreativemaybeno/wakelock/Messages$IsEnabledMessage;

    move-result-object p0

    const-string v0, "result"

    .line 136
    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 139
    :goto_0
    invoke-static {p0}, Lcreativemaybeno/wakelock/Messages;->access$000(Ljava/lang/Throwable;)Ljava/util/Map;

    move-result-object p0

    const-string v0, "error"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :goto_1
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    return-void
.end method

.method public static setup(Lio/flutter/plugin/common/BinaryMessenger;Lcreativemaybeno/wakelock/Messages$WakelockApi;)V
    .locals 4

    .line 105
    new-instance v0, Lio/flutter/plugin/common/BasicMessageChannel;

    .line 106
    invoke-static {}, Lcreativemaybeno/wakelock/Messages$WakelockApi$-CC;->getCodec()Lio/flutter/plugin/common/MessageCodec;

    move-result-object v1

    const-string v2, "dev.flutter.pigeon.WakelockApi.toggle"

    invoke-direct {v0, p0, v2, v1}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 108
    new-instance v2, Lcreativemaybeno/wakelock/-$$Lambda$Messages$WakelockApi$l2ut_Mtqx6GKV-3yVfO1vw97DRo;

    invoke-direct {v2, p1}, Lcreativemaybeno/wakelock/-$$Lambda$Messages$WakelockApi$l2ut_Mtqx6GKV-3yVfO1vw97DRo;-><init>(Lcreativemaybeno/wakelock/Messages$WakelockApi;)V

    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    goto :goto_0

    .line 125
    :cond_0
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 129
    :goto_0
    new-instance v0, Lio/flutter/plugin/common/BasicMessageChannel;

    .line 130
    invoke-static {}, Lcreativemaybeno/wakelock/Messages$WakelockApi$-CC;->getCodec()Lio/flutter/plugin/common/MessageCodec;

    move-result-object v2

    const-string v3, "dev.flutter.pigeon.WakelockApi.isEnabled"

    invoke-direct {v0, p0, v3, v2}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    if-eqz p1, :cond_1

    .line 132
    new-instance p0, Lcreativemaybeno/wakelock/-$$Lambda$Messages$WakelockApi$P444eQYI3VaE7t9yVvSI5xzJ_lU;

    invoke-direct {p0, p1}, Lcreativemaybeno/wakelock/-$$Lambda$Messages$WakelockApi$P444eQYI3VaE7t9yVvSI5xzJ_lU;-><init>(Lcreativemaybeno/wakelock/Messages$WakelockApi;)V

    invoke-virtual {v0, p0}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    goto :goto_1

    .line 144
    :cond_1
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    :goto_1
    return-void
.end method
