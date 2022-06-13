.class public Lcom/umeng/commonsdk/UMConfigure;
.super Ljava/lang/Object;
.source "UMConfigure.java"


# static fields
.field public static final DEVICE_TYPE_BOX:I = 0x2

.field public static final DEVICE_TYPE_PHONE:I = 0x1

.field private static final KEY_FILE_NAME_APPKEY:Ljava/lang/String; = "APPKEY"

.field private static final KEY_FILE_NAME_LOG:Ljava/lang/String; = "LOG"

.field private static final KEY_METHOD_NAME_PUSH_SETCHANNEL:Ljava/lang/String; = "setMessageChannel"

.field private static final KEY_METHOD_NAME_PUSH_SET_SECRET:Ljava/lang/String; = "setSecret"

.field private static final KEY_METHOD_NAME_SETAPPKEY:Ljava/lang/String; = "setAppkey"

.field private static final KEY_METHOD_NAME_SETCHANNEL:Ljava/lang/String; = "setChannel"

.field private static final KEY_METHOD_NAME_SETDEBUGMODE:Ljava/lang/String; = "setDebugMode"

.field private static PreInitLock:Ljava/lang/Object; = null

.field private static final TAG:Ljava/lang/String; = "UMConfigure"

.field private static final WRAPER_TYPE_COCOS2DX_X:Ljava/lang/String; = "Cocos2d-x"

.field private static final WRAPER_TYPE_COCOS2DX_XLUA:Ljava/lang/String; = "Cocos2d-x_lua"

.field private static final WRAPER_TYPE_FLUTTER:Ljava/lang/String; = "flutter"

.field private static final WRAPER_TYPE_HYBRID:Ljava/lang/String; = "hybrid"

.field private static final WRAPER_TYPE_NATIVE:Ljava/lang/String; = "native"

.field private static final WRAPER_TYPE_PHONEGAP:Ljava/lang/String; = "phonegap"

.field private static final WRAPER_TYPE_REACTNATIVE:Ljava/lang/String; = "react-native"

.field private static final WRAPER_TYPE_UNITY:Ljava/lang/String; = "Unity"

.field private static final WRAPER_TYPE_WEEX:Ljava/lang/String; = "weex"

.field private static debugLog:Z = false

.field private static isFinish:Z

.field public static isInit:Z

.field private static lockObject:Ljava/lang/Object;

.field private static mOnGetOaidListener:Lcom/umeng/commonsdk/listener/OnGetOaidListener;

.field private static preInitComplete:Z

.field public static sAppkey:Ljava/lang/String;

.field public static sChannel:Ljava/lang/String;

.field public static umDebugLog:Lcom/umeng/commonsdk/debug/UMLog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 68
    new-instance v0, Lcom/umeng/commonsdk/debug/UMLog;

    invoke-direct {v0}, Lcom/umeng/commonsdk/debug/UMLog;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMLog;

    const/4 v0, 0x0

    .line 70
    sput-boolean v0, Lcom/umeng/commonsdk/UMConfigure;->preInitComplete:Z

    .line 71
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/umeng/commonsdk/UMConfigure;->PreInitLock:Ljava/lang/Object;

    const-string v1, ""

    .line 72
    sput-object v1, Lcom/umeng/commonsdk/UMConfigure;->sAppkey:Ljava/lang/String;

    .line 73
    sput-object v1, Lcom/umeng/commonsdk/UMConfigure;->sChannel:Ljava/lang/String;

    .line 88
    sput-boolean v0, Lcom/umeng/commonsdk/UMConfigure;->isInit:Z

    .line 277
    sput-boolean v0, Lcom/umeng/commonsdk/UMConfigure;->isFinish:Z

    .line 278
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/UMConfigure;->lockObject:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/umeng/commonsdk/listener/OnGetOaidListener;
    .locals 1

    .line 62
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->mOnGetOaidListener:Lcom/umeng/commonsdk/listener/OnGetOaidListener;

    return-object v0
.end method

