.class synthetic Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$18;
.super Ljava/lang/Object;
.source "InAppWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$pichillilorenzo$flutter_inappwebview$InAppWebView$PreferredContentModeOptionType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1344
    invoke-static {}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/PreferredContentModeOptionType;->values()[Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/PreferredContentModeOptionType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$18;->$SwitchMap$com$pichillilorenzo$flutter_inappwebview$InAppWebView$PreferredContentModeOptionType:[I

    :try_start_0
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$18;->$SwitchMap$com$pichillilorenzo$flutter_inappwebview$InAppWebView$PreferredContentModeOptionType:[I

    sget-object v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/PreferredContentModeOptionType;->DESKTOP:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/PreferredContentModeOptionType;

    invoke-virtual {v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/PreferredContentModeOptionType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$18;->$SwitchMap$com$pichillilorenzo$flutter_inappwebview$InAppWebView$PreferredContentModeOptionType:[I

    sget-object v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/PreferredContentModeOptionType;->MOBILE:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/PreferredContentModeOptionType;

    invoke-virtual {v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/PreferredContentModeOptionType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/InAppWebView$18;->$SwitchMap$com$pichillilorenzo$flutter_inappwebview$InAppWebView$PreferredContentModeOptionType:[I

    sget-object v1, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/PreferredContentModeOptionType;->RECOMMENDED:Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/PreferredContentModeOptionType;

    invoke-virtual {v1}, Lcom/pichillilorenzo/flutter_inappwebview/InAppWebView/PreferredContentModeOptionType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
