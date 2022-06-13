.class public Lcom/tencent/liteav/basic/util/g;
.super Ljava/lang/Object;
.source "TXCLocalConfigStorage.java"


# static fields
.field protected static volatile a:Lcom/tencent/liteav/basic/util/g;


# instance fields
.field private final b:Ljava/lang/String;

.field private c:Landroid/content/SharedPreferences;

.field private final d:Ljava/lang/Object;

.field private e:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "TXCSpUtil"

    .line 10
    iput-object v0, p0, Lcom/tencent/liteav/basic/util/g;->b:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/basic/util/g;->d:Ljava/lang/Object;

    return-void
.end method

.method public static a()Lcom/tencent/liteav/basic/util/g;
    .locals 2

    .line 50
    sget-object v0, Lcom/tencent/liteav/basic/util/g;->a:Lcom/tencent/liteav/basic/util/g;

    if-nez v0, :cond_1

    .line 51
    const-class v0, Lcom/tencent/liteav/basic/util/g;

    monitor-enter v0

    .line 52
    :try_start_0
    sget-object v1, Lcom/tencent/liteav/basic/util/g;->a:Lcom/tencent/liteav/basic/util/g;

    if-nez v1, :cond_0

    .line 53
    new-instance v1, Lcom/tencent/liteav/basic/util/g;

    invoke-direct {v1}, Lcom/tencent/liteav/basic/util/g;-><init>()V

    sput-object v1, Lcom/tencent/liteav/basic/util/g;->a:Lcom/tencent/liteav/basic/util/g;

    .line 55
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 57
    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/liteav/basic/util/g;->a:Lcom/tencent/liteav/basic/util/g;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 0

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/basic/util/g;->e:Landroid/content/Context;

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 4

    .line 69
    iget-object v0, p0, Lcom/tencent/liteav/basic/util/g;->e:Landroid/content/Context;

    .line 71
    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/basic/util/g;->d:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :try_start_1
    iget-object v2, p0, Lcom/tencent/liteav/basic/util/g;->c:Landroid/content/SharedPreferences;

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    const-string v2, "liteav_hw_encoder_config"

    const/4 v3, 0x0

    .line 73
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/basic/util/g;->c:Landroid/content/SharedPreferences;

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/basic/util/g;->c:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/tencent/liteav/basic/util/g;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 78
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveConfigInfo: error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " ; "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TXCSpUtil"

    invoke-static {p2, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;Z)Z
    .locals 4

    .line 85
    iget-object v0, p0, Lcom/tencent/liteav/basic/util/g;->e:Landroid/content/Context;

    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/basic/util/g;->d:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :try_start_1
    iget-object v2, p0, Lcom/tencent/liteav/basic/util/g;->c:Landroid/content/SharedPreferences;

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    const-string v2, "liteav_hw_encoder_config"

    const/4 v3, 0x0

    .line 89
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/basic/util/g;->c:Landroid/content/SharedPreferences;

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/basic/util/g;->c:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/tencent/liteav/basic/util/g;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 94
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveConfigInfo: error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " ; "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TXCSpUtil"

    invoke-static {v0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return p2
.end method
