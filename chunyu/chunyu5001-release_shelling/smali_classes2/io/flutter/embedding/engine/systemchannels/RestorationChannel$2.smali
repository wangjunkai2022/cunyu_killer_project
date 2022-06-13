.class Lio/flutter/embedding/engine/systemchannels/RestorationChannel$2;
.super Ljava/lang/Object;
.source "RestorationChannel.java"

# interfaces
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/systemchannels/RestorationChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/embedding/engine/systemchannels/RestorationChannel;


# direct methods
.method constructor <init>(Lio/flutter/embedding/engine/systemchannels/RestorationChannel;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lio/flutter/embedding/engine/systemchannels/RestorationChannel$2;->this$0:Lio/flutter/embedding/engine/systemchannels/RestorationChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 4

    .line 137
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    .line 138
    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    .line 139
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x18f56

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    const v2, 0x1b30f

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "put"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v1, "get"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_6

    if-eq v0, v3, :cond_3

    .line 157
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    goto :goto_3

    .line 145
    :cond_3
    iget-object p1, p0, Lio/flutter/embedding/engine/systemchannels/RestorationChannel$2;->this$0:Lio/flutter/embedding/engine/systemchannels/RestorationChannel;

    invoke-static {p1, v3}, Lio/flutter/embedding/engine/systemchannels/RestorationChannel;->access$102(Lio/flutter/embedding/engine/systemchannels/RestorationChannel;Z)Z

    .line 146
    iget-object p1, p0, Lio/flutter/embedding/engine/systemchannels/RestorationChannel$2;->this$0:Lio/flutter/embedding/engine/systemchannels/RestorationChannel;

    invoke-static {p1}, Lio/flutter/embedding/engine/systemchannels/RestorationChannel;->access$200(Lio/flutter/embedding/engine/systemchannels/RestorationChannel;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lio/flutter/embedding/engine/systemchannels/RestorationChannel$2;->this$0:Lio/flutter/embedding/engine/systemchannels/RestorationChannel;

    iget-boolean p1, p1, Lio/flutter/embedding/engine/systemchannels/RestorationChannel;->waitForRestorationData:Z

    if-nez p1, :cond_4

    goto :goto_2

    .line 153
    :cond_4
    iget-object p1, p0, Lio/flutter/embedding/engine/systemchannels/RestorationChannel$2;->this$0:Lio/flutter/embedding/engine/systemchannels/RestorationChannel;

    invoke-static {p1, p2}, Lio/flutter/embedding/engine/systemchannels/RestorationChannel;->access$402(Lio/flutter/embedding/engine/systemchannels/RestorationChannel;Lio/flutter/plugin/common/MethodChannel$Result;)Lio/flutter/plugin/common/MethodChannel$Result;

    goto :goto_3

    .line 147
    :cond_5
    :goto_2
    iget-object p1, p0, Lio/flutter/embedding/engine/systemchannels/RestorationChannel$2;->this$0:Lio/flutter/embedding/engine/systemchannels/RestorationChannel;

    invoke-static {p1}, Lio/flutter/embedding/engine/systemchannels/RestorationChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/RestorationChannel;)[B

    move-result-object v0

    invoke-static {p1, v0}, Lio/flutter/embedding/engine/systemchannels/RestorationChannel;->access$300(Lio/flutter/embedding/engine/systemchannels/RestorationChannel;[B)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_3

    .line 141
    :cond_6
    iget-object v0, p0, Lio/flutter/embedding/engine/systemchannels/RestorationChannel$2;->this$0:Lio/flutter/embedding/engine/systemchannels/RestorationChannel;

    check-cast p1, [B

    invoke-static {v0, p1}, Lio/flutter/embedding/engine/systemchannels/RestorationChannel;->access$002(Lio/flutter/embedding/engine/systemchannels/RestorationChannel;[B)[B

    const/4 p1, 0x0

    .line 142
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    :goto_3
    return-void
.end method
