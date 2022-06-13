.class Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable$2;
.super Ljava/lang/Object;
.source "AbstractAnimatedDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable$2;->this$0:Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 110
    invoke-static {}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->access$100()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable$2;->this$0:Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;

    invoke-static {v1}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->access$200(Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(%s) Next Frame Task"

    invoke-static {v0, v2, v1}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 111
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable$2;->this$0:Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;

    invoke-static {v0}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->access$300(Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;)V

    return-void
.end method
