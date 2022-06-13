.class Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/AndroidBug5497Workaround$1;
.super Ljava/lang/Object;
.source "AndroidBug5497Workaround.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/AndroidBug5497Workaround;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/AndroidBug5497Workaround;


# direct methods
.method constructor <init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/AndroidBug5497Workaround;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/AndroidBug5497Workaround$1;->this$0:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/AndroidBug5497Workaround;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/AndroidBug5497Workaround$1;->this$0:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/AndroidBug5497Workaround;

    invoke-static {v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/AndroidBug5497Workaround;->access$000(Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/AndroidBug5497Workaround;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/AndroidBug5497Workaround$1;->this$0:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/AndroidBug5497Workaround;

    invoke-static {v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/AndroidBug5497Workaround;->access$200(Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/AndroidBug5497Workaround;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/AndroidBug5497Workaround;->access$102(Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/AndroidBug5497Workaround;I)I

    .line 43
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/AndroidBug5497Workaround$1;->this$0:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/AndroidBug5497Workaround;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/AndroidBug5497Workaround;->access$002(Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/AndroidBug5497Workaround;Z)Z

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/AndroidBug5497Workaround$1;->this$0:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/AndroidBug5497Workaround;

    invoke-static {v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/AndroidBug5497Workaround;->access$300(Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/AndroidBug5497Workaround;)V

    return-void
.end method
