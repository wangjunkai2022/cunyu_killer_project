.class Lio/flutter/embedding/engine/systemchannels/LocalizationChannel$1;
.super Ljava/lang/Object;
.source "LocalizationChannel.java"

# interfaces
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/systemchannels/LocalizationChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/embedding/engine/systemchannels/LocalizationChannel;


# direct methods
.method constructor <init>(Lio/flutter/embedding/engine/systemchannels/LocalizationChannel;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lio/flutter/embedding/engine/systemchannels/LocalizationChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/LocalizationChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 5

    const-string v0, "locale"

    .line 34
    iget-object v1, p0, Lio/flutter/embedding/engine/systemchannels/LocalizationChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/LocalizationChannel;

    invoke-static {v1}, Lio/flutter/embedding/engine/systemchannels/LocalizationChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/LocalizationChannel;)Lio/flutter/embedding/engine/systemchannels/LocalizationChannel$LocalizationMessageHandler;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 40
    :cond_0
    iget-object v1, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    const/4 v2, -0x1

    .line 41
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0xf776bc0

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "Localization.getStringResource"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    .line 56
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    goto :goto_2

    .line 43
    :cond_3
    invoke-virtual {p1}, Lio/flutter/plugin/common/MethodCall;->arguments()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "key"

    .line 45
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 47
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 48
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_4
    move-object p1, v1

    .line 50
    :goto_1
    iget-object v0, p0, Lio/flutter/embedding/engine/systemchannels/LocalizationChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/LocalizationChannel;

    invoke-static {v0}, Lio/flutter/embedding/engine/systemchannels/LocalizationChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/LocalizationChannel;)Lio/flutter/embedding/engine/systemchannels/LocalizationChannel$LocalizationMessageHandler;

    move-result-object v0

    invoke-interface {v0, v2, p1}, Lio/flutter/embedding/engine/systemchannels/LocalizationChannel$LocalizationMessageHandler;->getStringResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 52
    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "error"

    invoke-interface {p2, v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    return-void
.end method
