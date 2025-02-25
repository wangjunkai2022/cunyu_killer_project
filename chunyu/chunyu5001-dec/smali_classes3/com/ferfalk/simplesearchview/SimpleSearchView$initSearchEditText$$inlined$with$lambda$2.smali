.class public final Lcom/ferfalk/simplesearchview/SimpleSearchView$initSearchEditText$$inlined$with$lambda$2;
.super Lcom/ferfalk/simplesearchview/SimpleTextWatcher;
.source "SimpleSearchView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ferfalk/simplesearchview/SimpleSearchView;->initSearchEditText()V
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
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J(\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0016\u00a8\u0006\n\u00b8\u0006\u0000"
    }
    d2 = {
        "com/ferfalk/simplesearchview/SimpleSearchView$initSearchEditText$1$2",
        "Lcom/ferfalk/simplesearchview/SimpleTextWatcher;",
        "onTextChanged",
        "",
        "s",
        "",
        "start",
        "",
        "before",
        "count",
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

    iput-object p1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView$initSearchEditText$$inlined$with$lambda$2;->this$0:Lcom/ferfalk/simplesearchview/SimpleSearchView;

    .line 157
    invoke-direct {p0}, Lcom/ferfalk/simplesearchview/SimpleTextWatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    const-string p2, "s"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    iget-object p2, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView$initSearchEditText$$inlined$with$lambda$2;->this$0:Lcom/ferfalk/simplesearchview/SimpleSearchView;

    invoke-static {p2}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->access$getSearchIsClosing$p(Lcom/ferfalk/simplesearchview/SimpleSearchView;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 160
    iget-object p2, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView$initSearchEditText$$inlined$with$lambda$2;->this$0:Lcom/ferfalk/simplesearchview/SimpleSearchView;

    invoke-static {p2, p1}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->access$onTextChanged(Lcom/ferfalk/simplesearchview/SimpleSearchView;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
