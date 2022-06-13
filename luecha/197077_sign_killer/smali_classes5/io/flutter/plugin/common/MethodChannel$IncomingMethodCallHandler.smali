.class final Lio/flutter/plugin/common/MethodChannel$IncomingMethodCallHandler;
.super Ljava/lang/Object;
.source "MethodChannel.java"

# interfaces
.implements Lio/flutter/plugin/common/BinaryMessenger$BinaryMessageHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugin/common/MethodChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "IncomingMethodCallHandler"
.end annotation


# instance fields
.field private final handler:Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;

.field final synthetic this$0:Lio/flutter/plugin/common/MethodChannel;


# direct methods
.method constructor <init>(Lio/flutter/plugin/common/MethodChannel;Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lio/flutter/plugin/common/MethodChannel$IncomingMethodCallHandler;->this$0:Lio/flutter/plugin/common/MethodChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    iput-object p2, p0, Lio/flutter/plugin/common/MethodChannel$IncomingMethodCallHandler;->handler:Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;

    return-void
.end method

.method private getStackTrace(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 2

    .line 289
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 290
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 291
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public onMessage(Ljava/nio/ByteBuffer;Lio/flutter/plugin/common/BinaryMessenger$BinaryReply;)V
    .locals 4

    .line 260
    iget-object v0, p0, Lio/flutter/plugin/common/MethodChannel$IncomingMethodCallHandler;->this$0:Lio/flutter/plugin/common/MethodChannel;

    invoke-static {v0}, Lio/flutter/plugin/common/MethodChannel;->access$000(Lio/flutter/plugin/common/MethodChannel;)Lio/flutter/plugin/common/MethodCodec;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/flutter/plugin/common/MethodCodec;->decodeMethodCall(Ljava/nio/ByteBuffer;)Lio/flutter/plugin/common/MethodCall;

    move-result-object p1

    .line 262
    :try_start_0
    iget-object v0, p0, Lio/flutter/plugin/common/MethodChannel$IncomingMethodCallHandler;->handler:Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;

    new-instance v1, Lio/flutter/plugin/common/MethodChannel$IncomingMethodCallHandler$1;

    invoke-direct {v1, p0, p2}, Lio/flutter/plugin/common/MethodChannel$IncomingMethodCallHandler$1;-><init>(Lio/flutter/plugin/common/MethodChannel$IncomingMethodCallHandler;Lio/flutter/plugin/common/BinaryMessenger$BinaryReply;)V

    invoke-interface {v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;->onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MethodChannel#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/flutter/plugin/common/MethodChannel$IncomingMethodCallHandler;->this$0:Lio/flutter/plugin/common/MethodChannel;

    invoke-static {v1}, Lio/flutter/plugin/common/MethodChannel;->access$100(Lio/flutter/plugin/common/MethodChannel;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to handle method call"

    invoke-static {v0, v1, p1}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 282
    iget-object v0, p0, Lio/flutter/plugin/common/MethodChannel$IncomingMethodCallHandler;->this$0:Lio/flutter/plugin/common/MethodChannel;

    .line 283
    invoke-static {v0}, Lio/flutter/plugin/common/MethodChannel;->access$000(Lio/flutter/plugin/common/MethodChannel;)Lio/flutter/plugin/common/MethodCodec;

    move-result-object v0

    .line 284
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lio/flutter/plugin/common/MethodChannel$IncomingMethodCallHandler;->getStackTrace(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "error"

    .line 283
    invoke-interface {v0, v3, v1, v2, p1}, Lio/flutter/plugin/common/MethodCodec;->encodeErrorEnvelopeWithStacktrace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 282
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/BinaryMessenger$BinaryReply;->reply(Ljava/nio/ByteBuffer;)V

    :goto_0
    return-void
.end method
