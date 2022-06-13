.class public Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxyFactory;
.super Ljava/lang/Object;
.source "TPDownloadProxyFactory.java"


# static fields
.field private static final FILE_NAME:Ljava/lang/String; = "TPDownloadProxyFactory"

.field private static downloadProxyFactoryAidl:Lcom/tencent/thumbplayer/core/downloadproxy/aidl/TPDownloadProxyFactoryAidl;

.field private static mCallback:Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDLProxyBindServiceCallback;

.field private static mCanUseAIDL:Z

.field private static mConnection:Landroid/content/ServiceConnection;

.field private static mIsReadyForDownload:Z

.field private static mMapObject:Ljava/lang/Object;

.field private static mUseService:Z

.field private static mvTPDownloadProxyClientMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/tencent/thumbplayer/core/downloadproxy/client/TPDownloadProxyClient;",
            ">;"
        }
    .end annotation
.end field

.field private static mvTPDownloadProxyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxyFactory;->mMapObject:Ljava/lang/Object;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxyFactory;->mvTPDownloadProxyMap:Ljava/util/HashMap;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxyFactory;->mvTPDownloadProxyClientMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 31
    sput-boolean v0, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxyFactory;->mUseService:Z

    .line 32
    sput-boolean v0, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxyFactory;->mCanUseAIDL:Z

    .line 33
    sput-boolean v0, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxyFactory;->mIsReadyForDownload:Z

    const/4 v0, 0x0

    .line 102
    sput-object v0, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxyFactory;->mCallback:Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDLProxyBindServiceCallback;

    .line 104
    new-instance v0, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxyFactory$1;

    invoke-direct {v0}, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxyFactory$1;-><init>()V

    sput-object v0, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxyFactory;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/tencent/thumbplayer/core/downloadproxy/aidl/TPDownloadProxyFactoryAidl;
    .locals 1

    .line 24
    sget-object v0, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxyFactory;->downloadProxyFactoryAidl:Lcom/tencent/thumbplayer/core/downloadproxy/aidl/TPDownloadProxyFactoryAidl;

    return-object v0
.end method

.method static synthetic access$002(Lcom/tencent/thumbplayer/core/downloadproxy/aidl/TPDownloadProxyFactoryAidl;)Lcom/tencent/thumbplayer/core/downloadproxy/aidl/TPDownloadProxyFactoryAidl;
    .locals 0

    .line 24
    sput-object p0, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxyFactory;->downloadProxyFactoryAidl:Lcom/tencent/thumbplayer/core/downloadproxy/aidl/TPDownloadProxyFactoryAidl;

    return-object p0
.end method

.method static synthetic access$100()Ljava/util/HashMap;
    .locals 1

    .line 24
    sget-object v0, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxyFactory;->mvTPDownloadProxyClientMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Z)V
    .locals 0

    .line 24
    invoke-static {p0}, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxyFactory;->setCanUseAIDL(Z)V

    return-void
.end method

.method static synthetic access$300()Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDLProxyBindServiceCallback;
    .locals 1

    .line 24
    sget-object v0, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxyFactory;->mCallback:Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDLProxyBindServiceCallback;

    return-object v0
.end method

