.class public Lcom/umeng/commonsdk/framework/UMFrUtils;
.super Ljava/lang/Object;
.source "UMFrUtils.java"


# static fields
.field private static final KEY_LAST_INSTANT_SUCC_BUILD_TIME:Ljava/lang/String; = "last_instant_build_time"

.field private static final KEY_LAST_SUCC_BUILD_TIME:Ljava/lang/String; = "last_successful_build_time"

.field private static mDefaultEnvelopeDir:Ljava/lang/String; = "envelope"

.field private static mDefaultEnvelopeDirPath:Ljava/lang/String; = null

.field private static mEnvelopeBuildTimeLock:Ljava/lang/Object; = null

.field private static mEnvelopeFileLock:Ljava/lang/Object; = null

.field private static sCurrentProcessName:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/framework/UMFrUtils;->mEnvelopeBuildTimeLock:Ljava/lang/Object;

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/framework/UMFrUtils;->mEnvelopeFileLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 150
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 151
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    const/4 v4, 0x1

    if-lt v2, v3, :cond_0

    :try_start_0
    const-string v2, "android.content.Context"

    .line 153
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "checkSelfPermission"

    new-array v5, v4, [Ljava/lang/Class;

    .line 154
    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v0

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v0

    .line 155
    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_1

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 159
    invoke-static {v1, p0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 163
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 164
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez p0, :cond_1

    goto :goto_0

    :catchall_1
    move-exception p0

    .line 169
    invoke-static {v1, p0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return v0
.end method

.method public static envelopeFileNumber(Landroid/content/Context;)I
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 213
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lcom/umeng/commonsdk/framework/UMFrUtils;->getEnvelopeDirPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 214
    sget-object v2, Lcom/umeng/commonsdk/framework/UMFrUtils;->mEnvelopeFileLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 215
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 216
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 218
    array-length v1, v1

    monitor-exit v2

    return v1

    .line 221
    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    .line 223
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return v0
.end method

.method public static getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 83
    sget-object v0, Lcom/umeng/commonsdk/framework/UMFrUtils;->sCurrentProcessName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 87
    invoke-static {v0}, Lcom/umeng/commonsdk/framework/UMFrUtils;->getProcessName(I)Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 89
    sput-object v1, Lcom/umeng/commonsdk/framework/UMFrUtils;->sCurrentProcessName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, "activity"

    .line 91
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    if-eqz v1, :cond_2

    .line 93
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 94
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 95
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 96
    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, v0, :cond_1

    .line 97
    iget-object v0, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    sput-object v0, Lcom/umeng/commonsdk/framework/UMFrUtils;->sCurrentProcessName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 108
    :cond_2
    :goto_0
    sget-object p0, Lcom/umeng/commonsdk/framework/UMFrUtils;->sCurrentProcessName:Ljava/lang/String;

    return-object p0
.end method

.method private static getDistanceDays(JJ)J
    .locals 1

    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    sub-long/2addr p2, p0

    goto :goto_0

    :cond_0
    sub-long p2, p0, p2

    :goto_0
    const-wide/32 p0, 0x5265c00

    .line 245
    div-long/2addr p2, p0

    return-wide p2
.end method

.method public static getEnvelopeDirPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 466
    sget-object v0, Lcom/umeng/commonsdk/framework/UMFrUtils;->mEnvelopeFileLock:Ljava/lang/Object;

    monitor-enter v0

    .line 468
    :try_start_0
    sget-object v1, Lcom/umeng/commonsdk/framework/UMFrUtils;->mDefaultEnvelopeDirPath:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 469
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/umeng/commonsdk/framework/UMFrUtils;->mDefaultEnvelopeDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/umeng/commonsdk/framework/UMFrUtils;->mDefaultEnvelopeDirPath:Ljava/lang/String;

    .line 471
    :cond_0
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/umeng/commonsdk/framework/UMFrUtils;->mDefaultEnvelopeDirPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 472
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 473
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "--->>> Create Envelope Directory failed!!!"

    .line 474
    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/ULog;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 478
    :try_start_1
    invoke-static {p0, v1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 480
    :cond_1
    :goto_0
    sget-object p0, Lcom/umeng/commonsdk/framework/UMFrUtils;->mDefaultEnvelopeDirPath:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    .line 481
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0
.end method

.method public static getEnvelopeFile(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 309
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lcom/umeng/commonsdk/framework/UMFrUtils;->getEnvelopeDirPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 310
    sget-object p0, Lcom/umeng/commonsdk/framework/UMFrUtils;->mEnvelopeFileLock:Ljava/lang/Object;

    monitor-enter p0

    .line 311
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 312
    array-length v2, v1

    if-nez v2, :cond_1

    goto :goto_0

    .line 316
    :cond_1
    new-instance v0, Lcom/umeng/commonsdk/framework/UMFrUtils$2;

    invoke-direct {v0}, Lcom/umeng/commonsdk/framework/UMFrUtils$2;-><init>()V

    invoke-static {v1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    .line 330
    aget-object v0, v1, v0

    monitor-exit p0

    return-object v0

    .line 313
    :cond_2
    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 331
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getLastInstantBuildTime(Landroid/content/Context;)J
    .locals 4

    .line 492
    sget-object v0, Lcom/umeng/commonsdk/framework/UMFrUtils;->mEnvelopeBuildTimeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 493
    :try_start_0
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "last_instant_build_time"

    const-wide/16 v2, 0x0

    .line 494
    invoke-interface {p0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    .line 495
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getLastSuccessfulBuildTime(Landroid/content/Context;)J
    .locals 4

    .line 485
    sget-object v0, Lcom/umeng/commonsdk/framework/UMFrUtils;->mEnvelopeBuildTimeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 486
    :try_start_0
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "last_successful_build_time"

    const-wide/16 v2, 0x0

    .line 487
    invoke-interface {p0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    .line 488
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getLegacyEnvelopeDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .line 423
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Lcom/umeng/commonsdk/framework/UMFrUtils;->getProcessName(I)Ljava/lang/String;

    move-result-object v0

    .line 424
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v2, "--->>> getEnvelopeDir: use current process name as envelope directory."

    const/16 v3, 0x5f

    const/16 v4, 0x3a

    if-nez v1, :cond_0

    .line 426
    :try_start_1
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 427
    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/ULog;->d(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const-string v0, "activity"

    .line 430
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-eqz v0, :cond_4

    .line 432
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "--->>> getEnvelopeDir: can\'t get process name, use default envelope directory."

    .line 434
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/ULog;->d(Ljava/lang/String;)V

    .line 435
    sget-object p0, Lcom/umeng/commonsdk/framework/UMFrUtils;->mDefaultEnvelopeDir:Ljava/lang/String;

    return-object p0

    .line 437
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 438
    sget-object p0, Lcom/umeng/commonsdk/framework/UMFrUtils;->mDefaultEnvelopeDir:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p0

    .line 441
    :cond_2
    :try_start_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 442
    iget v5, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    if-ne v5, v6, :cond_3

    .line 443
    iget-object v0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 444
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 445
    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/ULog;->d(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 450
    :try_start_3
    invoke-static {p0, v0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 455
    invoke-static {p0, v0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 457
    :cond_4
    :goto_0
    sget-object p0, Lcom/umeng/commonsdk/framework/UMFrUtils;->mDefaultEnvelopeDir:Ljava/lang/String;

    return-object p0
.end method

.method private static getProcessName(I)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 57
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/proc/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "/cmdline"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 58
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    .line 59
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 60
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 68
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    return-object p0

    :catchall_1
    move-object v1, v0

    :catchall_2
    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    :cond_1
    return-object v0
.end method

.method public static getSubProcessName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    .line 119
    :try_start_0
    invoke-static {p0}, Lcom/umeng/commonsdk/framework/UMFrUtils;->getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_0

    add-int/lit8 v3, v2, 0x1

    .line 122
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-gez v2, :cond_1

    .line 125
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 126
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 127
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v3, :cond_2

    .line 129
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 135
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_1
    move-object v1, v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public static hasEnvelopeFile(Landroid/content/Context;Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;)Z
    .locals 6

    const-string v0, "a"

    .line 622
    sget-object v1, Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;->U_INTERNAL:Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;

    if-ne p1, v1, :cond_0

    const-string v0, "i"

    .line 625
    :cond_0
    sget-object v1, Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;->U_ZeroEnv:Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;

    if-ne p1, v1, :cond_1

    const-string v0, "z"

    .line 628
    :cond_1
    invoke-static {p0}, Lcom/umeng/commonsdk/framework/UMFrUtils;->getEnvelopeDirPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 630
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 631
    sget-object p1, Lcom/umeng/commonsdk/framework/UMFrUtils;->mEnvelopeFileLock:Ljava/lang/Object;

    monitor-enter p1

    .line 633
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 634
    array-length v3, v2

    if-nez v3, :cond_2

    goto :goto_1

    .line 637
    :cond_2
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_5

    aget-object v5, v2, v4

    .line 638
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_3

    .line 639
    :try_start_1
    monitor-exit p1

    const/4 p0, 0x1

    return p0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 635
    :cond_4
    :goto_1
    monitor-exit p1

    return v1

    :catchall_0
    move-exception v0

    .line 643
    invoke-static {p0, v0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 645
    :cond_5
    monitor-exit p1

    return v1

    :catchall_1
    move-exception p0

    .line 646
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_6
    return v1
.end method

.method public static isOnline(Landroid/content/Context;)Z
    .locals 1

    :try_start_0
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    .line 189
    invoke-static {p0, v0}, Lcom/umeng/commonsdk/framework/UMFrUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "connectivity"

    .line 190
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception v0

    .line 199
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static removeEnvelopeFile(Ljava/io/File;)Z
    .locals 3

    .line 565
    invoke-static {}, Lcom/umeng/commonsdk/framework/UMModuleRegister;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 566
    sget-object v1, Lcom/umeng/commonsdk/framework/UMFrUtils;->mEnvelopeFileLock:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p0, :cond_0

    .line 568
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 569
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v1

    return p0

    :catchall_0
    move-exception p0

    .line 572
    invoke-static {v0, p0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p0, 0x1

    .line 574
    monitor-exit v1

    return p0

    :catchall_1
    move-exception p0

    .line 575
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0
.end method

.method public static removeRedundantEnvelopeFiles(Landroid/content/Context;I)V
    .locals 5

    .line 258
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/umeng/commonsdk/framework/UMFrUtils;->getEnvelopeDirPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 259
    sget-object v1, Lcom/umeng/commonsdk/framework/UMFrUtils;->mEnvelopeFileLock:Ljava/lang/Object;

    monitor-enter v1

    .line 260
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 262
    array-length v2, v0

    if-gt v2, p1, :cond_0

    goto :goto_1

    .line 266
    :cond_0
    new-instance v2, Lcom/umeng/commonsdk/framework/UMFrUtils$1;

    invoke-direct {v2}, Lcom/umeng/commonsdk/framework/UMFrUtils$1;-><init>()V

    invoke-static {v0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 281
    array-length v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-le v2, p1, :cond_2

    const/4 v2, 0x0

    .line 284
    :goto_0
    :try_start_1
    array-length v3, v0

    sub-int/2addr v3, p1

    if-ge v2, v3, :cond_2

    .line 285
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_1

    .line 287
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--->>> remove ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] file fail."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/umeng/commonsdk/statistics/common/ULog;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 291
    :try_start_2
    invoke-static {p0, p1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 294
    :cond_2
    monitor-exit v1

    return-void

    .line 263
    :cond_3
    :goto_1
    monitor-exit v1

    return-void

    :catchall_1
    move-exception p0

    .line 294
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public static saveEnvelopeFile(Landroid/content/Context;Ljava/lang/String;[B)I
    .locals 5

    const/16 v0, 0x65

    if-nez p2, :cond_0

    return v0

    .line 529
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/umeng/commonsdk/framework/UMFrUtils;->getEnvelopeDirPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 530
    sget-object v2, Lcom/umeng/commonsdk/framework/UMFrUtils;->mEnvelopeFileLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x0

    .line 533
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 534
    :try_start_1
    invoke-virtual {v4, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 535
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 552
    :try_start_2
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/internal/a;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/umeng/commonsdk/statistics/internal/a;->a(Ljava/lang/String;)Z

    move-result p2

    .line 553
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/internal/a;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/commonsdk/statistics/internal/a;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p2, :cond_1

    .line 555
    invoke-static {p0}, Lcom/umeng/commonsdk/framework/UMFrUtils;->updateLastSuccessfulBuildTime(Landroid/content/Context;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 558
    invoke-static {p0}, Lcom/umeng/commonsdk/framework/UMFrUtils;->updateLastInstantBuildTime(Landroid/content/Context;)V

    :cond_2
    const/4 p0, 0x0

    .line 560
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    return p0

    :catchall_0
    move-exception p1

    move-object v3, v4

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v3, v4

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 539
    :goto_0
    :try_start_3
    invoke-static {p0, p1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_3

    .line 544
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    .line 546
    :try_start_5
    invoke-static {p0, p1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 547
    :cond_3
    :goto_1
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    return v0

    :goto_2
    if-eqz v3, :cond_4

    .line 544
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p2

    .line 546
    :try_start_7
    invoke-static {p0, p2}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 547
    :cond_4
    :goto_3
    throw p1

    :catchall_4
    move-exception p0

    .line 561
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw p0
.end method

.method public static syncLegacyEnvelopeIfNeeded(Landroid/content/Context;)V
    .locals 8

    if-nez p0, :cond_0

    return-void

    .line 344
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/umeng/commonsdk/framework/UMFrUtils;->getLegacyEnvelopeDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 346
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 350
    :cond_1
    sget-object v1, Lcom/umeng/commonsdk/framework/UMFrUtils;->mDefaultEnvelopeDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 354
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 355
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 356
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 360
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 361
    array-length v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v2, :cond_4

    goto :goto_1

    .line 373
    :cond_4
    :try_start_1
    invoke-static {p0}, Lcom/umeng/commonsdk/framework/UMFrUtils;->getEnvelopeDirPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 374
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_5

    .line 375
    aget-object v4, v0, v3

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v0, v3

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 377
    :cond_5
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 378
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 381
    :try_start_2
    invoke-static {p0, v0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    .line 363
    :cond_6
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 364
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    .line 367
    :try_start_4
    invoke-static {p0, v0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_7
    :goto_2
    return-void

    :catchall_2
    move-exception v0

    .line 384
    invoke-static {p0, v0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_8
    :goto_3
    return-void
.end method

.method public static toByteArray(Ljava/lang/String;)[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 588
    invoke-static {}, Lcom/umeng/commonsdk/framework/UMModuleRegister;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 590
    sget-object v1, Lcom/umeng/commonsdk/framework/UMFrUtils;->mEnvelopeFileLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    .line 592
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "r"

    invoke-direct {v3, p0, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 593
    sget-object v6, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v7, 0x0

    .line 594
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v9

    move-object v5, v2

    .line 593
    invoke-virtual/range {v5 .. v10}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object p0

    .line 594
    invoke-virtual {p0}, Ljava/nio/MappedByteBuffer;->load()Ljava/nio/MappedByteBuffer;

    move-result-object p0

    .line 596
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    long-to-int v4, v3

    new-array v3, v4, [B

    .line 597
    invoke-virtual {p0}, Ljava/nio/MappedByteBuffer;->remaining()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v4, 0x0

    .line 598
    invoke-virtual {p0}, Ljava/nio/MappedByteBuffer;->remaining()I

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Ljava/nio/MappedByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 606
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 608
    :try_start_2
    invoke-static {v0, p0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 609
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    return-object v3

    :catchall_1
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 602
    :try_start_3
    invoke-static {v0, p0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 603
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 606
    :goto_1
    :try_start_4
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v2

    .line 608
    :try_start_5
    invoke-static {v0, v2}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 609
    :goto_2
    throw p0

    :catchall_3
    move-exception p0

    .line 611
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw p0
.end method

.method private static updateLastInstantBuildTime(Landroid/content/Context;)V
    .locals 4

    .line 507
    sget-object v0, Lcom/umeng/commonsdk/framework/UMFrUtils;->mEnvelopeBuildTimeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 508
    :try_start_0
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 509
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 510
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v3, "last_instant_build_time"

    invoke-interface {p0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 511
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static updateLastSuccessfulBuildTime(Landroid/content/Context;)V
    .locals 4

    .line 499
    sget-object v0, Lcom/umeng/commonsdk/framework/UMFrUtils;->mEnvelopeBuildTimeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 500
    :try_start_0
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 501
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 502
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v3, "last_successful_build_time"

    invoke-interface {p0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 503
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
