.class public Lcom/tencent/liteav/screencapture/a;
.super Ljava/lang/Object;
.source "VirtualDisplayManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/screencapture/a$a;,
        Lcom/tencent/liteav/screencapture/a$b;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/tencent/liteav/screencapture/a;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/os/Handler;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/Surface;",
            "Lcom/tencent/liteav/screencapture/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:Landroid/media/projection/MediaProjection;

.field private g:Lcom/tencent/liteav/basic/util/j;

.field private h:Z

.field private i:Landroid/media/projection/MediaProjection$Callback;

.field private j:Lcom/tencent/liteav/basic/util/j$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/screencapture/a;->d:Ljava/util/Map;

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcom/tencent/liteav/screencapture/a;->e:Z

    .line 80
    new-instance v0, Lcom/tencent/liteav/screencapture/a$1;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/screencapture/a$1;-><init>(Lcom/tencent/liteav/screencapture/a;)V

    iput-object v0, p0, Lcom/tencent/liteav/screencapture/a;->i:Landroid/media/projection/MediaProjection$Callback;

    .line 100
    new-instance v0, Lcom/tencent/liteav/screencapture/a$2;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/screencapture/a$2;-><init>(Lcom/tencent/liteav/screencapture/a;)V

    iput-object v0, p0, Lcom/tencent/liteav/screencapture/a;->j:Lcom/tencent/liteav/basic/util/j$a;

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/screencapture/a;->b:Landroid/content/Context;

    .line 119
    new-instance v0, Lcom/tencent/liteav/basic/util/f;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/liteav/basic/util/f;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/liteav/screencapture/a;->c:Landroid/os/Handler;

    .line 120
    invoke-direct {p0, p1}, Lcom/tencent/liteav/screencapture/a;->b(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/tencent/liteav/screencapture/a;->h:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/tencent/liteav/screencapture/a;
    .locals 2

    .line 41
    sget-object v0, Lcom/tencent/liteav/screencapture/a;->a:Lcom/tencent/liteav/screencapture/a;

    if-nez v0, :cond_1

    .line 42
    const-class v0, Lcom/tencent/liteav/screencapture/a;

    monitor-enter v0

    .line 43
    :try_start_0
    sget-object v1, Lcom/tencent/liteav/screencapture/a;->a:Lcom/tencent/liteav/screencapture/a;

    if-nez v1, :cond_0

    .line 44
    new-instance v1, Lcom/tencent/liteav/screencapture/a;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/screencapture/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/tencent/liteav/screencapture/a;->a:Lcom/tencent/liteav/screencapture/a;

    .line 46
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 48
    :cond_1
    :goto_0
    sget-object p0, Lcom/tencent/liteav/screencapture/a;->a:Lcom/tencent/liteav/screencapture/a;

    return-object p0
.end method

.method static synthetic a(Lcom/tencent/liteav/screencapture/a;)Ljava/util/Map;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/tencent/liteav/screencapture/a;->d:Ljava/util/Map;

    return-object p0
.end method

.method private a()V
    .locals 12

    .line 185
    iget-object v0, p0, Lcom/tencent/liteav/screencapture/a;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/liteav/screencapture/a$a;

    .line 186
    iget-object v2, v1, Lcom/tencent/liteav/screencapture/a$a;->e:Landroid/hardware/display/VirtualDisplay;

    if-eqz v2, :cond_1

    goto :goto_0

    .line 189
    :cond_1
    iget-object v3, p0, Lcom/tencent/liteav/screencapture/a;->f:Landroid/media/projection/MediaProjection;

    iget v5, v1, Lcom/tencent/liteav/screencapture/a$a;->b:I

    iget v6, v1, Lcom/tencent/liteav/screencapture/a$a;->c:I

    const/4 v7, 0x1

    const/4 v8, 0x1

    iget-object v9, v1, Lcom/tencent/liteav/screencapture/a$a;->a:Landroid/view/Surface;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v4, "TXCScreenCapture"

    invoke-virtual/range {v3 .. v11}, Landroid/media/projection/MediaProjection;->createVirtualDisplay(Ljava/lang/String;IIIILandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/liteav/screencapture/a$a;->e:Landroid/hardware/display/VirtualDisplay;

    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create VirtualDisplay "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/tencent/liteav/screencapture/a$a;->e:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VirtualDisplayManager"

    invoke-static {v3, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v2, v1, Lcom/tencent/liteav/screencapture/a$a;->d:Lcom/tencent/liteav/screencapture/a$b;

    if-eqz v2, :cond_0

    .line 193
    iget-object v1, v1, Lcom/tencent/liteav/screencapture/a$a;->d:Lcom/tencent/liteav/screencapture/a$b;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/tencent/liteav/screencapture/a$b;->a(ZZ)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/screencapture/a;Z)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/tencent/liteav/screencapture/a;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 4

    .line 199
    iget-object v0, p0, Lcom/tencent/liteav/screencapture/a;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 204
    iget-object p1, p0, Lcom/tencent/liteav/screencapture/a;->c:Landroid/os/Handler;

    new-instance v0, Lcom/tencent/liteav/screencapture/a$3;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/screencapture/a$3;-><init>(Lcom/tencent/liteav/screencapture/a;)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    .line 209
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    .line 204
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 213
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "stop media projection session "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tencent/liteav/screencapture/a;->f:Landroid/media/projection/MediaProjection;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VirtualDisplayManager"

    invoke-static {v0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object p1, p0, Lcom/tencent/liteav/screencapture/a;->f:Landroid/media/projection/MediaProjection;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 215
    iget-object v1, p0, Lcom/tencent/liteav/screencapture/a;->i:Landroid/media/projection/MediaProjection$Callback;

    invoke-virtual {p1, v1}, Landroid/media/projection/MediaProjection;->unregisterCallback(Landroid/media/projection/MediaProjection$Callback;)V

    .line 216
    iget-object p1, p0, Lcom/tencent/liteav/screencapture/a;->f:Landroid/media/projection/MediaProjection;

    invoke-virtual {p1}, Landroid/media/projection/MediaProjection;->stop()V

    .line 217
    iput-object v0, p0, Lcom/tencent/liteav/screencapture/a;->f:Landroid/media/projection/MediaProjection;

    .line 219
    :cond_2
    iget-object p1, p0, Lcom/tencent/liteav/screencapture/a;->g:Lcom/tencent/liteav/basic/util/j;

    if-eqz p1, :cond_3

    .line 220
    invoke-virtual {p1}, Lcom/tencent/liteav/basic/util/j;->a()V

    .line 221
    iput-object v0, p0, Lcom/tencent/liteav/screencapture/a;->g:Lcom/tencent/liteav/basic/util/j;

    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/screencapture/a;Landroid/content/Context;)Z
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/tencent/liteav/screencapture/a;->b(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/tencent/liteav/screencapture/a;)Landroid/content/Context;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/tencent/liteav/screencapture/a;->b:Landroid/content/Context;

    return-object p0
.end method

.method private b(Landroid/content/Context;)Z
    .locals 1

    .line 250
    invoke-static {p1}, Lcom/tencent/liteav/basic/util/h;->g(Landroid/content/Context;)I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method static synthetic b(Lcom/tencent/liteav/screencapture/a;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/tencent/liteav/screencapture/a;->h:Z

    return p1
.end method

.method static synthetic c(Lcom/tencent/liteav/screencapture/a;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/tencent/liteav/screencapture/a;->h:Z

    return p0
.end method


# virtual methods
.method public a(Landroid/media/projection/MediaProjection;)V
    .locals 4

    const/4 v0, 0x0

    .line 226
    iput-boolean v0, p0, Lcom/tencent/liteav/screencapture/a;->e:Z

    const/4 v1, 0x1

    if-nez p1, :cond_2

    .line 228
    new-instance p1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/tencent/liteav/screencapture/a;->d:Ljava/util/Map;

    invoke-direct {p1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 229
    iget-object v2, p0, Lcom/tencent/liteav/screencapture/a;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 230
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/liteav/screencapture/a$a;

    .line 231
    iget-object v3, v2, Lcom/tencent/liteav/screencapture/a$a;->d:Lcom/tencent/liteav/screencapture/a$b;

    if-eqz v3, :cond_0

    .line 232
    iget-object v2, v2, Lcom/tencent/liteav/screencapture/a$a;->d:Lcom/tencent/liteav/screencapture/a$b;

    invoke-interface {v2, v0, v1}, Lcom/tencent/liteav/screencapture/a$b;->a(ZZ)V

    goto :goto_0

    :cond_1
    return-void

    .line 238
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got session "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VirtualDisplayManager"

    invoke-static {v2, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iput-object p1, p0, Lcom/tencent/liteav/screencapture/a;->f:Landroid/media/projection/MediaProjection;

    .line 240
    iget-object p1, p0, Lcom/tencent/liteav/screencapture/a;->f:Landroid/media/projection/MediaProjection;

    iget-object v0, p0, Lcom/tencent/liteav/screencapture/a;->i:Landroid/media/projection/MediaProjection$Callback;

    iget-object v2, p0, Lcom/tencent/liteav/screencapture/a;->c:Landroid/os/Handler;

    invoke-virtual {p1, v0, v2}, Landroid/media/projection/MediaProjection;->registerCallback(Landroid/media/projection/MediaProjection$Callback;Landroid/os/Handler;)V

    .line 241
    invoke-direct {p0}, Lcom/tencent/liteav/screencapture/a;->a()V

    .line 242
    new-instance p1, Lcom/tencent/liteav/basic/util/j;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/liteav/screencapture/a;->j:Lcom/tencent/liteav/basic/util/j$a;

    invoke-direct {p1, v0, v2}, Lcom/tencent/liteav/basic/util/j;-><init>(Landroid/os/Looper;Lcom/tencent/liteav/basic/util/j$a;)V

    iput-object p1, p0, Lcom/tencent/liteav/screencapture/a;->g:Lcom/tencent/liteav/basic/util/j;

    .line 243
    iget-object p1, p0, Lcom/tencent/liteav/screencapture/a;->g:Lcom/tencent/liteav/basic/util/j;

    const/16 v0, 0x32

    invoke-virtual {p1, v0, v0}, Lcom/tencent/liteav/basic/util/j;->a(II)V

    .line 246
    invoke-direct {p0, v1}, Lcom/tencent/liteav/screencapture/a;->a(Z)V

    return-void
.end method
