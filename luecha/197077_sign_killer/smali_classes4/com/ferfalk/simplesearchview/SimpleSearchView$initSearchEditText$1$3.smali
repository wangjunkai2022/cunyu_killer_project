.class final Lcom/ferfalk/simplesearchview/SimpleSearchView$initSearchEditText$1$3;
.super Ljava/lang/Object;
.source "SimpleSearchView.kt"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ferfalk/simplesearchview/SimpleSearchView;->initSearchEditText()V
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/view/View;",
        "hasFocus",
        "",
        "onFocusChange"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field final synthetic $this_with:Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;


# direct methods
.method constructor <init>(Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;)V
    .locals 0

    iput-object p1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView$initSearchEditText$1$3;->$this_with:Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 166
    iget-object p1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView$initSearchEditText$1$3;->$this_with:Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;

    iget-object p1, p1, Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;->searchEditText:Landroid/widget/EditText;

    const-string p2, "searchEditText"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lcom/ferfalk/simplesearchview/utils/ContextUtils;->showKeyboard(Landroid/view/View;)V

    :cond_0
    return-void
.end method
