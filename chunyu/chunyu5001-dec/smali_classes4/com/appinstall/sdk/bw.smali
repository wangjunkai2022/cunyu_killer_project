.class public Lcom/appinstall/sdk/bw;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/appinstall/sdk/cg;

.field private static b:Lcom/appinstall/sdk/bw;


# instance fields
.field private final c:Lcom/appinstall/sdk/bx;

.field private d:Z

.field private final e:Lcom/appinstall/sdk/bz;

.field private final f:Lcom/appinstall/sdk/cb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "HM"

    invoke-static {v0}, Lcom/appinstall/sdk/cg;->a(Ljava/lang/String;)Lcom/appinstall/sdk/cg;

    move-result-object v0

    sput-object v0, Lcom/appinstall/sdk/bw;->a:Lcom/appinstall/sdk/cg;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/appinstall/sdk/bz;

    invoke-direct {v0}, Lcom/appinstall/sdk/bz;-><init>()V

    iput-object v0, p0, Lcom/appinstall/sdk/bw;->e:Lcom/appinstall/sdk/bz;

    new-instance v0, Lcom/appinstall/sdk/cb;

    invoke-direct {v0}, Lcom/appinstall/sdk/cb;-><init>()V

    iput-object v0, p0, Lcom/appinstall/sdk/bw;->f:Lcom/appinstall/sdk/cb;

    new-instance v0, Lcom/appinstall/sdk/bx;

    invoke-direct {v0}, Lcom/appinstall/sdk/bx;-><init>()V

    iput-object v0, p0, Lcom/appinstall/sdk/bw;->c:Lcom/appinstall/sdk/bx;

    return-void
.end method

.method public static a()Lcom/appinstall/sdk/bw;
    .locals 2

    sget-object v0, Lcom/appinstall/sdk/bw;->b:Lcom/appinstall/sdk/bw;

    if-nez v0, :cond_1

    const-class v0, Lcom/appinstall/sdk/bw;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/appinstall/sdk/bw;->b:Lcom/appinstall/sdk/bw;

    if-nez v1, :cond_0

    new-instance v1, Lcom/appinstall/sdk/bw;

    invoke-direct {v1}, Lcom/appinstall/sdk/bw;-><init>()V

    sput-object v1, Lcom/appinstall/sdk/bw;->b:Lcom/appinstall/sdk/bw;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/appinstall/sdk/bw;->b:Lcom/appinstall/sdk/bw;

    return-object v0
.end method

.method private a(Ljava/util/Map;)Ljava/lang/String;
    .locals 8

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iget-boolean p1, p0, Lcom/appinstall/sdk/bw;->d:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/appinstall/sdk/bw;->e:Lcom/appinstall/sdk/bz;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/appinstall/sdk/bw;->f:Lcom/appinstall/sdk/cb;

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v3, :cond_2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {p1, v3}, Lcom/appinstall/sdk/ca;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    instance-of v4, v2, Ljava/lang/String;

    const-string v5, "&"

    const-string v6, "="

    if-eqz v4, :cond_6

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v2}, Lcom/appinstall/sdk/ca;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    instance-of v4, v2, Ljava/util/List;

    if-eqz v4, :cond_2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {p1, v4}, Lcom/appinstall/sdk/ca;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_9

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/appinstall/sdk/by;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/appinstall/sdk/bw;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Z)Lcom/appinstall/sdk/by;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Z)Lcom/appinstall/sdk/by;
    .locals 2

    invoke-direct {p0, p2}, Lcom/appinstall/sdk/bw;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-array v0, v0, [B

    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p3, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    invoke-virtual {p3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_0
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    if-eqz p4, :cond_0

    const-string p4, "content-type"

    const-string v1, "text/plain;charset=utf-8"

    invoke-virtual {p3, p4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    array-length p4, v0

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    const-string v1, "content-length"

    invoke-virtual {p3, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p4, p0, Lcom/appinstall/sdk/bw;->c:Lcom/appinstall/sdk/bx;

    invoke-virtual {p4, p1, p2, v0, p3}, Lcom/appinstall/sdk/bx;->a(Ljava/lang/String;Ljava/lang/String;[BLjava/util/HashMap;)Lcom/appinstall/sdk/by;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/appinstall/sdk/by;
    .locals 1

    invoke-direct {p0, p3}, Lcom/appinstall/sdk/bw;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/appinstall/sdk/bw;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Z)Lcom/appinstall/sdk/by;

    move-result-object p1

    return-object p1
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/appinstall/sdk/bw;->d:Z

    return-void
.end method
