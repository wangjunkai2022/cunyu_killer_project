.class Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/DragViewUtil$TouchListener$1;
.super Ljava/lang/Object;
.source "DragViewUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/DragViewUtil$TouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/DragViewUtil$TouchListener;

.field final synthetic val$flag:J

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/DragViewUtil$TouchListener;JLandroid/view/View;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/DragViewUtil$TouchListener$1;->this$0:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/DragViewUtil$TouchListener;

    iput-wide p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/DragViewUtil$TouchListener$1;->val$flag:J

    iput-object p4, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/DragViewUtil$TouchListener$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 109
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/DragViewUtil$TouchListener$1;->this$0:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/DragViewUtil$TouchListener;

    invoke-static {v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/DragViewUtil$TouchListener;->access$200(Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/DragViewUtil$TouchListener;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/DragViewUtil$TouchListener$1;->val$flag:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/DragViewUtil$TouchListener$1;->val$v:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    :cond_0
    return-void
.end method
