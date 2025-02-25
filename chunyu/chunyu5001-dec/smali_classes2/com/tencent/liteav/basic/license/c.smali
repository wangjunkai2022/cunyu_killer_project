.class public Lcom/tencent/liteav/basic/license/c;
.super Lcom/tencent/liteav/basic/license/a;
.source "HttpFileUtil.java"


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/tencent/liteav/basic/license/b;

.field private g:J

.field private h:J

.field private i:Z

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/liteav/basic/license/b;ZLjava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/tencent/liteav/basic/license/a;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/tencent/liteav/basic/license/c;->b:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/tencent/liteav/basic/license/c;->c:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/tencent/liteav/basic/license/c;->d:Ljava/lang/String;

    .line 39
    iput-object p4, p0, Lcom/tencent/liteav/basic/license/c;->e:Ljava/lang/String;

    .line 40
    iput-object p5, p0, Lcom/tencent/liteav/basic/license/c;->f:Lcom/tencent/liteav/basic/license/b;

    .line 41
    iput-boolean p6, p0, Lcom/tencent/liteav/basic/license/c;->i:Z

    .line 42
    iput-object p7, p0, Lcom/tencent/liteav/basic/license/c;->j:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/Exception;I)V
    .locals 1

    .line 166
    iget-object p2, p0, Lcom/tencent/liteav/basic/license/c;->f:Lcom/tencent/liteav/basic/license/b;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 167
    invoke-interface {p2, v0, p1}, Lcom/tencent/liteav/basic/license/b;->a(Ljava/io/File;Ljava/lang/Exception;)V

    .line 169
    :cond_0
    iput-object v0, p0, Lcom/tencent/liteav/basic/license/c;->f:Lcom/tencent/liteav/basic/license/b;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    move-object/from16 v1, p0

    .line 47
    iget-object v0, v1, Lcom/tencent/liteav/basic/license/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/liteav/basic/util/c;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_22

    iget-object v0, v1, Lcom/tencent/liteav/basic/license/c;->c:Ljava/lang/String;

    .line 48
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, v1, Lcom/tencent/liteav/basic/license/c;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, v1, Lcom/tencent/liteav/basic/license/c;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, v1, Lcom/tencent/liteav/basic/license/c;->c:Ljava/lang/String;

    const-string v4, "http"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object/from16 v18, v3

    move v3, v2

    move-object/from16 v2, v18

    goto/16 :goto_14

    .line 52
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v4, v1, Lcom/tencent/liteav/basic/license/c;->d:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 54
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 57
    iget-object v4, v1, Lcom/tencent/liteav/basic/license/c;->f:Lcom/tencent/liteav/basic/license/b;

    if-eqz v4, :cond_2

    .line 58
    invoke-interface {v4, v0, v3}, Lcom/tencent/liteav/basic/license/b;->a(Ljava/io/File;Ljava/lang/Exception;)V

    return-void

    .line 63
    :cond_2
    :goto_0
    new-instance v4, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/tencent/liteav/basic/license/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/tencent/liteav/basic/license/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    if-eqz v0, :cond_3

    .line 73
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v5, v3

    move-object v8, v5

    :goto_1
    move-object/from16 v17, v8

    goto/16 :goto_e

    :catch_0
    move-exception v0

    move v7, v2

    move-object v5, v3

    move-object v8, v5

    :goto_2
    move-object v12, v8

    :goto_3
    move-object v3, v0

    goto/16 :goto_12

    .line 75
    :cond_3
    :goto_4
    :try_start_2
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 76
    new-instance v0, Ljava/net/URL;

    iget-object v5, v1, Lcom/tencent/liteav/basic/license/c;->c:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/net/HttpURLConnection;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 78
    :try_start_3
    iget-object v0, v1, Lcom/tencent/liteav/basic/license/c;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-nez v0, :cond_4

    :try_start_4
    const-string v0, "If-Modified-Since"

    .line 79
    iget-object v6, v1, Lcom/tencent/liteav/basic/license/c;->j:Ljava/lang/String;

    invoke-virtual {v5, v0, v6}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v8, v3

    goto :goto_1

    :catch_1
    move-exception v0

    move v7, v2

    :goto_5
    move-object v8, v3

    goto :goto_2

    :cond_4
    :goto_6
    const/16 v0, 0x7530

    .line 82
    :try_start_5
    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 83
    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v0, 0x1

    .line 84
    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const-string v6, "GET"

    .line 85
    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    .line 88
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_5

    move v7, v0

    goto :goto_7

    :cond_5
    move v7, v2

    :goto_7
    const/16 v0, 0x64

    if-eqz v7, :cond_12

    :try_start_6
    const-string v6, "Last-Modified"

    .line 91
    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 92
    iput-object v6, v1, Lcom/tencent/liteav/basic/license/c;->j:Ljava/lang/String;

    .line 93
    iget-boolean v8, v1, Lcom/tencent/liteav/basic/license/c;->i:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    const-wide/16 v9, 0x0

    if-eqz v8, :cond_d

    .line 94
    :try_start_7
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v8

    int-to-long v11, v8

    iput-wide v11, v1, Lcom/tencent/liteav/basic/license/c;->g:J

    .line 95
    iget-wide v11, v1, Lcom/tencent/liteav/basic/license/c;->g:J

    cmp-long v8, v11, v9

    if-gtz v8, :cond_9

    .line 96
    iget-object v0, v1, Lcom/tencent/liteav/basic/license/c;->f:Lcom/tencent/liteav/basic/license/b;

    if-eqz v0, :cond_6

    .line 97
    iget-object v0, v1, Lcom/tencent/liteav/basic/license/c;->f:Lcom/tencent/liteav/basic/license/b;

    invoke-interface {v0, v4, v3}, Lcom/tencent/liteav/basic/license/b;->a(Ljava/io/File;Ljava/lang/Exception;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_6
    if-eqz v5, :cond_7

    .line 148
    :try_start_8
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 150
    :cond_7
    iget-object v0, v1, Lcom/tencent/liteav/basic/license/c;->f:Lcom/tencent/liteav/basic/license/b;

    if-eqz v0, :cond_8

    .line 151
    iget-object v0, v1, Lcom/tencent/liteav/basic/license/c;->f:Lcom/tencent/liteav/basic/license/b;

    invoke-interface {v0}, Lcom/tencent/liteav/basic/license/b;->a()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    :catch_2
    :cond_8
    return-void

    .line 101
    :cond_9
    :try_start_9
    iget-wide v11, v1, Lcom/tencent/liteav/basic/license/c;->g:J

    invoke-static {v11, v12}, Lcom/tencent/liteav/basic/util/c;->a(J)Z

    move-result v8

    if-nez v8, :cond_d

    .line 102
    iget-object v0, v1, Lcom/tencent/liteav/basic/license/c;->f:Lcom/tencent/liteav/basic/license/b;

    if-eqz v0, :cond_a

    .line 103
    iget-object v0, v1, Lcom/tencent/liteav/basic/license/c;->f:Lcom/tencent/liteav/basic/license/b;

    invoke-interface {v0, v4, v3}, Lcom/tencent/liteav/basic/license/b;->a(Ljava/io/File;Ljava/lang/Exception;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_a
    if-eqz v5, :cond_b

    .line 148
    :try_start_a
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 150
    :cond_b
    iget-object v0, v1, Lcom/tencent/liteav/basic/license/c;->f:Lcom/tencent/liteav/basic/license/b;

    if-eqz v0, :cond_c

    .line 151
    iget-object v0, v1, Lcom/tencent/liteav/basic/license/c;->f:Lcom/tencent/liteav/basic/license/b;

    invoke-interface {v0}, Lcom/tencent/liteav/basic/license/b;->a()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    :catch_3
    :cond_c
    return-void

    :catch_4
    move-exception v0

    goto :goto_5

    .line 108
    :cond_d
    :try_start_b
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    const/16 v11, 0x2000

    :try_start_c
    new-array v11, v11, [B

    .line 111
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 112
    :try_start_d
    iput-wide v9, v1, Lcom/tencent/liteav/basic/license/c;->h:J

    .line 113
    :goto_8
    invoke-virtual {v8, v11}, Ljava/io/InputStream;->read([B)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_10

    .line 114
    invoke-virtual {v12, v11, v2, v9}, Ljava/io/FileOutputStream;->write([BII)V

    .line 115
    iget-boolean v10, v1, Lcom/tencent/liteav/basic/license/c;->i:Z

    if-eqz v10, :cond_f

    .line 116
    iget-wide v13, v1, Lcom/tencent/liteav/basic/license/c;->h:J

    const-wide/16 v15, 0x64

    mul-long/2addr v13, v15

    iget-wide v2, v1, Lcom/tencent/liteav/basic/license/c;->g:J

    div-long/2addr v13, v2

    long-to-int v2, v13

    .line 117
    iget-wide v13, v1, Lcom/tencent/liteav/basic/license/c;->h:J

    move-object v3, v11

    int-to-long v10, v9

    add-long/2addr v13, v10

    iput-wide v13, v1, Lcom/tencent/liteav/basic/license/c;->h:J

    .line 118
    iget-wide v9, v1, Lcom/tencent/liteav/basic/license/c;->h:J

    mul-long/2addr v9, v15

    iget-wide v13, v1, Lcom/tencent/liteav/basic/license/c;->g:J

    div-long/2addr v9, v13

    long-to-int v9, v9

    if-eq v2, v9, :cond_e

    .line 119
    iget-object v2, v1, Lcom/tencent/liteav/basic/license/c;->f:Lcom/tencent/liteav/basic/license/b;

    if-eqz v2, :cond_e

    .line 120
    iget-object v2, v1, Lcom/tencent/liteav/basic/license/c;->f:Lcom/tencent/liteav/basic/license/b;

    invoke-interface {v2, v9}, Lcom/tencent/liteav/basic/license/b;->a(I)V

    :cond_e
    move-object v11, v3

    const/4 v2, 0x0

    :cond_f
    const/4 v3, 0x0

    goto :goto_8

    .line 124
    :cond_10
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->flush()V

    .line 125
    iget-object v2, v1, Lcom/tencent/liteav/basic/license/c;->f:Lcom/tencent/liteav/basic/license/b;

    if-eqz v2, :cond_11

    .line 126
    iget-object v2, v1, Lcom/tencent/liteav/basic/license/c;->f:Lcom/tencent/liteav/basic/license/b;

    invoke-interface {v2, v0}, Lcom/tencent/liteav/basic/license/b;->a(I)V

    .line 127
    iget-object v0, v1, Lcom/tencent/liteav/basic/license/c;->f:Lcom/tencent/liteav/basic/license/b;

    invoke-interface {v0, v4, v6}, Lcom/tencent/liteav/basic/license/b;->a(Ljava/io/File;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :cond_11
    const/4 v3, 0x0

    goto :goto_a

    :catchall_2
    move-exception v0

    move-object/from16 v17, v12

    goto :goto_e

    :catch_5
    move-exception v0

    goto/16 :goto_3

    :catchall_3
    move-exception v0

    goto :goto_d

    :catch_6
    move-exception v0

    move-object v3, v0

    goto/16 :goto_11

    :catch_7
    move-exception v0

    move-object v3, v0

    goto/16 :goto_10

    :cond_12
    const/16 v2, 0x130

    if-ne v6, v2, :cond_14

    .line 130
    :try_start_e
    iget-object v2, v1, Lcom/tencent/liteav/basic/license/c;->f:Lcom/tencent/liteav/basic/license/b;

    if-eqz v2, :cond_13

    .line 131
    iget-object v2, v1, Lcom/tencent/liteav/basic/license/c;->f:Lcom/tencent/liteav/basic/license/b;

    invoke-interface {v2, v0}, Lcom/tencent/liteav/basic/license/b;->a(I)V

    .line 132
    iget-object v0, v1, Lcom/tencent/liteav/basic/license/c;->f:Lcom/tencent/liteav/basic/license/b;

    iget-object v2, v1, Lcom/tencent/liteav/basic/license/c;->j:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v2}, Lcom/tencent/liteav/basic/license/b;->a(Ljava/io/File;Ljava/lang/String;)V

    :cond_13
    const/4 v3, 0x0

    :goto_9
    const/4 v8, 0x0

    const/4 v12, 0x0

    goto :goto_a

    .line 135
    :cond_14
    new-instance v3, Lcom/tencent/liteav/basic/license/d;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http status got exception. code = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/tencent/liteav/basic/license/d;-><init>(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    goto :goto_9

    :goto_a
    if-eqz v12, :cond_15

    .line 142
    :try_start_f
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    :cond_15
    if-eqz v8, :cond_16

    .line 145
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    :cond_16
    if-eqz v5, :cond_17

    .line 148
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 150
    :cond_17
    iget-object v0, v1, Lcom/tencent/liteav/basic/license/c;->f:Lcom/tencent/liteav/basic/license/b;

    if-eqz v0, :cond_1f

    .line 151
    :goto_b
    iget-object v0, v1, Lcom/tencent/liteav/basic/license/c;->f:Lcom/tencent/liteav/basic/license/b;

    invoke-interface {v0}, Lcom/tencent/liteav/basic/license/b;->a()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b

    goto :goto_13

    :catchall_4
    move-exception v0

    goto :goto_c

    :catch_8
    move-exception v0

    move-object v3, v0

    goto :goto_f

    :catchall_5
    move-exception v0

    const/4 v5, 0x0

    :goto_c
    const/4 v8, 0x0

    :goto_d
    const/16 v17, 0x0

    :goto_e
    if-eqz v17, :cond_18

    .line 142
    :try_start_10
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V

    :cond_18
    if-eqz v8, :cond_19

    .line 145
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    :cond_19
    if-eqz v5, :cond_1a

    .line 148
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 150
    :cond_1a
    iget-object v2, v1, Lcom/tencent/liteav/basic/license/c;->f:Lcom/tencent/liteav/basic/license/b;

    if-eqz v2, :cond_1b

    .line 151
    iget-object v2, v1, Lcom/tencent/liteav/basic/license/c;->f:Lcom/tencent/liteav/basic/license/b;

    invoke-interface {v2}, Lcom/tencent/liteav/basic/license/b;->a()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9

    .line 156
    :catch_9
    :cond_1b
    throw v0

    :catch_a
    move-exception v0

    move-object v3, v0

    const/4 v5, 0x0

    :goto_f
    const/4 v7, 0x0

    :goto_10
    const/4 v8, 0x0

    :goto_11
    const/4 v12, 0x0

    :goto_12
    if-eqz v12, :cond_1c

    .line 142
    :try_start_11
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    :cond_1c
    if-eqz v8, :cond_1d

    .line 145
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    :cond_1d
    if-eqz v5, :cond_1e

    .line 148
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 150
    :cond_1e
    iget-object v0, v1, Lcom/tencent/liteav/basic/license/c;->f:Lcom/tencent/liteav/basic/license/b;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_b

    if-eqz v0, :cond_1f

    goto :goto_b

    :catch_b
    :cond_1f
    :goto_13
    if-eqz v7, :cond_20

    if-eqz v3, :cond_21

    .line 159
    :cond_20
    iget-object v0, v1, Lcom/tencent/liteav/basic/license/c;->f:Lcom/tencent/liteav/basic/license/b;

    if-eqz v0, :cond_21

    const/4 v2, 0x0

    .line 160
    invoke-interface {v0, v4, v2}, Lcom/tencent/liteav/basic/license/b;->a(Ljava/io/File;Ljava/lang/Exception;)V

    :cond_21
    return-void

    :cond_22
    move-object v2, v3

    const/4 v3, 0x0

    .line 49
    :goto_14
    invoke-direct {v1, v2, v3}, Lcom/tencent/liteav/basic/license/c;->a(Ljava/lang/Exception;I)V

    return-void
.end method
