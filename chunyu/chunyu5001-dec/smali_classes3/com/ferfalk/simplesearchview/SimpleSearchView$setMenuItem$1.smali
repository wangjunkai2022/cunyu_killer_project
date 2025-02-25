.class final Lcom/ferfalk/simplesearchview/SimpleSearchView$setMenuItem$1;
.super Ljava/lang/Object;
.source "SimpleSearchView.kt"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ferfalk/simplesearchview/SimpleSearchView;->setMenuItem(Landroid/view/MenuItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/MenuItem;",
        "kotlin.jvm.PlatformType",
        "onMenuItemClick"
    }
    k = 0x3
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

    iput-object p1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView$setMenuItem$1;->this$0:Lcom/ferfalk/simplesearchview/SimpleSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .line 599
    iget-object p1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView$setMenuItem$1;->this$0:Lcom/ferfalk/simplesearchview/SimpleSearchView;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->showSearch$default(Lcom/ferfalk/simplesearchview/SimpleSearchView;ZILjava/lang/Object;)Lkotlin/Unit;

    return v1
.end method
