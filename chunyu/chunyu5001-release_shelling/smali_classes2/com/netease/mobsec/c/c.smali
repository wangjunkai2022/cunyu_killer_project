.class public Lcom/netease/mobsec/c/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile c:Lcom/netease/mobsec/c/c;

.field private static volatile d:Lcom/netease/mobsec/c/f/a;


# instance fields
.field private final a:Lcom/netease/mobsec/c/b;

.field private final b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/netease/mobsec/c/b;->a(Landroid/content/Context;)Lcom/netease/mobsec/c/b;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/mobsec/c/c;->a:Lcom/netease/mobsec/c/b;

    iput-object p1, p0, Lcom/netease/mobsec/c/c;->b:Landroid/content/Context;

    invoke-static {}, Lcom/netease/mobsec/c/c;->b()Lcom/netease/mobsec/c/f/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/mobsec/c/f/a;->b(Landroid/content/Context;)I

    return-void
.end method

.method private a(I)Lcom/netease/mobsec/c/a;
    .locals 1

    iget-object v0, p0, Lcom/netease/mobsec/c/c;->a:Lcom/netease/mobsec/c/b;

    invoke-virtual {v0, p1}, Lcom/netease/mobsec/c/b;->a(I)Lcom/netease/mobsec/c/a;

    move-result-object p1

    return-object p1
.end method

.method public static a(Landroid/content/Context;)Lcom/netease/mobsec/c/c;
    .locals 3

    sget-object v0, Lcom/netease/mobsec/c/c;->c:Lcom/netease/mobsec/c/c;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-class v0, Lcom/netease/mobsec/c/c;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v2, Lcom/netease/mobsec/c/c;->c:Lcom/netease/mobsec/c/c;

    if-nez v2, :cond_1

    new-instance v2, Lcom/netease/mobsec/c/c;

    invoke-direct {v2, p0}, Lcom/netease/mobsec/c/c;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/netease/mobsec/c/c;->c:Lcom/netease/mobsec/c/c;

    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v1, Lcom/netease/mobsec/c/c;->c:Lcom/netease/mobsec/c/c;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_2
    sget-object v1, Lcom/netease/mobsec/c/c;->c:Lcom/netease/mobsec/c/c;

    :catchall_1
    :goto_0
    return-object v1
.end method

.method public static b()Lcom/netease/mobsec/c/f/a;
    .locals 1

    sget-object v0, Lcom/netease/mobsec/c/c;->d:Lcom/netease/mobsec/c/f/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/mobsec/c/f/b;

    invoke-direct {v0}, Lcom/netease/mobsec/c/f/b;-><init>()V

    sput-object v0, Lcom/netease/mobsec/c/c;->d:Lcom/netease/mobsec/c/f/a;

    :cond_0
    sget-object v0, Lcom/netease/mobsec/c/c;->d:Lcom/netease/mobsec/c/f/a;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/netease/mobsec/c/e/b;
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/netease/mobsec/c/c;->a(I)Lcom/netease/mobsec/c/a;

    move-result-object v0

    check-cast v0, Lcom/netease/mobsec/c/e/b;

    return-object v0
.end method
