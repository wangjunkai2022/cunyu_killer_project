.class Lcom/netease/nis/basesdk/crash/b;
.super Ljava/lang/Object;
.source "CrashStore.java"


# static fields
.field private static final b:Lcom/netease/nis/basesdk/crash/b;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/netease/nis/basesdk/crash/b;

    invoke-direct {v0}, Lcom/netease/nis/basesdk/crash/b;-><init>()V

    sput-object v0, Lcom/netease/nis/basesdk/crash/b;->b:Lcom/netease/nis/basesdk/crash/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/netease/nis/basesdk/crash/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/nis/basesdk/crash/b;->b:Lcom/netease/nis/basesdk/crash/b;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-static {}, Lcom/netease/nis/basesdk/crash/c;->b()Lcom/netease/nis/basesdk/crash/c;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/netease/nis/basesdk/crash/c;->a(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "delete file success"

    .line 4
    invoke-static {p1}, Lcom/netease/nis/basesdk/Logger;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/netease/nis/basesdk/crash/b;->a:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/netease/nis/basesdk/crash/c;->b()Lcom/netease/nis/basesdk/crash/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/nis/basesdk/crash/c;->b(Ljava/lang/String;)V

    return-void
.end method

.method public b()[Ljava/io/File;
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/netease/nis/basesdk/crash/b;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/io/File;

    return-object v0

    .line 7
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/netease/nis/basesdk/crash/b;->a:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    new-instance v2, Lcom/netease/nis/basesdk/crash/b$a;

    invoke-direct {v2, p0}, Lcom/netease/nis/basesdk/crash/b$a;-><init>(Lcom/netease/nis/basesdk/crash/b;)V

    invoke-virtual {v0, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_2

    new-array v0, v1, [Ljava/io/File;

    return-object v0

    .line 26
    :cond_2
    new-instance v1, Lcom/netease/nis/basesdk/crash/b$b;

    invoke-direct {v1, p0}, Lcom/netease/nis/basesdk/crash/b$b;-><init>(Lcom/netease/nis/basesdk/crash/b;)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object v0

    :cond_3
    :goto_0
    new-array v0, v1, [Ljava/io/File;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "parse log file failed"

    const-string v1, "JavaCrashCrashStore"

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_0

    return-object v3

    :cond_0
    const/4 v2, 0x0

    .line 6
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 10
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object p1

    :catchall_0
    move-exception p1

    move-object v2, v4

    goto :goto_4

    :catch_1
    move-object v2, v4

    goto :goto_1

    :catch_2
    move-object v2, v4

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_4

    .line 21
    :catch_3
    :goto_1
    :try_start_3
    invoke-static {v1, v0}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_2

    goto :goto_3

    .line 26
    :catch_4
    :goto_2
    invoke-static {v1, v0}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_2

    .line 25
    :goto_3
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    :catch_5
    :cond_2
    return-object v3

    :goto_4
    if-eqz v2, :cond_3

    .line 32
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 36
    :catch_6
    :cond_3
    throw p1
.end method

.method public d(Ljava/lang/String;)Ljava/io/File;
    .locals 11

    const-string v0, "JavaCrashCrashStore"

    .line 1
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    const/4 v2, 0x0

    .line 4
    :try_start_0
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "%s/%s_%020d_%s"

    const/4 v5, 0x4

    :try_start_1
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/netease/nis/basesdk/crash/b;->a:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "tombstone"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v6

    const/4 v1, 0x3

    const-string v6, ".java.crash"

    aput-object v6, v5, v1

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {}, Lcom/netease/nis/basesdk/crash/c;->b()Lcom/netease/nis/basesdk/crash/c;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/netease/nis/basesdk/crash/c;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "createLogFile failed"

    .line 7
    invoke-static {v0, v1}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_2

    .line 13
    :try_start_2
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "rws"

    invoke-direct {v3, v1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 14
    :try_start_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "UTF-8"

    .line 15
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_0
    move-object v2, v3

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v2, v3

    goto :goto_3

    :catch_1
    move-object v2, v3

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_2
    :goto_1
    :try_start_4
    const-string p1, "write log file failed"

    .line 23
    invoke-static {v0, p1}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_2

    .line 22
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :goto_3
    if-eqz v2, :cond_1

    .line 27
    :try_start_6
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 31
    :catch_3
    :cond_1
    throw p1

    :catch_4
    :cond_2
    :goto_4
    return-object v1
.end method
