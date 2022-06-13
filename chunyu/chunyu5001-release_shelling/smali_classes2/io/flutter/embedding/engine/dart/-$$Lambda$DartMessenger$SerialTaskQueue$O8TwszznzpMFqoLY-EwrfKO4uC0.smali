.class public final synthetic Lio/flutter/embedding/engine/dart/-$$Lambda$DartMessenger$SerialTaskQueue$O8TwszznzpMFqoLY-EwrfKO4uC0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lio/flutter/embedding/engine/dart/DartMessenger$SerialTaskQueue;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/embedding/engine/dart/DartMessenger$SerialTaskQueue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/embedding/engine/dart/-$$Lambda$DartMessenger$SerialTaskQueue$O8TwszznzpMFqoLY-EwrfKO4uC0;->f$0:Lio/flutter/embedding/engine/dart/DartMessenger$SerialTaskQueue;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/dart/-$$Lambda$DartMessenger$SerialTaskQueue$O8TwszznzpMFqoLY-EwrfKO4uC0;->f$0:Lio/flutter/embedding/engine/dart/DartMessenger$SerialTaskQueue;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/dart/DartMessenger$SerialTaskQueue;->lambda$flush$1$DartMessenger$SerialTaskQueue()V

    return-void
.end method