.method public static declared-synchronized canUseService()Z
    .locals 7

    const-class v0, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxyFactory;

    monitor-enter v0

    .line 224
    :try_start_0
    sget-boolean v1, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxyFactory;->mUseService:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 225
    monitor-exit v0

    return v2

    .line 227
    :cond_0
    :try_start_1
    sget-boolean v1, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxyFactory;->mCanUseAIDL:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 228
    monitor-exit v0

    return v3

    .line 231
    :cond_1
    :try_start_2
    sget-object v1, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxyFactory;->downloadProxyFactoryAidl:Lcom/tencent/thumbplayer/core/downloadproxy/aidl/TPDownloadProxyFactoryAidl;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_2

    .line 233
    :try_start_3
    sget-object v1, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxyFactory;->downloadProxyFactoryAidl:Lcom/tencent/thumbplayer/core/downloadproxy/aidl/TPDownloadProxyFactoryAidl;

    invoke-interface {v1}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/TPDownloadProxyFactoryAidl;->isReadyForPlay()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 234
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    :try_start_4
    const-string v2, "TPDownloadProxyFactory"

    const-string v4, "tpdlnative"

    .line 236
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "canUseService failed, error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v4, v1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 240
    :cond_2
    monitor-exit v0

    return v3

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static ensurePlayManagerService(Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDLProxyBindServiceCallback;)Z
    .locals 6

    .line 141
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxyHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tpdlnative"

    const-string v2, "TPDownloadProxyFactory"

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const-string p0, "ensurePlayManagerService get context null!"

    .line 142
    invoke-static {v2, v3, v1, p0}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->i(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return v3

    .line 146
    :cond_0
    sput-object p0, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxyFactory;->mCallback:Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDLProxyBindServiceCallback;

    .line 148
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ensurePlayManagerService "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_1

    const-string v4, "context is null"

    goto :goto_0

    :cond_1
    const-string v4, "ok"

    :goto_0
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v3, v1, p0}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->i(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 150
    :try_start_0
    new-instance p0, Landroid/content/Intent;

    const-class v4, Lcom/tencent/thumbplayer/core/downloadproxy/service/TPDownloadProxyService;

    invoke-direct {p0, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 151
    invoke-virtual {v0, p0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 152
    sget-object v4, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxyFactory;->mConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v0, p0, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "ensurePlayManagerService bind service failed!"

    .line 154
    invoke-static {v2, v3, v1, p0}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return v5

    :catchall_0
    move-exception p0

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ensurePlayManagerService failed, error:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v3, v1, p0}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method public static declared-synchronized getCanUseAIDL()Z
    .locals 2

    const-class v0, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxyFactory;

    monitor-enter v0

    .line 171
    :try_start_0
    sget-boolean v1, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxyFactory;->mCanUseAIDL:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getNativeVersion()Ljava/lang/String;
    .locals 4

    .line 245
    sget-boolean v0, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxyFactory;->mUseService:Z

    if-nez v0, :cond_0

    .line 246
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getNativeVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 248
    :cond_0
    sget-boolean v0, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxyFactory;->mCanUseAIDL:Z

    if-nez v0, :cond_1

    .line 249
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getNativeVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 252
    :cond_1
    sget-object v0, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxyFactory;->downloadProxyFactoryAidl:Lcom/tencent/thumbplayer/core/downloadproxy/aidl/TPDownloadProxyFactoryAidl;

    if-eqz v0, :cond_2

    .line 254
    :try_start_0
    invoke-interface {v0}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/TPDownloadProxyFactoryAidl;->getNativeVersion()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    .line 256
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNativeVersion failed, error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TPDownloadProxyFactory"

    const-string v3, "tpdlnative"

    invoke-static {v2, v1, v3, v0}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 260
    :cond_2
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getNativeVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTPDownloadProxy(I)Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadProxy;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-gtz p0, :cond_0

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTPDownloadProxy is invalid, serviceType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "TPDownloadProxyFactory"

    const-string v3, "tpdlnative"

    invoke-static {v2, v1, v3, p0}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 55
    :cond_0
    sget-boolean v2, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxyFactory;->mUseService:Z

    if-eqz v2, :cond_2

    .line 56
    sget-boolean v2, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxyFactory;->mCanUseAIDL:Z

    if-eqz v2, :cond_1

    .line 58
    :try_start_0
    invoke-static {p0}, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxyFactory;->getTPDownloadProxyService(I)Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadProxy;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTPDownloadProxy failed, error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "TPDownloadProxyFactory"

    const-string v3, "tpdlnative"

    invoke-static {v2, v1, v3, p0}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    const-string p0, "TPDownloadProxyFactory"

    const-string v2, "tpdlnative"

    const-string v3, "getTPDownloadProxy failed, can\'t use aidl!"

    .line 65
    invoke-static {p0, v1, v2, v3}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 70
    :cond_2
    sget-object v0, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxyFactory;->mMapObject:Ljava/lang/Object;

    monitor-enter v0

    .line 71
    :try_start_1
    sget-object v1, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxyFactory;->mvTPDownloadProxyMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadProxy;

    if-nez v1, :cond_3

    .line 73
    new-instance v1, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxy;

    invoke-direct {v1, p0}, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxy;-><init>(I)V

    .line 74
    sget-object v2, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxyFactory;->mvTPDownloadProxyMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_3
    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception p0

    .line 77
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0
.end method

.method private static declared-synchronized getTPDownloadProxyService(I)Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadProxy;
    .locals 9

    const-class v0, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxyFactory;

    monitor-enter v0

    .line 81
    :try_start_0
    sget-object v1, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxyFactory;->downloadProxyFactoryAidl:Lcom/tencent/thumbplayer/core/downloadproxy/aidl/TPDownloadProxyFactoryAidl;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 83
    sget-object v1, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxyFactory;->mvTPDownloadProxyClientMap:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 84
    :try_start_1
    sget-object v3, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxyFactory;->mvTPDownloadProxyClientMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/thumbplayer/core/downloadproxy/client/TPDownloadProxyClient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v3, :cond_0

    .line 87
    :try_start_2
    new-instance v4, Lcom/tencent/thumbplayer/core/downloadproxy/client/TPDownloadProxyClient;

    sget-object v5, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxyFactory;->downloadProxyFactoryAidl:Lcom/tencent/thumbplayer/core/downloadproxy/aidl/TPDownloadProxyFactoryAidl;

    invoke-interface {v5, p0}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/TPDownloadProxyFactoryAidl;->getTPDownloadProxy(I)Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPDownloadProxyAidl;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/tencent/thumbplayer/core/downloadproxy/client/TPDownloadProxyClient;-><init>(Lcom/tencent/thumbplayer/core/downloadproxy/aidl/ITPDownloadProxyAidl;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v3, v4

    goto :goto_0

    :catchall_0
    move-exception v4

    :try_start_3
    const-string v5, "TPDownloadProxyFactory"

    const-string v6, "tpdlnative"

    .line 89
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getTPDownloadProxyService failed, error:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v2, v6, v4}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_0
    :goto_0
    sget-object v2, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxyFactory;->mvTPDownloadProxyClientMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v2, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 94
    monitor-exit v0

    return-object v3

    :catchall_1
    move-exception p0

    .line 93
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw p0

    :cond_1
    const-string p0, "TPDownloadProxyFactory"

    const-string v1, "tpdlnative"

    const-string v3, "getTPDownloadProxyService failed, aidl is null!"

    .line 96
    invoke-static {p0, v2, v1, v3}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/4 p0, 0x0

    .line 97
    monitor-exit v0

    return-object p0

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getUseService()Z
    .locals 1

    .line 41
    sget-boolean v0, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxyFactory;->mUseService:Z

    return v0
.end method

.method public static declared-synchronized isReadyForDownload()Z
    .locals 7

    const-class v0, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxyFactory;

    monitor-enter v0

    .line 202
    :try_start_0
    sget-boolean v1, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxyFactory;->mUseService:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "TPDownloadProxyFactory"

    const-string v3, "tpdlnative"

    .line 203
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isReadyForDownload ret:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxyFactory;->mIsReadyForDownload:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->i(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 204
    sget-boolean v1, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxyFactory;->mIsReadyForDownload:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    return v1

    .line 207
    :cond_0
    :try_start_1
    sget-boolean v1, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxyFactory;->mCanUseAIDL:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v1, :cond_1

    .line 208
    monitor-exit v0

    return v2

    .line 212
    :cond_1
    :try_start_2
    sget-object v1, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxyFactory;->downloadProxyFactoryAidl:Lcom/tencent/thumbplayer/core/downloadproxy/aidl/TPDownloadProxyFactoryAidl;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_2

    .line 214
    :try_start_3
    sget-object v1, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxyFactory;->downloadProxyFactoryAidl:Lcom/tencent/thumbplayer/core/downloadproxy/aidl/TPDownloadProxyFactoryAidl;

    invoke-interface {v1}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/TPDownloadProxyFactoryAidl;->isReadyForDownload()Z

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_4
    const-string v3, "TPDownloadProxyFactory"

    const-string v4, "tpdlnative"

    .line 216
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isReadyForDownload failed, error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v2, v4, v1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 219
    :cond_2
    :goto_0
    monitor-exit v0

    return v2

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized isReadyForPlay()Z
    .locals 7

    const-class v0, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxyFactory;

    monitor-enter v0

    .line 175
    :try_start_0
    sget-boolean v1, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxyFactory;->mUseService:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 176
    invoke-static {}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->getInstance()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;->isReadyForWork()Z

    move-result v1

    const-string v3, "TPDownloadProxyFactory"

    const-string v4, "tpdlnative"

    .line 177
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isReadyForPlay ret:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v2, v4, v5}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->i(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 178
    monitor-exit v0

    return v1

    .line 181
    :cond_0
    :try_start_1
    sget-boolean v1, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxyFactory;->mCanUseAIDL:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v1, :cond_1

    .line 182
    monitor-exit v0

    return v2

    .line 186
    :cond_1
    :try_start_2
    sget-object v1, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxyFactory;->downloadProxyFactoryAidl:Lcom/tencent/thumbplayer/core/downloadproxy/aidl/TPDownloadProxyFactoryAidl;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_2

    .line 188
    :try_start_3
    sget-object v1, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxyFactory;->downloadProxyFactoryAidl:Lcom/tencent/thumbplayer/core/downloadproxy/aidl/TPDownloadProxyFactoryAidl;

    invoke-interface {v1}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/TPDownloadProxyFactoryAidl;->isReadyForPlay()Z

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_4
    const-string v3, "TPDownloadProxyFactory"

    const-string v4, "tpdlnative"

    .line 190
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isReadyForPlay failed, error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v2, v4, v1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 193
    :cond_2
    :goto_0
    monitor-exit v0

    return v2

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized setCanUseAIDL(Z)V
    .locals 1

    const-class v0, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxyFactory;

    monitor-enter v0

    .line 167
    :try_start_0
    sput-boolean p0, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxyFactory;->mCanUseAIDL:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setReadyForDownload(Z)V
    .locals 1

    const-class v0, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxyFactory;

    monitor-enter v0

    .line 198
    :try_start_0
    sput-boolean p0, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxyFactory;->mIsReadyForDownload:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setUseService(Z)V
    .locals 0

    .line 37
    sput-boolean p0, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxyFactory;->mUseService:Z

    return-void
.end method
