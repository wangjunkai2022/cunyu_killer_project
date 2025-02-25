.class Lio/flutter/embedding/engine/systemchannels/TextInputChannel$1;
.super Ljava/lang/Object;
.source "TextInputChannel.java"

# interfaces
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/systemchannels/TextInputChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;


# direct methods
.method constructor <init>(Lio/flutter/embedding/engine/systemchannels/TextInputChannel;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string v3, "data"

    .line 52
    iget-object v4, v1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    invoke-static {v4}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/TextInputChannel;)Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;

    move-result-object v4

    if-nez v4, :cond_0

    return-void

    .line 58
    :cond_0
    iget-object v4, v0, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    .line 59
    iget-object v0, v0, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    .line 60
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\' message."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "TextInputChannel"

    invoke-static {v6, v5}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, -0x1

    .line 61
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    sparse-switch v6, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v6, "TextInput.requestAutofill"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v5, 0x3

    goto :goto_0

    :sswitch_1
    const-string v6, "TextInput.clearClient"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v5, 0x7

    goto :goto_0

    :sswitch_2
    const-string v6, "TextInput.finishAutofillContext"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v5, 0x9

    goto :goto_0

    :sswitch_3
    const-string v6, "TextInput.setEditableSizeAndTransform"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v5, 0x6

    goto :goto_0

    :sswitch_4
    const-string v6, "TextInput.sendAppPrivateCommand"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v5, 0x8

    goto :goto_0

    :sswitch_5
    const-string v6, "TextInput.show"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v5, v8

    goto :goto_0

    :sswitch_6
    const-string v6, "TextInput.hide"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v5, v7

    goto :goto_0

    :sswitch_7
    const-string v6, "TextInput.setClient"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v5, 0x2

    goto :goto_0

    :sswitch_8
    const-string v6, "TextInput.setEditingState"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v5, 0x5

    goto :goto_0

    :sswitch_9
    const-string v6, "TextInput.setPlatformViewClient"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v5, 0x4

    :cond_1
    :goto_0
    const-string v4, "error"

    const/4 v6, 0x0

    packed-switch v5, :pswitch_data_0

    .line 151
    invoke-interface/range {p2 .. p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    goto/16 :goto_4

    .line 147
    :pswitch_0
    iget-object v3, v1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    invoke-static {v3}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/TextInputChannel;)Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;

    move-result-object v3

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v3, v0}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;->finishAutofillContext(Z)V

    .line 148
    invoke-interface {v2, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 132
    :pswitch_1
    :try_start_0
    check-cast v0, Lorg/json/JSONObject;

    const-string v5, "action"

    .line 133
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 134
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 136
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 137
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 138
    invoke-virtual {v7, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v7, v6

    .line 140
    :goto_1
    iget-object v0, v1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    invoke-static {v0}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/TextInputChannel;)Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;

    move-result-object v0

    invoke-interface {v0, v5, v7}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;->sendAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 141
    invoke-interface {v2, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception v0

    .line 143
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v4, v0, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 127
    :pswitch_2
    iget-object v0, v1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    invoke-static {v0}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/TextInputChannel;)Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;

    move-result-object v0

    invoke-interface {v0}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;->clearClient()V

    .line 128
    invoke-interface {v2, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 111
    :pswitch_3
    :try_start_1
    check-cast v0, Lorg/json/JSONObject;

    const-string v3, "width"

    .line 112
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v10

    const-string v3, "height"

    .line 113
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v12

    const-string v3, "transform"

    .line 114
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/16 v3, 0x10

    new-array v14, v3, [D

    :goto_2
    if-ge v8, v3, :cond_3

    .line 117
    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v15

    aput-wide v15, v14, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 120
    :cond_3
    iget-object v0, v1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    invoke-static {v0}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/TextInputChannel;)Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;

    move-result-object v9

    invoke-interface/range {v9 .. v14}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;->setEditableSizeAndTransform(DD[D)V

    .line 121
    invoke-interface {v2, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_4

    :catch_1
    move-exception v0

    .line 123
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v4, v0, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 102
    :pswitch_4
    :try_start_2
    check-cast v0, Lorg/json/JSONObject;

    .line 103
    iget-object v3, v1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    invoke-static {v3}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/TextInputChannel;)Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;

    move-result-object v3

    invoke-static {v0}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;->fromJson(Lorg/json/JSONObject;)Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;

    move-result-object v0

    invoke-interface {v3, v0}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;->setEditingState(Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;)V

    .line 104
    invoke-interface {v2, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_4

    :catch_2
    move-exception v0

    .line 106
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v4, v0, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 90
    :pswitch_5
    :try_start_3
    check-cast v0, Lorg/json/JSONObject;

    const-string v3, "platformViewId"

    .line 91
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v5, "usesVirtualDisplay"

    .line 93
    invoke-virtual {v0, v5, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 94
    iget-object v5, v1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    invoke-static {v5}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/TextInputChannel;)Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;

    move-result-object v5

    invoke-interface {v5, v3, v0}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;->setPlatformViewClient(IZ)V

    .line 95
    invoke-interface {v2, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    .line 97
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v4, v0, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 85
    :pswitch_6
    iget-object v0, v1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    invoke-static {v0}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/TextInputChannel;)Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;

    move-result-object v0

    invoke-interface {v0}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;->requestAutofill()V

    .line 86
    invoke-interface {v2, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_4

    .line 72
    :pswitch_7
    :try_start_4
    check-cast v0, Lorg/json/JSONArray;

    .line 73
    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    .line 74
    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 75
    iget-object v5, v1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    invoke-static {v5}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/TextInputChannel;)Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;

    move-result-object v5

    .line 76
    invoke-static {v0}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->fromJson(Lorg/json/JSONObject;)Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;

    move-result-object v0

    .line 75
    invoke-interface {v5, v3, v0}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;->setClient(ILio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;)V

    .line 77
    invoke-interface {v2, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v0

    .line 81
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v4, v0, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 67
    :pswitch_8
    iget-object v0, v1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    invoke-static {v0}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/TextInputChannel;)Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;

    move-result-object v0

    invoke-interface {v0}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;->hide()V

    .line 68
    invoke-interface {v2, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_4

    .line 63
    :pswitch_9
    iget-object v0, v1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    invoke-static {v0}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/TextInputChannel;)Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;

    move-result-object v0

    invoke-interface {v0}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;->show()V

    .line 64
    invoke-interface {v2, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    :goto_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6a0a6d0c -> :sswitch_9
        -0x3c861a16 -> :sswitch_8
        -0x23d2364 -> :sswitch_7
        0x101f2613 -> :sswitch_6
        0x102423ce -> :sswitch_5
        0x26b1e570 -> :sswitch_4
        0x47cf0f0b -> :sswitch_3
        0x66f8a3d9 -> :sswitch_2
        0x71834287 -> :sswitch_1
        0x7df775f0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
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
