.class public final Lcom/ferfalk/simplesearchview/SimpleSearchView$setTabLayout$2;
.super Lcom/ferfalk/simplesearchview/SimpleOnTabSelectedListener;
.source "SimpleSearchView.kt"


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
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/ferfalk/simplesearchview/SimpleSearchView$setTabLayout$2",
        "Lcom/ferfalk/simplesearchview/SimpleOnTabSelectedListener;",
        "onTabUnselected",
        "",
        "tab",
        "Lcom/google/android/material/tabs/TabLayout$Tab;",
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
.field final synthetic this$0:Lcom/ferfalk/simplesearchview/SimpleSearchView;


# direct methods
.method constructor <init>(Lcom/ferfalk/simplesearchview/SimpleSearchView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 352
    iput-object p1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView$setTabLayout$2;->this$0:Lcom/ferfalk/simplesearchview/SimpleSearchView;

    invoke-direct {p0}, Lcom/ferfalk/simplesearchview/SimpleOnTabSelectedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 3

    const-string v0, "tab"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 354
    iget-object p1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView$setTabLayout$2;->this$0:Lcom/ferfalk/simplesearchview/SimpleSearchView;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->closeSearch$default(Lcom/ferfalk/simplesearchview/SimpleSearchView;ZILjava/lang/Object;)Lkotlin/Unit;

    return-void
.end method
