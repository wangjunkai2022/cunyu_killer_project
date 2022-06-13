.class Lio/flutter/view/VsyncWaiter$1$1;
.super Ljava/lang/Object;
.source "VsyncWaiter.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/view/VsyncWaiter$1;->asyncWaitForVsync(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/flutter/view/VsyncWaiter$1;

.field final synthetic val$cookie:J


# direct methods
.method constructor <init>(Lio/flutter/view/VsyncWaiter$1;J)V
    .locals 0

    .line 93
    iput-object p1, p0, Lio/flutter/view/VsyncWaiter$1$1;->this$1:Lio/flutter/view/VsyncWaiter$1;

    iput-wide p2, p0, Lio/flutter/view/VsyncWaiter$1$1;->val$cookie:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 10

    .line 96
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x0

    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    move-wide v4, p1

    goto :goto_0

    :cond_0
    move-wide v4, v0

    .line 100
    :goto_0
    iget-object p1, p0, Lio/flutter/view/VsyncWaiter$1$1;->this$1:Lio/flutter/view/VsyncWaiter$1;

    iget-object p1, p1, Lio/flutter/view/VsyncWaiter$1;->this$0:Lio/flutter/view/VsyncWaiter;

    invoke-static {p1}, Lio/flutter/view/VsyncWaiter;->access$100(Lio/flutter/view/VsyncWaiter;)Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object v3

    iget-object p1, p0, Lio/flutter/view/VsyncWaiter$1$1;->this$1:Lio/flutter/view/VsyncWaiter$1;

    iget-object p1, p1, Lio/flutter/view/VsyncWaiter$1;->this$0:Lio/flutter/view/VsyncWaiter;

    invoke-static {p1}, Lio/flutter/view/VsyncWaiter;->access$000(Lio/flutter/view/VsyncWaiter;)J

    move-result-wide v6

    iget-wide v8, p0, Lio/flutter/view/VsyncWaiter$1$1;->val$cookie:J

    invoke-virtual/range {v3 .. v9}, Lio/flutter/embedding/engine/FlutterJNI;->onVsync(JJJ)V

    return-void
.end method
