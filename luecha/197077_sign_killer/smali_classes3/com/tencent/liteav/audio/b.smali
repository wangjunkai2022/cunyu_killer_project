.class public Lcom/tencent/liteav/audio/b;
.super Ljava/lang/Object;
.source "TXCopyrightedMediaProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/audio/b$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/tencent/liteav/audio/b$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/reflect/Method;

.field private c:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/audio/b;->a:Ljava/util/Map;

    :try_start_0
    const-string v0, "com.tencent.txcopyrightedmedia.impl.utils.TXBGMUtils"

    .line 36
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getMusicURI"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 37
    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/liteav/audio/b;->b:Ljava/lang/reflect/Method;

    const-string v1, "uploadMusicPlayInfo"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    .line 38
    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v2

    const/4 v4, 0x2

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/audio/b;->c:Ljava/lang/reflect/Method;

    .line 40
    iget-object v0, p0, Lcom/tencent/liteav/audio/b;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 41
    iget-object v0, p0, Lcom/tencent/liteav/audio/b;->c:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init TXCopyrightedMediaProcessor failed. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCopyrightedMediaProcessor"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private a(JLjava/lang/String;J)V
    .locals 4

    .line 158
    iget-object v0, p0, Lcom/tencent/liteav/audio/b;->c:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/b;->a:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/audio/b$a;

    if-eqz v0, :cond_2

    .line 162
    iget-object v1, v0, Lcom/tencent/liteav/audio/b$a;->b:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/tencent/liteav/audio/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 165
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportPlayInfo id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " action:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " position:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TXCopyrightedMediaProcessor"

    invoke-static {p2, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :try_start_0
    iget-object p1, p0, Lcom/tencent/liteav/audio/b;->c:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    const/4 p3, 0x1

    iget-object v0, v0, Lcom/tencent/liteav/audio/b$a;->c:Ljava/lang/String;

    aput-object v0, v2, p3

    const/4 p3, 0x2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    aput-object p4, v2, p3

    invoke-virtual {p1, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 169
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "reportPlayInfo failed. "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "CopyRightMusic://"

    .line 174
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 54
    iget-object v0, p0, Lcom/tencent/liteav/audio/b;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/tencent/liteav/audio/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/b;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 59
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    const-string v2, "TXCopyrightedMediaProcessor: getCopyrightedMusicUri failed with empty result."

    const-string v4, ""

    .line 60
    invoke-static {v1, v2, v4, v3}, Lcom/tencent/liteav/basic/module/Monitor;->a(ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCopyrightedMusicUri failed. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCopyrightedMediaProcessor"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-object p1
.end method

.method public a(JJ)V
    .locals 10

    .line 92
    iget-object v0, p0, Lcom/tencent/liteav/audio/b;->a:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/audio/b$a;

    if-nez v0, :cond_0

    return-void

    .line 97
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 98
    iget-wide v3, v0, Lcom/tencent/liteav/audio/b$a;->d:J

    sub-long v3, v1, v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0xa

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    return-void

    .line 101
    :cond_1
    iput-wide v1, v0, Lcom/tencent/liteav/audio/b$a;->d:J

    const-string v7, "TimedEvent"

    move-object v4, p0

    move-wide v5, p1

    move-wide v8, p3

    .line 102
    invoke-direct/range {v4 .. v9}, Lcom/tencent/liteav/audio/b;->a(JLjava/lang/String;J)V

    return-void
.end method

.method public a(JLjava/lang/String;)V
    .locals 10

    .line 77
    invoke-direct {p0, p3}, Lcom/tencent/liteav/audio/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 80
    :cond_0
    invoke-virtual {p0, p3}, Lcom/tencent/liteav/audio/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/tencent/liteav/audio/b;->a:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v3, Lcom/tencent/liteav/audio/b$a;

    invoke-direct {v3, p1, p2, p3, v0}, Lcom/tencent/liteav/audio/b$a;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v8, 0x0

    const-string v7, "StartPlay"

    move-object v4, p0

    move-wide v5, p1

    .line 82
    invoke-direct/range {v4 .. v9}, Lcom/tencent/liteav/audio/b;->a(JLjava/lang/String;J)V

    return-void
.end method

.method public b(JJ)V
    .locals 6

    const-string v3, "PausePlay"

    move-object v0, p0

    move-wide v1, p1

    move-wide v4, p3

    .line 112
    invoke-direct/range {v0 .. v5}, Lcom/tencent/liteav/audio/b;->a(JLjava/lang/String;J)V

    return-void
.end method

.method public c(JJ)V
    .locals 6

    const-string v3, "ResumePlay"

    move-object v0, p0

    move-wide v1, p1

    move-wide v4, p3

    .line 122
    invoke-direct/range {v0 .. v5}, Lcom/tencent/liteav/audio/b;->a(JLjava/lang/String;J)V

    return-void
.end method

.method public d(JJ)V
    .locals 6

    const-string v3, "SeekEvent"

    move-object v0, p0

    move-wide v1, p1

    move-wide v4, p3

    .line 132
    invoke-direct/range {v0 .. v5}, Lcom/tencent/liteav/audio/b;->a(JLjava/lang/String;J)V

    return-void
.end method

.method public e(JJ)V
    .locals 10

    const-string v3, "FinishPlay"

    move-object v0, p0

    move-wide v1, p1

    move-wide v4, p3

    .line 142
    invoke-direct/range {v0 .. v5}, Lcom/tencent/liteav/audio/b;->a(JLjava/lang/String;J)V

    const-string v7, "StartPlay"

    const-wide/16 v8, 0x0

    move-object v4, p0

    move-wide v5, p1

    .line 143
    invoke-direct/range {v4 .. v9}, Lcom/tencent/liteav/audio/b;->a(JLjava/lang/String;J)V

    return-void
.end method

.method public f(JJ)V
    .locals 6

    const-string v3, "FinishPlay"

    move-object v0, p0

    move-wide v1, p1

    move-wide v4, p3

    .line 153
    invoke-direct/range {v0 .. v5}, Lcom/tencent/liteav/audio/b;->a(JLjava/lang/String;J)V

    .line 154
    iget-object p3, p0, Lcom/tencent/liteav/audio/b;->a:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
