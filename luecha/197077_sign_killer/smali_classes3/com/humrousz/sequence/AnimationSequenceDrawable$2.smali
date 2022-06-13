.class Lcom/humrousz/sequence/AnimationSequenceDrawable$2;
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

    .line 169
    iput-object p1, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable$2;->this$0:Lcom/humrousz/sequence/AnimationSequenceDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 174
    iget-object v0, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable$2;->this$0:Lcom/humrousz/sequence/AnimationSequenceDrawable;

    invoke-static {v0}, Lcom/humrousz/sequence/AnimationSequenceDrawable;->access$000(Lcom/humrousz/sequence/AnimationSequenceDrawable;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 175
    :try_start_0
    iget-object v1, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable$2;->this$0:Lcom/humrousz/sequence/AnimationSequenceDrawable;

    invoke-static {v1}, Lcom/humrousz/sequence/AnimationSequenceDrawable;->access$100(Lcom/humrousz/sequence/AnimationSequenceDrawable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    monitor-exit v0

    return-void

    .line 178
    :cond_0
    iget-object v1, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable$2;->this$0:Lcom/humrousz/sequence/AnimationSequenceDrawable;

    invoke-static {v1}, Lcom/humrousz/sequence/AnimationSequenceDrawable;->access$200(Lcom/humrousz/sequence/AnimationSequenceDrawable;)I

    move-result v1

    if-gez v1, :cond_1

    .line 180
    monitor-exit v0

    return-void

    .line 182
    :cond_1
    iget-object v2, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable$2;->this$0:Lcom/humrousz/sequence/AnimationSequenceDrawable;

    invoke-static {v2}, Lcom/humrousz/sequence/AnimationSequenceDrawable;->access$300(Lcom/humrousz/sequence/AnimationSequenceDrawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 183
    iget-object v3, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable$2;->this$0:Lcom/humrousz/sequence/AnimationSequenceDrawable;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/humrousz/sequence/AnimationSequenceDrawable;->access$402(Lcom/humrousz/sequence/AnimationSequenceDrawable;I)I

    .line 184
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    add-int/lit8 v0, v1, -0x2

    const-wide/16 v5, 0x0

    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 189
    :try_start_1
    iget-object v8, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable$2;->this$0:Lcom/humrousz/sequence/AnimationSequenceDrawable;

    invoke-static {v8}, Lcom/humrousz/sequence/AnimationSequenceDrawable;->access$500(Lcom/humrousz/sequence/AnimationSequenceDrawable;)Lcom/humrousz/sequence/BaseAnimationSequence;

    move-result-object v8

    invoke-virtual {v8, v1, v2, v0}, Lcom/humrousz/sequence/BaseAnimationSequence;->getFrame(ILandroid/graphics/Bitmap;I)J

    move-result-wide v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v7

    goto :goto_0

    :catch_0
    move-exception v0

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception during decode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseAnimationSequence"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    :goto_0
    const-wide/16 v1, 0x14

    cmp-long v1, v5, v1

    if-gez v1, :cond_2

    const-wide/16 v5, 0x64

    .line 200
    :cond_2
    iget-object v1, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable$2;->this$0:Lcom/humrousz/sequence/AnimationSequenceDrawable;

    invoke-static {v1}, Lcom/humrousz/sequence/AnimationSequenceDrawable;->access$000(Lcom/humrousz/sequence/AnimationSequenceDrawable;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 201
    :try_start_2
    iget-object v2, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable$2;->this$0:Lcom/humrousz/sequence/AnimationSequenceDrawable;

    invoke-static {v2}, Lcom/humrousz/sequence/AnimationSequenceDrawable;->access$100(Lcom/humrousz/sequence/AnimationSequenceDrawable;)Z

    move-result v2

    const/4 v8, 0x0

    if-eqz v2, :cond_3

    .line 202
    iget-object v0, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable$2;->this$0:Lcom/humrousz/sequence/AnimationSequenceDrawable;

    invoke-static {v0}, Lcom/humrousz/sequence/AnimationSequenceDrawable;->access$300(Lcom/humrousz/sequence/AnimationSequenceDrawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 203
    iget-object v2, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable$2;->this$0:Lcom/humrousz/sequence/AnimationSequenceDrawable;

    invoke-static {v2, v8}, Lcom/humrousz/sequence/AnimationSequenceDrawable;->access$302(Lcom/humrousz/sequence/AnimationSequenceDrawable;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-object v8, v0

    goto :goto_2

    .line 204
    :cond_3
    iget-object v2, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable$2;->this$0:Lcom/humrousz/sequence/AnimationSequenceDrawable;

    invoke-static {v2}, Lcom/humrousz/sequence/AnimationSequenceDrawable;->access$200(Lcom/humrousz/sequence/AnimationSequenceDrawable;)I

    move-result v2

    if-ltz v2, :cond_5

    iget-object v2, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable$2;->this$0:Lcom/humrousz/sequence/AnimationSequenceDrawable;

    invoke-static {v2}, Lcom/humrousz/sequence/AnimationSequenceDrawable;->access$400(Lcom/humrousz/sequence/AnimationSequenceDrawable;)I

    move-result v2

    if-ne v2, v4, :cond_5

    .line 206
    iget-object v2, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable$2;->this$0:Lcom/humrousz/sequence/AnimationSequenceDrawable;

    if-eqz v0, :cond_4

    const-wide v4, 0x7fffffffffffffffL

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable$2;->this$0:Lcom/humrousz/sequence/AnimationSequenceDrawable;

    invoke-static {v0}, Lcom/humrousz/sequence/AnimationSequenceDrawable;->access$700(Lcom/humrousz/sequence/AnimationSequenceDrawable;)J

    move-result-wide v9

    add-long v4, v5, v9

    :goto_1
    invoke-static {v2, v4, v5}, Lcom/humrousz/sequence/AnimationSequenceDrawable;->access$602(Lcom/humrousz/sequence/AnimationSequenceDrawable;J)J

    .line 207
    iget-object v0, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable$2;->this$0:Lcom/humrousz/sequence/AnimationSequenceDrawable;

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/humrousz/sequence/AnimationSequenceDrawable;->access$402(Lcom/humrousz/sequence/AnimationSequenceDrawable;I)I

    move v7, v3

    .line 209
    :cond_5
    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_6

    .line 211
    iget-object v0, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable$2;->this$0:Lcom/humrousz/sequence/AnimationSequenceDrawable;

    invoke-static {v0}, Lcom/humrousz/sequence/AnimationSequenceDrawable;->access$600(Lcom/humrousz/sequence/AnimationSequenceDrawable;)J

    move-result-wide v1

    invoke-virtual {v0, v0, v1, v2}, Lcom/humrousz/sequence/AnimationSequenceDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    :cond_6
    if-eqz v8, :cond_7

    .line 216
    iget-object v0, p0, Lcom/humrousz/sequence/AnimationSequenceDrawable$2;->this$0:Lcom/humrousz/sequence/AnimationSequenceDrawable;

    invoke-static {v0}, Lcom/humrousz/sequence/AnimationSequenceDrawable;->access$800(Lcom/humrousz/sequence/AnimationSequenceDrawable;)Lcom/humrousz/sequence/AnimationSequenceDrawable$BitmapProvider;

    move-result-object v0

    invoke-interface {v0, v8}, Lcom/humrousz/sequence/AnimationSequenceDrawable$BitmapProvider;->releaseBitmap(Landroid/graphics/Bitmap;)V

    :cond_7
    return-void

    :catchall_0
    move-exception v0

    .line 209
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 184
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method
