.class Lcom/humrousz/sequence/AnimationSequenceDrawable$3;
.super Ljava/lang/Object;
.source "AnimationSequenceDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/humrousz/sequence/AnimationSequenceDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/humrousz/sequence/AnimationSequenceDrawable;


# direct methods
.method constructor <init>(Lcom/humrousz/sequence/AnimationSequenceDrawable;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable$3;->this$0:Lcom/humrousz/sequence/AnimationSequenceDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 223
    iget-object v0, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable$3;->this$0:Lcom/humrousz/sequence/AnimationSequenceDrawable;

    invoke-static {v0}, Lcom/humrousz/sequence/AnimationSequenceDrawable;->access$000(Lcom/humrousz/sequence/AnimationSequenceDrawable;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 224
    :try_start_0
    iget-object v1, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable$3;->this$0:Lcom/humrousz/sequence/AnimationSequenceDrawable;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/humrousz/sequence/AnimationSequenceDrawable;->access$202(Lcom/humrousz/sequence/AnimationSequenceDrawable;I)I

    .line 225
    iget-object v1, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable$3;->this$0:Lcom/humrousz/sequence/AnimationSequenceDrawable;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/humrousz/sequence/AnimationSequenceDrawable;->access$402(Lcom/humrousz/sequence/AnimationSequenceDrawable;I)I

    .line 226
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    iget-object v0, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable$3;->this$0:Lcom/humrousz/sequence/AnimationSequenceDrawable;

    invoke-static {v0}, Lcom/humrousz/sequence/AnimationSequenceDrawable;->access$900(Lcom/humrousz/sequence/AnimationSequenceDrawable;)Lcom/humrousz/sequence/AnimationSequenceDrawable$OnFinishedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable$3;->this$0:Lcom/humrousz/sequence/AnimationSequenceDrawable;

    invoke-static {v0}, Lcom/humrousz/sequence/AnimationSequenceDrawable;->access$900(Lcom/humrousz/sequence/AnimationSequenceDrawable;)Lcom/humrousz/sequence/AnimationSequenceDrawable$OnFinishedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable$3;->this$0:Lcom/humrousz/sequence/AnimationSequenceDrawable;

    invoke-interface {v0, v1}, Lcom/humrousz/sequence/AnimationSequenceDrawable$OnFinishedListener;->onFinished(Lcom/humrousz/sequence/AnimationSequenceDrawable;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 226
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
