.class public abstract Lcom/appinstall/api/listener/AppInstallAdapter;
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
.method public abstract onInstall(Lcom/appinstall/api/model/AppData;)V
.end method

.method public onInstallFinish(Lcom/appinstall/api/model/AppData;Lcom/appinstall/api/model/Error;)V
    .locals 0

    if-nez p1, :cond_0

    new-instance p1, Lcom/appinstall/api/model/AppData;

    invoke-direct {p1}, Lcom/appinstall/api/model/AppData;-><init>()V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/appinstall/api/listener/AppInstallAdapter;->onInstall(Lcom/appinstall/api/model/AppData;)V

    return-void
.end method
