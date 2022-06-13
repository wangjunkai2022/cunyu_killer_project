.class public Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ServiceConnection;
.super Landroidx/browser/customtabs/CustomTabsServiceConnection;
.source "ServiceConnection.java"


# instance fields
.field private mConnectionCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ServiceConnectionCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ServiceConnectionCallback;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroidx/browser/customtabs/CustomTabsServiceConnection;-><init>()V

    .line 18
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ServiceConnection;->mConnectionCallback:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onCustomTabsServiceConnected(Landroid/content/ComponentName;Landroidx/browser/customtabs/CustomTabsClient;)V
    .locals 0

    .line 23
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ServiceConnection;->mConnectionCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ServiceConnectionCallback;

    if-eqz p1, :cond_0

    .line 24
    invoke-interface {p1, p2}, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ServiceConnectionCallback;->onServiceConnected(Landroidx/browser/customtabs/CustomTabsClient;)V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 29
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ServiceConnection;->mConnectionCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ServiceConnectionCallback;

    if-eqz p1, :cond_0

    .line 30
    invoke-interface {p1}, Lcom/pichillilorenzo/flutter_inappwebview/ChromeCustomTabs/ServiceConnectionCallback;->onServiceDisconnected()V

    :cond_0
    return-void
.end method
