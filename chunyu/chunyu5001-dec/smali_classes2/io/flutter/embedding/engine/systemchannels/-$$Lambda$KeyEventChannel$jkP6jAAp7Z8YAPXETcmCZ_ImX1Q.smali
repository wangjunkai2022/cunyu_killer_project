.class public final synthetic Lio/flutter/embedding/engine/systemchannels/-$$Lambda$KeyEventChannel$jkP6jAAp7Z8YAPXETcmCZ_ImX1Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/flutter/plugin/common/BasicMessageChannel$Reply;


# instance fields
.field private final synthetic f$0:Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$EventResponseHandler;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$EventResponseHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/embedding/engine/systemchannels/-$$Lambda$KeyEventChannel$jkP6jAAp7Z8YAPXETcmCZ_ImX1Q;->f$0:Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$EventResponseHandler;

    return-void
.end method


# virtual methods
.method public final reply(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/systemchannels/-$$Lambda$KeyEventChannel$jkP6jAAp7Z8YAPXETcmCZ_ImX1Q;->f$0:Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$EventResponseHandler;

    invoke-static {v0, p1}, Lio/flutter/embedding/engine/systemchannels/KeyEventChannel;->lambda$createReplyHandler$0(Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$EventResponseHandler;Ljava/lang/Object;)V

    return-void
.end method
