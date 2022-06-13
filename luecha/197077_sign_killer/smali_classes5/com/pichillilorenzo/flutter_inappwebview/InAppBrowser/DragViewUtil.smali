.class public Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/DragViewUtil;
.super Ljava/lang/Object;
.source "DragViewUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/DragViewUtil$TouchListener;
    }
.end annotation


# static fields
.field private static DRAG_PADDING:I

.field private static final MAIN_HANDLER:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/DragViewUtil;->MAIN_HANDLER:Landroid/os/Handler;

    const/16 v0, 0x28

    .line 22
    sput v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/DragViewUtil;->DRAG_PADDING:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()I
    .locals 1

    .line 15
    sget v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/DragViewUtil;->DRAG_PADDING:I

    return v0
.end method

.method static synthetic access$300()Landroid/os/Handler;
    .locals 1

    .line 15
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/DragViewUtil;->MAIN_HANDLER:Landroid/os/Handler;

    return-object v0
.end method

.method public static drag(Landroid/view/View;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 17
    invoke-static {p0, v0, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/DragViewUtil;->drag(Landroid/view/View;J)V

    return-void
.end method

.method public static drag(Landroid/view/View;J)V
    .locals 2

    .line 30
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/DragViewUtil$TouchListener;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/DragViewUtil$TouchListener;-><init>(JLcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/DragViewUtil$1;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
