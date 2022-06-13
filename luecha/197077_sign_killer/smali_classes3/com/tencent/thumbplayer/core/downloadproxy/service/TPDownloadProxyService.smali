.class public Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService;
.super Landroid/app/Service;
.source "TPDownloadProxyService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService$DownloadProxy;,
        Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService$DownloadProxyFactory;
    }
.end annotation


# static fields
.field private static final FILE_NAME:Ljava/lang/String; = "TPDownloadProxyService"


# instance fields
.field private downloadProxyFactory:Lcom/tencent/thumbplayer/core/downloadproxy/aidl/TPDownloadProxyFactoryAidl$Stub;

.field private pid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, -0x1

    .line 46
    iput v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService;->pid:I

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService;->downloadProxyFactory:Lcom/tencent/thumbplayer/core/downloadproxy/aidl/TPDownloadProxyFactoryAidl$Stub;

    return-void
.end method

.method private isExistMainProcess()Z
    .locals 7

    const-string v0, "tpdlnative"

    const-string v1, "TPDownloadProxyService"

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "activity"

    .line 940
    invoke-virtual {p0, v3}, Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 942
    invoke-virtual {v3}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 943
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 945
    iget-object v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 946
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 947
    iget v3, p0, Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService;->pid:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    iget v3, p0, Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService;->pid:I

    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-eq v3, v5, :cond_1

    .line 948
    iget v3, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    iput v3, p0, Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService;->pid:I

    return v2

    .line 951
    :cond_1
    iget v3, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    iput v3, p0, Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService;->pid:I

    const-string v3, "app main exist!"

    .line 952
    invoke-static {v1, v2, v0, v3}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->i(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v3

    .line 957
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isExistMainProcess failed, error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->i(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v2
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 57
    iget-object p1, p0, Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService;->downloadProxyFactory:Lcom/tencent/thumbplayer/core/downloadproxy/aidl/TPDownloadProxyFactoryAidl$Stub;

    if-nez p1, :cond_0

    .line 58
    new-instance p1, Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService$DownloadProxyFactory;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService$DownloadProxyFactory;-><init>(Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService;Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService$1;)V

    iput-object p1, p0, Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService;->downloadProxyFactory:Lcom/tencent/thumbplayer/core/downloadproxy/aidl/TPDownloadProxyFactoryAidl$Stub;

    .line 60
    :cond_0
    invoke-direct {p0}, Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService;->isExistMainProcess()Z

    .line 61
    iget-object p1, p0, Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService;->downloadProxyFactory:Lcom/tencent/thumbplayer/core/downloadproxy/aidl/TPDownloadProxyFactoryAidl$Stub;

    return-object p1
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 4

    const-string v0, "TPDownloadProxyService"

    const/4 v1, 0x0

    const-string v2, "tpdlnative"

    const-string v3, "on rebind!"

    .line 86
    invoke-static {v0, v1, v2, v3}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->i(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-direct {p0}, Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService;->isExistMainProcess()Z

    .line 88
    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 93
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    const/4 p1, 0x2

    return p1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 4

    const-string v0, "tpdlnative"

    const/4 v1, 0x0

    const-string v2, "TPDownloadProxyService"

    const-string v3, "on unbind!"

    .line 66
    invoke-static {v2, v1, v0, v3}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->i(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    .line 68
    invoke-direct {p0}, Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService;->isExistMainProcess()Z

    move-result p1

    if-nez p1, :cond_0

    .line 70
    :try_start_0
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object p1

    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->stopAllDownload(I)I

    .line 71
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->removeAllPlayListener()V

    .line 72
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/core/downloadproxy/apiinner/TPListenerManager;->removeAllPreLoadListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 74
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v1, v0, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
