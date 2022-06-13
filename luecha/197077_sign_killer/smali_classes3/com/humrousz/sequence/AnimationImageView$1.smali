.class Lcom/humrousz/sequence/AnimationImageView$1;
.super Ljava/lang/Object;
.source "AnimationImageView.java"

# interfaces
.implements Lcom/humrousz/sequence/AnimationSequenceDrawable$OnFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/humrousz/sequence/AnimationImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/humrousz/sequence/AnimationImageView;


# direct methods
.method constructor <init>(Lcom/humrousz/sequence/AnimationImageView;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/humrousz/sequence/AnimationImageView$1;->this$0:Lcom/humrousz/sequence/AnimationImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(Lcom/humrousz/sequence/AnimationSequenceDrawable;)V
    .locals 0

    .line 88
    iget-object p1, p0, Lcom/humrousz/sequence/AnimationImageView$1;->this$0:Lcom/humrousz/sequence/AnimationImageView;

    invoke-static {p1}, Lcom/humrousz/sequence/AnimationImageView;->access$000(Lcom/humrousz/sequence/AnimationImageView;)Lcom/humrousz/sequence/AnimationImageView$OnFinishedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 89
    iget-object p1, p0, Lcom/humrousz/sequence/AnimationImageView$1;->this$0:Lcom/humrousz/sequence/AnimationImageView;

    invoke-static {p1}, Lcom/humrousz/sequence/AnimationImageView;->access$000(Lcom/humrousz/sequence/AnimationImageView;)Lcom/humrousz/sequence/AnimationImageView$OnFinishedListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/humrousz/sequence/AnimationImageView$OnFinishedListener;->onFinished()V

    :cond_0
    return-void
.end method
