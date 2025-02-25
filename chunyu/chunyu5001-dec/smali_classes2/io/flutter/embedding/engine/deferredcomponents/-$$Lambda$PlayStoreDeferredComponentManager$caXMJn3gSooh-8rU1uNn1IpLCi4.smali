.class public final synthetic Lio/flutter/embedding/engine/deferredcomponents/-$$Lambda$PlayStoreDeferredComponentManager$caXMJn3gSooh-8rU1uNn1IpLCi4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/play/core/tasks/OnFailureListener;


# instance fields
.field private final synthetic f$0:Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;

.field private final synthetic f$1:I

.field private final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/embedding/engine/deferredcomponents/-$$Lambda$PlayStoreDeferredComponentManager$caXMJn3gSooh-8rU1uNn1IpLCi4;->f$0:Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;

    iput p2, p0, Lio/flutter/embedding/engine/deferredcomponents/-$$Lambda$PlayStoreDeferredComponentManager$caXMJn3gSooh-8rU1uNn1IpLCi4;->f$1:I

    iput-object p3, p0, Lio/flutter/embedding/engine/deferredcomponents/-$$Lambda$PlayStoreDeferredComponentManager$caXMJn3gSooh-8rU1uNn1IpLCi4;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 3

    iget-object v0, p0, Lio/flutter/embedding/engine/deferredcomponents/-$$Lambda$PlayStoreDeferredComponentManager$caXMJn3gSooh-8rU1uNn1IpLCi4;->f$0:Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;

    iget v1, p0, Lio/flutter/embedding/engine/deferredcomponents/-$$Lambda$PlayStoreDeferredComponentManager$caXMJn3gSooh-8rU1uNn1IpLCi4;->f$1:I

    iget-object v2, p0, Lio/flutter/embedding/engine/deferredcomponents/-$$Lambda$PlayStoreDeferredComponentManager$caXMJn3gSooh-8rU1uNn1IpLCi4;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->lambda$installDeferredComponent$1$PlayStoreDeferredComponentManager(ILjava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method
