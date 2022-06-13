.class Lcom/netease/nis/basesdk/crash/c;
.super Ljava/lang/Object;
.source "FileManager.java"


# static fields
.field private static final b:Lcom/netease/nis/basesdk/crash/c;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/netease/nis/basesdk/crash/c;

    invoke-direct {v0}, Lcom/netease/nis/basesdk/crash/c;-><init>()V

    sput-object v0, Lcom/netease/nis/basesdk/crash/c;->b:Lcom/netease/nis/basesdk/crash/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Z
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/netease/nis/basesdk/crash/c;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 7
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    return v1
.end method

.method public static b()Lcom/netease/nis/basesdk/crash/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/nis/basesdk/crash/c;->b:Lcom/netease/nis/basesdk/crash/c;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    const-string v0, "JavaCrashFileManager"

    .line 8
    iget-object v1, p0, Lcom/netease/nis/basesdk/crash/c;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 12
    :cond_0
    invoke-direct {p0}, Lcom/netease/nis/basesdk/crash/c;->a()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v2

    .line 16
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result p1

    if-eqz p1, :cond_2

    return-object v1

    :cond_2
    const-string p1, "FileManager createLogFile by createNewFile failed,file already exists"

    .line 21
    invoke-static {v0, p1}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    const-string p1, "FileManager createLogFile by createNewFile failed"

    .line 25
    invoke-static {v0, p1}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public a(Ljava/io/File;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 26
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 31
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/netease/nis/basesdk/crash/c;->a:Ljava/lang/String;

    return-void
.end method
