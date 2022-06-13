.class public final Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin$onMethodCall$$inlined$runOnBackground$1;
.super Ljava/lang/Object;
.source "FlutterImageEditorPlugin.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin;->onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFlutterImageEditorPlugin.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FlutterImageEditorPlugin.kt\ntop/kikt/flutter_image_editor/FlutterImageEditorPlugin$Companion$runOnBackground$1\n+ 2 FlutterImageEditorPlugin.kt\ntop/kikt/flutter_image_editor/FlutterImageEditorPlugin\n*L\n1#1,221:1\n56#2,43:222\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "run",
        "top/kikt/flutter_image_editor/FlutterImageEditorPlugin$Companion$runOnBackground$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $call$inlined:Lio/flutter/plugin/common/MethodCall;

.field final synthetic $resultHandler$inlined:Ltop/kikt/flutter_image_editor/core/ResultHandler;

.field final synthetic this$0:Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin;


# direct methods
.method public constructor <init>(Lio/flutter/plugin/common/MethodCall;Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin;Ltop/kikt/flutter_image_editor/core/ResultHandler;)V
    .locals 0

    iput-object p1, p0, Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin$onMethodCall$$inlined$runOnBackground$1;->$call$inlined:Lio/flutter/plugin/common/MethodCall;

    iput-object p2, p0, Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin$onMethodCall$$inlined$runOnBackground$1;->this$0:Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin;

    iput-object p3, p0, Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin$onMethodCall$$inlined$runOnBackground$1;->$resultHandler$inlined:Ltop/kikt/flutter_image_editor/core/ResultHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    const/4 v0, 0x0

    .line 223
    :try_start_0
    iget-object v1, p0, Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin$onMethodCall$$inlined$runOnBackground$1;->$call$inlined:Lio/flutter/plugin/common/MethodCall;

    iget-object v1, v1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string v2, "fileToFile"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 234
    :cond_0
    iget-object v1, p0, Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin$onMethodCall$$inlined$runOnBackground$1;->this$0:Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin;

    iget-object v2, p0, Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin$onMethodCall$$inlined$runOnBackground$1;->$call$inlined:Lio/flutter/plugin/common/MethodCall;

    iget-object v4, p0, Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin$onMethodCall$$inlined$runOnBackground$1;->$resultHandler$inlined:Ltop/kikt/flutter_image_editor/core/ResultHandler;

    invoke-static {v1, v2, v4, v3}, Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin;->access$handle(Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin;Lio/flutter/plugin/common/MethodCall;Ltop/kikt/flutter_image_editor/core/ResultHandler;Z)V

    goto/16 :goto_3

    :sswitch_1
    const-string v2, "fileToMemory"

    .line 223
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_2

    .line 231
    :cond_1
    iget-object v1, p0, Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin$onMethodCall$$inlined$runOnBackground$1;->this$0:Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin;

    iget-object v2, p0, Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin$onMethodCall$$inlined$runOnBackground$1;->$call$inlined:Lio/flutter/plugin/common/MethodCall;

    iget-object v3, p0, Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin$onMethodCall$$inlined$runOnBackground$1;->$resultHandler$inlined:Ltop/kikt/flutter_image_editor/core/ResultHandler;

    invoke-static {v1, v2, v3, v4}, Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin;->access$handle(Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin;Lio/flutter/plugin/common/MethodCall;Ltop/kikt/flutter_image_editor/core/ResultHandler;Z)V

    goto/16 :goto_3

    :sswitch_2
    const-string v2, "mergeToMemory"

    .line 223
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_2

    .line 240
    :cond_2
    iget-object v1, p0, Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin$onMethodCall$$inlined$runOnBackground$1;->this$0:Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin;

    iget-object v2, p0, Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin$onMethodCall$$inlined$runOnBackground$1;->$call$inlined:Lio/flutter/plugin/common/MethodCall;

    iget-object v3, p0, Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin$onMethodCall$$inlined$runOnBackground$1;->$resultHandler$inlined:Ltop/kikt/flutter_image_editor/core/ResultHandler;

    invoke-static {v1, v2, v3, v4}, Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin;->access$handleMerge(Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin;Lio/flutter/plugin/common/MethodCall;Ltop/kikt/flutter_image_editor/core/ResultHandler;Z)V

    goto/16 :goto_3

    :sswitch_3
    const-string v2, "memoryToFile"

    .line 223
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_2

    .line 225
    :cond_3
    iget-object v1, p0, Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin$onMethodCall$$inlined$runOnBackground$1;->this$0:Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin;

    iget-object v2, p0, Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin$onMethodCall$$inlined$runOnBackground$1;->$call$inlined:Lio/flutter/plugin/common/MethodCall;

    iget-object v4, p0, Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin$onMethodCall$$inlined$runOnBackground$1;->$resultHandler$inlined:Ltop/kikt/flutter_image_editor/core/ResultHandler;

    invoke-static {v1, v2, v4, v3}, Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin;->access$handle(Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin;Lio/flutter/plugin/common/MethodCall;Ltop/kikt/flutter_image_editor/core/ResultHandler;Z)V

    goto/16 :goto_3

    :sswitch_4
    const-string v2, "mergeToFile"

    .line 223
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_2

    .line 243
    :cond_4
    iget-object v1, p0, Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin$onMethodCall$$inlined$runOnBackground$1;->this$0:Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin;

    iget-object v2, p0, Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin$onMethodCall$$inlined$runOnBackground$1;->$call$inlined:Lio/flutter/plugin/common/MethodCall;

    iget-object v4, p0, Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin$onMethodCall$$inlined$runOnBackground$1;->$resultHandler$inlined:Ltop/kikt/flutter_image_editor/core/ResultHandler;

    invoke-static {v1, v2, v4, v3}, Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin;->access$handleMerge(Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin;Lio/flutter/plugin/common/MethodCall;Ltop/kikt/flutter_image_editor/core/ResultHandler;Z)V

    goto/16 :goto_3

    :sswitch_5
    const-string v2, "getCachePath"

    .line 223
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_2

    .line 237
    :cond_5
    iget-object v1, p0, Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin$onMethodCall$$inlined$runOnBackground$1;->$resultHandler$inlined:Ltop/kikt/flutter_image_editor/core/ResultHandler;

    iget-object v2, p0, Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin$onMethodCall$$inlined$runOnBackground$1;->this$0:Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin;

    invoke-static {v2}, Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin;->access$getApplicationContext$p(Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin;)Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_6

    :goto_0
    move-object v2, v0

    goto :goto_1

    :cond_6
    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_7

    goto :goto_0

    :cond_7
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Ltop/kikt/flutter_image_editor/core/ResultHandler;->reply(Ljava/lang/Object;)V

    goto/16 :goto_3

    :sswitch_6
    const-string v2, "registerFont"

    .line 223
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_2

    .line 246
    :cond_8
    iget-object v1, p0, Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin$onMethodCall$$inlined$runOnBackground$1;->$call$inlined:Lio/flutter/plugin/common/MethodCall;

    const-string v2, "path"

    invoke-virtual {v1, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v2, "call.argument<String>(\"path\")!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/String;

    .line 247
    invoke-static {v1}, Ltop/kikt/flutter_image_editor/common/font/FontUtils;->registerFont(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 248
    iget-object v2, p0, Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin$onMethodCall$$inlined$runOnBackground$1;->$resultHandler$inlined:Ltop/kikt/flutter_image_editor/core/ResultHandler;

    invoke-virtual {v2, v1}, Ltop/kikt/flutter_image_editor/core/ResultHandler;->reply(Ljava/lang/Object;)V

    goto :goto_3

    :sswitch_7
    const-string v2, "memoryToMemory"

    .line 223
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_2

    .line 228
    :cond_9
    iget-object v1, p0, Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin$onMethodCall$$inlined$runOnBackground$1;->this$0:Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin;

    iget-object v2, p0, Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin$onMethodCall$$inlined$runOnBackground$1;->$call$inlined:Lio/flutter/plugin/common/MethodCall;

    iget-object v3, p0, Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin$onMethodCall$$inlined$runOnBackground$1;->$resultHandler$inlined:Ltop/kikt/flutter_image_editor/core/ResultHandler;

    invoke-static {v1, v2, v3, v4}, Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin;->access$handle(Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin;Lio/flutter/plugin/common/MethodCall;Ltop/kikt/flutter_image_editor/core/ResultHandler;Z)V

    goto :goto_3

    .line 251
    :cond_a
    :goto_2
    iget-object v1, p0, Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin$onMethodCall$$inlined$runOnBackground$1;->$resultHandler$inlined:Ltop/kikt/flutter_image_editor/core/ResultHandler;

    invoke-virtual {v1}, Ltop/kikt/flutter_image_editor/core/ResultHandler;->notImplemented()V
    :try_end_0
    .catch Ltop/kikt/flutter_image_editor/error/BitmapDecodeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    .line 257
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 258
    new-instance v3, Ljava/io/PrintWriter;

    move-object v4, v2

    check-cast v4, Ljava/io/Writer;

    invoke-direct {v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 259
    move-object v4, v3

    check-cast v4, Ljava/io/Closeable;

    move-object v5, v0

    check-cast v5, Ljava/lang/Throwable;

    :try_start_1
    move-object v6, v4

    check-cast v6, Ljava/io/PrintWriter;

    .line 260
    invoke-virtual {v1, v3}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 261
    iget-object v1, p0, Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin$onMethodCall$$inlined$runOnBackground$1;->$resultHandler$inlined:Ltop/kikt/flutter_image_editor/core/ResultHandler;

    invoke-virtual {v2}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "writer.buffer.toString()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, ""

    invoke-virtual {v1, v2, v3, v0}, Ltop/kikt/flutter_image_editor/core/ResultHandler;->replyError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 262
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 259
    invoke-static {v4, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v4, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    .line 255
    :catch_1
    iget-object v5, p0, Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin$onMethodCall$$inlined$runOnBackground$1;->$resultHandler$inlined:Ltop/kikt/flutter_image_editor/core/ResultHandler;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x0

    const-string v6, "Decode bitmap error."

    invoke-static/range {v5 .. v10}, Ltop/kikt/flutter_image_editor/core/ResultHandler;->replyError$default(Ltop/kikt/flutter_image_editor/core/ResultHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ILjava/lang/Object;)V

    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7927c083 -> :sswitch_7
        -0x65d05a6e -> :sswitch_6
        -0x219397ef -> :sswitch_5
        0xcd648ef -> :sswitch_4
        0x2a7be6f8 -> :sswitch_3
        0x3c21ffb4 -> :sswitch_2
        0x3f6eccf8 -> :sswitch_1
        0x6cbd9733 -> :sswitch_0
    .end sparse-switch
.end method
