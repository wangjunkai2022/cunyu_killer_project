.class public Ltop/niunaijun/blackbox/core/system/DaemonService$DaemonInnerService;
.super Landroid/app/Service;
.source "DaemonService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/core/system/DaemonService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DaemonInnerService"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    const-string v0, "DaemonService"

    const-string v1, "DaemonInnerService -> onCreate"

    .line 82
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "DaemonService"

    const-string v1, "DaemonInnerService -> onDestroy"

    .line 102
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "flags",
            "startId"
        }
    .end annotation

    const-string v0, "DaemonService"

    const-string v1, "DaemonInnerService -> onStartCommand"

    .line 88
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "notification"

    .line 89
    invoke-virtual {p0, v0}, Ltop/niunaijun/blackbox/core/system/DaemonService$DaemonInnerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 90
    invoke-static {}, Ltop/niunaijun/blackbox/core/system/DaemonService;->access$000()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 91
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/core/system/DaemonService$DaemonInnerService;->stopSelf()V

    .line 92
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
