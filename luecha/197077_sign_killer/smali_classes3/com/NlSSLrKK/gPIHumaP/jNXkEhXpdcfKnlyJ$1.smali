.class Lcom/NlSSLrKK/gPIHumaP/jNXkEhXpdcfKnlyJ$1;
.super Ljava/lang/Object;
.source "ChromeCustomTabsActivity.java"

# interfaces
.implements Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/CustomTabActivityHelper$ConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/NlSSLrKK/gPIHumaP/jNXkEhXpdcfKnlyJ;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/NlSSLrKK/gPIHumaP/jNXkEhXpdcfKnlyJ;

.field final synthetic val$chromeCustomTabsActivity:Lcom/NlSSLrKK/gPIHumaP/jNXkEhXpdcfKnlyJ;

.field final synthetic val$menuItemList:Ljava/util/List;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/NlSSLrKK/gPIHumaP/jNXkEhXpdcfKnlyJ;Ljava/lang/String;Ljava/util/List;Lcom/NlSSLrKK/gPIHumaP/jNXkEhXpdcfKnlyJ;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/NlSSLrKK/gPIHumaP/jNXkEhXpdcfKnlyJ$1;->this$0:Lcom/NlSSLrKK/gPIHumaP/jNXkEhXpdcfKnlyJ;

    iput-object p2, p0, Lcom/NlSSLrKK/gPIHumaP/jNXkEhXpdcfKnlyJ$1;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/NlSSLrKK/gPIHumaP/jNXkEhXpdcfKnlyJ$1;->val$menuItemList:Ljava/util/List;

    iput-object p4, p0, Lcom/NlSSLrKK/gPIHumaP/jNXkEhXpdcfKnlyJ$1;->val$chromeCustomTabsActivity:Lcom/NlSSLrKK/gPIHumaP/jNXkEhXpdcfKnlyJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCustomTabsConnected()V
    .locals 4

    .line 66
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/jNXkEhXpdcfKnlyJ$1;->this$0:Lcom/NlSSLrKK/gPIHumaP/jNXkEhXpdcfKnlyJ;

    iget-object v1, v0, Lcom/NlSSLrKK/gPIHumaP/jNXkEhXpdcfKnlyJ;->customTabActivityHelper:Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/CustomTabActivityHelper;

    invoke-virtual {v1}, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/CustomTabActivityHelper;->getSession()Landroidx/browser/customtabs/CustomTabsSession;

    move-result-object v1

    iput-object v1, v0, Lcom/NlSSLrKK/gPIHumaP/jNXkEhXpdcfKnlyJ;->customTabsSession:Landroidx/browser/customtabs/CustomTabsSession;

    .line 67
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/jNXkEhXpdcfKnlyJ$1;->val$url:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/NlSSLrKK/gPIHumaP/jNXkEhXpdcfKnlyJ$1;->this$0:Lcom/NlSSLrKK/gPIHumaP/jNXkEhXpdcfKnlyJ;

    iget-object v1, v1, Lcom/NlSSLrKK/gPIHumaP/jNXkEhXpdcfKnlyJ;->customTabActivityHelper:Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/CustomTabActivityHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v2}, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/CustomTabActivityHelper;->mayLaunchUrl(Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z

    .line 70
    iget-object v1, p0, Lcom/NlSSLrKK/gPIHumaP/jNXkEhXpdcfKnlyJ$1;->this$0:Lcom/NlSSLrKK/gPIHumaP/jNXkEhXpdcfKnlyJ;

    new-instance v2, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    iget-object v3, v1, Lcom/NlSSLrKK/gPIHumaP/jNXkEhXpdcfKnlyJ;->customTabsSession:Landroidx/browser/customtabs/CustomTabsSession;

    invoke-direct {v2, v3}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>(Landroidx/browser/customtabs/CustomTabsSession;)V

    iput-object v2, v1, Lcom/NlSSLrKK/gPIHumaP/jNXkEhXpdcfKnlyJ;->builder:Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    .line 71
    iget-object v1, p0, Lcom/NlSSLrKK/gPIHumaP/jNXkEhXpdcfKnlyJ$1;->this$0:Lcom/NlSSLrKK/gPIHumaP/jNXkEhXpdcfKnlyJ;

    iget-object v2, p0, Lcom/NlSSLrKK/gPIHumaP/jNXkEhXpdcfKnlyJ$1;->val$menuItemList:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/NlSSLrKK/gPIHumaP/jNXkEhXpdcfKnlyJ;->access$000(Lcom/NlSSLrKK/gPIHumaP/jNXkEhXpdcfKnlyJ;Ljava/util/List;)V

    .line 73
    iget-object v1, p0, Lcom/NlSSLrKK/gPIHumaP/jNXkEhXpdcfKnlyJ$1;->this$0:Lcom/NlSSLrKK/gPIHumaP/jNXkEhXpdcfKnlyJ;

    iget-object v1, v1, Lcom/NlSSLrKK/gPIHumaP/jNXkEhXpdcfKnlyJ;->builder:Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    invoke-virtual {v1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object v1

    .line 74
    iget-object v2, p0, Lcom/NlSSLrKK/gPIHumaP/jNXkEhXpdcfKnlyJ$1;->this$0:Lcom/NlSSLrKK/gPIHumaP/jNXkEhXpdcfKnlyJ;

    invoke-static {v2, v1}, Lcom/NlSSLrKK/gPIHumaP/jNXkEhXpdcfKnlyJ;->access$100(Lcom/NlSSLrKK/gPIHumaP/jNXkEhXpdcfKnlyJ;Landroidx/browser/customtabs/CustomTabsIntent;)V

    .line 76
    iget-object v2, p0, Lcom/NlSSLrKK/gPIHumaP/jNXkEhXpdcfKnlyJ$1;->val$chromeCustomTabsActivity:Lcom/NlSSLrKK/gPIHumaP/jNXkEhXpdcfKnlyJ;

    const/16 v3, 0x64

    invoke-static {v2, v1, v0, v3}, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/CustomTabActivityHelper;->openCustomTab(Landroid/app/Activity;Landroidx/browser/customtabs/CustomTabsIntent;Landroid/net/Uri;I)V

    return-void
.end method

.method public onCustomTabsDisconnected()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/jNXkEhXpdcfKnlyJ$1;->val$chromeCustomTabsActivity:Lcom/NlSSLrKK/gPIHumaP/jNXkEhXpdcfKnlyJ;

    invoke-virtual {v0}, Lcom/NlSSLrKK/gPIHumaP/jNXkEhXpdcfKnlyJ;->close()V

    return-void
.end method
