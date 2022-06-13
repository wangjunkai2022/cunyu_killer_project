.class public Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "InAppBrowserActivity.java"

# interfaces
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr$ActivityResultListener;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "InAppBrowserActivity"


# instance fields
.field private _dialog_cancleText:Ljava/lang/String;

.field private _dialog_confirmText:Ljava/lang/String;

.field private _dialog_text:Ljava/lang/String;

.field private _dialog_title:Ljava/lang/String;

.field public actionBar:Landroidx/appcompat/app/ActionBar;

.field public activityResultListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr$ActivityResultListener;",
            ">;"
        }
    .end annotation
.end field

.field public channel:Lio/flutter/plugin/common/MethodChannel;

.field public closeButtonOptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public fromActivity:Ljava/lang/String;

.field public headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public isHidden:Z

.field public ll_close:Landroid/widget/LinearLayout;

.field public menu:Landroid/view/Menu;

.field public options:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;

.field public progressBar:Landroid/widget/ProgressBar;

.field public searchView:Landroid/widget/SearchView;

.field private sweetAlertDialog:Landroid/app/Dialog;

.field public uuid:Ljava/lang/String;

.field public webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

.field public windowId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->isHidden:Z

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->activityResultListeners:Ljava/util/List;

    return-void
.end method

.method static synthetic access$001(Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;)V
    .locals 0

    .line 56
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method static synthetic access$101(Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;)V
    .locals 0

    .line 56
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method private forceOrientation(Ljava/lang/String;)V
    .locals 1

    const-string v0, "PortraitUp"

    .line 1096
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 1097
    invoke-virtual {p0, p1}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_0
    const-string v0, "PortraitDown"

    .line 1098
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p1, 0x9

    .line 1099
    invoke-virtual {p0, p1}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_1
    const-string v0, "LandscapeLeft"

    .line 1100
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 p1, 0x8

    .line 1101
    invoke-virtual {p0, p1}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_2
    const-string v0, "LandscapeRight"

    .line 1102
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 1103
    invoke-virtual {p0, p1}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_3
    const/4 p1, -0x1

    .line 1105
    invoke-virtual {p0, p1}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->setRequestedOrientation(I)V

    :goto_0
    return-void
.end method

