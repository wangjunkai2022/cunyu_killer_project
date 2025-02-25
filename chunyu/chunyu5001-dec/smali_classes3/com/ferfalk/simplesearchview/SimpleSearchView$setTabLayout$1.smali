.class public final Lcom/ferfalk/simplesearchview/SimpleSearchView$setTabLayout$1;
.super Ljava/lang/Object;
.source "SimpleSearchView.kt"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ferfalk/simplesearchview/SimpleSearchView;->setTabLayout(Lcom/google/android/material/tabs/TabLayout;)V
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
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/ferfalk/simplesearchview/SimpleSearchView$setTabLayout$1",
        "Landroid/view/ViewTreeObserver$OnPreDrawListener;",
        "onPreDraw",
        "",
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
.field final synthetic $tabLayout:Lcom/google/android/material/tabs/TabLayout;

.field final synthetic this$0:Lcom/ferfalk/simplesearchview/SimpleSearchView;


# direct methods
.method constructor <init>(Lcom/ferfalk/simplesearchview/SimpleSearchView;Lcom/google/android/material/tabs/TabLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/tabs/TabLayout;",
            ")V"
        }
    .end annotation

    .line 345
    iput-object p1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView$setTabLayout$1;->this$0:Lcom/ferfalk/simplesearchview/SimpleSearchView;

    iput-object p2, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView$setTabLayout$1;->$tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .line 347
    iget-object v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView$setTabLayout$1;->this$0:Lcom/ferfalk/simplesearchview/SimpleSearchView;

    iget-object v1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView$setTabLayout$1;->$tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->access$setTabLayoutInitialHeight$p(Lcom/ferfalk/simplesearchview/SimpleSearchView;I)V

    .line 348
    iget-object v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView$setTabLayout$1;->$tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x1

    return v0
.end method
