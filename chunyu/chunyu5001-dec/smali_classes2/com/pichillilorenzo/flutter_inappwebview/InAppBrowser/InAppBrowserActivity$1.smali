.class Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity$1;
.super Ljava/lang/Object;
.source "InAppBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->updateCloseButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;


# direct methods
.method constructor <init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;)V
    .locals 0

    .line 451
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity$1;->this$0:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 454
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity$1;->this$0:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;

    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserActivity;->finish()V

    return-void
.end method
