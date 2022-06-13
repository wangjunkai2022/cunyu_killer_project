.class public Lcom/tencent/liteav/basic/util/TXCBuild;
.super Ljava/lang/Object;
.source "TXCBuild.java"


# static fields
.field private static BOARD:Ljava/lang/String; = ""

.field private static BRAND:Ljava/lang/String; = ""

.field private static HARDWARE:Ljava/lang/String; = ""

.field private static MANUFACTURER:Ljava/lang/String; = ""

.field private static MODEL:Ljava/lang/String; = ""

.field private static final TAG:Ljava/lang/String; = "TXCBuild"

.field private static VERSION:Ljava/lang/String; = ""

.field private static VERSION_INCREMENTAL:Ljava/lang/String; = ""

.field private static VERSION_INT:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Board()Ljava/lang/String;
    .locals 4

    .line 156
    sget-object v0, Lcom/tencent/liteav/basic/util/TXCBuild;->BOARD:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 157
    :cond_0
    const-class v0, Lcom/tencent/liteav/basic/util/TXCBuild;

    monitor-enter v0

    .line 158
    :try_start_0
    sget-object v1, Lcom/tencent/liteav/basic/util/TXCBuild;->BOARD:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/tencent/liteav/basic/util/TXCBuild;->BOARD:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 159
    :cond_1
    sget-object v1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    sput-object v1, Lcom/tencent/liteav/basic/util/TXCBuild;->BOARD:Ljava/lang/String;

    const-string v1, "TXCBuild"

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get BOARD by Build.BOARD :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/tencent/liteav/basic/util/TXCBuild;->BOARD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    :cond_3
    sget-object v0, Lcom/tencent/liteav/basic/util/TXCBuild;->BOARD:Ljava/lang/String;

    return-object v0

    :catchall_0
    move-exception v1

    .line 162
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static Brand()Ljava/lang/String;
    .locals 4

    .line 43
    sget-object v0, Lcom/tencent/liteav/basic/util/TXCBuild;->BRAND:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 44
    :cond_0
    const-class v0, Lcom/tencent/liteav/basic/util/TXCBuild;

    monitor-enter v0

    .line 45
    :try_start_0
    sget-object v1, Lcom/tencent/liteav/basic/util/TXCBuild;->BRAND:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/tencent/liteav/basic/util/TXCBuild;->BRAND:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 46
    :cond_1
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sput-object v1, Lcom/tencent/liteav/basic/util/TXCBuild;->BRAND:Ljava/lang/String;

    const-string v1, "TXCBuild"

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get BRAND by Build.BRAND :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/tencent/liteav/basic/util/TXCBuild;->BRAND:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_3
    sget-object v0, Lcom/tencent/liteav/basic/util/TXCBuild;->BRAND:Ljava/lang/String;

    return-object v0

    :catchall_0
    move-exception v1

    .line 49
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static Hardware()Ljava/lang/String;
    .locals 4

    .line 81
    sget-object v0, Lcom/tencent/liteav/basic/util/TXCBuild;->HARDWARE:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 82
    :cond_0
    const-class v0, Lcom/tencent/liteav/basic/util/TXCBuild;

    monitor-enter v0

    .line 83
    :try_start_0
    sget-object v1, Lcom/tencent/liteav/basic/util/TXCBuild;->HARDWARE:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/tencent/liteav/basic/util/TXCBuild;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 84
    :cond_1
    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    sput-object v1, Lcom/tencent/liteav/basic/util/TXCBuild;->HARDWARE:Ljava/lang/String;

    const-string v1, "TXCBuild"

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get HARDWARE by Build.HARDWARE :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/tencent/liteav/basic/util/TXCBuild;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :cond_3
    sget-object v0, Lcom/tencent/liteav/basic/util/TXCBuild;->HARDWARE:Ljava/lang/String;

    return-object v0

    :catchall_0
    move-exception v1

    .line 87
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static Manufacturer()Ljava/lang/String;
    .locals 4

    .line 62
    sget-object v0, Lcom/tencent/liteav/basic/util/TXCBuild;->MANUFACTURER:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 63
    :cond_0
    const-class v0, Lcom/tencent/liteav/basic/util/TXCBuild;

    monitor-enter v0

    .line 64
    :try_start_0
    sget-object v1, Lcom/tencent/liteav/basic/util/TXCBuild;->MANUFACTURER:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/tencent/liteav/basic/util/TXCBuild;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 65
    :cond_1
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sput-object v1, Lcom/tencent/liteav/basic/util/TXCBuild;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "TXCBuild"

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get MANUFACTURER by Build.MANUFACTURER :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/tencent/liteav/basic/util/TXCBuild;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :cond_3
    sget-object v0, Lcom/tencent/liteav/basic/util/TXCBuild;->MANUFACTURER:Ljava/lang/String;

    return-object v0

    :catchall_0
    move-exception v1

    .line 68
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static Model()Ljava/lang/String;
    .locals 4

    .line 25
    sget-object v0, Lcom/tencent/liteav/basic/util/TXCBuild;->MODEL:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 26
    :cond_0
    const-class v0, Lcom/tencent/liteav/basic/util/TXCBuild;

    monitor-enter v0

    .line 27
    :try_start_0
    sget-object v1, Lcom/tencent/liteav/basic/util/TXCBuild;->MODEL:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/tencent/liteav/basic/util/TXCBuild;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 28
    :cond_1
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v1, Lcom/tencent/liteav/basic/util/TXCBuild;->MODEL:Ljava/lang/String;

    const-string v1, "TXCBuild"

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get MODEL by Build.MODEL :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/tencent/liteav/basic/util/TXCBuild;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :cond_3
    sget-object v0, Lcom/tencent/liteav/basic/util/TXCBuild;->MODEL:Ljava/lang/String;

    return-object v0

    :catchall_0
    move-exception v1

    .line 31
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static SetBoard(Ljava/lang/String;)V
    .locals 1

    .line 150
    const-class v0, Lcom/tencent/liteav/basic/util/TXCBuild;

    monitor-enter v0

    .line 151
    :try_start_0
    sput-object p0, Lcom/tencent/liteav/basic/util/TXCBuild;->BOARD:Ljava/lang/String;

    .line 152
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static SetBrand(Ljava/lang/String;)V
    .locals 1

    .line 37
    const-class v0, Lcom/tencent/liteav/basic/util/TXCBuild;

    monitor-enter v0

    .line 38
    :try_start_0
    sput-object p0, Lcom/tencent/liteav/basic/util/TXCBuild;->BRAND:Ljava/lang/String;

    .line 39
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static SetHardware(Ljava/lang/String;)V
    .locals 1

    .line 75
    const-class v0, Lcom/tencent/liteav/basic/util/TXCBuild;

    monitor-enter v0

    .line 76
    :try_start_0
    sput-object p0, Lcom/tencent/liteav/basic/util/TXCBuild;->HARDWARE:Ljava/lang/String;

    .line 77
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static SetManufacturer(Ljava/lang/String;)V
    .locals 1

    .line 56
    const-class v0, Lcom/tencent/liteav/basic/util/TXCBuild;

    monitor-enter v0

    .line 57
    :try_start_0
    sput-object p0, Lcom/tencent/liteav/basic/util/TXCBuild;->MANUFACTURER:Ljava/lang/String;

    .line 58
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static SetModel(Ljava/lang/String;)V
    .locals 1

    .line 19
    const-class v0, Lcom/tencent/liteav/basic/util/TXCBuild;

    monitor-enter v0

    .line 20
    :try_start_0
    sput-object p0, Lcom/tencent/liteav/basic/util/TXCBuild;->MODEL:Ljava/lang/String;

    .line 21
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static SetVersion(Ljava/lang/String;)V
    .locals 1

    .line 94
    const-class v0, Lcom/tencent/liteav/basic/util/TXCBuild;

    monitor-enter v0

    .line 95
    :try_start_0
    sput-object p0, Lcom/tencent/liteav/basic/util/TXCBuild;->VERSION:Ljava/lang/String;

    .line 96
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static SetVersionIncremental(Ljava/lang/String;)V
    .locals 1

    .line 132
    const-class v0, Lcom/tencent/liteav/basic/util/TXCBuild;

    monitor-enter v0

    .line 133
    :try_start_0
    sput-object p0, Lcom/tencent/liteav/basic/util/TXCBuild;->VERSION_INCREMENTAL:Ljava/lang/String;

    .line 134
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static SetVersionInt(I)V
    .locals 1

    .line 113
    const-class v0, Lcom/tencent/liteav/basic/util/TXCBuild;

    monitor-enter v0

    .line 114
    :try_start_0
    sput p0, Lcom/tencent/liteav/basic/util/TXCBuild;->VERSION_INT:I

    .line 115
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static Version()Ljava/lang/String;
    .locals 4

    .line 100
    sget-object v0, Lcom/tencent/liteav/basic/util/TXCBuild;->VERSION:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 101
    :cond_0
    const-class v0, Lcom/tencent/liteav/basic/util/TXCBuild;

    monitor-enter v0

    .line 102
    :try_start_0
    sget-object v1, Lcom/tencent/liteav/basic/util/TXCBuild;->VERSION:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/tencent/liteav/basic/util/TXCBuild;->VERSION:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 103
    :cond_1
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v1, Lcom/tencent/liteav/basic/util/TXCBuild;->VERSION:Ljava/lang/String;

    const-string v1, "TXCBuild"

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get VERSION by Build.VERSION.RELEASE :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/tencent/liteav/basic/util/TXCBuild;->VERSION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :cond_3
    sget-object v0, Lcom/tencent/liteav/basic/util/TXCBuild;->VERSION:Ljava/lang/String;

    return-object v0

    :catchall_0
    move-exception v1

    .line 106
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static VersionIncremental()Ljava/lang/String;
    .locals 4

    .line 138
    sget-object v0, Lcom/tencent/liteav/basic/util/TXCBuild;->VERSION_INCREMENTAL:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 139
    :cond_0
    const-class v0, Lcom/tencent/liteav/basic/util/TXCBuild;

    monitor-enter v0

    .line 140
    :try_start_0
    sget-object v1, Lcom/tencent/liteav/basic/util/TXCBuild;->VERSION_INCREMENTAL:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/tencent/liteav/basic/util/TXCBuild;->VERSION_INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 141
    :cond_1
    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    sput-object v1, Lcom/tencent/liteav/basic/util/TXCBuild;->VERSION_INCREMENTAL:Ljava/lang/String;

    const-string v1, "TXCBuild"

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get VERSION_INCREMENTAL by Build.VERSION.INCREMENTAL :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/tencent/liteav/basic/util/TXCBuild;->VERSION_INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    :cond_3
    sget-object v0, Lcom/tencent/liteav/basic/util/TXCBuild;->VERSION_INCREMENTAL:Ljava/lang/String;

    return-object v0

    :catchall_0
    move-exception v1

    .line 144
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static VersionInt()I
    .locals 4

    .line 119
    sget v0, Lcom/tencent/liteav/basic/util/TXCBuild;->VERSION_INT:I

    if-nez v0, :cond_1

    .line 120
    const-class v0, Lcom/tencent/liteav/basic/util/TXCBuild;

    monitor-enter v0

    .line 121
    :try_start_0
    sget v1, Lcom/tencent/liteav/basic/util/TXCBuild;->VERSION_INT:I

    if-nez v1, :cond_0

    .line 122
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v1, Lcom/tencent/liteav/basic/util/TXCBuild;->VERSION_INT:I

    const-string v1, "TXCBuild"

    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get VERSION_INT by Build.VERSION.SDK_INT :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/tencent/liteav/basic/util/TXCBuild;->VERSION_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 128
    :cond_1
    :goto_0
    sget v0, Lcom/tencent/liteav/basic/util/TXCBuild;->VERSION_INT:I

    return v0
.end method
