.class public Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;
.super Ljava/lang/Object;
.source "InAppWebViewOptions.java"

# interfaces
.implements Lcom/pichillilorenzo/flutter_inappwebview/Options;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/pichillilorenzo/flutter_inappwebview/Options<",
        "Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;",
        ">;"
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "InAppWebViewOptions"


# instance fields
.field public allowContentAccess:Ljava/lang/Boolean;

.field public allowFileAccess:Ljava/lang/Boolean;

.field public allowFileAccessFromFileURLs:Ljava/lang/Boolean;

.field public allowUniversalAccessFromFileURLs:Ljava/lang/Boolean;

.field public appCachePath:Ljava/lang/String;

.field public applicationNameForUserAgent:Ljava/lang/String;

.field public blockNetworkImage:Ljava/lang/Boolean;

.field public blockNetworkLoads:Ljava/lang/Boolean;

.field public builtInZoomControls:Ljava/lang/Boolean;

.field public cacheEnabled:Ljava/lang/Boolean;

.field public cacheMode:Ljava/lang/Integer;

.field public clearCache:Ljava/lang/Boolean;

.field public clearSessionCache:Ljava/lang/Boolean;

.field public contentBlockers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public cursiveFontFamily:Ljava/lang/String;

.field public databaseEnabled:Ljava/lang/Boolean;

.field public debuggingEnabled:Ljava/lang/Boolean;

.field public defaultFixedFontSize:Ljava/lang/Integer;

.field public defaultFontSize:Ljava/lang/Integer;

.field public defaultTextEncodingName:Ljava/lang/String;

.field public disableContextMenu:Ljava/lang/Boolean;

.field public disableDefaultErrorPage:Ljava/lang/Boolean;

.field public disableHorizontalScroll:Ljava/lang/Boolean;

.field public disableVerticalScroll:Ljava/lang/Boolean;

.field public disabledActionModeMenuItems:Ljava/lang/Integer;

.field public displayZoomControls:Ljava/lang/Boolean;

.field public domStorageEnabled:Ljava/lang/Boolean;

.field public fantasyFontFamily:Ljava/lang/String;

.field public fixedFontFamily:Ljava/lang/String;

.field public forceDark:Ljava/lang/Integer;

.field public geolocationEnabled:Ljava/lang/Boolean;

.field public hardwareAcceleration:Ljava/lang/Boolean;

.field public horizontalScrollBarEnabled:Ljava/lang/Boolean;

.field public incognito:Ljava/lang/Boolean;

.field public initialScale:Ljava/lang/Integer;

.field public javaScriptCanOpenWindowsAutomatically:Ljava/lang/Boolean;

.field public javaScriptEnabled:Ljava/lang/Boolean;

.field public layoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

.field public loadWithOverviewMode:Ljava/lang/Boolean;

.field public loadsImagesAutomatically:Ljava/lang/Boolean;

.field public mediaPlaybackRequiresUserGesture:Ljava/lang/Boolean;

.field public minimumFontSize:Ljava/lang/Integer;

.field public minimumLogicalFontSize:Ljava/lang/Integer;

.field public mixedContentMode:Ljava/lang/Integer;

.field public needInitialFocus:Ljava/lang/Boolean;

.field public networkAvailable:Ljava/lang/Boolean;

.field public offscreenPreRaster:Ljava/lang/Boolean;

.field public overScrollMode:Ljava/lang/Integer;

.field public preferredContentMode:Ljava/lang/Integer;

.field public regexToCancelSubFramesLoading:Ljava/lang/String;

.field public rendererPriorityPolicy:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public resourceCustomSchemes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public safeBrowsingEnabled:Ljava/lang/Boolean;

.field public sansSerifFontFamily:Ljava/lang/String;

.field public saveFormData:Ljava/lang/Boolean;

.field public scrollBarDefaultDelayBeforeFade:Ljava/lang/Integer;

.field public scrollBarFadeDuration:Ljava/lang/Integer;

.field public scrollBarStyle:Ljava/lang/Integer;

.field public scrollbarFadingEnabled:Ljava/lang/Boolean;

.field public serifFontFamily:Ljava/lang/String;

.field public standardFontFamily:Ljava/lang/String;

.field public supportMultipleWindows:Ljava/lang/Boolean;

.field public supportZoom:Ljava/lang/Boolean;

.field public textZoom:Ljava/lang/Integer;

.field public thirdPartyCookiesEnabled:Ljava/lang/Boolean;

.field public transparentBackground:Ljava/lang/Boolean;

.field public useOnDownloadStart:Ljava/lang/Boolean;

.field public useOnLoadResource:Ljava/lang/Boolean;

.field public useOnRenderProcessGone:Ljava/lang/Boolean;

.field public useShouldInterceptAjaxRequest:Ljava/lang/Boolean;

.field public useShouldInterceptFetchRequest:Ljava/lang/Boolean;

.field public useShouldInterceptRequest:Ljava/lang/Boolean;

.field public useShouldOverrideUrlLoading:Ljava/lang/Boolean;

.field public useWideViewPort:Ljava/lang/Boolean;

.field public userAgent:Ljava/lang/String;

.field public verticalScrollBarEnabled:Ljava/lang/Boolean;

