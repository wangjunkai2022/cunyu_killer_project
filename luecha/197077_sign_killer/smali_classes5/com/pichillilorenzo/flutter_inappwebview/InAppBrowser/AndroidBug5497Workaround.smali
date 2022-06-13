.class public Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/AndroidBug5497Workaround;
.super Ljava/lang/Object;
.source "AndroidBug5497Workaround.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private contentHeight:I

.field private frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field private isfirst:Z

.field private mChildOfContent:Landroid/view/View;

.field private mIMEStatusChangeListener:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/IMEStatusChangeListener;

.field private statusBarHeight:I

.field private usableHeightPrevious:I


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 4

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/AndroidBug5497Workaround;->isfirst:Z

    .line 27
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 28
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/AndroidBug5497Workaround;->statusBarHeight:I

    .line 29
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/AndroidBug5497Workaround;->activity:Landroid/app/Activity;

    const v0, 0x1020002

    .line 30
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    .line 31
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    .line 33
    instance-of v0, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/IMEStatusChangeListener;

    if-eqz v0, :cond_0

    .line 34
    check-cast p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/IMEStatusChangeListener;

    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/AndroidBug5497Workaround;->mIMEStatusChangeListener:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/IMEStatusChangeListener;

    .line 39
    :cond_0
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/AndroidBug5497Workaround$1;

    invoke-direct {v0, p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/AndroidBug5497Workaround$1;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/AndroidBug5497Workaround;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 48
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/AndroidBug5497Workaround;->frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method

.method static synthetic access$000(Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/AndroidBug5497Workaround;)Z
    .locals 0

    .line 10
    iget-boolean p0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/AndroidBug5497Workaround;->isfirst:Z

    return p0
.end method

.method static synthetic access$002(Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/AndroidBug5497Workaround;Z)Z
    .locals 0

    .line 10
    iput-boolean p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/AndroidBug5497Workaround;->isfirst:Z

    return p1
.end method

.method static synthetic access$102(Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/AndroidBug5497Workaround;I)I
    .locals 0

    .line 10
    iput p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/AndroidBug5497Workaround;->contentHeight:I

    return p1
.end method

.method static synthetic access$200(Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/AndroidBug5497Workaround;)Landroid/view/View;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/AndroidBug5497Workaround;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/AndroidBug5497Workaround;->possiblyResizeChildOfContent()V

    return-void
.end method

.method public static assistActivity(Landroid/app/Activity;)V
    .locals 1

    .line 12
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/AndroidBug5497Workaround;

    invoke-direct {v0, p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/AndroidBug5497Workaround;-><init>(Landroid/app/Activity;)V

    return-void
.end method

.method private computeUsableHeight()I
    .locals 2

    .line 93
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 94
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 95
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v0

    return v1
.end method

.method private possiblyResizeChildOfContent()V
    .locals 5

    .line 54
    invoke-direct {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/AndroidBug5497Workaround;->computeUsableHeight()I

    move-result v0

    .line 56
    iget v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/AndroidBug5497Workaround;->usableHeightPrevious:I

    if-eq v0, v1, :cond_2

    .line 62
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int v2, v1, v0

    .line 64
    div-int/lit8 v3, v1, 0x4

    const/4 v4, 0x0

    if-le v2, v3, :cond_1

    .line 66
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v3, v4, :cond_0

    .line 67
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/AndroidBug5497Workaround;->frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    sub-int/2addr v1, v2

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_0

    .line 70
    :cond_0
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/AndroidBug5497Workaround;->frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    sub-int/2addr v1, v2

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :goto_0
    const/4 v4, 0x1

    goto :goto_1

    .line 76
    :cond_1
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/AndroidBug5497Workaround;->frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/AndroidBug5497Workaround;->contentHeight:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    move v2, v4

    .line 80
    :goto_1
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 81
    iput v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/AndroidBug5497Workaround;->usableHeightPrevious:I

    .line 84
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/AndroidBug5497Workaround;->mIMEStatusChangeListener:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/IMEStatusChangeListener;

    if-eqz v0, :cond_2

    .line 85
    invoke-interface {v0, v4, v2}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/IMEStatusChangeListener;->onIMEStatusChange(II)V

    :cond_2
    return-void
.end method
