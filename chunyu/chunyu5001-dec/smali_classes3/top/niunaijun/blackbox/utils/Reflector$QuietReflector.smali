.class public Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;
.super Ltop/niunaijun/blackbox/utils/Reflector;
.source "Reflector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/utils/Reflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QuietReflector"
.end annotation


# instance fields
.field protected mIgnored:Ljava/lang/Throwable;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 248
    invoke-direct {p0}, Ltop/niunaijun/blackbox/utils/Reflector;-><init>()V

    return-void
.end method

.method public static on(Ljava/lang/Class;)Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 231
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Type was null!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, v0}, Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;->on(Ljava/lang/Class;Ljava/lang/Throwable;)Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;

    move-result-object p0

    return-object p0
.end method

.method private static on(Ljava/lang/Class;Ljava/lang/Throwable;)Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "ignored"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Throwable;",
            ")",
            "Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;"
        }
    .end annotation

    .line 235
    new-instance v0, Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;-><init>()V

    .line 236
    iput-object p0, v0, Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;->mType:Ljava/lang/Class;

    .line 237
    iput-object p1, v0, Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    return-object v0
.end method

.method public static on(Ljava/lang/String;)Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 212
    const-class v0, Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;->on(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;

    move-result-object p0

    return-object p0
.end method

.method public static on(Ljava/lang/String;Z)Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "initialize"
        }
    .end annotation

    .line 216
    const-class v0, Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p0, p1, v0}, Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;->on(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;

    move-result-object p0

    return-object p0
.end method

.method public static on(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "initialize",
            "loader"
        }
    .end annotation

    const/4 v0, 0x0

    .line 222
    :try_start_0
    invoke-static {p0, p1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 223
    :try_start_1
    invoke-static {p0, v0}, Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;->on(Ljava/lang/Class;Ljava/lang/Throwable;)Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    move-object v0, p0

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 226
    :goto_0
    invoke-static {v0, p1}, Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;->on(Ljava/lang/Class;Ljava/lang/Throwable;)Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;

    move-result-object p0

    return-object p0
.end method

.method public static with(Ljava/lang/Object;)Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "caller"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 243
    check-cast p0, Ljava/lang/Class;

    invoke-static {p0}, Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;->on(Ljava/lang/Class;)Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;

    move-result-object p0

    return-object p0

    .line 245
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;->on(Ljava/lang/Class;)Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;

    move-result-object v0

    invoke-virtual {v0, p0}, Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;->bind(Ljava/lang/Object;)Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bind(Ljava/lang/Object;)Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 296
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;->skipAlways()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 300
    :try_start_0
    iput-object v0, p0, Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    .line 301
    invoke-super {p0, p1}, Ltop/niunaijun/blackbox/utils/Reflector;->bind(Ljava/lang/Object;)Ltop/niunaijun/blackbox/utils/Reflector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 303
    iput-object p1, p0, Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)Ltop/niunaijun/blackbox/utils/Reflector;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "obj"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 207
    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;->bind(Ljava/lang/Object;)Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;

    move-result-object p1

    return-object p1
.end method

.method public varargs call([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .line 407
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;->skip()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 411
    :cond_0
    :try_start_0
    iput-object v1, p0, Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    .line 412
    invoke-super {p0, p1}, Ltop/niunaijun/blackbox/utils/Reflector;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 414
    iput-object p1, p0, Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    return-object v1
.end method

.method public varargs callByCaller(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "caller",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .line 422
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;->skip()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 426
    :cond_0
    :try_start_0
    iput-object v1, p0, Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    .line 427
    invoke-super {p0, p1, p2}, Ltop/niunaijun/blackbox/utils/Reflector;->callByCaller(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 429
    iput-object p1, p0, Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    return-object v1
.end method

.method public varargs constructor([Ljava/lang/Class;)Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameterTypes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;"
        }
    .end annotation

    .line 266
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;->skipAlways()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 270
    :try_start_0
    iput-object v0, p0, Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    .line 271
    invoke-super {p0, p1}, Ltop/niunaijun/blackbox/utils/Reflector;->constructor([Ljava/lang/Class;)Ltop/niunaijun/blackbox/utils/Reflector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 273
    iput-object p1, p0, Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic constructor([Ljava/lang/Class;)Ltop/niunaijun/blackbox/utils/Reflector;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "parameterTypes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 207
    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;->constructor([Ljava/lang/Class;)Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;

    move-result-object p1

    return-object p1
.end method

.method public field(Ljava/lang/String;)Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 317
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;->skipAlways()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 321
    :try_start_0
    iput-object v0, p0, Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    .line 322
    invoke-super {p0, p1}, Ltop/niunaijun/blackbox/utils/Reflector;->field(Ljava/lang/String;)Ltop/niunaijun/blackbox/utils/Reflector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 324
    iput-object p1, p0, Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic field(Ljava/lang/String;)Ltop/niunaijun/blackbox/utils/Reflector;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 207
    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;->field(Ljava/lang/String;)Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;

    move-result-object p1

    return-object p1
.end method

.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()TR;"
        }
    .end annotation

    .line 332
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;->skip()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 336
    :cond_0
    :try_start_0
    iput-object v1, p0, Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    .line 337
    invoke-super {p0}, Ltop/niunaijun/blackbox/utils/Reflector;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 339
    iput-object v0, p0, Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    return-object v1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "caller"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .line 347
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;->skip()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 351
    :cond_0
    :try_start_0
    iput-object v1, p0, Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    .line 352
    invoke-super {p0, p1}, Ltop/niunaijun/blackbox/utils/Reflector;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 354
    iput-object p1, p0, Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    return-object v1
.end method

.method public getIgnored()Ljava/lang/Throwable;
    .locals 1

    .line 253
    iget-object v0, p0, Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    return-object v0
.end method

.method public varargs method(Ljava/lang/String;[Ljava/lang/Class;)Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "parameterTypes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;"
        }
    .end annotation

    .line 392
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;->skipAlways()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 396
    :try_start_0
    iput-object v0, p0, Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    .line 397
    invoke-super {p0, p1, p2}, Ltop/niunaijun/blackbox/utils/Reflector;->method(Ljava/lang/String;[Ljava/lang/Class;)Ltop/niunaijun/blackbox/utils/Reflector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 399
    iput-object p1, p0, Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic method(Ljava/lang/String;[Ljava/lang/Class;)Ltop/niunaijun/blackbox/utils/Reflector;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "name",
            "parameterTypes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 207
    invoke-virtual {p0, p1, p2}, Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;->method(Ljava/lang/String;[Ljava/lang/Class;)Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;

    move-result-object p1

    return-object p1
.end method

.method public varargs newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "initargs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .line 281
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;->skip()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 285
    :cond_0
    :try_start_0
    iput-object v1, p0, Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    .line 286
    invoke-super {p0, p1}, Ltop/niunaijun/blackbox/utils/Reflector;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 288
    iput-object p1, p0, Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    return-object v1
.end method

.method public set(Ljava/lang/Object;)Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 362
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;->skip()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 366
    :try_start_0
    iput-object v0, p0, Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    .line 367
    invoke-super {p0, p1}, Ltop/niunaijun/blackbox/utils/Reflector;->set(Ljava/lang/Object;)Ltop/niunaijun/blackbox/utils/Reflector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 369
    iput-object p1, p0, Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    :goto_0
    return-object p0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "caller",
            "value"
        }
    .end annotation

    .line 377
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;->skip()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 381
    :try_start_0
    iput-object v0, p0, Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    .line 382
    invoke-super {p0, p1, p2}, Ltop/niunaijun/blackbox/utils/Reflector;->set(Ljava/lang/Object;Ljava/lang/Object;)Ltop/niunaijun/blackbox/utils/Reflector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 384
    iput-object p1, p0, Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic set(Ljava/lang/Object;)Ltop/niunaijun/blackbox/utils/Reflector;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 207
    invoke-virtual {p0, p1}, Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;->set(Ljava/lang/Object;)Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)Ltop/niunaijun/blackbox/utils/Reflector;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "caller",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 207
    invoke-virtual {p0, p1, p2}, Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;->set(Ljava/lang/Object;Ljava/lang/Object;)Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;

    move-result-object p1

    return-object p1
.end method

.method protected skip()Z
    .locals 1

    .line 257
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;->skipAlways()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;->mIgnored:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected skipAlways()Z
    .locals 1

    .line 261
    iget-object v0, p0, Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;->mType:Ljava/lang/Class;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public unbind()Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;
    .locals 0

    .line 311
    invoke-super {p0}, Ltop/niunaijun/blackbox/utils/Reflector;->unbind()Ltop/niunaijun/blackbox/utils/Reflector;

    return-object p0
.end method

.method public bridge synthetic unbind()Ltop/niunaijun/blackbox/utils/Reflector;
    .locals 1

    .line 207
    invoke-virtual {p0}, Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;->unbind()Ltop/niunaijun/blackbox/utils/Reflector$QuietReflector;

    move-result-object v0

    return-object v0
.end method