.field public verticalScrollbarPosition:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->useShouldOverrideUrlLoading:Ljava/lang/Boolean;

    .line 23
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->useOnLoadResource:Ljava/lang/Boolean;

    .line 24
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->useOnDownloadStart:Ljava/lang/Boolean;

    .line 25
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->clearCache:Ljava/lang/Boolean;

    const-string v2, ""

    .line 26
    iput-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->userAgent:Ljava/lang/String;

    .line 27
    iput-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->applicationNameForUserAgent:Ljava/lang/String;

    const/4 v2, 0x1

    .line 28
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->javaScriptEnabled:Ljava/lang/Boolean;

    .line 29
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->debuggingEnabled:Ljava/lang/Boolean;

    .line 30
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->javaScriptCanOpenWindowsAutomatically:Ljava/lang/Boolean;

    .line 31
    iput-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->mediaPlaybackRequiresUserGesture:Ljava/lang/Boolean;

    const/16 v4, 0x8

    .line 32
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->minimumFontSize:Ljava/lang/Integer;

    .line 33
    iput-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->verticalScrollBarEnabled:Ljava/lang/Boolean;

    .line 34
    iput-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->horizontalScrollBarEnabled:Ljava/lang/Boolean;

    .line 35
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->resourceCustomSchemes:Ljava/util/List;

    .line 36
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->contentBlockers:Ljava/util/List;

    .line 37
    sget-object v5, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/PreferredContentModeOptionType;->RECOMMENDED:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/PreferredContentModeOptionType;

    invoke-virtual {v5}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/PreferredContentModeOptionType;->toValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->preferredContentMode:Ljava/lang/Integer;

    .line 38
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->useShouldInterceptAjaxRequest:Ljava/lang/Boolean;

    .line 39
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->useShouldInterceptFetchRequest:Ljava/lang/Boolean;

    .line 40
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->incognito:Ljava/lang/Boolean;

    .line 41
    iput-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->cacheEnabled:Ljava/lang/Boolean;

    .line 42
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->transparentBackground:Ljava/lang/Boolean;

    .line 43
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->disableVerticalScroll:Ljava/lang/Boolean;

    .line 44
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->disableHorizontalScroll:Ljava/lang/Boolean;

    .line 45
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->disableContextMenu:Ljava/lang/Boolean;

    .line 46
    iput-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->supportZoom:Ljava/lang/Boolean;

    const/16 v5, 0x64

    .line 48
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->textZoom:Ljava/lang/Integer;

    .line 49
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->clearSessionCache:Ljava/lang/Boolean;

    .line 50
    iput-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->builtInZoomControls:Ljava/lang/Boolean;

    .line 51
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->displayZoomControls:Ljava/lang/Boolean;

    .line 52
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->databaseEnabled:Ljava/lang/Boolean;

    .line 53
    iput-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->domStorageEnabled:Ljava/lang/Boolean;

    .line 54
    iput-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->useWideViewPort:Ljava/lang/Boolean;

    .line 55
    iput-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->safeBrowsingEnabled:Ljava/lang/Boolean;

    .line 57
    iput-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->allowContentAccess:Ljava/lang/Boolean;

    .line 58
    iput-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->allowFileAccess:Ljava/lang/Boolean;

    .line 59
    iput-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->allowFileAccessFromFileURLs:Ljava/lang/Boolean;

    .line 60
    iput-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->allowUniversalAccessFromFileURLs:Ljava/lang/Boolean;

    .line 62
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->blockNetworkImage:Ljava/lang/Boolean;

    .line 63
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->blockNetworkLoads:Ljava/lang/Boolean;

    const/4 v5, -0x1

    .line 64
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->cacheMode:Ljava/lang/Integer;

    const-string v5, "cursive"

    .line 65
    iput-object v5, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->cursiveFontFamily:Ljava/lang/String;

    const/16 v5, 0x10

    .line 66
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->defaultFixedFontSize:Ljava/lang/Integer;

    .line 67
    iput-object v5, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->defaultFontSize:Ljava/lang/Integer;

    const-string v5, "UTF-8"

    .line 68
    iput-object v5, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->defaultTextEncodingName:Ljava/lang/String;

    const-string v5, "fantasy"

    .line 70
    iput-object v5, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->fantasyFontFamily:Ljava/lang/String;

    const-string v5, "monospace"

    .line 71
    iput-object v5, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->fixedFontFamily:Ljava/lang/String;

    .line 72
    iput-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->forceDark:Ljava/lang/Integer;

    .line 73
    iput-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->geolocationEnabled:Ljava/lang/Boolean;

    .line 75
    iput-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->loadWithOverviewMode:Ljava/lang/Boolean;

    .line 76
    iput-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->loadsImagesAutomatically:Ljava/lang/Boolean;

    .line 77
    iput-object v4, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->minimumLogicalFontSize:Ljava/lang/Integer;

    .line 78
    iput-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->initialScale:Ljava/lang/Integer;

    .line 79
    iput-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->needInitialFocus:Ljava/lang/Boolean;

    .line 80
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->offscreenPreRaster:Ljava/lang/Boolean;

    const-string v4, "sans-serif"

    .line 81
    iput-object v4, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->sansSerifFontFamily:Ljava/lang/String;

    .line 82
    iput-object v4, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->serifFontFamily:Ljava/lang/String;

    .line 83
    iput-object v4, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->standardFontFamily:Ljava/lang/String;

    .line 84
    iput-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->saveFormData:Ljava/lang/Boolean;

    .line 85
    iput-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->thirdPartyCookiesEnabled:Ljava/lang/Boolean;

    .line 86
    iput-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->hardwareAcceleration:Ljava/lang/Boolean;

    .line 87
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->supportMultipleWindows:Ljava/lang/Boolean;

    .line 89
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->overScrollMode:Ljava/lang/Integer;

    const/4 v2, 0x0

    .line 90
    iput-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->networkAvailable:Ljava/lang/Boolean;

    .line 91
    iput-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->scrollBarStyle:Ljava/lang/Integer;

    .line 92
    iput-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->verticalScrollbarPosition:Ljava/lang/Integer;

    .line 93
    iput-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->scrollBarDefaultDelayBeforeFade:Ljava/lang/Integer;

    .line 94
    iput-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->scrollbarFadingEnabled:Ljava/lang/Boolean;

    .line 95
    iput-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->scrollBarFadeDuration:Ljava/lang/Integer;

    .line 96
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->rendererPriorityPolicy:Ljava/util/Map;

    .line 97
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->useShouldInterceptRequest:Ljava/lang/Boolean;

    .line 98
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->useOnRenderProcessGone:Ljava/lang/Boolean;

    .line 99
    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->disableDefaultErrorPage:Ljava/lang/Boolean;

    return-void
