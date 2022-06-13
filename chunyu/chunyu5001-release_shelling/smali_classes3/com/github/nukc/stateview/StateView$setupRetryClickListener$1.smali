.class final Lcom/github/nukc/stateview/StateView$setupRetryClickListener$1;
.super Ljava/lang/Object;
.source "StateView.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/nukc/stateview/StateView;->setupRetryClickListener()V
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/nukc/stateview/StateView;


# direct methods
.method constructor <init>(Lcom/github/nukc/stateview/StateView;)V
    .locals 0

    iput-object p1, p0, Lcom/github/nukc/stateview/StateView$setupRetryClickListener$1;->this$0:Lcom/github/nukc/stateview/StateView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 300
    iget-object p1, p0, Lcom/github/nukc/stateview/StateView$setupRetryClickListener$1;->this$0:Lcom/github/nukc/stateview/StateView;

    invoke-virtual {p1}, Lcom/github/nukc/stateview/StateView;->getOnRetryClickListener()Lcom/github/nukc/stateview/StateView$OnRetryClickListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 301
    iget-object p1, p0, Lcom/github/nukc/stateview/StateView$setupRetryClickListener$1;->this$0:Lcom/github/nukc/stateview/StateView;

    invoke-virtual {p1}, Lcom/github/nukc/stateview/StateView;->showLoading()Landroid/view/View;

    .line 302
    iget-object p1, p0, Lcom/github/nukc/stateview/StateView$setupRetryClickListener$1;->this$0:Lcom/github/nukc/stateview/StateView;

    invoke-virtual {p1}, Lcom/github/nukc/stateview/StateView;->getRetryView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    new-instance v0, Lcom/github/nukc/stateview/StateView$setupRetryClickListener$1$1;

    invoke-direct {v0, p0}, Lcom/github/nukc/stateview/StateView$setupRetryClickListener$1$1;-><init>(Lcom/github/nukc/stateview/StateView$setupRetryClickListener$1;)V

    check-cast v0, Ljava/lang/Runnable;

    const-wide/16 v1, 0x190

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
