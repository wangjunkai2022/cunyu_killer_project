.class public Lcom/tencent/thumbplayer/utils/k;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/reflect/Method;

.field private static b:Ljava/lang/reflect/Method;

.field private static c:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    :try_start_0
    const-class v0, Ljava/lang/Class;

    const-string v1, "forName"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/tencent/thumbplayer/utils/k;->a:Ljava/lang/reflect/Method;

    const-class v0, Ljava/lang/Class;

    const-string v1, "getDeclaredMethod"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v5

    const-class v4, [Ljava/lang/Class;

    aput-object v4, v3, v2

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/tencent/thumbplayer/utils/k;->b:Ljava/lang/reflect/Method;

    const-class v0, Ljava/lang/Class;

    const-string v1, "getDeclaredField"

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/tencent/thumbplayer/utils/k;->c:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TPPrimaryReflectUtil"

    invoke-static {v1, v0}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static varargs a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/tencent/thumbplayer/utils/k;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TPPrimaryReflectUtil"

    invoke-static {p1, p0}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 5

    invoke-static {}, Lcom/tencent/thumbplayer/utils/k;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/tencent/thumbplayer/utils/k;->a:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    sget-object v0, Lcom/tencent/thumbplayer/utils/k;->b:Ljava/lang/reflect/Method;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    aput-object p2, v3, v2

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, p0

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v1, p0

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TPPrimaryReflectUtil"

    invoke-static {p1, p0}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-object v1
.end method

.method private static a()Z
    .locals 1

    sget-object v0, Lcom/tencent/thumbplayer/utils/k;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tencent/thumbplayer/utils/k;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tencent/thumbplayer/utils/k;->c:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
