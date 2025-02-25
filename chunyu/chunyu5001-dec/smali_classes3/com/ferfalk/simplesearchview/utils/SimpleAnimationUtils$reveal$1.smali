.class public final Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$reveal$1;
.super Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$DefaultActionAnimationListener;
.source "SimpleAnimationUtils.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils;->reveal(Landroid/view/View;ILcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;Landroid/graphics/Point;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/ferfalk/simplesearchview/utils/SimpleAnimationUtils$reveal$1",
        "Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$DefaultActionAnimationListener;",
        "defaultOnAnimationStart",
        "",
        "view",
        "Landroid/view/View;",
        "simplesearchview_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field final synthetic $listener:Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;

.field final synthetic $view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;Landroid/view/View;Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$reveal$1;->$view:Landroid/view/View;

    iput-object p2, p0, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$reveal$1;->$listener:Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;

    invoke-direct {p0, p3, p4}, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$DefaultActionAnimationListener;-><init>(Landroid/view/View;Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;)V

    return-void
.end method


# virtual methods
.method public defaultOnAnimationStart(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 143
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
