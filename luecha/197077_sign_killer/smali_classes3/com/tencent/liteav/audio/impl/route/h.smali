.class public Lcom/tencent/liteav/audio/impl/route/h;
.super Ljava/lang/Object;
.source "TXCDeviceConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/audio/impl/route/h$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/tencent/liteav/audio/impl/route/h$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/audio/impl/route/h;->a:Ljava/util/HashMap;

    const-string v0, "DEVICE_NONE"

    .line 62
    iput-object v0, p0, Lcom/tencent/liteav/audio/impl/route/h;->b:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lcom/tencent/liteav/audio/impl/route/h;->c:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/tencent/liteav/audio/impl/route/h;->d:Ljava/lang/String;

    const-string v0, "unknown"

    .line 65
    iput-object v0, p0, Lcom/tencent/liteav/audio/impl/route/h;->e:Ljava/lang/String;

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/tencent/liteav/audio/impl/route/h;->f:Z

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 2

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " devName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " priority:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->LogTraceEntry(Ljava/lang/String;)V

    .line 100
    new-instance v0, Lcom/tencent/liteav/audio/impl/route/h$a;

    invoke-direct {v0}, Lcom/tencent/liteav/audio/impl/route/h$a;-><init>()V

    .line 102
    invoke-virtual {v0, p1, p2}, Lcom/tencent/liteav/audio/impl/route/h$a;->a(Ljava/lang/String;I)Z

    move-result p2

    const-string v1, "TXCDeviceConfigManager"

    if-nez p2, :cond_0

    const-string p1, " err dev init!"

    .line 103
    invoke-static {v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 107
    :cond_0
    iget-object p2, p0, Lcom/tencent/liteav/audio/impl/route/h;->a:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p1, "err dev exist!"

    .line 108
    invoke-static {v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 112
    :cond_1
    iget-object p2, p0, Lcom/tencent/liteav/audio/impl/route/h;->a:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x1

    .line 113
    iput-boolean p2, p0, Lcom/tencent/liteav/audio/impl/route/h;->f:Z

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const-string p1, "add device, name: %s"

    .line 114
    invoke-static {v1, p1, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    invoke-static {}, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->LogTraceExit()V

    return-void
.end method

.method public static f(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "DEVICE_SPEAKERPHONE"

    .line 271
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "DEVICE_EARPHONE"

    .line 272
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "DEVICE_WIREDHEADSET"

    .line 273
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "DEVICE_BLUETOOTHHEADSET"

    .line 274
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private l()V
    .locals 6

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConnectedDevice:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/liteav/audio/impl/route/h;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ConnectingDevice:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    invoke-virtual {p0}, Lcom/tencent/liteav/audio/impl/route/h;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", prevConnectedDevice:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {p0}, Lcom/tencent/liteav/audio/impl/route/h;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", available hightest priority device:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    invoke-virtual {p0}, Lcom/tencent/liteav/audio/impl/route/h;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "device count:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {p0}, Lcom/tencent/liteav/audio/impl/route/h;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCDeviceConfigManager"

    .line 278
    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/h;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 285
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/liteav/audio/impl/route/h$a;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 287
    invoke-static {v2}, Lcom/tencent/liteav/audio/impl/route/h$a;->a(Lcom/tencent/liteav/audio/impl/route/h$a;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v2}, Lcom/tencent/liteav/audio/impl/route/h$a;->b(Lcom/tencent/liteav/audio/impl/route/h$a;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {v2}, Lcom/tencent/liteav/audio/impl/route/h$a;->c(Lcom/tencent/liteav/audio/impl/route/h$a;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v4

    const-string v2, "name: %s, visible: %b, priority: %d"

    .line 286
    invoke-static {v1, v2, v3}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    monitor-enter p0

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/h;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const-string v0, "DEVICE_NONE"

    .line 120
    iput-object v0, p0, Lcom/tencent/liteav/audio/impl/route/h;->b:Ljava/lang/String;

    const-string v0, "DEVICE_NONE"

    .line 121
    iput-object v0, p0, Lcom/tencent/liteav/audio/impl/route/h;->c:Ljava/lang/String;

    const-string v0, "DEVICE_NONE"

    .line 122
    iput-object v0, p0, Lcom/tencent/liteav/audio/impl/route/h;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;)Z
    .locals 3

    monitor-enter p0

    .line 69
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " strConfigs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->LogTraceEntry(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 70
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "\n"

    const-string v2, ""

    .line 74
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "\r"

    const-string v2, ""

    .line 75
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 77
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v1, :cond_1

    .line 78
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    const-string v1, ";"

    .line 81
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    const-string v1, ";"

    .line 85
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 87
    array-length v1, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x1

    if-le v2, v1, :cond_3

    .line 88
    monitor-exit p0

    return v0

    .line 91
    :cond_3
    :goto_0
    :try_start_2
    array-length v1, p1

    if-ge v0, v1, :cond_4

    .line 92
    aget-object v1, p1, v0

    invoke-direct {p0, v1, v0}, Lcom/tencent/liteav/audio/impl/route/h;->a(Ljava/lang/String;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    :cond_4
    invoke-direct {p0}, Lcom/tencent/liteav/audio/impl/route/h;->l()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    monitor-exit p0

    return v2

    .line 71
    :cond_5
    :goto_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Z)Z
    .locals 5

    monitor-enter p0

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/h;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/audio/impl/route/h$a;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0}, Lcom/tencent/liteav/audio/impl/route/h$a;->b()Z

    move-result v3

    if-eq v3, p2, :cond_0

    .line 138
    invoke-virtual {v0, p2}, Lcom/tencent/liteav/audio/impl/route/h$a;->a(Z)V

    .line 139
    iput-boolean v2, p0, Lcom/tencent/liteav/audio/impl/route/h;->f:Z

    const-string v0, "TXCDeviceConfigManager"

    const-string v3, "update device visibility, device: %s, visible: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    .line 140
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-static {v0, v3, v4}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v2

    .line 144
    :cond_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    const-string v0, "unknown"

    if-nez p1, :cond_0

    .line 149
    iput-object v0, p0, Lcom/tencent/liteav/audio/impl/route/h;->e:Ljava/lang/String;

    return-void

    .line 152
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 153
    iput-object v0, p0, Lcom/tencent/liteav/audio/impl/route/h;->e:Ljava/lang/String;

    goto :goto_0

    .line 155
    :cond_1
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/route/h;->e:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public declared-synchronized b()Z
    .locals 1

    monitor-enter p0

    .line 126
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/impl/route/h;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 130
    :try_start_0
    iput-boolean v0, p0, Lcom/tencent/liteav/audio/impl/route/h;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/h;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/liteav/audio/impl/route/h$a;

    if-eqz p1, :cond_0

    .line 166
    invoke-virtual {p1}, Lcom/tencent/liteav/audio/impl/route/h$a;->b()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 168
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/h;->e:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized d(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 229
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/h;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/audio/impl/route/h$a;

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {v0}, Lcom/tencent/liteav/audio/impl/route/h$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/route/h;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized e()I
    .locals 1

    monitor-enter p0

    .line 180
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/h;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 240
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/h;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/audio/impl/route/h$a;

    if-eqz v0, :cond_1

    .line 241
    invoke-virtual {v0}, Lcom/tencent/liteav/audio/impl/route/h$a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/h;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/h;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/h;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/liteav/audio/impl/route/h;->b:Ljava/lang/String;

    .line 245
    :cond_0
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/route/h;->c:Ljava/lang/String;

    const-string p1, ""

    .line 246
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/route/h;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized f()Ljava/lang/String;
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    .line 186
    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/h;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 187
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/liteav/audio/impl/route/h$a;

    if-nez v2, :cond_1

    goto :goto_0

    .line 190
    :cond_1
    invoke-virtual {v2}, Lcom/tencent/liteav/audio/impl/route/h$a;->b()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    goto :goto_1

    .line 195
    :cond_3
    invoke-virtual {v2}, Lcom/tencent/liteav/audio/impl/route/h$a;->c()I

    move-result v3

    invoke-virtual {v0}, Lcom/tencent/liteav/audio/impl/route/h$a;->c()I

    move-result v4

    if-lt v3, v4, :cond_0

    :goto_1
    move-object v0, v2

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    .line 199
    invoke-virtual {v0}, Lcom/tencent/liteav/audio/impl/route/h$a;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    const-string v0, "DEVICE_SPEAKERPHONE"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized g()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 204
    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/h;->a:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/route/h;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/liteav/audio/impl/route/h$a;

    if-eqz v1, :cond_0

    .line 205
    invoke-virtual {v1}, Lcom/tencent/liteav/audio/impl/route/h$a;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/h;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized h()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/h;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/h;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/audio/impl/route/h$a;

    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {v0}, Lcom/tencent/liteav/audio/impl/route/h$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/h;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    const-string v0, "DEVICE_NONE"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized i()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "DEVICE_NONE"

    .line 221
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/h;->a:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/route/h;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/liteav/audio/impl/route/h$a;

    if-eqz v1, :cond_0

    .line 222
    invoke-virtual {v1}, Lcom/tencent/liteav/audio/impl/route/h$a;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/h;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized j()V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, ""

    .line 236
    iput-object v0, p0, Lcom/tencent/liteav/audio/impl/route/h;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized k()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 260
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 261
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/h;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 262
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/liteav/audio/impl/route/h$a;

    if-eqz v2, :cond_0

    .line 263
    invoke-virtual {v2}, Lcom/tencent/liteav/audio/impl/route/h$a;->b()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 265
    :cond_1
    invoke-virtual {v2}, Lcom/tencent/liteav/audio/impl/route/h$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 267
    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
