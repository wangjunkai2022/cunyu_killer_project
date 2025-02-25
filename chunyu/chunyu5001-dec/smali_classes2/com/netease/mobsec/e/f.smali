.class public Lcom/netease/mobsec/e/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mobsec/e/f$c;,
        Lcom/netease/mobsec/e/f$d;,
        Lcom/netease/mobsec/e/f$e;,
        Lcom/netease/mobsec/e/f$f;,
        Lcom/netease/mobsec/e/f$g;
    }
.end annotation


# static fields
.field private static final A:Landroid/os/Handler;

.field private static final B:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/netease/mobsec/e/i;",
            ">;"
        }
    .end annotation
.end field

.field private static l:Lcom/netease/mobsec/e/f; = null

.field private static m:S = 0x0s

.field private static final n:Ljava/lang/String; = "200"

.field private static final o:Ljava/lang/String; = "A4.4.5"

.field private static volatile p:Ljava/lang/String; = ""

.field private static q:Ljava/lang/String; = ""

.field private static r:Ljava/lang/String; = null

.field private static volatile s:Ljava/lang/String; = ""

.field private static t:Z = true

.field private static u:Z = true

.field private static v:Lcom/netease/mobsec/c/c; = null

.field private static w:Lcom/netease/mobsec/e/d; = null

.field private static x:Lcom/netease/mobsec/e/b; = null

.field private static final y:J = 0x5265c00L

.field private static z:Lcom/netease/mobsec/AbstractNetClient;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field e:Lcom/netease/mobsec/c/e/b;

.field private f:Z

.field private volatile g:I

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/netease/mobsec/e/f;->A:Landroid/os/Handler;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/netease/mobsec/e/f;->B:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/netease/mobsec/e/f;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/mobsec/e/f;->b:Ljava/lang/String;

    const/4 v1, 0x5

    iput v1, p0, Lcom/netease/mobsec/e/f;->c:I

    iput-object v0, p0, Lcom/netease/mobsec/e/f;->d:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/netease/mobsec/e/f;->f:Z

    iput v1, p0, Lcom/netease/mobsec/e/f;->g:I

    iput-object v0, p0, Lcom/netease/mobsec/e/f;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/mobsec/e/f;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/mobsec/e/f;->j:Ljava/lang/String;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/netease/mobsec/e/f;->k:Z

    sput-object v0, Lcom/netease/mobsec/e/f;->p:Ljava/lang/String;

    sput-short v1, Lcom/netease/mobsec/e/f;->m:S

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/netease/mobsec/e/f;->c(Landroid/content/Context;)V

    return-void
.end method

