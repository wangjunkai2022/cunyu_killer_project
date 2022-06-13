.class public abstract Lcom/appinstall/api/listener/AppWakeUpAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appinstall/api/listener/AppWakeUpListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onWakeUp(Lcom/appinstall/api/model/AppData;)V
.end method

.method public onWakeUpFinish(Lcom/appinstall/api/model/AppData;Lcom/appinstall/api/model/Error;)V
    .locals 0

    if-eqz p2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/appinstall/api/model/AppData;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/appinstall/api/listener/AppWakeUpAdapter;->onWakeUp(Lcom/appinstall/api/model/AppData;)V

    :cond_2
    :goto_0
    return-void
.end method
