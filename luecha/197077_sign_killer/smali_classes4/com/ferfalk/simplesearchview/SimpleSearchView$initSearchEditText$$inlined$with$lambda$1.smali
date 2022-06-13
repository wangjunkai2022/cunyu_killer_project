.class final Lcom/ferfalk/simplesearchview/SimpleSearchView$initSearchEditText$$inlined$with$lambda$1;
.super Ljava/lang/Object;
.source "SimpleSearchView.kt"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
        "\u0000\u001c\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\n\u00a2\u0006\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/widget/TextView;",
        "<anonymous parameter 1>",
        "",
        "<anonymous parameter 2>",
        "Landroid/view/KeyEvent;",
        "onEditorAction",
        "com/ferfalk/simplesearchview/SimpleSearchView$initSearchEditText$1$1"
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

    iput-object p1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView$initSearchEditText$$inlined$with$lambda$1;->this$0:Lcom/ferfalk/simplesearchview/SimpleSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 154
    iget-object p1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView$initSearchEditText$$inlined$with$lambda$1;->this$0:Lcom/ferfalk/simplesearchview/SimpleSearchView;

    invoke-static {p1}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->access$onSubmitQuery(Lcom/ferfalk/simplesearchview/SimpleSearchView;)V

    const/4 p1, 0x1

    return p1
.end method
