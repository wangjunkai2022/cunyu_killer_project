.class public final synthetic Lio/flutter/embedding/android/-$$Lambda$KeyChannelResponder$JpfmDdKZzCsQFem066be6lLfZqM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$EventResponseHandler;


# instance fields
.field private final synthetic f$0:Lio/flutter/embedding/android/KeyboardManager$Responder$OnKeyEventHandledCallback;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/embedding/android/KeyboardManager$Responder$OnKeyEventHandledCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/embedding/android/-$$Lambda$KeyChannelResponder$JpfmDdKZzCsQFem066be6lLfZqM;->f$0:Lio/flutter/embedding/android/KeyboardManager$Responder$OnKeyEventHandledCallback;

    return-void
.end method


# virtual methods
.method public final onFrameworkResponse(Z)V
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/android/-$$Lambda$KeyChannelResponder$JpfmDdKZzCsQFem066be6lLfZqM;->f$0:Lio/flutter/embedding/android/KeyboardManager$Responder$OnKeyEventHandledCallback;

    invoke-static {v0, p1}, Lio/flutter/embedding/android/KeyChannelResponder;->lambda$handleEvent$0(Lio/flutter/embedding/android/KeyboardManager$Responder$OnKeyEventHandledCallback;Z)V

    return-void
.end method