.end method

.method private getLayoutAlgorithm()Ljava/lang/String;
    .locals 3

    .line 522
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->layoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    if-eqz v0, :cond_3

    .line 523
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions$1;->$SwitchMap$android$webkit$WebSettings$LayoutAlgorithm:[I

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->layoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v1}, Landroid/webkit/WebSettings$LayoutAlgorithm;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-string v2, "NORMAL"

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "NARROW_COLUMNS"

    return-object v0

    .line 527
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    const-string v0, "TEXT_AUTOSIZING"

    return-object v0

    :cond_2
    return-object v2

    :cond_3
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private setLayoutAlgorithm(Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_8

    const/4 v0, -0x1

    .line 505
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x76664f19    # -3.699977E-33f

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v2, :cond_2

    const v2, 0x3ee2bbd9

    if-eq v1, v2, :cond_1

    const v2, 0x5d17953f

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "TEXT_AUTOSIZING"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move v0, v3

    goto :goto_0

    :cond_1
    const-string v1, "NARROW_COLUMNS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const-string v1, "NORMAL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move v0, v4

    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    if-eq v0, v4, :cond_5

    if-eq v0, v3, :cond_6

    goto :goto_1

    .line 507
    :cond_4
    sget-object p1, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->layoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 509
    :cond_5
    sget-object p1, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->layoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 511
    :cond_6
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p1, v0, :cond_7

    .line 512
    sget-object p1, Landroid/webkit/WebSettings$LayoutAlgorithm;->TEXT_AUTOSIZING:Landroid/webkit/WebSettings$LayoutAlgorithm;

    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->layoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    goto :goto_1

    .line 514
    :cond_7
    sget-object p1, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->layoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    :cond_8
    :goto_1
    return-void
.end method


# virtual methods
.method public getRealOptions(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 433
    invoke-virtual {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->toMap()Ljava/util/Map;

    move-result-object v0

    if-eqz p1, :cond_5

    .line 435
    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 436
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "userAgent"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "javaScriptEnabled"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getJavaScriptCanOpenWindowsAutomatically()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "javaScriptCanOpenWindowsAutomatically"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getMediaPlaybackRequiresUserGesture()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "mediaPlaybackRequiresUserGesture"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getMinimumFontSize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "minimumFontSize"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->isVerticalScrollBarEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "verticalScrollBarEnabled"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->isHorizontalScrollBarEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "horizontalScrollBarEnabled"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getTextZoom()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "textZoom"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getBuiltInZoomControls()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "builtInZoomControls"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->supportZoom()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "supportZoom"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getDisplayZoomControls()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "displayZoomControls"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getDatabaseEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "databaseEnabled"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getDomStorageEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "domStorageEnabled"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "useWideViewPort"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    .line 451
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getSafeBrowsingEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v4, "safeBrowsingEnabled"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v2, v4, :cond_1

    .line 454
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getMixedContentMode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "mixedContentMode"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    :cond_1
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getAllowContentAccess()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v4, "allowContentAccess"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getAllowFileAccess()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v4, "allowFileAccess"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getAllowFileAccessFromFileURLs()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v4, "allowFileAccessFromFileURLs"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getAllowUniversalAccessFromFileURLs()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v4, "allowUniversalAccessFromFileURLs"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getBlockNetworkImage()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v4, "blockNetworkImage"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getBlockNetworkLoads()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v4, "blockNetworkLoads"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getCacheMode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "cacheMode"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getCursiveFontFamily()Ljava/lang/String;

    move-result-object v2

    const-string v4, "cursiveFontFamily"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getDefaultFixedFontSize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "defaultFixedFontSize"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getDefaultFontSize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "defaultFontSize"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getDefaultTextEncodingName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "defaultTextEncodingName"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v2, v4, :cond_2

    .line 468
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getDisabledActionModeMenuItems()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "disabledActionModeMenuItems"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    :cond_2
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getFantasyFontFamily()Ljava/lang/String;

    move-result-object v2

    const-string v4, "fantasyFontFamily"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getFixedFontFamily()Ljava/lang/String;

    move-result-object v2

    const-string v4, "fixedFontFamily"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v2, v4, :cond_3

    .line 473
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getForceDark()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "forceDark"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    :cond_3
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getLayoutAlgorithm()Landroid/webkit/WebSettings$LayoutAlgorithm;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings$LayoutAlgorithm;->name()Ljava/lang/String;

    move-result-object v2

    const-string v4, "layoutAlgorithm"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getLoadWithOverviewMode()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v4, "loadWithOverviewMode"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getLoadsImagesAutomatically()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v4, "loadsImagesAutomatically"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getMinimumLogicalFontSize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "minimumLogicalFontSize"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v2, v4, :cond_4

    .line 480
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getOffscreenPreRaster()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v4, "offscreenPreRaster"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    :cond_4
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getSansSerifFontFamily()Ljava/lang/String;

    move-result-object v2

    const-string v4, "sansSerifFontFamily"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getSerifFontFamily()Ljava/lang/String;

    move-result-object v2

    const-string v4, "serifFontFamily"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getStandardFontFamily()Ljava/lang/String;

    move-result-object v2

    const-string v4, "standardFontFamily"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getSaveFormData()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v4, "saveFormData"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->supportMultipleWindows()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "supportMultipleWindows"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getOverScrollMode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "overScrollMode"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getScrollBarStyle()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "scrollBarStyle"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getVerticalScrollbarPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "verticalScrollbarPosition"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getScrollBarDefaultDelayBeforeFade()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "scrollBarDefaultDelayBeforeFade"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->isScrollbarFadingEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "scrollbarFadingEnabled"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getScrollBarFadeDuration()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "scrollBarFadeDuration"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_5

    .line 494
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 495
    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getRendererRequestedPriority()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "rendererRequestedPriority"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;->getRendererPriorityWaivedWhenNotVisible()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v2, "waivedWhenNotVisible"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "rendererPriorityPolicy"

    .line 497
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-object v0
.end method

.method public bridge synthetic getRealOptions(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0

    .line 18
    check-cast p1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;

    invoke-virtual {p0, p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->getRealOptions(Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/util/Map;)Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;"
        }
    .end annotation

    .line 103
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 104
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 105
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    .line 110
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v3, "clearSessionCache"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x19

    goto/16 :goto_1

    :sswitch_1
    const-string v3, "verticalScrollBarEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0xb

    goto/16 :goto_1

    :sswitch_2
    const-string v3, "minimumLogicalFontSize"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x36

    goto/16 :goto_1

    :sswitch_3
    const-string v3, "thirdPartyCookiesEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x3e

    goto/16 :goto_1

    :sswitch_4
    const-string v3, "defaultFixedFontSize"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x2b

    goto/16 :goto_1

    :sswitch_5
    const-string v3, "supportMultipleWindows"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x40

    goto/16 :goto_1

    :sswitch_6
    const-string v3, "contentBlockers"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0xe

    goto/16 :goto_1

    :sswitch_7
    const-string v3, "disableDefaultErrorPage"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x4c

    goto/16 :goto_1

    :sswitch_8
    const-string v3, "forceDark"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x31

    goto/16 :goto_1

    :sswitch_9
    const-string v3, "serifFontFamily"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x3b

    goto/16 :goto_1

    :sswitch_a
    const-string v3, "safeBrowsingEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x20

    goto/16 :goto_1

    :sswitch_b
    const-string v3, "loadWithOverviewMode"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x34

    goto/16 :goto_1

    :sswitch_c
    const-string v3, "geolocationEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x32

    goto/16 :goto_1

    :sswitch_d
    const-string v3, "displayZoomControls"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x1b

    goto/16 :goto_1

    :sswitch_e
    const-string v3, "standardFontFamily"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x3c

    goto/16 :goto_1

    :sswitch_f
    const-string v3, "appCachePath"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x26

    goto/16 :goto_1

    :sswitch_10
    const-string v3, "allowFileAccess"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x23

    goto/16 :goto_1

    :sswitch_11
    const-string v3, "scrollBarFadeDuration"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x48

    goto/16 :goto_1

    :sswitch_12
    const-string v3, "mixedContentMode"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x21

    goto/16 :goto_1

    :sswitch_13
    const-string v3, "applicationNameForUserAgent"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x5

    goto/16 :goto_1

    :sswitch_14
    const-string v3, "saveFormData"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x3d

    goto/16 :goto_1

    :sswitch_15
    const-string v3, "cacheEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x13

    goto/16 :goto_1

    :sswitch_16
    const-string v3, "useOnLoadResource"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    goto/16 :goto_1

    :sswitch_17
    const-string v3, "useOnRenderProcessGone"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x4b

    goto/16 :goto_1

    :sswitch_18
    const-string v3, "userAgent"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x4

    goto/16 :goto_1

    :sswitch_19
    const-string v3, "blockNetworkLoads"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x28

    goto/16 :goto_1

    :sswitch_1a
    const-string v3, "blockNetworkImage"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x27

    goto/16 :goto_1

    :sswitch_1b
    const-string v3, "mediaPlaybackRequiresUserGesture"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x9

    goto/16 :goto_1

    :sswitch_1c
    const-string v3, "cursiveFontFamily"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x2a

    goto/16 :goto_1

    :sswitch_1d
    const-string v3, "useOnDownloadStart"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    goto/16 :goto_1

    :sswitch_1e
    const-string v3, "regexToCancelSubFramesLoading"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x41

    goto/16 :goto_1

    :sswitch_1f
    const-string v3, "sansSerifFontFamily"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x3a

    goto/16 :goto_1

    :sswitch_20
    const-string v3, "rendererPriorityPolicy"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x49

    goto/16 :goto_1

    :sswitch_21
    const-string v3, "fantasyFontFamily"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x2f

    goto/16 :goto_1

    :sswitch_22
    const-string v3, "offscreenPreRaster"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x39

    goto/16 :goto_1

    :sswitch_23
    const-string v3, "javaScriptCanOpenWindowsAutomatically"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x8

    goto/16 :goto_1

    :sswitch_24
    const-string v3, "disableVerticalScroll"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x15

    goto/16 :goto_1

    :sswitch_25
    const-string v3, "verticalScrollbarPosition"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x45

    goto/16 :goto_1

    :sswitch_26
    const-string v3, "initialScale"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x37

    goto/16 :goto_1

    :sswitch_27
    const-string v3, "scrollBarStyle"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x44

    goto/16 :goto_1

    :sswitch_28
    const-string v3, "horizontalScrollBarEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0xc

    goto/16 :goto_1

    :sswitch_29
    const-string v3, "cacheMode"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x29

    goto/16 :goto_1

    :sswitch_2a
    const-string v3, "useShouldInterceptRequest"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x4a

    goto/16 :goto_1

    :sswitch_2b
    const-string v3, "databaseEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x1d

    goto/16 :goto_1

    :sswitch_2c
    const-string v3, "allowUniversalAccessFromFileURLs"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x25

    goto/16 :goto_1

    :sswitch_2d
    const-string v3, "transparentBackground"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x14

    goto/16 :goto_1

    :sswitch_2e
    const-string v3, "clearCache"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x3

    goto/16 :goto_1

    :sswitch_2f
    const-string v3, "layoutAlgorithm"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x33

    goto/16 :goto_1

    :sswitch_30
    const-string v3, "minimumFontSize"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0xa

    goto/16 :goto_1

    :sswitch_31
    const-string v3, "textZoom"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x18

    goto/16 :goto_1

    :sswitch_32
    const-string v3, "useShouldInterceptAjaxRequest"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x10

    goto/16 :goto_1

    :sswitch_33
    const-string v3, "debuggingEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x7

    goto/16 :goto_1

    :sswitch_34
    const-string v3, "disableContextMenu"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x17

    goto/16 :goto_1

    :sswitch_35
    const-string v3, "domStorageEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x1e

    goto/16 :goto_1

    :sswitch_36
    const-string v3, "overScrollMode"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x42

    goto/16 :goto_1

    :sswitch_37
    const-string v3, "incognito"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x12

    goto/16 :goto_1

    :sswitch_38
    const-string v3, "disabledActionModeMenuItems"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x2e

    goto/16 :goto_1

    :sswitch_39
    const-string v3, "resourceCustomSchemes"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0xd

    goto/16 :goto_1

    :sswitch_3a
    const-string v3, "loadsImagesAutomatically"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x35

    goto/16 :goto_1

    :sswitch_3b
    const-string v3, "useShouldInterceptFetchRequest"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x11

    goto/16 :goto_1

    :sswitch_3c
    const-string v3, "networkAvailable"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x43

    goto/16 :goto_1

    :sswitch_3d
    const-string v3, "hardwareAcceleration"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x3f

    goto/16 :goto_1

    :sswitch_3e
    const-string v3, "javaScriptEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x6

    goto/16 :goto_1

    :sswitch_3f
    const-string v3, "builtInZoomControls"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x1a

    goto/16 :goto_1

    :sswitch_40
    const-string v3, "fixedFontFamily"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x30

    goto/16 :goto_1

    :sswitch_41
    const-string v3, "allowContentAccess"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x22

    goto/16 :goto_1

    :sswitch_42
    const-string v3, "preferredContentMode"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0xf

    goto/16 :goto_1

    :sswitch_43
    const-string v3, "useShouldOverrideUrlLoading"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_44
    const-string v3, "needInitialFocus"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x38

    goto :goto_1

    :sswitch_45
    const-string v3, "defaultTextEncodingName"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x2d

    goto :goto_1

    :sswitch_46
    const-string v3, "scrollbarFadingEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x47

    goto :goto_1

    :sswitch_47
    const-string v3, "supportZoom"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x1c

    goto :goto_1

    :sswitch_48
    const-string v3, "defaultFontSize"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x2c

    goto :goto_1

    :sswitch_49
    const-string v3, "allowFileAccessFromFileURLs"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x24

    goto :goto_1

    :sswitch_4a
    const-string v3, "useWideViewPort"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x1f

    goto :goto_1

    :sswitch_4b
    const-string v3, "scrollBarDefaultDelayBeforeFade"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x46

    goto :goto_1

    :sswitch_4c
    const-string v3, "disableHorizontalScroll"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x16

    :cond_1
    :goto_1
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    .line 340
    :pswitch_0
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->disableDefaultErrorPage:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 337
    :pswitch_1
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->useOnRenderProcessGone:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 334
    :pswitch_2
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->useShouldInterceptRequest:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 331
    :pswitch_3
    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->rendererPriorityPolicy:Ljava/util/Map;

    goto/16 :goto_0

    .line 328
    :pswitch_4
    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->scrollBarFadeDuration:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 325
    :pswitch_5
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->scrollbarFadingEnabled:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 322
    :pswitch_6
    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->scrollBarDefaultDelayBeforeFade:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 319
    :pswitch_7
    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->verticalScrollbarPosition:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 316
    :pswitch_8
    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->scrollBarStyle:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 313
    :pswitch_9
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->networkAvailable:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 310
    :pswitch_a
    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->overScrollMode:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 307
    :pswitch_b
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->regexToCancelSubFramesLoading:Ljava/lang/String;

    goto/16 :goto_0

    .line 304
    :pswitch_c
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->supportMultipleWindows:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 301
    :pswitch_d
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->hardwareAcceleration:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 298
    :pswitch_e
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->thirdPartyCookiesEnabled:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 295
    :pswitch_f
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->saveFormData:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 292
    :pswitch_10
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->standardFontFamily:Ljava/lang/String;

    goto/16 :goto_0

    .line 289
    :pswitch_11
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->serifFontFamily:Ljava/lang/String;

    goto/16 :goto_0

    .line 286
    :pswitch_12
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->sansSerifFontFamily:Ljava/lang/String;

    goto/16 :goto_0

    .line 283
    :pswitch_13
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->offscreenPreRaster:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 280
    :pswitch_14
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->needInitialFocus:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 277
    :pswitch_15
    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->initialScale:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 274
    :pswitch_16
    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->minimumLogicalFontSize:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 271
    :pswitch_17
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->loadsImagesAutomatically:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 268
    :pswitch_18
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->loadWithOverviewMode:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 265
    :pswitch_19
    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->setLayoutAlgorithm(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 262
    :pswitch_1a
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->geolocationEnabled:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 259
    :pswitch_1b
    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->forceDark:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 256
    :pswitch_1c
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->fixedFontFamily:Ljava/lang/String;

    goto/16 :goto_0

    .line 253
    :pswitch_1d
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->fantasyFontFamily:Ljava/lang/String;

    goto/16 :goto_0

    .line 250
    :pswitch_1e
    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->disabledActionModeMenuItems:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 247
    :pswitch_1f
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->defaultTextEncodingName:Ljava/lang/String;

    goto/16 :goto_0

    .line 244
    :pswitch_20
    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->defaultFontSize:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 241
    :pswitch_21
    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->defaultFixedFontSize:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 238
    :pswitch_22
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->cursiveFontFamily:Ljava/lang/String;

    goto/16 :goto_0

    .line 235
    :pswitch_23
    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->cacheMode:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 232
    :pswitch_24
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->blockNetworkLoads:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 229
    :pswitch_25
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->blockNetworkImage:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 226
    :pswitch_26
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->appCachePath:Ljava/lang/String;

    goto/16 :goto_0

    .line 223
    :pswitch_27
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->allowUniversalAccessFromFileURLs:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 220
    :pswitch_28
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->allowFileAccessFromFileURLs:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 217
    :pswitch_29
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->allowFileAccess:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 214
    :pswitch_2a
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->allowContentAccess:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 211
    :pswitch_2b
    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->mixedContentMode:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 208
    :pswitch_2c
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->safeBrowsingEnabled:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 205
    :pswitch_2d
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->useWideViewPort:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 202
    :pswitch_2e
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->domStorageEnabled:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 199
    :pswitch_2f
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->databaseEnabled:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 196
    :pswitch_30
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->supportZoom:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 193
    :pswitch_31
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->displayZoomControls:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 190
    :pswitch_32
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->builtInZoomControls:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 187
    :pswitch_33
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->clearSessionCache:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 184
    :pswitch_34
    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->textZoom:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 181
    :pswitch_35
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->disableContextMenu:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 178
    :pswitch_36
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->disableHorizontalScroll:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 175
    :pswitch_37
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->disableVerticalScroll:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 172
    :pswitch_38
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->transparentBackground:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 169
    :pswitch_39
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->cacheEnabled:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 166
    :pswitch_3a
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->incognito:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 163
    :pswitch_3b
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->useShouldInterceptFetchRequest:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 160
    :pswitch_3c
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->useShouldInterceptAjaxRequest:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 157
    :pswitch_3d
    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->preferredContentMode:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 154
    :pswitch_3e
    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->contentBlockers:Ljava/util/List;

    goto/16 :goto_0

    .line 151
    :pswitch_3f
    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->resourceCustomSchemes:Ljava/util/List;

    goto/16 :goto_0

    .line 148
    :pswitch_40
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->horizontalScrollBarEnabled:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 145
    :pswitch_41
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->verticalScrollBarEnabled:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 142
    :pswitch_42
    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->minimumFontSize:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 139
    :pswitch_43
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->mediaPlaybackRequiresUserGesture:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 136
    :pswitch_44
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->javaScriptCanOpenWindowsAutomatically:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 133
    :pswitch_45
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->debuggingEnabled:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 130
    :pswitch_46
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->javaScriptEnabled:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 127
    :pswitch_47
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->applicationNameForUserAgent:Ljava/lang/String;

    goto/16 :goto_0

    .line 124
    :pswitch_48
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->userAgent:Ljava/lang/String;

    goto/16 :goto_0

    .line 121
    :pswitch_49
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->clearCache:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 118
    :pswitch_4a
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->useOnDownloadStart:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 115
    :pswitch_4b
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->useOnLoadResource:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 112
    :pswitch_4c
    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->useShouldOverrideUrlLoading:Ljava/lang/Boolean;

    goto/16 :goto_0

    :cond_2
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e28b4e7 -> :sswitch_4c
        -0x7cebb65d -> :sswitch_4b
        -0x7868fc20 -> :sswitch_4a
        -0x781574ed -> :sswitch_49
        -0x731cf5af -> :sswitch_48
        -0x6e5567be -> :sswitch_47
        -0x6dffcbbe -> :sswitch_46
        -0x6d510f54 -> :sswitch_45
        -0x68125c56 -> :sswitch_44
        -0x660c5e8d -> :sswitch_43
        -0x63c59185 -> :sswitch_42
        -0x62cc3d8c -> :sswitch_41
        -0x60f260d9 -> :sswitch_40
        -0x60448474 -> :sswitch_3f
        -0x5fd28b0c -> :sswitch_3e
        -0x5e1d0d78 -> :sswitch_3d
        -0x5e161bc5 -> :sswitch_3c
        -0x5dd881a3 -> :sswitch_3b
        -0x58404582 -> :sswitch_3a
        -0x56c312b1 -> :sswitch_39
        -0x560c6f74 -> :sswitch_38
        -0x54db4b54 -> :sswitch_37
        -0x4ec079fc -> :sswitch_36
        -0x4458d9d8 -> :sswitch_35
        -0x44248c5a -> :sswitch_34
        -0x3fc5838d -> :sswitch_33
        -0x3de98899 -> :sswitch_32
        -0x3bcf8160 -> :sswitch_31
        -0x2fb958e2 -> :sswitch_30
        -0x2dc1379b -> :sswitch_2f
        -0x2d410ecb -> :sswitch_2e
        -0x2c486fe0 -> :sswitch_2d
        -0x2b64a590 -> :sswitch_2c
        -0x2a557eba -> :sswitch_2b
        -0x2a207e59 -> :sswitch_2a
        -0x210233bb -> :sswitch_29
        -0x1a6e1561 -> :sswitch_28
        -0x19f88cb5 -> :sswitch_27
        -0x1919539a -> :sswitch_26
        -0x13288f67 -> :sswitch_25
        -0xda8fd15 -> :sswitch_24
        -0xd908e93 -> :sswitch_23
        -0xd6bc25b -> :sswitch_22
        -0xce7bfa7 -> :sswitch_21
        -0x96bc467 -> :sswitch_20
        -0x5dfef23 -> :sswitch_1f
        0x370b1b2 -> :sswitch_1e
        0xa665894 -> :sswitch_1d
        0xf5f0838 -> :sswitch_1c
        0x1049b9d1 -> :sswitch_1b
        0x11a538fa -> :sswitch_1a
        0x11d067ec -> :sswitch_19
        0x12900dfa -> :sswitch_18
        0x1714ab12 -> :sswitch_17
        0x17740bfa -> :sswitch_16
        0x17ad5d5f -> :sswitch_15
        0x185dc72b -> :sswitch_14
        0x2337f2cc -> :sswitch_13
        0x2d5b5ec1 -> :sswitch_12
        0x329d5556 -> :sswitch_11
        0x43d84229 -> :sswitch_10
        0x44f071a6 -> :sswitch_f
        0x4d9a0f30 -> :sswitch_e
        0x4eb4a58b -> :sswitch_d
        0x5022225b -> :sswitch_c
        0x5406bfa8 -> :sswitch_b
        0x57e9092d -> :sswitch_a
        0x5938b1f0 -> :sswitch_9
        0x5b0c8101 -> :sswitch_8
        0x5e66be7e -> :sswitch_7
        0x68d96d52 -> :sswitch_6
        0x69c06284 -> :sswitch_5
        0x6ae683c3 -> :sswitch_4
        0x6c08f151 -> :sswitch_3
        0x749fd22b -> :sswitch_2
        0x77ebe1f1 -> :sswitch_1
        0x797e6979 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
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

.method public bridge synthetic parse(Ljava/util/Map;)Lcom/pichillilorenzo/flutter_inappwebview/Options;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->parse(Ljava/util/Map;)Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;

    move-result-object p1

    return-object p1
.end method

.method public toMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 350
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 351
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->useShouldOverrideUrlLoading:Ljava/lang/Boolean;

    const-string v2, "useShouldOverrideUrlLoading"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->useOnLoadResource:Ljava/lang/Boolean;

    const-string v2, "useOnLoadResource"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->useOnDownloadStart:Ljava/lang/Boolean;

    const-string v2, "useOnDownloadStart"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->clearCache:Ljava/lang/Boolean;

    const-string v2, "clearCache"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->userAgent:Ljava/lang/String;

    const-string v2, "userAgent"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->applicationNameForUserAgent:Ljava/lang/String;

    const-string v2, "applicationNameForUserAgent"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->javaScriptEnabled:Ljava/lang/Boolean;

    const-string v2, "javaScriptEnabled"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->debuggingEnabled:Ljava/lang/Boolean;

    const-string v2, "debuggingEnabled"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->javaScriptCanOpenWindowsAutomatically:Ljava/lang/Boolean;

    const-string v2, "javaScriptCanOpenWindowsAutomatically"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->mediaPlaybackRequiresUserGesture:Ljava/lang/Boolean;

    const-string v2, "mediaPlaybackRequiresUserGesture"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->minimumFontSize:Ljava/lang/Integer;

    const-string v2, "minimumFontSize"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->verticalScrollBarEnabled:Ljava/lang/Boolean;

    const-string v2, "verticalScrollBarEnabled"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->horizontalScrollBarEnabled:Ljava/lang/Boolean;

    const-string v2, "horizontalScrollBarEnabled"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->resourceCustomSchemes:Ljava/util/List;

    const-string v2, "resourceCustomSchemes"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->contentBlockers:Ljava/util/List;

    const-string v2, "contentBlockers"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->preferredContentMode:Ljava/lang/Integer;

    const-string v2, "preferredContentMode"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->useShouldInterceptAjaxRequest:Ljava/lang/Boolean;

    const-string v2, "useShouldInterceptAjaxRequest"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->useShouldInterceptFetchRequest:Ljava/lang/Boolean;

    const-string v2, "useShouldInterceptFetchRequest"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->incognito:Ljava/lang/Boolean;

    const-string v2, "incognito"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->cacheEnabled:Ljava/lang/Boolean;

    const-string v2, "cacheEnabled"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->transparentBackground:Ljava/lang/Boolean;

    const-string v2, "transparentBackground"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->disableVerticalScroll:Ljava/lang/Boolean;

    const-string v2, "disableVerticalScroll"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->disableHorizontalScroll:Ljava/lang/Boolean;

    const-string v2, "disableHorizontalScroll"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->disableContextMenu:Ljava/lang/Boolean;

    const-string v2, "disableContextMenu"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->textZoom:Ljava/lang/Integer;

    const-string v2, "textZoom"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->clearSessionCache:Ljava/lang/Boolean;

    const-string v2, "clearSessionCache"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->builtInZoomControls:Ljava/lang/Boolean;

    const-string v2, "builtInZoomControls"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->displayZoomControls:Ljava/lang/Boolean;

    const-string v2, "displayZoomControls"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->supportZoom:Ljava/lang/Boolean;

    const-string v2, "supportZoom"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->databaseEnabled:Ljava/lang/Boolean;

    const-string v2, "databaseEnabled"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->domStorageEnabled:Ljava/lang/Boolean;

    const-string v2, "domStorageEnabled"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->useWideViewPort:Ljava/lang/Boolean;

    const-string v2, "useWideViewPort"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->safeBrowsingEnabled:Ljava/lang/Boolean;

    const-string v2, "safeBrowsingEnabled"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->mixedContentMode:Ljava/lang/Integer;

    const-string v2, "mixedContentMode"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->allowContentAccess:Ljava/lang/Boolean;

    const-string v2, "allowContentAccess"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->allowFileAccess:Ljava/lang/Boolean;

    const-string v2, "allowFileAccess"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->allowFileAccessFromFileURLs:Ljava/lang/Boolean;

    const-string v2, "allowFileAccessFromFileURLs"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->allowUniversalAccessFromFileURLs:Ljava/lang/Boolean;

    const-string v2, "allowUniversalAccessFromFileURLs"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->appCachePath:Ljava/lang/String;

    const-string v2, "appCachePath"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->blockNetworkImage:Ljava/lang/Boolean;

    const-string v2, "blockNetworkImage"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->blockNetworkLoads:Ljava/lang/Boolean;

    const-string v2, "blockNetworkLoads"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->cacheMode:Ljava/lang/Integer;

    const-string v2, "cacheMode"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->cursiveFontFamily:Ljava/lang/String;

    const-string v2, "cursiveFontFamily"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->defaultFixedFontSize:Ljava/lang/Integer;

    const-string v2, "defaultFixedFontSize"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->defaultFontSize:Ljava/lang/Integer;

    const-string v2, "defaultFontSize"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->defaultTextEncodingName:Ljava/lang/String;

    const-string v2, "defaultTextEncodingName"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->disabledActionModeMenuItems:Ljava/lang/Integer;

    const-string v2, "disabledActionModeMenuItems"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->fantasyFontFamily:Ljava/lang/String;

    const-string v2, "fantasyFontFamily"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->fixedFontFamily:Ljava/lang/String;

    const-string v2, "fixedFontFamily"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->forceDark:Ljava/lang/Integer;

    const-string v2, "forceDark"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->geolocationEnabled:Ljava/lang/Boolean;

    const-string v2, "geolocationEnabled"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    invoke-direct {p0}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->getLayoutAlgorithm()Ljava/lang/String;

    move-result-object v1

    const-string v2, "layoutAlgorithm"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->loadWithOverviewMode:Ljava/lang/Boolean;

    const-string v2, "loadWithOverviewMode"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->loadsImagesAutomatically:Ljava/lang/Boolean;

    const-string v2, "loadsImagesAutomatically"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->minimumLogicalFontSize:Ljava/lang/Integer;

    const-string v2, "minimumLogicalFontSize"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->initialScale:Ljava/lang/Integer;

    const-string v2, "initialScale"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->needInitialFocus:Ljava/lang/Boolean;

    const-string v2, "needInitialFocus"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->offscreenPreRaster:Ljava/lang/Boolean;

    const-string v2, "offscreenPreRaster"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->sansSerifFontFamily:Ljava/lang/String;

    const-string v2, "sansSerifFontFamily"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->serifFontFamily:Ljava/lang/String;

    const-string v2, "serifFontFamily"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->standardFontFamily:Ljava/lang/String;

    const-string v2, "standardFontFamily"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->saveFormData:Ljava/lang/Boolean;

    const-string v2, "saveFormData"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->thirdPartyCookiesEnabled:Ljava/lang/Boolean;

    const-string v2, "thirdPartyCookiesEnabled"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->hardwareAcceleration:Ljava/lang/Boolean;

    const-string v2, "hardwareAcceleration"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->supportMultipleWindows:Ljava/lang/Boolean;

    const-string v2, "supportMultipleWindows"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->regexToCancelSubFramesLoading:Ljava/lang/String;

    const-string v2, "regexToCancelSubFramesLoading"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->overScrollMode:Ljava/lang/Integer;

    const-string v2, "overScrollMode"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->networkAvailable:Ljava/lang/Boolean;

    const-string v2, "networkAvailable"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->scrollBarStyle:Ljava/lang/Integer;

    const-string v2, "scrollBarStyle"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->verticalScrollbarPosition:Ljava/lang/Integer;

    const-string v2, "verticalScrollbarPosition"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->scrollBarDefaultDelayBeforeFade:Ljava/lang/Integer;

    const-string v2, "scrollBarDefaultDelayBeforeFade"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->scrollbarFadingEnabled:Ljava/lang/Boolean;

    const-string v2, "scrollbarFadingEnabled"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->scrollBarFadeDuration:Ljava/lang/Integer;

    const-string v2, "scrollBarFadeDuration"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->rendererPriorityPolicy:Ljava/util/Map;

    const-string v2, "rendererPriorityPolicy"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->useShouldInterceptRequest:Ljava/lang/Boolean;

    const-string v2, "useShouldInterceptRequest"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->useOnRenderProcessGone:Ljava/lang/Boolean;

    const-string v2, "useOnRenderProcessGone"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebViewOptions;->disableDefaultErrorPage:Ljava/lang/Boolean;

    const-string v2, "disableDefaultErrorPage"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