.method private a()I
    .locals 7

    const-string v0, "SendDeviceData"

    const-string v1, "4"

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/netease/mobsec/e/f;->k()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-boolean v4, p0, Lcom/netease/mobsec/e/f;->f:Z

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/netease/mobsec/e/e;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/v2/m/d"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/netease/mobsec/e/f;->x:Lcom/netease/mobsec/e/b;

    invoke-virtual {v4}, Lcom/netease/mobsec/e/b;->m()Ljava/lang/String;

    move-result-object v4

    :goto_0
    iput-object v4, p0, Lcom/netease/mobsec/e/f;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mobsec/e/f;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/netease/mobsec/e/f;->x:Lcom/netease/mobsec/e/b;

    const-string v5, "YhsHb\u000b3(Yr\u001fxrV?\u0000*4Ad_2dW|\u001ej5\u0017|\u001ex"

    const-string v6, "1\u001c\u00078\u0011"

    invoke-virtual {v4, v5, v6}, Lcom/netease/mobsec/e/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/netease/mobsec/e/f;->a:Ljava/lang/String;

    :cond_2
    iget-object v4, p0, Lcom/netease/mobsec/e/f;->a:Ljava/lang/String;

    const/16 v5, 0xbb8

    invoke-static {v4, v3, v5}, Lcom/netease/mobsec/e/e;->a(Ljava/lang/String;Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    iget v4, p0, Lcom/netease/mobsec/e/f;->g:I

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    iget v5, p0, Lcom/netease/mobsec/e/f;->g:I

    :goto_1
    const/16 v4, 0xc8

    if-eqz v3, :cond_5

    sget-object v6, Lcom/netease/mobsec/e/f;->x:Lcom/netease/mobsec/e/b;

    invoke-virtual {v6, v3}, Lcom/netease/mobsec/e/b;->b(Lorg/json/JSONObject;)I

    move-result v3

    if-ne v3, v4, :cond_4

    invoke-direct {p0}, Lcom/netease/mobsec/e/f;->b()V

    return v3

    :cond_4
    const/16 v6, 0x1a4

    if-ne v3, v6, :cond_8

    invoke-direct {p0}, Lcom/netease/mobsec/e/f;->k()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/netease/mobsec/e/f;->a:Ljava/lang/String;

    invoke-static {v6, v3, v5}, Lcom/netease/mobsec/e/e;->a(Ljava/lang/String;Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_8

    sget-object v5, Lcom/netease/mobsec/e/f;->x:Lcom/netease/mobsec/e/b;

    invoke-virtual {v5, v3}, Lcom/netease/mobsec/e/b;->b(Lorg/json/JSONObject;)I

    move-result v3

    if-ne v3, v4, :cond_8

    invoke-direct {p0}, Lcom/netease/mobsec/e/f;->b()V

    return v3

    :cond_5
    invoke-direct {p0}, Lcom/netease/mobsec/e/f;->k()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6

    return v2

    :cond_6
    iget-object v6, p0, Lcom/netease/mobsec/e/f;->a:Ljava/lang/String;

    invoke-static {v6, v3, v5}, Lcom/netease/mobsec/e/e;->a(Ljava/lang/String;Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_8

    sget-object v5, Lcom/netease/mobsec/e/f;->x:Lcom/netease/mobsec/e/b;

    invoke-virtual {v5, v3}, Lcom/netease/mobsec/e/b;->b(Lorg/json/JSONObject;)I

    move-result v3

    if-ne v3, v4, :cond_8

    invoke-direct {p0}, Lcom/netease/mobsec/e/f;->b()V

    return v3

    :cond_7
    :goto_2
    new-instance v3, Lcom/netease/mobsec/e/f$c;

    const-string v4, "getInifInfo error"

    invoke-direct {v3, p0, v1, v0, v4}, Lcom/netease/mobsec/e/f$c;-><init>(Lcom/netease/mobsec/e/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    new-instance v3, Lcom/netease/mobsec/e/f$c;

    const-string v4, "error"

    invoke-direct {v3, p0, v1, v0, v4}, Lcom/netease/mobsec/e/f$c;-><init>(Lcom/netease/mobsec/e/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    :cond_8
    return v2
.end method

.method static synthetic a(Lcom/netease/mobsec/e/f;)Lcom/netease/mobsec/e/a;
    .locals 0

    invoke-direct {p0}, Lcom/netease/mobsec/e/f;->l()Lcom/netease/mobsec/e/a;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Lcom/netease/mobsec/e/f;
    .locals 2

    sget-object v0, Lcom/netease/mobsec/e/f;->l:Lcom/netease/mobsec/e/f;

    if-nez v0, :cond_1

    const-class v0, Lcom/netease/mobsec/e/f;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/netease/mobsec/e/f;->l:Lcom/netease/mobsec/e/f;

    if-nez v1, :cond_0

    new-instance v1, Lcom/netease/mobsec/e/f;

    invoke-direct {v1, p0}, Lcom/netease/mobsec/e/f;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/netease/mobsec/e/f;->l:Lcom/netease/mobsec/e/f;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/netease/mobsec/e/f;->l:Lcom/netease/mobsec/e/f;

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "mvcgwOjB5yIpKyKGbqbmp7w3PBjknDGx"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lcom/netease/mobsec/e/j;->b([B)[B

    move-result-object p1

    invoke-static {p1}, Lcom/netease/mobsec/e/j;->a([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "mvcgwOjB5yIpKyKGbqbmp7w3PBjknDGx"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lcom/netease/mobsec/e/j;->b([B)[B

    move-result-object p1

    invoke-static {p1}, Lcom/netease/mobsec/e/j;->a([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "r"

    :try_start_1
    iget v2, p0, Lcom/netease/mobsec/e/f;->c:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "d"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "i"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p3, :cond_0

    const-string p2, "t"

    :try_start_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/mobsec/e/f;->c:I

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3, p1}, Lcom/netease/mobsec/e/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/mobsec/e/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "r"

    :try_start_1
    iget v2, p0, Lcom/netease/mobsec/e/f;->c:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "d"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "b"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez p3, :cond_0

    if-eqz p4, :cond_1

    :cond_0
    const-string p3, "t"

    :try_start_2
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/mobsec/e/f;->c:I

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p4, p1, p2}, Lcom/netease/mobsec/e/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/mobsec/e/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private a(Lcom/netease/mobsec/InitCallback;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netease/mobsec/e/f$b;

    invoke-direct {v1, p0, p1}, Lcom/netease/mobsec/e/f$b;-><init>(Lcom/netease/mobsec/e/f;Lcom/netease/mobsec/InitCallback;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic a(Lcom/netease/mobsec/e/f;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netease/mobsec/e/f;->k:Z

    return p1
.end method

.method public static b(Landroid/content/Context;)I
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p0, p0, 0xf

    const/4 v0, 0x3

    if-lt p0, v0, :cond_0

    const/16 p0, 0x8

    goto :goto_0

    :cond_0
    const/4 p0, 0x5

    :goto_0
    return p0
.end method

.method static synthetic b(Lcom/netease/mobsec/e/f;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/netease/mobsec/e/f;->d:Ljava/lang/String;

    return-object p0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/netease/mobsec/e/j;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/netease/mobsec/e/f;->o()Ljava/lang/String;

    move-result-object p2

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    :cond_2
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/netease/mobsec/e/f;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b()V
    .locals 6

    sget-object v0, Lcom/netease/mobsec/e/f;->x:Lcom/netease/mobsec/e/b;

    invoke-virtual {v0}, Lcom/netease/mobsec/e/b;->f()J

    move-result-wide v0

    sget-object v2, Lcom/netease/mobsec/e/f;->x:Lcom/netease/mobsec/e/b;

    invoke-virtual {v2}, Lcom/netease/mobsec/e/b;->n()J

    move-result-wide v2

    const-wide/16 v4, 0x5

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x1770

    div-long/2addr v2, v4

    add-long/2addr v0, v2

    sget-object v2, Lcom/netease/mobsec/e/f;->x:Lcom/netease/mobsec/e/b;

    invoke-virtual {v2, v0, v1}, Lcom/netease/mobsec/e/b;->a(J)J

    sget-object v0, Lcom/netease/mobsec/e/f;->x:Lcom/netease/mobsec/e/b;

    invoke-virtual {v0}, Lcom/netease/mobsec/e/b;->f()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/netease/mobsec/e/b;->b(J)J

    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/netease/mobsec/e/f;->v:Lcom/netease/mobsec/c/c;

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/netease/mobsec/c/c;->a(Landroid/content/Context;)Lcom/netease/mobsec/c/c;

    move-result-object v0

    sput-object v0, Lcom/netease/mobsec/e/f;->v:Lcom/netease/mobsec/c/c;

    :cond_0
    sget-object v0, Lcom/netease/mobsec/e/f;->v:Lcom/netease/mobsec/c/c;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/netease/mobsec/e/f;->e:Lcom/netease/mobsec/c/e/b;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/netease/mobsec/c/c;->a()Lcom/netease/mobsec/c/e/b;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mobsec/e/f;->e:Lcom/netease/mobsec/c/e/b;

    :cond_1
    sget-object v0, Lcom/netease/mobsec/e/f;->w:Lcom/netease/mobsec/e/d;

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/netease/mobsec/e/d;->a(Landroid/content/Context;)Lcom/netease/mobsec/e/d;

    move-result-object v0

    sput-object v0, Lcom/netease/mobsec/e/f;->w:Lcom/netease/mobsec/e/d;

    :cond_2
    sget-object v0, Lcom/netease/mobsec/e/f;->x:Lcom/netease/mobsec/e/b;

    if-nez v0, :cond_3

    new-instance v0, Lcom/netease/mobsec/e/b;

    invoke-direct {v0, p1}, Lcom/netease/mobsec/e/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/netease/mobsec/e/f;->x:Lcom/netease/mobsec/e/b;

    invoke-virtual {v0}, Lcom/netease/mobsec/e/b;->t()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/netease/mobsec/e/f;->q:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method private c()Z
    .locals 12

    const-string v0, ""

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/netease/mobsec/e/f;->x:Lcom/netease/mobsec/e/b;

    invoke-virtual {v2}, Lcom/netease/mobsec/e/b;->g()J

    move-result-wide v2

    sget-object v4, Lcom/netease/mobsec/e/f;->x:Lcom/netease/mobsec/e/b;

    invoke-virtual {v4}, Lcom/netease/mobsec/e/b;->f()J

    move-result-wide v4

    sub-long v4, v2, v4

    sget-object v6, Lcom/netease/mobsec/e/f;->x:Lcom/netease/mobsec/e/b;

    invoke-virtual {v6}, Lcom/netease/mobsec/e/b;->u()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    sget-object v7, Lcom/netease/mobsec/e/f;->x:Lcom/netease/mobsec/e/b;

    invoke-virtual {v7}, Lcom/netease/mobsec/e/b;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    sget-object v8, Lcom/netease/mobsec/e/f;->x:Lcom/netease/mobsec/e/b;

    invoke-virtual {v8}, Lcom/netease/mobsec/e/b;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sget-object v8, Lcom/netease/mobsec/e/f;->x:Lcom/netease/mobsec/e/b;

    invoke-virtual {v8}, Lcom/netease/mobsec/e/b;->h()J

    move-result-wide v8

    sget-object v10, Lcom/netease/mobsec/e/f;->x:Lcom/netease/mobsec/e/b;

    invoke-virtual {v10}, Lcom/netease/mobsec/e/b;->f()J

    move-result-wide v10

    cmp-long v2, v2, v10

    if-ltz v2, :cond_1

    const-wide/16 v2, 0x12c

    cmp-long v2, v4, v2

    if-ltz v2, :cond_1

    sget-object v2, Lcom/netease/mobsec/e/f;->x:Lcom/netease/mobsec/e/b;

    invoke-virtual {v2}, Lcom/netease/mobsec/e/b;->f()J

    move-result-wide v2

    cmp-long v2, v8, v2

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-nez v6, :cond_3

    if-nez v7, :cond_3

    if-nez v2, :cond_3

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    return v1

    :cond_3
    :goto_2
    sget-object v0, Lcom/netease/mobsec/e/f;->x:Lcom/netease/mobsec/e/b;

    invoke-virtual {v0}, Lcom/netease/mobsec/e/b;->l()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v2, Lcom/netease/mobsec/e/f$c;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "4"

    const-string v4, "WhetherSendDeviceDate"

    invoke-direct {v2, p0, v3, v4, v0}, Lcom/netease/mobsec/e/f$c;-><init>(Lcom/netease/mobsec/e/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return v1
.end method

.method static synthetic c(Lcom/netease/mobsec/e/f;)Z
    .locals 0

    invoke-direct {p0}, Lcom/netease/mobsec/e/f;->c()Z

    move-result p0

    return p0
.end method

.method static synthetic d()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/netease/mobsec/e/f;->A:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d(Lcom/netease/mobsec/e/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mobsec/e/f;->q()V

    return-void
.end method

.method static synthetic e(Lcom/netease/mobsec/e/f;)I
    .locals 0

    invoke-direct {p0}, Lcom/netease/mobsec/e/f;->a()I

    move-result p0

    return p0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/netease/mobsec/e/f;->p:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/netease/mobsec/e/f;)Lcom/netease/mobsec/e/a;
    .locals 0

    invoke-direct {p0}, Lcom/netease/mobsec/e/f;->p()Lcom/netease/mobsec/e/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/netease/mobsec/e/f;->s:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g()Lcom/netease/mobsec/e/b;
    .locals 1

    sget-object v0, Lcom/netease/mobsec/e/f;->x:Lcom/netease/mobsec/e/b;

    return-object v0
.end method

.method static synthetic g(Lcom/netease/mobsec/e/f;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/netease/mobsec/e/f;->f:Z

    return p0
.end method

.method private j()Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/mobsec/SecException;
        }
    .end annotation

    sget-object v0, Lcom/netease/mobsec/e/f;->s:Ljava/lang/String;

    sget-object v1, Lcom/netease/mobsec/e/f;->x:Lcom/netease/mobsec/e/b;

    invoke-virtual {v1}, Lcom/netease/mobsec/e/b;->q()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/netease/mobsec/e/f;->n()S

    move-result v2

    invoke-static {}, Lcom/netease/mobsec/e/j;->b()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/netease/mobsec/e/f;->x:Lcom/netease/mobsec/e/b;

    invoke-virtual {v4}, Lcom/netease/mobsec/e/b;->a()Ljava/lang/String;

    move-result-object v4

    sget-boolean v5, Lcom/netease/mobsec/e/f;->u:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    :try_start_0
    sget-boolean v6, Lcom/netease/mobsec/e/f;->u:Z

    if-eqz v6, :cond_0

    sget-object v6, Lcom/netease/mobsec/e/f;->w:Lcom/netease/mobsec/e/d;

    invoke-virtual {v6}, Lcom/netease/mobsec/e/d;->b()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/netease/mobsec/e/f;->w:Lcom/netease/mobsec/e/d;

    invoke-virtual {v7}, Lcom/netease/mobsec/e/d;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const-string v6, ""

    :goto_0
    :try_start_1
    iget-object v7, p0, Lcom/netease/mobsec/e/f;->e:Lcom/netease/mobsec/c/e/b;

    if-eqz v7, :cond_1

    sget-object v7, Lcom/netease/mobsec/e/f;->x:Lcom/netease/mobsec/e/b;

    invoke-virtual {v7}, Lcom/netease/mobsec/e/b;->t()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/netease/mobsec/e/f;->q:Ljava/lang/String;

    const/16 v8, 0xd

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "200"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "A4.4.5"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, ""

    aput-object v10, v8, v9

    const/4 v9, 0x3

    aput-object v7, v8, v9

    const/4 v7, 0x4

    invoke-static {v2}, Ljava/lang/Short;->toString(S)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v7

    const/4 v2, 0x5

    aput-object v1, v8, v2

    const/4 v1, 0x6

    aput-object v3, v8, v1

    const/4 v1, 0x7

    aput-object v0, v8, v1

    const/16 v0, 0x8

    aput-object v4, v8, v0

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/netease/mobsec/e/f;->d:Ljava/lang/String;

    aput-object v1, v8, v0

    const/16 v0, 0xa

    iget-object v1, p0, Lcom/netease/mobsec/e/f;->j:Ljava/lang/String;

    aput-object v1, v8, v0

    const/16 v0, 0xb

    aput-object v5, v8, v0

    const/16 v0, 0xc

    aput-object v6, v8, v0

    const-class v0, Lcom/netease/mobsec/e/f;

    monitor-enter v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v1, p0, Lcom/netease/mobsec/e/f;->e:Lcom/netease/mobsec/c/e/b;

    invoke-interface {v1, v8}, Lcom/netease/mobsec/c/e/b;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    const-string v1, ""

    :goto_1
    return-object v1

    :catch_0
    new-instance v0, Lcom/netease/mobsec/e/f$c;

    const-string v1, "4"

    const-string v2, "getDynamicInfo"

    const-string v3, "error"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/netease/mobsec/e/f$c;-><init>(Lcom/netease/mobsec/e/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Lcom/netease/mobsec/SecException;

    const/16 v1, 0x2bb

    invoke-direct {v0, v1}, Lcom/netease/mobsec/SecException;-><init>(I)V

    throw v0
.end method

.method private k()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/mobsec/SecException;
        }
    .end annotation

    sget-object v0, Lcom/netease/mobsec/e/f;->x:Lcom/netease/mobsec/e/b;

    invoke-virtual {v0}, Lcom/netease/mobsec/e/b;->q()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/netease/mobsec/e/f;->n()S

    move-result v1

    invoke-static {}, Lcom/netease/mobsec/e/j;->b()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/netease/mobsec/e/f;->x:Lcom/netease/mobsec/e/b;

    invoke-virtual {v3}, Lcom/netease/mobsec/e/b;->a()Ljava/lang/String;

    move-result-object v3

    sget-boolean v4, Lcom/netease/mobsec/e/f;->t:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    :try_start_0
    iget-object v5, p0, Lcom/netease/mobsec/e/f;->e:Lcom/netease/mobsec/c/e/b;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/netease/mobsec/e/f;->x:Lcom/netease/mobsec/e/b;

    invoke-virtual {v5}, Lcom/netease/mobsec/e/b;->t()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/netease/mobsec/e/f;->q:Ljava/lang/String;

    const/16 v5, 0xe

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "200"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "A4.4.5"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, ""

    aput-object v7, v5, v6

    const/4 v6, 0x3

    sget-object v7, Lcom/netease/mobsec/e/f;->s:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    aput-object v2, v5, v6

    const/4 v2, 0x5

    aput-object v0, v5, v2

    const/4 v0, 0x6

    invoke-static {v1}, Ljava/lang/Short;->toString(S)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x7

    sget-object v1, Lcom/netease/mobsec/e/f;->q:Ljava/lang/String;

    aput-object v1, v5, v0

    const/16 v0, 0x8

    aput-object v3, v5, v0

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/netease/mobsec/e/f;->d:Ljava/lang/String;

    aput-object v1, v5, v0

    const/16 v0, 0xa

    iget-object v1, p0, Lcom/netease/mobsec/e/f;->j:Ljava/lang/String;

    aput-object v1, v5, v0

    const/16 v0, 0xb

    iget-object v1, p0, Lcom/netease/mobsec/e/f;->h:Ljava/lang/String;

    aput-object v1, v5, v0

    const/16 v0, 0xc

    iget-object v1, p0, Lcom/netease/mobsec/e/f;->i:Ljava/lang/String;

    aput-object v1, v5, v0

    const/16 v0, 0xd

    aput-object v4, v5, v0

    const-class v0, Lcom/netease/mobsec/e/f;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/netease/mobsec/e/f;->e:Lcom/netease/mobsec/c/e/b;

    invoke-interface {v1, v5}, Lcom/netease/mobsec/c/e/b;->b([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    const-string v1, ""

    :goto_0
    return-object v1

    :catch_0
    new-instance v0, Lcom/netease/mobsec/e/f$c;

    const-string v1, "4"

    const-string v2, "getInifInfo"

    const-string v3, "error"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/netease/mobsec/e/f$c;-><init>(Lcom/netease/mobsec/e/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Lcom/netease/mobsec/SecException;

    const/16 v1, 0x2bb

    invoke-direct {v0, v1}, Lcom/netease/mobsec/SecException;-><init>(I)V

    throw v0
.end method

.method private l()Lcom/netease/mobsec/e/a;
    .locals 4

    new-instance v0, Lcom/netease/mobsec/e/f$g;

    invoke-direct {v0, p0}, Lcom/netease/mobsec/e/f$g;-><init>(Lcom/netease/mobsec/e/f;)V

    new-instance v1, Ljava/util/concurrent/FutureTask;

    invoke-direct {v1, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x320

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mobsec/e/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static m()Lcom/netease/mobsec/AbstractNetClient;
    .locals 1

    sget-object v0, Lcom/netease/mobsec/e/f;->z:Lcom/netease/mobsec/AbstractNetClient;

    return-object v0
.end method

.method private n()S
    .locals 2

    sget-short v0, Lcom/netease/mobsec/e/f;->m:S

    const v1, 0xffff

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    sput-short v0, Lcom/netease/mobsec/e/f;->m:S

    :cond_0
    sget-short v0, Lcom/netease/mobsec/e/f;->m:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    sput-short v1, Lcom/netease/mobsec/e/f;->m:S

    return v0
.end method

.method private o()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/netease/mobsec/e/f;->r:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/netease/mobsec/e/j;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/mobsec/e/f;->r:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/netease/mobsec/e/f;->r:Ljava/lang/String;

    return-object v0
.end method

.method private p()Lcom/netease/mobsec/e/a;
    .locals 8

    const-string v0, "sendDynamic"

    const-string v1, "4"

    const-string v2, ""

    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/netease/mobsec/e/f;->j()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-boolean v5, p0, Lcom/netease/mobsec/e/f;->f:Z

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/netease/mobsec/e/e;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/v2/m/b"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    sget-object v5, Lcom/netease/mobsec/e/f;->x:Lcom/netease/mobsec/e/b;

    invoke-virtual {v5}, Lcom/netease/mobsec/e/b;->k()Ljava/lang/String;

    move-result-object v5

    :goto_0
    iput-object v5, p0, Lcom/netease/mobsec/e/f;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/mobsec/e/f;->b:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Lcom/netease/mobsec/e/f;->x:Lcom/netease/mobsec/e/b;

    const-string v6, "AC<{Z\rg$HTfo\\Yf:\u001f\u00041~G\u0019+dD\u0018>9\u0006Zgi"

    const-string v7, ")7H\u000b"

    invoke-virtual {v5, v6, v7}, Lcom/netease/mobsec/e/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/netease/mobsec/e/f;->b:Ljava/lang/String;

    :cond_2
    iget-object v5, p0, Lcom/netease/mobsec/e/f;->b:Ljava/lang/String;

    iget v6, p0, Lcom/netease/mobsec/e/f;->g:I

    invoke-static {v5, v4, v6}, Lcom/netease/mobsec/e/e;->a(Ljava/lang/String;Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "msg"

    if-eqz v4, :cond_3

    :try_start_1
    sget-object v6, Lcom/netease/mobsec/e/f;->x:Lcom/netease/mobsec/e/b;

    invoke-virtual {v6, v4}, Lcom/netease/mobsec/e/b;->b(Lorg/json/JSONObject;)I

    move-result v3

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x1a4

    if-ne v3, v4, :cond_5

    invoke-direct {p0}, Lcom/netease/mobsec/e/f;->j()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/netease/mobsec/e/f;->b:Ljava/lang/String;

    iget v7, p0, Lcom/netease/mobsec/e/f;->g:I

    invoke-static {v6, v4, v7}, Lcom/netease/mobsec/e/e;->a(Ljava/lang/String;Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_5

    :goto_1
    sget-object v6, Lcom/netease/mobsec/e/f;->x:Lcom/netease/mobsec/e/b;

    invoke-virtual {v6, v4}, Lcom/netease/mobsec/e/b;->b(Lorg/json/JSONObject;)I

    move-result v3

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lcom/netease/mobsec/e/f;->j()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/netease/mobsec/e/f;->b:Ljava/lang/String;

    iget v7, p0, Lcom/netease/mobsec/e/f;->g:I

    invoke-static {v6, v4, v7}, Lcom/netease/mobsec/e/e;->a(Ljava/lang/String;Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_5

    goto :goto_1

    :goto_2
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_4
    :goto_3
    new-instance v4, Lcom/netease/mobsec/e/f$c;

    const-string v5, "getDynamicInfo error"

    invoke-direct {v4, p0, v1, v0, v5}, Lcom/netease/mobsec/e/f$c;-><init>(Lcom/netease/mobsec/e/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x0

    return-object v0

    :catch_0
    new-instance v4, Lcom/netease/mobsec/e/f$c;

    const-string v5, "error"

    invoke-direct {v4, p0, v1, v0, v5}, Lcom/netease/mobsec/e/f$c;-><init>(Lcom/netease/mobsec/e/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    :cond_5
    :goto_4
    new-instance v0, Lcom/netease/mobsec/e/a;

    invoke-direct {v0, v3, v2}, Lcom/netease/mobsec/e/a;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method private q()V
    .locals 1

    new-instance v0, Lcom/netease/mobsec/e/f$d;

    invoke-direct {v0, p0}, Lcom/netease/mobsec/e/f$d;-><init>(Lcom/netease/mobsec/e/f;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "getNdinfo"

    const-string v3, "3"

    const/16 v4, 0x2694

    if-ne p1, v4, :cond_0

    :try_start_0
    sget-object p1, Lcom/netease/mobsec/e/f;->x:Lcom/netease/mobsec/e/b;

    invoke-virtual {p1}, Lcom/netease/mobsec/e/b;->s()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    if-lez p1, :cond_1

    sget-object p1, Lcom/netease/mobsec/e/f;->x:Lcom/netease/mobsec/e/b;

    invoke-virtual {p1}, Lcom/netease/mobsec/e/b;->s()J

    move-result-wide v4

    long-to-int p1, v4

    :cond_0
    iput p1, p0, Lcom/netease/mobsec/e/f;->g:I

    goto :goto_0

    :cond_1
    const/16 p1, 0xbb8

    iput p1, p0, Lcom/netease/mobsec/e/f;->g:I

    :goto_0
    invoke-direct {p0}, Lcom/netease/mobsec/e/f;->c()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance v4, Lcom/netease/mobsec/e/f$e;

    invoke-direct {v4, p0, p1}, Lcom/netease/mobsec/e/f$e;-><init>(Lcom/netease/mobsec/e/f;Z)V

    new-instance p1, Ljava/util/concurrent/FutureTask;

    invoke-direct {p1, v4}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance v4, Ljava/lang/Thread;

    invoke-direct {v4, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    iget v4, p0, Lcom/netease/mobsec/e/f;->g:I

    int-to-long v4, v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v4, v5, v6}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v4, Lcom/netease/mobsec/e/f$c;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p0, v3, v2, p1}, Lcom/netease/mobsec/e/f$c;-><init>(Lcom/netease/mobsec/e/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move p1, v1

    goto :goto_1

    :catch_1
    :try_start_3
    new-instance v4, Lcom/netease/mobsec/e/f$c;

    const-string p1, "TimeoutException"

    invoke-direct {v4, p0, v3, v2, p1}, Lcom/netease/mobsec/e/f$c;-><init>(Lcom/netease/mobsec/e/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move p1, v0

    :goto_1
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move v8, v1

    move v1, p1

    move p1, v8

    :goto_2
    const/16 v4, 0xc8

    if-eq p1, v4, :cond_2

    goto :goto_3

    :catch_2
    move-exception v0

    move v1, p1

    move-object p1, v0

    goto :goto_4

    :cond_2
    move v0, v1

    :goto_3
    :try_start_5
    sget-object p1, Lcom/netease/mobsec/e/f;->x:Lcom/netease/mobsec/e/b;

    invoke-virtual {p1}, Lcom/netease/mobsec/e/b;->a()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/netease/mobsec/e/f;->x:Lcom/netease/mobsec/e/b;

    invoke-virtual {v1}, Lcom/netease/mobsec/e/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1, v0}, Lcom/netease/mobsec/e/f;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    return-object p1

    :catch_3
    move-exception p1

    move v1, v0

    goto :goto_4

    :catch_4
    move-exception p1

    :goto_4
    sget-object v0, Lcom/netease/mobsec/e/f;->x:Lcom/netease/mobsec/e/b;

    invoke-virtual {v0}, Lcom/netease/mobsec/e/b;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/netease/mobsec/e/f;->x:Lcom/netease/mobsec/e/b;

    invoke-virtual {v4}, Lcom/netease/mobsec/e/b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v4, v1}, Lcom/netease/mobsec/e/f;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/netease/mobsec/e/f$c;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p0, v3, v2, p1}, Lcom/netease/mobsec/e/f$c;-><init>(Lcom/netease/mobsec/e/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-object v0
.end method

.method public a(ILcom/netease/mobsec/GetTokenCallback;)V
    .locals 23

    move-object/from16 v7, p0

    move/from16 v0, p1

    move-object/from16 v3, p2

    const-string v1, "getToken"

    const-string v2, "3"

    if-eqz v3, :cond_12

    iget-boolean v8, v7, Lcom/netease/mobsec/e/f;->k:Z

    if-eqz v8, :cond_11

    sget-object v8, Lcom/netease/mobsec/e/f;->x:Lcom/netease/mobsec/e/b;

    if-nez v8, :cond_0

    goto/16 :goto_a

    :cond_0
    const-wide/16 v9, 0x3e8

    const/4 v11, 0x0

    const/4 v12, 0x1

    const-wide/16 v13, 0x0

    :try_start_0
    invoke-virtual {v8}, Lcom/netease/mobsec/e/b;->j()Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    if-eqz v8, :cond_2

    :try_start_1
    sget-object v15, Lcom/netease/mobsec/e/f;->x:Lcom/netease/mobsec/e/b;

    invoke-virtual {v15}, Lcom/netease/mobsec/e/b;->r()J

    move-result-wide v15
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-wide/32 v17, 0x5265c00

    cmp-long v19, v15, v17

    if-lez v19, :cond_1

    move-wide/from16 v15, v17

    :cond_1
    cmp-long v17, v15, v13

    if-lez v17, :cond_3

    :try_start_2
    sget-object v4, Lcom/netease/mobsec/e/f;->B:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    if-ne v5, v12, :cond_3

    invoke-virtual {v4, v11}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/netease/mobsec/e/i;

    if-eqz v4, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    invoke-virtual {v4}, Lcom/netease/mobsec/e/i;->a()J

    move-result-wide v21

    sub-long v19, v19, v21

    cmp-long v5, v19, v13

    if-gez v5, :cond_3

    invoke-virtual {v4}, Lcom/netease/mobsec/e/i;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    sget v0, Lcom/netease/mobsec/e/j;->a:I

    sget-object v5, Lcom/netease/mobsec/e/j;->f:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/netease/mobsec/e/i;->b()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v5, v4}, Lcom/netease/mobsec/GetTokenCallback;->onResult(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    goto/16 :goto_4

    :cond_2
    move-wide v15, v13

    :cond_3
    sget-object v4, Lcom/netease/mobsec/e/f;->x:Lcom/netease/mobsec/e/b;

    invoke-virtual {v4}, Lcom/netease/mobsec/e/b;->s()J

    move-result-wide v4

    const/16 v6, 0x2694

    if-ne v0, v6, :cond_5

    cmp-long v0, v4, v13

    if-lez v0, :cond_4

    goto :goto_0

    :cond_4
    const/16 v0, 0xbb8

    iput v0, v7, Lcom/netease/mobsec/e/f;->g:I

    goto :goto_2

    :cond_5
    const/16 v6, 0x64

    if-ge v0, v6, :cond_6

    :goto_0
    long-to-int v0, v4

    goto :goto_1

    :cond_6
    const/16 v4, 0x2710

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_1
    iput v0, v7, Lcom/netease/mobsec/e/f;->g:I

    :goto_2
    sget-object v0, Lcom/netease/mobsec/e/f;->x:Lcom/netease/mobsec/e/b;

    invoke-virtual {v0}, Lcom/netease/mobsec/e/b;->i()Z

    move-result v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    :try_start_3
    invoke-static {}, Lcom/netease/mobsec/e/j;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/mobsec/e/f;->s:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Lcom/netease/mobsec/e/f;->c()Z

    move-result v0

    new-instance v5, Lcom/netease/mobsec/e/f$f;

    invoke-direct {v5, v7, v0}, Lcom/netease/mobsec/e/f$f;-><init>(Lcom/netease/mobsec/e/f;Z)V

    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, v5}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance v5, Ljava/lang/Thread;

    invoke-direct {v5, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    if-nez v4, :cond_7

    :try_start_4
    iget v5, v7, Lcom/netease/mobsec/e/f;->g:I

    int-to-long v5, v5

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v5, v6, v9}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/netease/mobsec/e/a;
    :try_end_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object/from16 v19, v6

    const-wide/16 v5, 0x32

    goto :goto_8

    :catch_1
    move-exception v0

    :try_start_5
    new-instance v5, Lcom/netease/mobsec/e/f$c;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v7, v2, v1, v0}, Lcom/netease/mobsec/e/f$c;-><init>(Lcom/netease/mobsec/e/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    :catch_2
    :try_start_6
    new-instance v5, Lcom/netease/mobsec/e/f$c;

    const-string v0, "TimeoutException"

    invoke-direct {v5, v7, v2, v1, v0}, Lcom/netease/mobsec/e/f$c;-><init>(Lcom/netease/mobsec/e/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    move v11, v12

    :goto_3
    :try_start_7
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    goto :goto_6

    :catch_3
    move-exception v0

    move v11, v12

    goto :goto_5

    :cond_7
    sget-object v0, Lcom/netease/mobsec/e/f;->x:Lcom/netease/mobsec/e/b;

    invoke-virtual {v0}, Lcom/netease/mobsec/e/b;->e()J

    move-result-wide v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    cmp-long v2, v0, v9

    if-lez v2, :cond_8

    move-wide v5, v9

    goto :goto_7

    :cond_8
    cmp-long v2, v0, v13

    if-gez v2, :cond_9

    move-wide v5, v13

    goto :goto_7

    :cond_9
    move-wide v5, v0

    goto :goto_7

    :catch_4
    move-exception v0

    goto :goto_5

    :catch_5
    move-exception v0

    move v4, v12

    goto :goto_5

    :catch_6
    move-exception v0

    move v8, v11

    :goto_4
    move v4, v12

    move-wide v15, v13

    :goto_5
    new-instance v5, Lcom/netease/mobsec/e/f$c;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v7, v2, v1, v0}, Lcom/netease/mobsec/e/f$c;-><init>(Lcom/netease/mobsec/e/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    :goto_6
    const-wide/16 v5, 0x32

    :goto_7
    const/16 v19, 0x0

    :goto_8
    if-nez v4, :cond_b

    if-eqz v19, :cond_a

    invoke-virtual/range {v19 .. v19}, Lcom/netease/mobsec/e/a;->a()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_b

    :cond_a
    move v11, v12

    :cond_b
    sget-object v0, Lcom/netease/mobsec/e/f;->x:Lcom/netease/mobsec/e/b;

    invoke-virtual {v0}, Lcom/netease/mobsec/e/b;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/netease/mobsec/e/f;->s:Ljava/lang/String;

    invoke-direct {v7, v0, v1, v11}, Lcom/netease/mobsec/e/f;->b(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v8, :cond_d

    cmp-long v1, v15, v13

    if-lez v1, :cond_d

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    sget-object v1, Lcom/netease/mobsec/e/f;->B:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-lez v2, :cond_c

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    :cond_c
    new-instance v2, Lcom/netease/mobsec/e/i;

    invoke-direct {v2}, Lcom/netease/mobsec/e/i;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    add-long/2addr v8, v15

    invoke-virtual {v2, v8, v9}, Lcom/netease/mobsec/e/i;->a(J)V

    invoke-virtual {v2, v0}, Lcom/netease/mobsec/e/i;->a(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    if-nez v4, :cond_e

    sget v1, Lcom/netease/mobsec/e/j;->a:I

    sget-object v2, Lcom/netease/mobsec/e/j;->f:Ljava/lang/String;

    invoke-interface {v3, v1, v2, v0}, Lcom/netease/mobsec/GetTokenCallback;->onResult(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e
    invoke-static {}, Lcom/netease/mobsec/e/j;->c()Z

    move-result v1

    if-eqz v1, :cond_f

    new-instance v8, Ljava/lang/Thread;

    new-instance v9, Lcom/netease/mobsec/e/f$a;

    move-object v1, v9

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object v4, v0

    invoke-direct/range {v1 .. v6}, Lcom/netease/mobsec/e/f$a;-><init>(Lcom/netease/mobsec/e/f;Lcom/netease/mobsec/GetTokenCallback;Ljava/lang/String;J)V

    invoke-direct {v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    goto :goto_9

    :cond_f
    cmp-long v1, v5, v13

    if-lez v1, :cond_10

    :try_start_8
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_7

    :catch_7
    :cond_10
    sget v1, Lcom/netease/mobsec/e/j;->a:I

    sget-object v2, Lcom/netease/mobsec/e/j;->f:Ljava/lang/String;

    invoke-interface {v3, v1, v2, v0}, Lcom/netease/mobsec/GetTokenCallback;->onResult(ILjava/lang/String;Ljava/lang/String;)V

    :goto_9
    return-void

    :cond_11
    :goto_a
    sget v0, Lcom/netease/mobsec/e/j;->c:I

    sget-object v1, Lcom/netease/mobsec/e/j;->h:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v3, v0, v1, v2}, Lcom/netease/mobsec/GetTokenCallback;->onResult(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/netease/mobsec/WatchManConf;Lcom/netease/mobsec/InitCallback;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :try_start_0
    iput-boolean v0, p0, Lcom/netease/mobsec/e/f;->k:Z

    if-eqz p4, :cond_0

    sget p1, Lcom/netease/mobsec/e/j;->d:I

    sget-object p2, Lcom/netease/mobsec/e/j;->i:Ljava/lang/String;

    invoke-interface {p4, p1, p2}, Lcom/netease/mobsec/InitCallback;->onResult(ILjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/netease/mobsec/e/f;->b(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/netease/mobsec/e/f;->c:I

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p4, :cond_2

    sget p1, Lcom/netease/mobsec/e/j;->b:I

    sget-object p2, Lcom/netease/mobsec/e/j;->g:Ljava/lang/String;

    invoke-interface {p4, p1, p2}, Lcom/netease/mobsec/InitCallback;->onResult(ILjava/lang/String;)V

    :cond_2
    iput-boolean v0, p0, Lcom/netease/mobsec/e/f;->k:Z

    return-void

    :cond_3
    iput-object p2, p0, Lcom/netease/mobsec/e/f;->d:Ljava/lang/String;

    if-eqz p3, :cond_a

    invoke-virtual {p3}, Lcom/netease/mobsec/WatchManConf;->getChannel()Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v1, ""

    if-eqz p2, :cond_4

    :try_start_1
    invoke-virtual {p3}, Lcom/netease/mobsec/WatchManConf;->getChannel()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/mobsec/e/f;->h:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iput-object v1, p0, Lcom/netease/mobsec/e/f;->h:Ljava/lang/String;

    :goto_0
    invoke-virtual {p3}, Lcom/netease/mobsec/WatchManConf;->getCustomTrackId()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p3}, Lcom/netease/mobsec/WatchManConf;->getCustomTrackId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/mobsec/e/f;->j:Ljava/lang/String;

    goto :goto_1

    :cond_5
    iput-object v1, p0, Lcom/netease/mobsec/e/f;->j:Ljava/lang/String;

    :goto_1
    invoke-virtual {p3}, Lcom/netease/mobsec/WatchManConf;->getCollectApk()Z

    move-result p2

    sput-boolean p2, Lcom/netease/mobsec/e/f;->t:Z

    invoke-virtual {p3}, Lcom/netease/mobsec/WatchManConf;->getCollectSensor()Z

    move-result p2

    sput-boolean p2, Lcom/netease/mobsec/e/f;->u:Z

    invoke-virtual {p3}, Lcom/netease/mobsec/WatchManConf;->getExtraData()Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p3}, Lcom/netease/mobsec/WatchManConf;->getExtraData()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-lez p2, :cond_6

    :try_start_2
    new-instance p2, Lorg/json/JSONObject;

    invoke-virtual {p3}, Lcom/netease/mobsec/WatchManConf;->getExtraData()Ljava/util/Map;

    move-result-object v2

    invoke-direct {p2, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/mobsec/e/f;->i:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    :cond_6
    :try_start_3
    iput-object v1, p0, Lcom/netease/mobsec/e/f;->i:Ljava/lang/String;

    :cond_7
    :goto_2
    invoke-virtual {p3}, Lcom/netease/mobsec/WatchManConf;->getAbstractNetClient()Lcom/netease/mobsec/AbstractNetClient;

    move-result-object p2

    const/4 v1, 0x0

    if-eqz p2, :cond_8

    invoke-virtual {p3}, Lcom/netease/mobsec/WatchManConf;->getAbstractNetClient()Lcom/netease/mobsec/AbstractNetClient;

    move-result-object p2

    sput-object p2, Lcom/netease/mobsec/e/f;->z:Lcom/netease/mobsec/AbstractNetClient;

    goto :goto_3

    :cond_8
    sput-object v1, Lcom/netease/mobsec/e/f;->z:Lcom/netease/mobsec/AbstractNetClient;

    :goto_3
    invoke-virtual {p3}, Lcom/netease/mobsec/WatchManConf;->getUrl()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_9

    invoke-virtual {p3}, Lcom/netease/mobsec/WatchManConf;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_9

    invoke-virtual {p3}, Lcom/netease/mobsec/WatchManConf;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/netease/mobsec/e/e;->a(Ljava/lang/String;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/netease/mobsec/e/f;->f:Z

    goto :goto_4

    :cond_9
    invoke-static {v1}, Lcom/netease/mobsec/e/e;->a(Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/netease/mobsec/e/f;->f:Z

    :cond_a
    :goto_4
    sget-boolean p2, Lcom/netease/mobsec/e/f;->u:Z

    if-eqz p2, :cond_c

    sget-object p2, Lcom/netease/mobsec/e/f;->w:Lcom/netease/mobsec/e/d;

    if-nez p2, :cond_b

    invoke-direct {p0, p1}, Lcom/netease/mobsec/e/f;->c(Landroid/content/Context;)V

    sget-object p2, Lcom/netease/mobsec/e/f;->w:Lcom/netease/mobsec/e/d;

    if-eqz p2, :cond_c

    :cond_b
    invoke-virtual {p2}, Lcom/netease/mobsec/e/d;->d()V

    :cond_c
    sget-object p2, Lcom/netease/mobsec/e/f;->x:Lcom/netease/mobsec/e/b;

    if-nez p2, :cond_d

    invoke-direct {p0, p1}, Lcom/netease/mobsec/e/f;->c(Landroid/content/Context;)V

    :cond_d
    sget-object p1, Lcom/netease/mobsec/e/f;->x:Lcom/netease/mobsec/e/b;

    invoke-virtual {p1}, Lcom/netease/mobsec/e/b;->o()J

    move-result-wide p1

    sget-object p3, Lcom/netease/mobsec/e/f;->x:Lcom/netease/mobsec/e/b;

    invoke-virtual {p3}, Lcom/netease/mobsec/e/b;->f()J

    move-result-wide v1

    cmp-long p1, p1, v1

    if-lez p1, :cond_f

    invoke-direct {p0}, Lcom/netease/mobsec/e/f;->c()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-direct {p0}, Lcom/netease/mobsec/e/f;->q()V

    :cond_e
    if-eqz p4, :cond_11

    sget p1, Lcom/netease/mobsec/e/j;->a:I

    sget-object p2, Lcom/netease/mobsec/e/j;->f:Ljava/lang/String;

    invoke-interface {p4, p1, p2}, Lcom/netease/mobsec/InitCallback;->onResult(ILjava/lang/String;)V

    goto :goto_5

    :cond_f
    invoke-direct {p0, p4}, Lcom/netease/mobsec/e/f;->a(Lcom/netease/mobsec/InitCallback;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5

    :catch_1
    move-exception p1

    if-eqz p4, :cond_10

    sget p2, Lcom/netease/mobsec/e/j;->e:I

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p4, p2, p3}, Lcom/netease/mobsec/InitCallback;->onResult(ILjava/lang/String;)V

    :cond_10
    iput-boolean v0, p0, Lcom/netease/mobsec/e/f;->k:Z

    new-instance p2, Lcom/netease/mobsec/e/f$c;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p3, "3"

    const-string p4, "init"

    invoke-direct {p2, p0, p3, p4, p1}, Lcom/netease/mobsec/e/f$c;-><init>(Lcom/netease/mobsec/e/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    :cond_11
    :goto_5
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iput-object p1, p0, Lcom/netease/mobsec/e/f;->j:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    sput-boolean p1, Lcom/netease/mobsec/e/f;->u:Z

    sget-object p1, Lcom/netease/mobsec/e/f;->w:Lcom/netease/mobsec/e/d;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/netease/mobsec/e/d;->d()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    sput-boolean p1, Lcom/netease/mobsec/e/f;->u:Z

    sget-object p1, Lcom/netease/mobsec/e/f;->w:Lcom/netease/mobsec/e/d;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/netease/mobsec/e/d;->e()V

    :cond_1
    :goto_0
    return-void
.end method

.method public h()V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/netease/mobsec/e/f;->x:Lcom/netease/mobsec/e/b;

    invoke-virtual {v0}, Lcom/netease/mobsec/e/b;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    :try_start_0
    sget-object v0, Lcom/netease/mobsec/e/f;->x:Lcom/netease/mobsec/e/b;

    invoke-virtual {v0}, Lcom/netease/mobsec/e/b;->b()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method
