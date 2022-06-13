.class public abstract Lcom/appinstall/api/listener/AppInstallRetryAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appinstall/api/listener/AppInstallListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onInstall(Lcom/appinstall/api/model/AppData;Z)V
.end method

.method public onInstallFinish(Lcom/appinstall/api/model/AppData;Lcom/appinstall/api/model/Error;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Lcom/appinstall/api/model/AppData;

    invoke-direct {p1}, Lcom/appinstall/api/model/AppData;-><init>()V

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/appinstall/api/model/Error;->getErrorCode()I

    move-result p2

    const/4 v0, -0x4

    if-ne p2, v0, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/appinstall/api/listener/AppInstallRetryAdapter;->onInstall(Lcom/appinstall/api/model/AppData;Z)V

    return-void
.end method