.method private static checkShareSdk(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "isZyb"

    .line 296
    invoke-virtual {p0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    const/4 v0, 0x1

    :catchall_0
    :cond_0
    return v0
.end method

.method private static getClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 97
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static getDecInstanceObject(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    new-array v2, v1, [Ljava/lang/Class;

    .line 117
    invoke-virtual {p0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_0

    const/4 v2, 0x1

    .line 124
    invoke-virtual {p0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    :try_start_1
    new-array v1, v1, [Ljava/lang/Object;

    .line 126
    invoke-virtual {p0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_0
    return-object v0
.end method

.method private static getDecMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 166
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-eqz v0, :cond_0

    const/4 p0, 0x1

    .line 173
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :cond_0
    return-object v0
.end method

.method public static getInitStatus()Z
    .locals 2

    .line 282
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 283
    :try_start_0
    sget-boolean v1, Lcom/umeng/commonsdk/UMConfigure;->isFinish:Z

    .line 284
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getOaid(Landroid/content/Context;Lcom/umeng/commonsdk/listener/OnGetOaidListener;)V
    .locals 1

    if-nez p0, :cond_1

    .line 965
    sget-boolean p0, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz p0, :cond_0

    const-string p0, "UMConfigure"

    const-string p1, "context is null !!!"

    .line 966
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 970
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 971
    sput-object p1, Lcom/umeng/commonsdk/UMConfigure;->mOnGetOaidListener:Lcom/umeng/commonsdk/listener/OnGetOaidListener;

    .line 972
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/umeng/commonsdk/UMConfigure$4;

    invoke-direct {v0, p0}, Lcom/umeng/commonsdk/UMConfigure$4;-><init>(Landroid/content/Context;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 980
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static getTestDeviceInfo(Landroid/content/Context;)[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    .line 949
    :try_start_0
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getDeviceIdForGeneral(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 950
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method

.method public static getUMIDString(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    .line 853
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 854
    invoke-static {p0}, Lcom/umeng/commonsdk/utils/UMUtils;->getUMId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getUmengZID(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    .line 862
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 863
    invoke-static {p0}, Lcom/umeng/commonsdk/utils/UMUtils;->getZid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static init(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 312
    invoke-static {p0, v0, v0, p1, p2}, Lcom/umeng/commonsdk/UMConfigure;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 373
    :try_start_0
    sget-boolean v2, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz v2, :cond_0

    const-string v2, "UMConfigure"

    const-string v3, "common version is 9.3.8"

    .line 374
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "UMConfigure"

    .line 375
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "common type is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/umeng/commonsdk/statistics/SdkVersion;->SDK_TYPE:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p0, :cond_2

    .line 380
    sget-boolean p1, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz p1, :cond_1

    const-string p1, "UMConfigure"

    const-string p2, "context is null !!!"

    .line 381
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    .line 385
    :cond_2
    sget-boolean v2, Lcom/umeng/commonsdk/UMConfigure;->isInit:Z

    if-eqz v2, :cond_4

    .line 386
    sget-boolean p1, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz p1, :cond_3

    const-string p1, "UMConfigure"

    const-string p2, "has inited !!!"

    .line 387
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    .line 392
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_a

    :try_start_1
    const-string v3, "com.umeng.umzid.ZIDManager"

    .line 396
    invoke-static {v3}, Lcom/umeng/commonsdk/UMConfigure;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    if-nez v3, :cond_5

    const-string v3, "UMConfigure"

    const-string v4, "--->>> SDK \u521d\u59cb\u5316\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u662f\u5426\u96c6\u6210umeng-asms-1.2.x.aar\u5e93\u3002<<<--- "

    .line 398
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    new-instance v3, Lcom/umeng/commonsdk/UMConfigure$1;

    invoke-direct {v3, v2}, Lcom/umeng/commonsdk/UMConfigure$1;-><init>(Landroid/content/Context;)V

    .line 411
    invoke-virtual {v3}, Lcom/umeng/commonsdk/UMConfigure$1;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    :cond_5
    :try_start_2
    const-string v3, "com.umeng.message.PushAgent"

    .line 421
    invoke-static {v3}, Lcom/umeng/commonsdk/UMConfigure;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 423
    invoke-static {v3}, Lcom/umeng/commonsdk/UMConfigure;->checkShareSdk(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "UMLog"

    const-string v4, "\u57fa\u7840\u7ec4\u4ef6\u5e939.3.6\u7248\u672c\u4ec5\u652f\u63016.2.0\u53ca\u66f4\u9ad8\u7248\u672c\u63a8\u9001SDK\u30017.1.0\u53ca\u66f4\u9ad8\u7248\u672c\u5206\u4eabSDK\u3002"

    .line 424
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    new-instance v3, Lcom/umeng/commonsdk/UMConfigure$2;

    invoke-direct {v3, v2}, Lcom/umeng/commonsdk/UMConfigure$2;-><init>(Landroid/content/Context;)V

    .line 437
    invoke-virtual {v3}, Lcom/umeng/commonsdk/UMConfigure$2;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :cond_6
    :try_start_3
    const-string v3, "com.umeng.socialize.UMShareAPI"

    .line 444
    invoke-static {v3}, Lcom/umeng/commonsdk/UMConfigure;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 446
    invoke-static {v3}, Lcom/umeng/commonsdk/UMConfigure;->checkShareSdk(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "UMLog"

    const-string v4, "\u57fa\u7840\u7ec4\u4ef6\u5e939.3.6\u7248\u672c\u4ec5\u652f\u63016.2.0\u53ca\u66f4\u9ad8\u7248\u672c\u63a8\u9001SDK\u30017.1.0\u53ca\u66f4\u9ad8\u7248\u672c\u5206\u4eabSDK\u3002"

    .line 447
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    new-instance v3, Lcom/umeng/commonsdk/UMConfigure$3;

    invoke-direct {v3, v2}, Lcom/umeng/commonsdk/UMConfigure$3;-><init>(Landroid/content/Context;)V

    .line 460
    invoke-virtual {v3}, Lcom/umeng/commonsdk/UMConfigure$3;->start()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 470
    :catchall_2
    :cond_7
    :try_start_4
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isPreInit()Z

    move-result v3

    if-nez v3, :cond_8

    .line 471
    invoke-static {v2, p1, p2}, Lcom/umeng/commonsdk/UMConfigure;->preInit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isPreInit()Z

    move-result p1

    if-nez p1, :cond_8

    return-void

    .line 476
    :cond_8
    sget-object p1, Lcom/umeng/commonsdk/UMConfigure;->sAppkey:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/umeng/commonsdk/utils/UMUtils;->setAppkey(Landroid/content/Context;Ljava/lang/String;)V

    .line 477
    invoke-static {v2}, Lcom/umeng/commonsdk/utils/UMUtils;->getLastAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 478
    sget-object p2, Lcom/umeng/commonsdk/UMConfigure;->sAppkey:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v3, 0x2

    if-nez p2, :cond_a

    sget-object p2, Lcom/umeng/commonsdk/UMConfigure;->sAppkey:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    .line 479
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_9

    .line 480
    sget-boolean p2, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz p2, :cond_9

    const-string p2, "AppKey\u6539\u53d8!!!"

    const-string v4, ""

    .line 481
    invoke-static {p2, v3, v4}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(Ljava/lang/String;ILjava/lang/String;)V

    .line 484
    :cond_9
    sget-object p2, Lcom/umeng/commonsdk/UMConfigure;->sAppkey:Ljava/lang/String;

    invoke-static {v2, p2}, Lcom/umeng/commonsdk/utils/UMUtils;->setLastAppkey(Landroid/content/Context;Ljava/lang/String;)V

    .line 486
    :cond_a
    sget-boolean p2, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz p2, :cond_b

    const-string p2, "UMConfigure"

    .line 487
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current appkey is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/umeng/commonsdk/UMConfigure;->sAppkey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", last appkey is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :cond_b
    sget-boolean p1, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    const/4 p2, 0x3

    if-eqz p1, :cond_c

    .line 490
    invoke-static {v2}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppkeyByXML(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 491
    sget-object v4, Lcom/umeng/commonsdk/UMConfigure;->sAppkey:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    sget-object v4, Lcom/umeng/commonsdk/UMConfigure;->sAppkey:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "@"

    const-string v5, "#"

    .line 492
    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/String;

    .line 493
    sget-object v6, Lcom/umeng/commonsdk/UMConfigure;->sAppkey:Ljava/lang/String;

    aput-object v6, v5, v0

    aput-object p1, v5, v1

    const-string p1, "\u8bf7\u6ce8\u610f\uff1a\u60a8init\u63a5\u53e3\u4e2d\u8bbe\u7f6e\u7684AppKey\u662f@\uff0cmanifest\u4e2d\u8bbe\u7f6e\u7684AppKey\u662f#\uff0cinit\u63a5\u53e3\u8bbe\u7f6e\u7684AppKey\u4f1a\u8986\u76d6manifest\u4e2d\u8bbe\u7f6e\u7684AppKey"

    const-string v6, ""

    .line 494
    invoke-static {p1, p2, v6, v4, v5}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 497
    :cond_c
    sget-object p1, Lcom/umeng/commonsdk/UMConfigure;->sChannel:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/umeng/commonsdk/utils/UMUtils;->setChannel(Landroid/content/Context;Ljava/lang/String;)V

    .line 498
    sget-boolean p1, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz p1, :cond_d

    const-string p1, "UMConfigure"

    .line 499
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "channel is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/umeng/commonsdk/UMConfigure;->sChannel:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_a

    :cond_d
    :try_start_5
    const-string p1, "com.umeng.analytics.MobclickAgent"

    .line 509
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_10

    const-string v4, "init"

    new-array v5, v1, [Ljava/lang/Class;

    .line 511
    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v0

    invoke-virtual {p1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    if-eqz v4, :cond_f

    .line 513
    invoke-virtual {v4, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v2, v5, v0

    .line 514
    invoke-virtual {v4, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "header_first_resume"

    .line 515
    invoke-static {v4}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    const-string v4, "MobclickRT"

    const-string v5, "--->>> FirstResumeTrigger enabled."

    .line 516
    invoke-static {v4, v5}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    invoke-static {v2}, Lcom/umeng/analytics/pro/k;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/k;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/umeng/analytics/pro/k;->b(Landroid/content/Context;)V

    goto :goto_0

    :cond_e
    const-string v4, "MobclickRT"

    const-string v5, "--->>> FirstResumeTrigger disabled."

    .line 519
    invoke-static {v4, v5}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    :goto_0
    sget-boolean v4, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz v4, :cond_f

    const-string v4, "\u7edf\u8ba1SDK\u521d\u59cb\u5316\u6210\u529f"

    const-string v5, ""

    .line 522
    invoke-static {v4, v3, v5}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(Ljava/lang/String;ILjava/lang/String;)V

    :cond_f
    const-string v4, "com.umeng.analytics.game.UMGameAgent"

    .line 526
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_10

    const-string v4, "setGameScenarioType"

    new-array v5, v1, [Ljava/lang/Class;

    .line 528
    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v0

    invoke-virtual {p1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    if-eqz v4, :cond_10

    .line 530
    invoke-virtual {v4, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v2, v5, v0

    .line 531
    invoke-virtual {v4, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    :cond_10
    sget-object p1, Lcom/umeng/commonsdk/statistics/b;->a:Ljava/lang/String;

    const-string v4, "e"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_11

    const-string p1, "com.umeng.analytics.MobclickAgent"

    .line 538
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_11

    const-string v4, "disableExceptionCatch"

    new-array v5, v0, [Ljava/lang/Class;

    .line 540
    invoke-virtual {p1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    if-eqz v4, :cond_11

    .line 542
    invoke-virtual {v4, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v5, v0, [Ljava/lang/Object;

    .line 543
    invoke-virtual {v4, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    :cond_11
    :try_start_6
    const-string p1, "com.umeng.message.MessageSharedPrefs"

    .line 553
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_16

    const-string v4, "getInstance"

    new-array v5, v1, [Ljava/lang/Class;

    .line 555
    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v0

    invoke-virtual {p1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    if-eqz v4, :cond_16

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v2, v5, v0

    .line 557
    invoke-virtual {v4, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_16

    const-string v5, "setMessageAppKey"

    new-array v6, v1, [Ljava/lang/Class;

    .line 559
    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v0

    invoke-virtual {p1, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    if-eqz v5, :cond_12

    .line 561
    invoke-virtual {v5, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v6, v1, [Ljava/lang/Object;

    .line 562
    sget-object v7, Lcom/umeng/commonsdk/UMConfigure;->sAppkey:Ljava/lang/String;

    aput-object v7, v6, v0

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    sget-boolean v5, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz v5, :cond_12

    const-string v5, "PUSH AppKey\u8bbe\u7f6e\u6210\u529f"

    const-string v6, ""

    .line 564
    invoke-static {v5, v3, v6}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(Ljava/lang/String;ILjava/lang/String;)V

    :cond_12
    const-string v5, "setMessageChannel"

    new-array v6, v1, [Ljava/lang/Class;

    .line 568
    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v0

    invoke-virtual {p1, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    if-eqz v5, :cond_13

    .line 570
    invoke-virtual {v5, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v6, v1, [Ljava/lang/Object;

    .line 571
    sget-object v7, Lcom/umeng/commonsdk/UMConfigure;->sChannel:Ljava/lang/String;

    aput-object v7, v6, v0

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    sget-boolean v5, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz v5, :cond_13

    const-string v5, "PUSH Channel\u8bbe\u7f6e\u6210\u529f"

    const-string v6, ""

    .line 573
    invoke-static {v5, v3, v6}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(Ljava/lang/String;ILjava/lang/String;)V

    .line 577
    :cond_13
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 578
    sget-boolean p1, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    goto :goto_1

    .line 582
    :cond_14
    sget-boolean v5, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz v5, :cond_15

    const-string v5, "UMConfigure"

    .line 583
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "push secret is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    const-string v5, "setMessageAppSecret"

    new-array v6, v1, [Ljava/lang/Class;

    .line 585
    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v0

    invoke-virtual {p1, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 587
    invoke-virtual {p1, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p4, v5, v0

    .line 588
    invoke-virtual {p1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    sget-boolean p1, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz p1, :cond_16

    const-string p1, "PUSH Secret\u8bbe\u7f6e\u6210\u529f"

    const-string v4, ""

    .line 590
    invoke-static {p1, v3, v4}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_a

    :catch_0
    :cond_16
    :goto_1
    :try_start_7
    const-string p1, "com.umeng.socialize.UMShareAPI"

    .line 604
    invoke-static {p1}, Lcom/umeng/commonsdk/UMConfigure;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v4, "APPKEY"

    .line 605
    sget-object v5, Lcom/umeng/commonsdk/UMConfigure;->sAppkey:Ljava/lang/String;

    invoke-static {p1, v4, v5}, Lcom/umeng/commonsdk/UMConfigure;->setFile(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_17

    const-string v4, "init"

    new-array v5, v3, [Ljava/lang/Class;

    .line 607
    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v0

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v1

    invoke-virtual {p1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    if-eqz v4, :cond_17

    .line 609
    invoke-virtual {v4, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v2, v5, v0

    .line 610
    sget-object v6, Lcom/umeng/commonsdk/UMConfigure;->sAppkey:Ljava/lang/String;

    aput-object v6, v5, v1

    invoke-virtual {v4, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    sget-boolean p1, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz p1, :cond_17

    const-string p1, "Share AppKey\u8bbe\u7f6e\u6210\u529f"

    const-string v4, ""

    .line 613
    invoke-static {p1, v3, v4}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 623
    :catchall_4
    :cond_17
    :try_start_8
    invoke-static {p3}, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->setDeviceType(I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_a

    :try_start_9
    const-string p1, "com.umeng.error.UMError"

    .line 627
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_18

    const-string v4, "init"

    new-array v5, v1, [Ljava/lang/Class;

    .line 630
    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v0

    invoke-virtual {p1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    if-eqz v4, :cond_18

    .line 632
    invoke-virtual {v4, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v2, v5, v0

    .line 633
    invoke-virtual {v4, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    sget-boolean p1, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz p1, :cond_18

    const-string p1, "\u9519\u8bef\u5206\u6790SDK\u521d\u59cb\u5316\u6210\u529f"

    const-string v4, ""

    .line 635
    invoke-static {p1, v3, v4}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :catchall_5
    :cond_18
    :try_start_a
    const-string p1, "com.umeng.umcrash.UMCrash"

    .line 644
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_1a

    .line 646
    sget v4, Lcom/umeng/commonsdk/statistics/SdkVersion;->SDK_TYPE:I

    if-ne v4, v1, :cond_19

    const-string v4, "useIntlServices"

    new-array v5, v1, [Ljava/lang/Class;

    .line 648
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v0

    invoke-virtual {p1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    if-eqz v4, :cond_19

    .line 650
    invoke-virtual {v4, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v5, v1, [Ljava/lang/Object;

    .line 651
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-virtual {v4, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    const-string v4, "init"

    new-array v5, p2, [Ljava/lang/Class;

    .line 654
    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v0

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v1

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v3

    invoke-virtual {p1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    if-eqz v4, :cond_1a

    .line 656
    invoke-virtual {v4, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v5, p2, [Ljava/lang/Object;

    aput-object v2, v5, v0

    .line 657
    sget-object v6, Lcom/umeng/commonsdk/UMConfigure;->sAppkey:Ljava/lang/String;

    aput-object v6, v5, v1

    sget-object v6, Lcom/umeng/commonsdk/UMConfigure;->sChannel:Ljava/lang/String;

    aput-object v6, v5, v3

    invoke-virtual {v4, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    sget-boolean p1, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz p1, :cond_1a

    const-string p1, "APM SDK\u521d\u59cb\u5316\u6210\u529f"

    const-string v4, ""

    .line 659
    invoke-static {p1, v3, v4}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :catchall_6
    :cond_1a
    const/4 p1, 0x0

    :try_start_b
    const-string v4, "com.umeng.vt.facade.EventFacade"

    .line 667
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "init"

    const/4 v6, 0x5

    new-array v7, v6, [Ljava/lang/Class;

    .line 668
    const-class v8, Landroid/app/Application;

    aput-object v8, v7, v0

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v1

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v3

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, p2

    const-class v8, Ljava/lang/String;

    const/4 v9, 0x4

    aput-object v8, v7, v9

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    if-eqz v4, :cond_1b

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v2, v5, v0

    .line 670
    sget-object v6, Lcom/umeng/commonsdk/UMConfigure;->sAppkey:Ljava/lang/String;

    aput-object v6, v5, v1

    sget-object v6, Lcom/umeng/commonsdk/UMConfigure;->sChannel:Ljava/lang/String;

    aput-object v6, v5, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v5, p2

    aput-object p4, v5, v9

    invoke-virtual {v4, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "MobclickRT"

    const-string p3, "--->>>\u521d\u59cb\u5316 EventFacade \u6210\u529f."

    .line 671
    invoke-static {p2, p3}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    :catch_1
    :catchall_7
    :cond_1b
    :try_start_c
    const-string p2, "com.umeng.vt.common.VTTracker"

    .line 679
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    const-string p3, "init"

    new-array p4, v3, [Ljava/lang/Class;

    .line 680
    const-class v4, Landroid/app/Application;

    aput-object v4, p4, v0

    const-class v4, Ljava/lang/String;

    aput-object v4, p4, v1

    invoke-virtual {p2, p3, p4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    if-eqz p2, :cond_1c

    new-array p3, v3, [Ljava/lang/Object;

    aput-object v2, p3, v0

    .line 682
    sget-object p4, Lcom/umeng/commonsdk/UMConfigure;->sAppkey:Ljava/lang/String;

    aput-object p4, p3, v1

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "MobclickRT"

    const-string p3, "--->>>\u521d\u59cb\u5316 VTTracker \u6210\u529f."

    .line 683
    invoke-static {p2, p3}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    .line 690
    :catch_2
    :catchall_8
    :cond_1c
    :try_start_d
    sget-object p2, Lcom/umeng/commonsdk/UMConfigure;->lockObject:Ljava/lang/Object;

    monitor-enter p2
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_a

    .line 691
    :try_start_e
    sput-boolean v1, Lcom/umeng/commonsdk/UMConfigure;->isFinish:Z

    .line 692
    monitor-exit p2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    .line 696
    :try_start_f
    invoke-static {v2}, Lcom/umeng/commonsdk/UMConfigure;->needSendZcfgEnv(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1d

    const-string p2, "MobclickRT"

    const-string p3, "--->>> \u8d70\u96f6\u53f7\u62a5\u6587\u53d1\u9001\u903b\u8f91"

    .line 698
    invoke-static {p2, p3}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p2, 0x800d

    .line 701
    invoke-static {v2}, Lcom/umeng/commonsdk/internal/b;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/internal/b;

    move-result-object p3

    invoke-virtual {p3}, Lcom/umeng/commonsdk/internal/b;->a()Lcom/umeng/commonsdk/internal/c;

    move-result-object p3

    .line 700
    invoke-static {v2, p2, p3, p1}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    goto :goto_2

    :cond_1d
    const-string p2, "MobclickRT"

    const-string p3, "--->>> \u8d70\u6b63\u5e38\u903b\u8f91."

    .line 704
    invoke-static {p2, p3}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    invoke-static {}, Lcom/umeng/commonsdk/config/FieldManager;->b()Z

    move-result p2

    if-eqz p2, :cond_1e

    const p2, 0x8017

    .line 708
    invoke-static {v2}, Lcom/umeng/commonsdk/internal/b;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/internal/b;

    move-result-object p3

    invoke-virtual {p3}, Lcom/umeng/commonsdk/internal/b;->a()Lcom/umeng/commonsdk/internal/c;

    move-result-object p3

    .line 707
    invoke-static {v2, p2, p3, p1}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    .line 713
    :cond_1e
    :goto_2
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 715
    invoke-static {v2}, Lcom/umeng/commonsdk/UMConfigureInternation;->doSelfCheck(Landroid/content/Context;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    goto :goto_3

    :catchall_9
    move-exception p1

    .line 692
    :try_start_10
    monitor-exit p2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    :try_start_11
    throw p1
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    :catchall_a
    move-exception p1

    .line 723
    sget-boolean p2, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz p2, :cond_1f

    const-string p2, "UMConfigure"

    .line 724
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "init e is "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_3
    move-exception p1

    .line 719
    sget-boolean p2, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz p2, :cond_1f

    const-string p2, "UMConfigure"

    .line 720
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "init e is "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    :cond_1f
    :goto_3
    :try_start_12
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "com.umeng.cconfig.UMRemoteConfig"

    .line 737
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_20

    const-string p2, "getInstance"

    new-array p3, v0, [Ljava/lang/Class;

    .line 739
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    if-eqz p2, :cond_20

    new-array p3, v0, [Ljava/lang/Object;

    .line 741
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_20

    const-string p3, "init"

    new-array p4, v1, [Ljava/lang/Class;

    .line 743
    const-class v2, Landroid/content/Context;

    aput-object v2, p4, v0

    invoke-virtual {p1, p3, p4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-eqz p1, :cond_20

    .line 745
    invoke-virtual {p1, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array p3, v1, [Ljava/lang/Object;

    aput-object p0, p3, v0

    .line 746
    invoke-virtual {p1, p2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_4

    goto :goto_4

    :catch_4
    nop

    .line 755
    :cond_20
    :goto_4
    sget-boolean p0, Lcom/umeng/commonsdk/UMConfigure;->isInit:Z

    if-nez p0, :cond_21

    .line 756
    sput-boolean v1, Lcom/umeng/commonsdk/UMConfigure;->isInit:Z

    :cond_21
    return-void
.end method

.method private static invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 198
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private static invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 224
    :try_start_0
    invoke-virtual {p0, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static isDebugLog()Z
    .locals 1

    .line 781
    sget-boolean v0, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    return v0
.end method

.method private static isPreInit()Z
    .locals 2

    .line 316
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->PreInitLock:Ljava/lang/Object;

    monitor-enter v0

    .line 317
    :try_start_0
    sget-boolean v1, Lcom/umeng/commonsdk/UMConfigure;->preInitComplete:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 318
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static needSendZcfgEnv(Landroid/content/Context;)Z
    .locals 2

    .line 770
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    .line 771
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "umeng_zcfg_flag"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 773
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static preInit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_1

    .line 323
    sget-boolean p0, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz p0, :cond_0

    const-string p0, "UMConfigure"

    const-string p1, "preInit: context is null, pls check!"

    .line 324
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 328
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 330
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 331
    invoke-static {p0}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppkeyByXML(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 335
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 336
    invoke-static {p0}, Lcom/umeng/commonsdk/utils/UMUtils;->getChannelByXML(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 338
    :cond_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p2, "Unknown"

    .line 342
    :cond_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    .line 345
    :cond_5
    sput-object p1, Lcom/umeng/commonsdk/UMConfigure;->sAppkey:Ljava/lang/String;

    .line 346
    sput-object p2, Lcom/umeng/commonsdk/UMConfigure;->sChannel:Ljava/lang/String;

    .line 348
    invoke-static {p0}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/service/UMGlobalContext;

    .line 350
    invoke-static {p0}, Lcom/umeng/analytics/pro/k;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/k;

    .line 353
    invoke-static {p0}, Lcom/umeng/commonsdk/UMConfigure;->needSendZcfgEnv(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 354
    invoke-static {}, Lcom/umeng/commonsdk/config/FieldManager;->a()Lcom/umeng/commonsdk/config/FieldManager;

    move-result-object p1

    .line 355
    invoke-virtual {p1, p0}, Lcom/umeng/commonsdk/config/FieldManager;->a(Landroid/content/Context;)V

    .line 358
    :cond_6
    sget-object p0, Lcom/umeng/commonsdk/UMConfigure;->PreInitLock:Ljava/lang/Object;

    monitor-enter p0

    const/4 p1, 0x1

    .line 359
    :try_start_0
    sput-boolean p1, Lcom/umeng/commonsdk/UMConfigure;->preInitComplete:Z

    .line 360
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static setCheckDevice(Z)V
    .locals 0

    .line 888
    sput-boolean p0, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->CHECK_DEVICE:Z

    return-void
.end method

.method public static setEncryptEnabled(Z)V
    .locals 0

    .line 842
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/b;->a(Z)V

    return-void
.end method

.method private static setFile(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 244
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 245
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private static setFile(Ljava/lang/Class;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 262
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 263
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private static setLatencyWindow(J)V
    .locals 0

    long-to-int p1, p0

    mul-int/lit16 p1, p1, 0x3e8

    .line 879
    sput p1, Lcom/umeng/commonsdk/statistics/a;->c:I

    return-void
.end method

.method public static setLogEnabled(Z)V
    .locals 9

    const-string v0, "set log enabled e is "

    const-string v1, "UMConfigure"

    .line 791
    :try_start_0
    sput-boolean p0, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    .line 805
    sput-boolean p0, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    const-string v2, "com.umeng.message.PushAgent"

    .line 808
    invoke-static {v2}, Lcom/umeng/commonsdk/UMConfigure;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 809
    invoke-static {v2}, Lcom/umeng/commonsdk/UMConfigure;->getDecInstanceObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "setDebugMode"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    .line 810
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v2, v4, v6}, Lcom/umeng/commonsdk/UMConfigure;->getDecMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v4, v5, [Ljava/lang/Object;

    .line 812
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v8

    invoke-static {v2, v3, v4}, Lcom/umeng/commonsdk/UMConfigure;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V

    const-string v2, "com.umeng.socialize.Config"

    .line 818
    invoke-static {v2}, Lcom/umeng/commonsdk/UMConfigure;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "DEBUG"

    .line 819
    invoke-static {v2, v3, p0}, Lcom/umeng/commonsdk/UMConfigure;->setFile(Ljava/lang/Class;Ljava/lang/String;Z)V

    const-string v2, "com.umeng.umcrash.UMCrash"

    .line 821
    invoke-static {v2}, Lcom/umeng/commonsdk/UMConfigure;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setDebug"

    new-array v4, v5, [Ljava/lang/Class;

    .line 822
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v8

    invoke-static {v2, v3, v4}, Lcom/umeng/commonsdk/UMConfigure;->getDecMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    .line 823
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v3, v8

    invoke-static {v2, v3}, Lcom/umeng/commonsdk/UMConfigure;->invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 830
    sget-boolean v2, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz v2, :cond_0

    .line 831
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception p0

    .line 826
    sget-boolean v2, Lcom/umeng/commonsdk/UMConfigure;->debugLog:Z

    if-eqz v2, :cond_0

    .line 827
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static setProcessEvent(Z)V
    .locals 0

    .line 875
    sput-boolean p0, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->SUB_PROCESS_EVENT:Z

    return-void
.end method

.method private static setWraperType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 902
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v0, "native"

    .line 906
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 907
    sput-object v0, Lcom/umeng/commonsdk/stateless/a;->a:Ljava/lang/String;

    .line 908
    sput-object v0, Lcom/umeng/commonsdk/statistics/a;->a:Ljava/lang/String;

    goto/16 :goto_0

    :cond_1
    const-string v0, "Cocos2d-x"

    .line 909
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 910
    sput-object v0, Lcom/umeng/commonsdk/stateless/a;->a:Ljava/lang/String;

    .line 911
    sput-object v0, Lcom/umeng/commonsdk/statistics/a;->a:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "Cocos2d-x_lua"

    .line 912
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 913
    sput-object v0, Lcom/umeng/commonsdk/stateless/a;->a:Ljava/lang/String;

    .line 914
    sput-object v0, Lcom/umeng/commonsdk/statistics/a;->a:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v0, "Unity"

    .line 915
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 916
    sput-object v0, Lcom/umeng/commonsdk/stateless/a;->a:Ljava/lang/String;

    .line 917
    sput-object v0, Lcom/umeng/commonsdk/statistics/a;->a:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v0, "react-native"

    .line 918
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 919
    sput-object v0, Lcom/umeng/commonsdk/stateless/a;->a:Ljava/lang/String;

    .line 920
    sput-object v0, Lcom/umeng/commonsdk/statistics/a;->a:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const-string v0, "phonegap"

    .line 921
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 922
    sput-object v0, Lcom/umeng/commonsdk/stateless/a;->a:Ljava/lang/String;

    .line 923
    sput-object v0, Lcom/umeng/commonsdk/statistics/a;->a:Ljava/lang/String;

    goto :goto_0

    :cond_6
    const-string v0, "weex"

    .line 924
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 925
    sput-object v0, Lcom/umeng/commonsdk/stateless/a;->a:Ljava/lang/String;

    .line 926
    sput-object v0, Lcom/umeng/commonsdk/statistics/a;->a:Ljava/lang/String;

    goto :goto_0

    :cond_7
    const-string v0, "hybrid"

    .line 927
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 928
    sput-object v0, Lcom/umeng/commonsdk/stateless/a;->a:Ljava/lang/String;

    .line 929
    sput-object v0, Lcom/umeng/commonsdk/statistics/a;->a:Ljava/lang/String;

    goto :goto_0

    :cond_8
    const-string v0, "flutter"

    .line 930
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 931
    sput-object v0, Lcom/umeng/commonsdk/stateless/a;->a:Ljava/lang/String;

    .line 932
    sput-object v0, Lcom/umeng/commonsdk/statistics/a;->a:Ljava/lang/String;

    .line 936
    :cond_9
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_a

    goto :goto_1

    .line 939
    :cond_a
    sput-object p1, Lcom/umeng/commonsdk/stateless/a;->b:Ljava/lang/String;

    .line 940
    sput-object p1, Lcom/umeng/commonsdk/statistics/a;->b:Ljava/lang/String;

    :goto_1
    return-void
.end method