.method private prepareView()V
    .locals 3

    .line 521
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;->faceOrientation:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->forceOrientation(Ljava/lang/String;)V

    .line 523
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->prepare()V

    .line 525
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;->hidden:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    invoke-virtual {p0}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->hide()V

    goto :goto_0

    .line 528
    :cond_0
    invoke-virtual {p0}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->show()V

    .line 530
    :goto_0
    sget v0, Lcom/pichillilorenzo/flutter_inappwebview/R$id;->progressBar:I

    invoke-virtual {p0, v0}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->progressBar:Landroid/widget/ProgressBar;

    .line 532
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;->progressBar:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 533
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    goto :goto_1

    .line 535
    :cond_1
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 537
    :goto_1
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->actionBar:Landroidx/appcompat/app/ActionBar;

    iget-object v1, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;->hideTitleBar:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 538
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->actionBar:Landroidx/appcompat/app/ActionBar;

    iget-object v1, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;->hideTitleBar:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 541
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;->toolbarTop:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 542
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->actionBar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->hide()V

    .line 544
    :cond_2
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;->toolbarTopBackgroundColor:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;->toolbarTopBackgroundColor:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 545
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->actionBar:Landroidx/appcompat/app/ActionBar;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget-object v2, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;

    iget-object v2, v2, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;->toolbarTopBackgroundColor:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 547
    :cond_3
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;->toolbarTopFixedTitle:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;->toolbarTopFixedTitle:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 548
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->actionBar:Landroidx/appcompat/app/ActionBar;

    iget-object v1, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;->toolbarTopFixedTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method private updateCloseButton()V
    .locals 7

    .line 439
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->closeButtonOptions:Ljava/util/Map;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->closeButtonOptions:Ljava/util/Map;

    const-string v1, "title"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 443
    iget-object v1, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->closeButtonOptions:Ljava/util/Map;

    const-string v2, "text"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 444
    iget-object v2, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->closeButtonOptions:Ljava/util/Map;

    const-string v3, "confirmText"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 445
    iget-object v3, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->closeButtonOptions:Ljava/util/Map;

    const-string v4, "cancleText"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 446
    iget-object v4, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->closeButtonOptions:Ljava/util/Map;

    const-string v5, "isRotationRight"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 449
    sget v5, Lcom/pichillilorenzo/flutter_inappwebview/R$id;->ll_close:I

    invoke-virtual {p0, v5}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->ll_close:Landroid/widget/LinearLayout;

    .line 450
    iget-object v5, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->ll_close:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 451
    iget-object v5, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->ll_close:Landroid/widget/LinearLayout;

    new-instance v6, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr$1;

    invoke-direct {v6, p0}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr$1;-><init>(Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v5, "1"

    if-ne v4, v5, :cond_1

    .line 461
    iget-object v4, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->ll_close:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, 0x1

    .line 462
    iput-boolean v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    const/16 v5, 0x15

    .line 463
    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v5, 0x14

    .line 464
    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v5, 0xd

    .line 465
    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v5, 0xa

    .line 466
    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 467
    iget-object v5, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->ll_close:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 470
    :cond_1
    iget-object v4, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->ll_close:Landroid/widget/LinearLayout;

    invoke-static {v4}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/DragViewUtil;->drag(Landroid/view/View;)V

    if-nez v0, :cond_2

    const-string v0, "\u63d0\u793a"

    goto :goto_0

    .line 472
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->_dialog_title:Ljava/lang/String;

    if-nez v1, :cond_3

    const-string v0, "\u60a8\u662f\u5426\u5173\u95ed\u7a97\u53e3\uff1f"

    goto :goto_1

    .line 473
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->_dialog_text:Ljava/lang/String;

    if-nez v2, :cond_4

    const-string v0, "\u786e\u8ba4"

    goto :goto_2

    .line 474
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->_dialog_confirmText:Ljava/lang/String;

    if-nez v3, :cond_5

    const-string v0, "\u53d6\u6d88"

    goto :goto_3

    .line 475
    :cond_5
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->_dialog_cancleText:Ljava/lang/String;

    .line 478
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->sweetAlertDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_6

    .line 479
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_6
    :goto_4
    return-void
.end method


# virtual methods
.method public canGoBack()Z
    .locals 1

    .line 722
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 723
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->canGoBack()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public canGoBackOrForward(I)Z
    .locals 1

    .line 744
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 745
    invoke-virtual {v0, p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->canGoBackOrForward(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public canGoForward()Z
    .locals 1

    .line 733
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 734
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->canGoForward()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public clearCache()V
    .locals 1

    .line 908
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 909
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->clearAllCache()V

    :cond_0
    return-void
.end method

.method public clearFocus()V
    .locals 1

    .line 1055
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 1056
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->clearFocus()V

    :cond_0
    return-void
.end method

.method public clearMatches(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 931
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 932
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->clearMatches()V

    const/4 v0, 0x1

    .line 933
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 935
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public clearSslPreferences()V
    .locals 1

    .line 913
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 914
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->clearSslPreferences()V

    :cond_0
    return-void
.end method

.method public close(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    .line 701
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 702
    iget-object v1, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->channel:Lio/flutter/plugin/common/MethodChannel;

    const-string v2, "onExit"

    invoke-virtual {v1, v2, v0}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 704
    invoke-virtual {p0}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->dispose()V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 707
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public closeButtonClicked(Landroid/view/MenuItem;)V
    .locals 0

    const/4 p1, 0x0

    .line 799
    invoke-virtual {p0, p1}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->close(Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void
.end method

.method public dispose()V
    .locals 2

    .line 1110
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->channel:Lio/flutter/plugin/common/MethodChannel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 1111
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->activityResultListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1112
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_2

    .line 1113
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview/Shared;->activityPluginBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    if-eqz v0, :cond_0

    .line 1114
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview/Shared;->activityPluginBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    iget-object v1, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    iget-object v1, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->inAppWebViewChromeClient:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewChromeClient;

    invoke-interface {v0, v1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->removeActivityResultListener(Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;)V

    .line 1116
    :cond_0
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 1118
    iget-object v1, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    const-string v0, "InAppWebview"

    const-string v1, "dispose: webView.getParent() \u4e3a\u7a7a"

    .line 1120
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    :goto_0
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    new-instance v1, Landroid/webkit/WebChromeClient;

    invoke-direct {v1}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v0, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 1122
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    new-instance v1, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr$9;

    invoke-direct {v1, p0}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr$9;-><init>(Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;)V

    invoke-virtual {v0, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1129
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->loadUrl(Ljava/lang/String;)V

    .line 1130
    invoke-static {p0}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->access$101(Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;)V

    :cond_2
    return-void
.end method

.method public evaluateJavascript(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 866
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 867
    invoke-virtual {v0, p1, p2}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->evaluateJavascript(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 869
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public findAllAsync(Ljava/lang/String;)V
    .locals 1

    .line 918
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 919
    invoke-virtual {v0, p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->findAllAsync(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public findNext(Ljava/lang/Boolean;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 923
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 924
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->findNext(Z)V

    const/4 p1, 0x1

    .line 925
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 927
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public finish()V
    .locals 2

    .line 493
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->_dialog_title:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 494
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    return-void

    .line 497
    :cond_0
    new-instance v0, Lcn/pedant/SweetAlert/SweetAlertDialog;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/pedant/SweetAlert/SweetAlertDialog;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->_dialog_title:Ljava/lang/String;

    .line 498
    invoke-virtual {v0, v1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setTitleText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->_dialog_text:Ljava/lang/String;

    .line 499
    invoke-virtual {v0, v1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setContentText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->_dialog_confirmText:Ljava/lang/String;

    .line 500
    invoke-virtual {v0, v1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setConfirmText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->_dialog_cancleText:Ljava/lang/String;

    .line 501
    invoke-virtual {v0, v1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setCancelText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    move-result-object v0

    new-instance v1, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr$3;

    invoke-direct {v1, p0}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr$3;-><init>(Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;)V

    .line 502
    invoke-virtual {v0, v1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setConfirmClickListener(Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    move-result-object v0

    new-instance v1, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr$2;

    invoke-direct {v1, p0}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr$2;-><init>(Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;)V

    .line 510
    invoke-virtual {v0, v1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setCancelClickListener(Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->sweetAlertDialog:Landroid/app/Dialog;

    .line 516
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->sweetAlertDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public getCertificate()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1089
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 1090
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getCertificateMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentHeight()Ljava/lang/Integer;
    .locals 1

    .line 975
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 976
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getContentHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCopyBackForwardList()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 888
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 889
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getCopyBackForwardList()Ljava/util/HashMap;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHitTestResult()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1007
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 1008
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v0

    .line 1009
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1010
    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "type"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1011
    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v0

    const-string v2, "extra"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOptions()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 856
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getOptions()Ljava/util/Map;

    move-result-object v0

    .line 857
    iget-object v1, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 860
    :cond_0
    invoke-virtual {v1, p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;->getRealOptions(Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;)Ljava/util/Map;

    move-result-object v1

    .line 861
    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 1

    .line 987
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 988
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProgress()Ljava/lang/Integer;
    .locals 1

    .line 636
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 637
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getProgress()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getScale()Ljava/lang/Float;
    .locals 1

    .line 993
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 994
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getUpdatedScale()Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getScrollX()Ljava/lang/Integer;
    .locals 1

    .line 1077
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 1078
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getScrollX()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getScrollY()Ljava/lang/Integer;
    .locals 1

    .line 1083
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 1084
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getScrollY()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectedText(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 1000
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 1001
    invoke-virtual {v0, p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getSelectedText(Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1003
    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 624
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 625
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWebViewTitle()Ljava/lang/String;
    .locals 1

    .line 630
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 631
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public goBack()V
    .locals 1

    .line 717
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 718
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->goBack()V

    :cond_0
    return-void
.end method

.method public goBackButtonClicked(Landroid/view/MenuItem;)V
    .locals 0

    .line 780
    invoke-virtual {p0}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->goBack()V

    return-void
.end method

.method public goBackOrForward(I)V
    .locals 1

    .line 739
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->canGoBackOrForward(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 740
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {v0, p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->goBackOrForward(I)V

    :cond_0
    return-void
.end method

.method public goForward()V
    .locals 1

    .line 728
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 729
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->goForward()V

    :cond_0
    return-void
.end method

.method public goForwardButtonClicked(Landroid/view/MenuItem;)V
    .locals 0

    .line 784
    invoke-virtual {p0}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->goForward()V

    return-void
.end method

.method public hide()V
    .locals 2

    const/4 v0, 0x1

    .line 751
    :try_start_0
    iput-boolean v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->isHidden:Z

    .line 752
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->fromActivity:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x20000

    .line 753
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 754
    invoke-virtual {p0, v0, v1}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->startActivityIfNeeded(Landroid/content/Intent;I)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 756
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 757
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InAppBrowserActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public injectCSSCode(Ljava/lang/String;)V
    .locals 1

    .line 878
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 879
    invoke-virtual {v0, p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->injectCSSCode(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public injectCSSFileFromUrl(Ljava/lang/String;)V
    .locals 1

    .line 883
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 884
    invoke-virtual {v0, p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->injectCSSFileFromUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public injectJavascriptFileFromUrl(Ljava/lang/String;)V
    .locals 1

    .line 873
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 874
    invoke-virtual {v0, p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->injectJavascriptFileFromUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public isLoading()Z
    .locals 1

    .line 774
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 775
    iget-boolean v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->isLoading:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 7

    .line 666
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 667
    invoke-virtual/range {v0 .. v6}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const-string p2, "InAppBrowserActivity"

    const-string p3, "webView is null"

    .line 669
    invoke-interface {p6, p2, p3, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public loadFile(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 674
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 675
    invoke-virtual {v0, p1, p2}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->loadFile(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const-string v0, "InAppBrowserActivity"

    const-string v1, "webView is null"

    .line 677
    invoke-interface {p2, v0, v1, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public loadFile(Ljava/lang/String;Ljava/util/Map;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lio/flutter/plugin/common/MethodChannel$Result;",
            ")V"
        }
    .end annotation

    .line 682
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 683
    invoke-virtual {v0, p1, p2, p3}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->loadFile(Ljava/lang/String;Ljava/util/Map;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const-string p2, "InAppBrowserActivity"

    const-string v0, "webView is null"

    .line 685
    invoke-interface {p3, p2, v0, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public loadUrl(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 642
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 643
    invoke-virtual {v0, p1, p2}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->loadUrl(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const-string v0, "InAppBrowserActivity"

    const-string v1, "webView is null"

    .line 645
    invoke-interface {p2, v0, v1, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lio/flutter/plugin/common/MethodChannel$Result;",
            ")V"
        }
    .end annotation

    .line 650
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 651
    invoke-virtual {v0, p1, p2, p3}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const-string p2, "InAppBrowserActivity"

    const-string v0, "webView is null"

    .line 653
    invoke-interface {p3, p2, v0, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 1138
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->activityResultListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr$ActivityResultListener;

    .line 1139
    invoke-interface {v1, p1, p2, p3}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr$ActivityResultListener;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1143
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 79
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    return-void

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "uuid"

    .line 86
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->uuid:Ljava/lang/String;

    const-string v1, "windowId"

    .line 87
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->windowId:Ljava/lang/Integer;

    .line 89
    new-instance v1, Lio/flutter/plugin/common/MethodChannel;

    sget-object v2, Lcom/pichillilorenzo/flutter_inappwebview/Shared;->messenger:Lio/flutter/plugin/common/BinaryMessenger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "com.pichillilorenzo/flutter_inappbrowser_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->uuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->channel:Lio/flutter/plugin/common/MethodChannel;

    .line 90
    iget-object v1, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->channel:Lio/flutter/plugin/common/MethodChannel;

    invoke-virtual {v1, p0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    const/4 v1, 0x1

    .line 92
    invoke-virtual {p0, v1}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->requestWindowFeature(I)Z

    .line 93
    sget v1, Lcom/pichillilorenzo/flutter_inappwebview/R$layout;->activity_web_view:I

    invoke-virtual {p0, v1}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->setContentView(I)V

    .line 95
    invoke-virtual {p0}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    .line 96
    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 98
    sget v1, Lcom/pichillilorenzo/flutter_inappwebview/R$id;->webView:I

    invoke-virtual {p0, v1}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    iput-object v1, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    .line 99
    iget-object v1, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    iget-object v2, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->windowId:Ljava/lang/Integer;

    iput-object v2, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->windowId:Ljava/lang/Integer;

    .line 100
    iput-object p0, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->inAppBrowserActivity:Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;

    .line 101
    iget-object v2, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->channel:Lio/flutter/plugin/common/MethodChannel;

    iput-object v2, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->channel:Lio/flutter/plugin/common/MethodChannel;

    const-string v1, "fromActivity"

    .line 103
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->fromActivity:Ljava/lang/String;

    const-string v1, "options"

    .line 105
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "contextMenu"

    .line 106
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 108
    new-instance v3, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;

    invoke-direct {v3}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;-><init>()V

    iput-object v3, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;

    .line 109
    iget-object v3, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;

    invoke-virtual {v3, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;->parse(Ljava/util/Map;)Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;

    .line 111
    new-instance v3, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    invoke-direct {v3}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;-><init>()V

    .line 112
    invoke-virtual {v3, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->parse(Ljava/util/Map;)Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    .line 113
    iget-object v1, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    iput-object v3, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    .line 114
    iput-object v2, v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->contextMenu:Ljava/util/Map;

    .line 116
    invoke-virtual {p0}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->actionBar:Landroidx/appcompat/app/ActionBar;

    .line 118
    invoke-direct {p0}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->prepareView()V

    .line 120
    iget-object v1, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->windowId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 121
    sget-object p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewChromeClient;->windowWebViewMessages:Ljava/util/Map;

    iget-object v1, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->windowId:Ljava/lang/Integer;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Message;

    if-eqz p1, :cond_3

    .line 123
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/webkit/WebView$WebViewTransport;

    iget-object v2, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    .line 124
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_1
    const-string v1, "isData"

    .line 127
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 128
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "headers"

    .line 129
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    iput-object v1, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->headers:Ljava/util/Map;

    const-string v1, "closeButtonOptions"

    .line 130
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    iput-object v1, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->closeButtonOptions:Ljava/util/Map;

    const-string v1, "url"

    .line 131
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 132
    iget-object v1, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    iget-object v2, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->headers:Ljava/util/Map;

    invoke-virtual {v1, p1, v2}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 134
    invoke-direct {p0}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->updateCloseButton()V

    goto :goto_0

    :cond_2
    const-string v1, "data"

    .line 136
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "mimeType"

    .line 137
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "encoding"

    .line 138
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "baseUrl"

    .line 139
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "historyUrl"

    .line 140
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 141
    iget-object v2, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual/range {v2 .. v7}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_3
    :goto_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 146
    iget-object v1, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->uuid:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->channel:Lio/flutter/plugin/common/MethodChannel;

    const-string v1, "onBrowserCreated"

    invoke-virtual {v0, v1, p1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 150
    invoke-static {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/AndroidBug5497Workaround;->assistActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .line 565
    iput-object p1, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->menu:Landroid/view/Menu;

    .line 567
    invoke-virtual {p0}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p1

    .line 569
    sget v0, Lcom/pichillilorenzo/flutter_inappwebview/R$menu;->menu_main:I

    iget-object v1, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->menu:Landroid/view/Menu;

    invoke-virtual {p1, v0, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 571
    iget-object p1, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->menu:Landroid/view/Menu;

    sget v0, Lcom/pichillilorenzo/flutter_inappwebview/R$id;->menu_search:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SearchView;

    iput-object p1, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->searchView:Landroid/widget/SearchView;

    .line 572
    iget-object p1, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->searchView:Landroid/widget/SearchView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/SearchView;->setFocusable(Z)V

    .line 574
    iget-object p1, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;

    iget-object p1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;->hideUrlBar:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 575
    iget-object p1, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->menu:Landroid/view/Menu;

    sget v2, Lcom/pichillilorenzo/flutter_inappwebview/R$id;->menu_search:I

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 577
    :cond_0
    iget-object p1, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->searchView:Landroid/widget/SearchView;

    iget-object v2, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {v2}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 579
    iget-object p1, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;

    iget-object p1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;->toolbarTopFixedTitle:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 580
    iget-object p1, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->actionBar:Landroidx/appcompat/app/ActionBar;

    iget-object v1, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 582
    :cond_1
    iget-object p1, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->searchView:Landroid/widget/SearchView;

    new-instance v1, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr$4;

    invoke-direct {v1, p0}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr$4;-><init>(Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;)V

    invoke-virtual {p1, v1}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 601
    iget-object p1, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->searchView:Landroid/widget/SearchView;

    new-instance v1, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr$5;

    invoke-direct {v1, p0}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr$5;-><init>(Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;)V

    invoke-virtual {p1, v1}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 610
    iget-object p1, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->searchView:Landroid/widget/SearchView;

    new-instance v1, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr$6;

    invoke-direct {v1, p0}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr$6;-><init>(Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;)V

    invoke-virtual {p1, v1}, Landroid/widget/SearchView;->setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .line 1148
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->sweetAlertDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 1149
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1151
    :cond_0
    invoke-virtual {p0}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->dispose()V

    .line 1152
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 691
    invoke-virtual {p0}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 692
    invoke-virtual {p0}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->goBack()V

    goto :goto_0

    .line 693
    :cond_0
    iget-object p1, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;

    iget-object p1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;->closeOnCannotGoBack:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 694
    invoke-virtual {p0, p1}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->close(Lio/flutter/plugin/common/MethodChannel$Result;)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1

    .line 697
    :cond_2
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v6, p2

    .line 155
    iget-object v1, v0, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v4, 0x13

    const/16 v8, 0x15

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "getTitle"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v9

    goto/16 :goto_1

    :sswitch_1
    const-string v2, "getScale"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2c

    goto/16 :goto_1

    :sswitch_2
    const-string v2, "evaluateJavascript"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto/16 :goto_1

    :sswitch_3
    const-string v2, "injectJavascriptFileFromUrl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x9

    goto/16 :goto_1

    :sswitch_4
    const-string v2, "findAllAsync"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x1f

    goto/16 :goto_1

    :sswitch_5
    const-string v2, "loadFile"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto/16 :goto_1

    :sswitch_6
    const-string v2, "loadData"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto/16 :goto_1

    :sswitch_7
    const-string v2, "goBackOrForward"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto/16 :goto_1

    :sswitch_8
    const-string v2, "setContextMenu"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x35

    goto/16 :goto_1

    :sswitch_9
    const-string v2, "requestImageRef"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x37

    goto/16 :goto_1

    :sswitch_a
    const-string v2, "setOptions"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x19

    goto/16 :goto_1

    :sswitch_b
    const-string v2, "setCloseButton"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x3b

    goto/16 :goto_1

    :sswitch_c
    const-string v2, "resumeTimers"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x27

    goto/16 :goto_1

    :sswitch_d
    const-string v2, "getCertificate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x3a

    goto/16 :goto_1

    :sswitch_e
    const-string v2, "requestFocusNodeHref"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x36

    goto/16 :goto_1

    :sswitch_f
    const-string v2, "getOriginalUrl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2b

    goto/16 :goto_1

    :sswitch_10
    const-string v2, "getProgress"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto/16 :goto_1

    :sswitch_11
    const-string v2, "clearSslPreferences"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x1e

    goto/16 :goto_1

    :sswitch_12
    const-string v2, "pageDown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2f

    goto/16 :goto_1

    :sswitch_13
    const-string v2, "clearMatches"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x21

    goto/16 :goto_1

    :sswitch_14
    const-string v2, "injectCSSFileFromUrl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xb

    goto/16 :goto_1

    :sswitch_15
    const-string v2, "getHitTestResult"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2e

    goto/16 :goto_1

    :sswitch_16
    const-string v2, "loadUrl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto/16 :goto_1

    :sswitch_17
    const-string v2, "takeScreenshot"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x18

    goto/16 :goto_1

    :sswitch_18
    const-string v2, "pause"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x24

    goto/16 :goto_1

    :sswitch_19
    const-string v2, "close"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    goto/16 :goto_1

    :sswitch_1a
    const-string v2, "show"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xc

    goto/16 :goto_1

    :sswitch_1b
    const-string v2, "hide"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xd

    goto/16 :goto_1

    :sswitch_1c
    const-string v2, "startSafeBrowsing"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x1c

    goto/16 :goto_1

    :sswitch_1d
    const-string v2, "getCopyBackForwardList"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x1b

    goto/16 :goto_1

    :sswitch_1e
    const-string v2, "injectCSSCode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    goto/16 :goto_1

    :sswitch_1f
    const-string v2, "zoomOut"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x33

    goto/16 :goto_1

    :sswitch_20
    const-string v2, "getSelectedText"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2d

    goto/16 :goto_1

    :sswitch_21
    const-string v2, "getOptions"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x1a

    goto/16 :goto_1

    :sswitch_22
    const-string v2, "isLoading"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x16

    goto/16 :goto_1

    :sswitch_23
    const-string v2, "canGoBack"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x10

    goto/16 :goto_1

    :sswitch_24
    const-string v2, "goForward"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x11

    goto/16 :goto_1

    :sswitch_25
    const-string v2, "postUrl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto/16 :goto_1

    :sswitch_26
    const-string v2, "scrollTo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x22

    goto/16 :goto_1

    :sswitch_27
    const-string v2, "scrollBy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x23

    goto/16 :goto_1

    :sswitch_28
    const-string v2, "isHidden"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x17

    goto/16 :goto_1

    :sswitch_29
    const-string v2, "printCurrentPage"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x28

    goto/16 :goto_1

    :sswitch_2a
    const-string v2, "findNext"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x20

    goto/16 :goto_1

    :sswitch_2b
    const-string v2, "zoomIn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x32

    goto/16 :goto_1

    :sswitch_2c
    const-string v2, "zoomBy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2a

    goto/16 :goto_1

    :sswitch_2d
    const-string v2, "clearFocus"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x34

    goto/16 :goto_1

    :sswitch_2e
    const-string v2, "clearCache"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x1d

    goto/16 :goto_1

    :sswitch_2f
    const-string v2, "resume"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x25

    goto/16 :goto_1

    :sswitch_30
    const-string v2, "reload"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xe

    goto/16 :goto_1

    :sswitch_31
    const-string v2, "stopLoading"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v8

    goto/16 :goto_1

    :sswitch_32
    const-string v2, "pageUp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x30

    goto/16 :goto_1

    :sswitch_33
    const-string v2, "canGoForward"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x12

    goto :goto_1

    :sswitch_34
    const-string v2, "goBack"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xf

    goto :goto_1

    :sswitch_35
    const-string v2, "getUrl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_36
    const-string v2, "canGoBackOrForward"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x14

    goto :goto_1

    :sswitch_37
    const-string v2, "getScrollY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x39

    goto :goto_1

    :sswitch_38
    const-string v2, "getScrollX"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x38

    goto :goto_1

    :sswitch_39
    const-string v2, "saveWebArchive"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x31

    goto :goto_1

    :sswitch_3a
    const-string v2, "getContentHeight"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x29

    goto :goto_1

    :sswitch_3b
    const-string v2, "pauseTimers"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x26

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    :goto_1
    const/4 v2, 0x0

    const-string v9, "animated"

    const-string v11, "y"

    const-string v12, "x"

    const-string v13, "steps"

    const-string v14, "urlFile"

    const-string v15, "source"

    const-string v3, "headers"

    const-string v5, "url"

    packed-switch v1, :pswitch_data_0

    .line 429
    invoke-interface/range {p2 .. p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    goto/16 :goto_5

    .line 423
    :pswitch_0
    iget-object v0, v0, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    .line 424
    iput-object v0, v7, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->closeButtonOptions:Ljava/util/Map;

    .line 425
    invoke-direct/range {p0 .. p0}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->updateCloseButton()V

    .line 426
    invoke-interface {v6, v10}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 420
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->getCertificate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v6, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 417
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->getScrollY()Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 414
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->getScrollX()Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 411
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->requestImageRef()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v6, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 408
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->requestFocusNodeHref()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v6, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_6
    const-string v1, "contextMenu"

    .line 402
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 403
    invoke-virtual {v7, v0}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->setContextMenu(Ljava/util/Map;)V

    .line 405
    invoke-interface {v6, v10}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 398
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->clearFocus()V

    .line 399
    invoke-interface {v6, v10}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 395
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->zoomOut()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v6, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 392
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->zoomIn()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v6, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_a
    const-string v1, "basename"

    .line 386
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "autoname"

    .line 387
    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 388
    invoke-virtual {v7, v1, v0, v6}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->saveWebArchive(Ljava/lang/String;ZLio/flutter/plugin/common/MethodChannel$Result;)V

    goto/16 :goto_5

    :pswitch_b
    const-string v1, "top"

    .line 381
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 382
    invoke-virtual {v7, v0}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->pageUp(Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v6, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_c
    const-string v1, "bottom"

    .line 376
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 377
    invoke-virtual {v7, v0}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->pageDown(Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v6, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 373
    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->getHitTestResult()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v6, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 366
    :pswitch_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_1

    .line 367
    invoke-virtual {v7, v6}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->getSelectedText(Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto/16 :goto_5

    .line 369
    :cond_1
    invoke-interface {v6, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 363
    :pswitch_f
    invoke-virtual/range {p0 .. p0}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->getScale()Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v6, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 360
    :pswitch_10
    invoke-virtual/range {p0 .. p0}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 353
    :pswitch_11
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v8, :cond_2

    const-string v1, "zoomFactor"

    .line 354
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 355
    invoke-virtual {v7, v0}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->zoomBy(Ljava/lang/Float;)V

    .line 357
    :cond_2
    invoke-interface {v6, v10}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 350
    :pswitch_12
    invoke-virtual/range {p0 .. p0}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->getContentHeight()Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 344
    :pswitch_13
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v8, :cond_3

    .line 345
    invoke-virtual/range {p0 .. p0}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->printCurrentPage()V

    .line 347
    :cond_3
    invoke-interface {v6, v10}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 340
    :pswitch_14
    invoke-virtual/range {p0 .. p0}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->resumeTimers()V

    .line 341
    invoke-interface {v6, v10}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 336
    :pswitch_15
    invoke-virtual/range {p0 .. p0}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->pauseTimers()V

    .line 337
    invoke-interface {v6, v10}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 332
    :pswitch_16
    invoke-virtual/range {p0 .. p0}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->onResumeWebView()V

    .line 333
    invoke-interface {v6, v10}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 328
    :pswitch_17
    invoke-virtual/range {p0 .. p0}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->onPauseWebView()V

    .line 329
    invoke-interface {v6, v10}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 320
    :pswitch_18
    invoke-virtual {v0, v12}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 321
    invoke-virtual {v0, v11}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 322
    invoke-virtual {v0, v9}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 323
    invoke-virtual {v7, v1, v2, v0}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->scrollBy(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    .line 325
    invoke-interface {v6, v10}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 312
    :pswitch_19
    invoke-virtual {v0, v12}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 313
    invoke-virtual {v0, v11}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 314
    invoke-virtual {v0, v9}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 315
    invoke-virtual {v7, v1, v2, v0}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->scrollTo(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    .line 317
    invoke-interface {v6, v10}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 309
    :pswitch_1a
    invoke-virtual {v7, v6}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->clearMatches(Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto/16 :goto_5

    :pswitch_1b
    const-string v1, "forward"

    .line 305
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 306
    invoke-virtual {v7, v0, v6}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->findNext(Ljava/lang/Boolean;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto/16 :goto_5

    :pswitch_1c
    const-string v1, "find"

    .line 300
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 301
    invoke-virtual {v7, v0}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->findAllAsync(Ljava/lang/String;)V

    .line 302
    invoke-interface {v6, v10}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 296
    :pswitch_1d
    invoke-virtual/range {p0 .. p0}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->clearSslPreferences()V

    .line 297
    invoke-interface {v6, v10}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 292
    :pswitch_1e
    invoke-virtual/range {p0 .. p0}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->clearCache()V

    .line 293
    invoke-interface {v6, v10}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 289
    :pswitch_1f
    invoke-virtual {v7, v6}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->startSafeBrowsing(Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto/16 :goto_5

    .line 286
    :pswitch_20
    invoke-virtual/range {p0 .. p0}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->getCopyBackForwardList()Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {v6, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 283
    :pswitch_21
    invoke-virtual/range {p0 .. p0}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->getOptions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v6, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_22
    const-string v1, "optionsType"

    .line 268
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 269
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x2c155812

    if-eq v3, v4, :cond_4

    goto :goto_2

    :cond_4
    const-string v3, "InAppBrowserOptions"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v16, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/16 v16, -0x1

    :goto_3
    if-eqz v16, :cond_6

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Options "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not available."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InAppBrowserActivity"

    invoke-interface {v6, v1, v0, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 271
    :cond_6
    new-instance v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;

    invoke-direct {v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;-><init>()V

    const-string v2, "options"

    .line 272
    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 273
    invoke-virtual {v1, v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;->parse(Ljava/util/Map;)Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;

    .line 274
    invoke-virtual {v7, v1, v0}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->setOptions(Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;Ljava/util/HashMap;)V

    .line 280
    :goto_4
    invoke-interface {v6, v10}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 265
    :pswitch_23
    invoke-virtual {v7, v6}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->takeScreenshot(Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto/16 :goto_5

    .line 262
    :pswitch_24
    iget-boolean v0, v7, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->isHidden:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v6, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 259
    :pswitch_25
    invoke-virtual/range {p0 .. p0}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->isLoading()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v6, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 255
    :pswitch_26
    invoke-virtual/range {p0 .. p0}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->stopLoading()V

    .line 256
    invoke-interface {v6, v10}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 252
    :pswitch_27
    invoke-virtual {v0, v13}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->canGoBackOrForward(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v6, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 248
    :pswitch_28
    invoke-virtual {v0, v13}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->goBackOrForward(I)V

    .line 249
    invoke-interface {v6, v10}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 245
    :pswitch_29
    invoke-virtual/range {p0 .. p0}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->canGoForward()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v6, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 241
    :pswitch_2a
    invoke-virtual/range {p0 .. p0}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->goForward()V

    .line 242
    invoke-interface {v6, v10}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 238
    :pswitch_2b
    invoke-virtual/range {p0 .. p0}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->canGoBack()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v6, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 234
    :pswitch_2c
    invoke-virtual/range {p0 .. p0}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->goBack()V

    .line 235
    invoke-interface {v6, v10}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 230
    :pswitch_2d
    invoke-virtual/range {p0 .. p0}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->reload()V

    .line 231
    invoke-interface {v6, v10}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 226
    :pswitch_2e
    invoke-virtual/range {p0 .. p0}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->hide()V

    .line 227
    invoke-interface {v6, v10}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 222
    :pswitch_2f
    invoke-virtual/range {p0 .. p0}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->show()V

    .line 223
    invoke-interface {v6, v10}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 216
    :pswitch_30
    invoke-virtual {v0, v14}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 217
    invoke-virtual {v7, v0}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->injectCSSFileFromUrl(Ljava/lang/String;)V

    .line 219
    invoke-interface {v6, v10}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 210
    :pswitch_31
    invoke-virtual {v0, v15}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 211
    invoke-virtual {v7, v0}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->injectCSSCode(Ljava/lang/String;)V

    .line 213
    invoke-interface {v6, v10}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 204
    :pswitch_32
    invoke-virtual {v0, v14}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 205
    invoke-virtual {v7, v0}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->injectJavascriptFileFromUrl(Ljava/lang/String;)V

    .line 207
    invoke-interface {v6, v10}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 199
    :pswitch_33
    invoke-virtual {v0, v15}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 200
    invoke-virtual {v7, v0, v6}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->evaluateJavascript(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto/16 :goto_5

    .line 196
    :pswitch_34
    invoke-virtual {v7, v6}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->close(Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto/16 :goto_5

    .line 187
    :pswitch_35
    invoke-virtual {v0, v5}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 188
    invoke-virtual {v0, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_7

    .line 190
    invoke-virtual {v7, v1, v0, v6}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->loadFile(Ljava/lang/String;Ljava/util/Map;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto/16 :goto_5

    .line 192
    :cond_7
    invoke-virtual {v7, v1, v6}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->loadFile(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto/16 :goto_5

    :pswitch_36
    const-string v1, "data"

    .line 178
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "mimeType"

    .line 179
    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "encoding"

    .line 180
    invoke-virtual {v0, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "baseUrl"

    .line 181
    invoke-virtual {v0, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "historyUrl"

    .line 182
    invoke-virtual {v0, v5}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v6, p2

    .line 183
    invoke-virtual/range {v0 .. v6}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_5

    .line 175
    :pswitch_37
    invoke-virtual {v0, v5}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "postData"

    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {v7, v1, v0, v6}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->postUrl(Ljava/lang/String;[BLio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_5

    .line 166
    :pswitch_38
    invoke-virtual {v0, v5}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 167
    invoke-virtual {v0, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_8

    .line 169
    invoke-virtual {v7, v1, v0, v6}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->loadUrl(Ljava/lang/String;Ljava/util/Map;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_5

    .line 171
    :cond_8
    invoke-virtual {v7, v1, v6}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->loadUrl(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_5

    .line 163
    :pswitch_39
    invoke-virtual/range {p0 .. p0}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->getProgress()Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_5

    .line 160
    :pswitch_3a
    invoke-virtual/range {p0 .. p0}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->getWebViewTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_5

    .line 157
    :pswitch_3b
    invoke-virtual/range {p0 .. p0}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    :goto_5
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6a88dc9c -> :sswitch_3b
        -0x69b090b6 -> :sswitch_3a
        -0x60d253d5 -> :sswitch_39
        -0x4f5bd10b -> :sswitch_38
        -0x4f5bd10a -> :sswitch_37
        -0x4e0b0fbd -> :sswitch_36
        -0x4a7789c7 -> :sswitch_35
        -0x4a012e11 -> :sswitch_34
        -0x3f9d4d33 -> :sswitch_33
        -0x3b59fa76 -> :sswitch_32
        -0x38833526 -> :sswitch_31
        -0x37b57e67 -> :sswitch_30
        -0x37b237d3 -> :sswitch_2f
        -0x2d410ecb -> :sswitch_2e
        -0x2d106975 -> :sswitch_2d
        -0x29807c76 -> :sswitch_2c
        -0x29807ba8 -> :sswitch_2b
        -0x287e8fb4 -> :sswitch_2a
        -0x28785945 -> :sswitch_29
        -0x2064708c -> :sswitch_28
        -0x17f88ffc -> :sswitch_27
        -0x17f88dd8 -> :sswitch_26
        -0x17518f51 -> :sswitch_25
        -0x12f8b743 -> :sswitch_24
        -0x12e5de21 -> :sswitch_23
        -0xe7dd74e -> :sswitch_22
        -0xcac3d98 -> :sswitch_21
        -0x7a08722 -> :sswitch_20
        -0x68ee185 -> :sswitch_1f
        -0x32ce041 -> :sswitch_1e
        -0x1f169cf -> :sswitch_1d
        -0x10edb0a -> :sswitch_1c
        0x30dd42 -> :sswitch_1b
        0x35dafd -> :sswitch_1a
        0x5a5ddf8 -> :sswitch_19
        0x65825f6 -> :sswitch_18
        0xb9ed94d -> :sswitch_17
        0x141096a9 -> :sswitch_16
        0x1d5dd38c -> :sswitch_15
        0x2c211a37 -> :sswitch_14
        0x30b32a26 -> :sswitch_13
        0x33331bd1 -> :sswitch_12
        0x3e28c0f9 -> :sswitch_11
        0x402effa3 -> :sswitch_10
        0x410b6ca8 -> :sswitch_f
        0x4a4dcef6 -> :sswitch_e
        0x4e358861 -> :sswitch_d
        0x5aa2005b -> :sswitch_c
        0x5d985188 -> :sswitch_b
        0x66c50fdc -> :sswitch_a
        0x6714ace7 -> :sswitch_9
        0x6a1709ec -> :sswitch_8
        0x6bed5233 -> :sswitch_7
        0x6dfa45b0 -> :sswitch_6
        0x6dfb4b82 -> :sswitch_5
        0x72420634 -> :sswitch_4
        0x72be6f8b -> :sswitch_3
        0x738236e6 -> :sswitch_2
        0x7520af94 -> :sswitch_1
        0x7531c8a2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 554
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 559
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 556
    :cond_0
    invoke-virtual {p0}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->finish()V

    const/4 p1, 0x0

    return p1
.end method

.method public onPauseWebView()V
    .locals 1

    .line 949
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 950
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->onPause()V

    :cond_0
    return-void
.end method

.method public onResumeWebView()V
    .locals 1

    .line 954
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 955
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->onResume()V

    :cond_0
    return-void
.end method

.method public pageDown(Z)Z
    .locals 1

    .line 1018
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 1019
    invoke-virtual {v0, p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->pageDown(Z)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public pageUp(Z)Z
    .locals 1

    .line 1024
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 1025
    invoke-virtual {v0, p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->pageUp(Z)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public pauseTimers()V
    .locals 1

    .line 959
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 960
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->pauseTimers()V

    :cond_0
    return-void
.end method

.method public postUrl(Ljava/lang/String;[BLio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 658
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 659
    invoke-virtual {v0, p1, p2, p3}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->postUrl(Ljava/lang/String;[BLio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const-string p2, "InAppBrowserActivity"

    const-string v0, "webView is null"

    .line 661
    invoke-interface {p3, p2, v0, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public printCurrentPage()V
    .locals 1

    .line 970
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 971
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->printCurrentPage()V

    :cond_0
    return-void
.end method

.method public reload()V
    .locals 1

    .line 712
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 713
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->reload()V

    :cond_0
    return-void
.end method

.method public reloadButtonClicked(Landroid/view/MenuItem;)V
    .locals 0

    .line 795
    invoke-virtual {p0}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->reload()V

    return-void
.end method

.method public requestFocusNodeHref()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1065
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 1066
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->requestFocusNodeHref()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public requestImageRef()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1071
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 1072
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->requestImageRef()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public resumeTimers()V
    .locals 1

    .line 964
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 965
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->resumeTimers()V

    :cond_0
    return-void
.end method

.method public saveWebArchive(Ljava/lang/String;ZLio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1030
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 1031
    new-instance v1, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr$8;

    invoke-direct {v1, p0, p3}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr$8;-><init>(Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;Lio/flutter/plugin/common/MethodChannel$Result;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->saveWebArchive(Ljava/lang/String;ZLandroid/webkit/ValueCallback;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1038
    invoke-interface {p3, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public scrollBy(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 1

    .line 944
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 945
    invoke-virtual {v0, p1, p2, p3}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->scrollBy(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method

.method public scrollTo(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 1

    .line 939
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 940
    invoke-virtual {v0, p1, p2, p3}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->scrollTo(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method

.method public setContextMenu(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1060
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 1061
    iput-object p1, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->contextMenu:Ljava/util/Map;

    :cond_0
    return-void
.end method

.method public setOptions(Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 811
    new-instance v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    invoke-direct {v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;-><init>()V

    .line 812
    invoke-virtual {v0, p2}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->parse(Ljava/util/Map;)Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    .line 813
    iget-object v1, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {v1, v0, p2}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->setOptions(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;Ljava/util/HashMap;)V

    const-string v0, "hidden"

    .line 815
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;->hidden:Ljava/lang/Boolean;

    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;->hidden:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_1

    .line 816
    iget-object v0, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;->hidden:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 817
    invoke-virtual {p0}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->hide()V

    goto :goto_0

    .line 819
    :cond_0
    invoke-virtual {p0}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->show()V

    :cond_1
    :goto_0
    const-string v0, "progressBar"

    .line 822
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;->progressBar:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;->progressBar:Ljava/lang/Boolean;

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->progressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_3

    .line 823
    iget-object v0, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;->progressBar:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 824
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    goto :goto_1

    .line 826
    :cond_2
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->progressBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    :cond_3
    :goto_1
    const-string v0, "hideTitleBar"

    .line 829
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;->hideTitleBar:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;->hideTitleBar:Ljava/lang/Boolean;

    if-eq v0, v3, :cond_4

    .line 830
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->actionBar:Landroidx/appcompat/app/ActionBar;

    iget-object v3, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;->hideTitleBar:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    xor-int/2addr v3, v2

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    :cond_4
    const-string v0, "toolbarTop"

    .line 832
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;->toolbarTop:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;->toolbarTop:Ljava/lang/Boolean;

    if-eq v0, v3, :cond_6

    .line 833
    iget-object v0, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;->toolbarTop:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    .line 834
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->actionBar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->hide()V

    goto :goto_2

    .line 836
    :cond_5
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->actionBar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->show()V

    :cond_6
    :goto_2
    const-string v0, "toolbarTopBackgroundColor"

    .line 839
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;->toolbarTopBackgroundColor:Ljava/lang/String;

    iget-object v3, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;->toolbarTopBackgroundColor:Ljava/lang/String;

    if-eq v0, v3, :cond_7

    iget-object v0, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;->toolbarTopBackgroundColor:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 840
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->actionBar:Landroidx/appcompat/app/ActionBar;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    iget-object v4, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;->toolbarTopBackgroundColor:Ljava/lang/String;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    const-string v0, "toolbarTopFixedTitle"

    .line 842
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;

    iget-object v0, v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;->toolbarTopFixedTitle:Ljava/lang/String;

    iget-object v3, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;->toolbarTopFixedTitle:Ljava/lang/String;

    if-eq v0, v3, :cond_8

    iget-object v0, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;->toolbarTopFixedTitle:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 843
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->actionBar:Landroidx/appcompat/app/ActionBar;

    iget-object v3, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;->toolbarTopFixedTitle:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_8
    const-string v0, "hideUrlBar"

    .line 845
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_a

    iget-object p2, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;

    iget-object p2, p2, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;->hideUrlBar:Ljava/lang/Boolean;

    iget-object v0, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;->hideUrlBar:Ljava/lang/Boolean;

    if-eq p2, v0, :cond_a

    .line 846
    iget-object p2, p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;->hideUrlBar:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 847
    iget-object p2, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->menu:Landroid/view/Menu;

    sget v0, Lcom/pichillilorenzo/flutter_inappwebview/R$id;->menu_search:I

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    invoke-interface {p2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    .line 849
    :cond_9
    iget-object p2, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->menu:Landroid/view/Menu;

    sget v0, Lcom/pichillilorenzo/flutter_inappwebview/R$id;->menu_search:I

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    invoke-interface {p2, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 852
    :cond_a
    :goto_3
    iput-object p1, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->options:Lcom/pichillilorenzo/flutter_inappwebview/InAppBrowser/InAppBrowserOptions;

    return-void
.end method

.method public shareButtonClicked(Landroid/view/MenuItem;)V
    .locals 2

    .line 788
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "text/plain"

    .line 789
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 790
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "Share"

    .line 791
    invoke-static {p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public show()V
    .locals 3

    const/4 v0, 0x0

    .line 762
    iput-boolean v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->isHidden:Z

    .line 763
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x20000

    .line 764
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 765
    invoke-virtual {p0, v1, v0}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    return-void
.end method

.method public startSafeBrowsing(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 894
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    const-string v0, "START_SAFE_BROWSING"

    .line 895
    invoke-static {v0}, Landroidx/webkit/WebViewFeature;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 896
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr$7;

    invoke-direct {v1, p0, p1}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr$7;-><init>(Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;Lio/flutter/plugin/common/MethodChannel$Result;)V

    invoke-static {v0, v1}, Landroidx/webkit/WebViewCompat;->startSafeBrowsing(Landroid/content/Context;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 903
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public stopLoading()V
    .locals 1

    .line 769
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 770
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->stopLoading()V

    :cond_0
    return-void
.end method

.method public takeScreenshot(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 803
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 804
    invoke-virtual {v0, p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->takeScreenshot(Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 806
    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public zoomBy(Ljava/lang/Float;)V
    .locals 1

    .line 982
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 983
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->zoomBy(F)V

    :cond_0
    return-void
.end method

.method public zoomIn()Z
    .locals 1

    .line 1043
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 1044
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->zoomIn()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public zoomOut()Z
    .locals 1

    .line 1049
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->webView:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    if-eqz v0, :cond_0

    .line 1050
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->zoomOut()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
