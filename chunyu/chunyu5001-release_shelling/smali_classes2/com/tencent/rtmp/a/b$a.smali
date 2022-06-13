.class Lcom/tencent/rtmp/a/b$a;
.super Ljava/lang/Object;
.source "TXImageSpriteImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/rtmp/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tencent/rtmp/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tencent/rtmp/a/b;Ljava/lang/String;)V
    .locals 1

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/rtmp/a/b$a;->a:Ljava/lang/ref/WeakReference;

    .line 169
    iput-object p2, p0, Lcom/tencent/rtmp/a/b$a;->b:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;)F
    .locals 6

    const-string v0, ":"

    .line 183
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 185
    array-length v0, p1

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-ne v0, v5, :cond_0

    .line 186
    aget-object v4, p1, v3

    .line 187
    aget-object v0, p1, v2

    .line 188
    aget-object p1, p1, v1

    goto :goto_0

    .line 189
    :cond_0
    array-length v0, p1

    if-ne v0, v1, :cond_1

    .line 190
    aget-object v0, p1, v3

    .line 191
    aget-object p1, p1, v2

    goto :goto_0

    .line 192
    :cond_1
    array-length v0, p1

    if-ne v0, v2, :cond_2

    .line 193
    aget-object p1, p1, v3

    move-object v0, v4

    goto :goto_0

    :cond_2
    move-object p1, v4

    move-object v0, p1

    :goto_0
    const/4 v1, 0x0

    if-eqz v4, :cond_3

    .line 196
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, 0x45610000    # 3600.0f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    :cond_3
    if-eqz v0, :cond_4

    .line 199
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v2, 0x42700000    # 60.0f

    mul-float/2addr v0, v2

    add-float/2addr v1, v0

    :cond_4
    if-eqz p1, :cond_5

    .line 202
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    add-float/2addr v1, p1

    :cond_5
    return v1
.end method


# virtual methods
.method public run()V
    .locals 11

    const-string v0, "TXImageSprite"

    .line 209
    iget-object v1, p0, Lcom/tencent/rtmp/a/b$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/rtmp/a/b;

    const/4 v2, 0x0

    .line 212
    :try_start_0
    iget-object v3, p0, Lcom/tencent/rtmp/a/b$a;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/tencent/rtmp/a/b;->a(Lcom/tencent/rtmp/a/b;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    .line 216
    :cond_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 217
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 218
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "WEBVTT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_1

    .line 228
    :cond_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v3, "-->"

    .line 229
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, " --> "

    .line 230
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 231
    array-length v5, v3

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    goto/16 :goto_0

    .line 234
    :cond_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 235
    new-instance v7, Lcom/tencent/rtmp/a/c;

    invoke-direct {v7}, Lcom/tencent/rtmp/a/c;-><init>()V

    const/4 v8, 0x0

    .line 236
    aget-object v9, v3, v8

    invoke-direct {p0, v9}, Lcom/tencent/rtmp/a/b$a;->a(Ljava/lang/String;)F

    move-result v9

    iput v9, v7, Lcom/tencent/rtmp/a/c;->a:F

    const/4 v9, 0x1

    .line 237
    aget-object v3, v3, v9

    invoke-direct {p0, v3}, Lcom/tencent/rtmp/a/b$a;->a(Ljava/lang/String;)F

    move-result v3

    iput v3, v7, Lcom/tencent/rtmp/a/c;->b:F

    .line 240
    iput-object v5, v7, Lcom/tencent/rtmp/a/c;->c:Ljava/lang/String;

    const-string v3, "#"

    .line 244
    invoke-virtual {v5, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v10, -0x1

    if-eq v3, v10, :cond_3

    .line 246
    invoke-virtual {v5, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v7, Lcom/tencent/rtmp/a/c;->d:Ljava/lang/String;

    :cond_3
    const-string v3, "="

    .line 248
    invoke-virtual {v5, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v10, :cond_4

    add-int/lit8 v3, v3, 0x1

    .line 249
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v3, v10, :cond_4

    .line 251
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v5, v3, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v5, ","

    .line 252
    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 253
    array-length v5, v3

    const/4 v10, 0x4

    if-ne v5, v10, :cond_4

    .line 254
    aget-object v5, v3, v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v7, Lcom/tencent/rtmp/a/c;->e:I

    .line 255
    aget-object v5, v3, v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v7, Lcom/tencent/rtmp/a/c;->f:I

    .line 256
    aget-object v5, v3, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v7, Lcom/tencent/rtmp/a/c;->g:I

    const/4 v5, 0x3

    .line 257
    aget-object v3, v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v7, Lcom/tencent/rtmp/a/c;->h:I

    :cond_4
    if-eqz v1, :cond_5

    .line 260
    invoke-static {v1}, Lcom/tencent/rtmp/a/b;->a(Lcom/tencent/rtmp/a/b;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 261
    invoke-static {v1}, Lcom/tencent/rtmp/a/b;->a(Lcom/tencent/rtmp/a/b;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    :goto_0
    if-nez v2, :cond_1

    .line 270
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_3

    :cond_6
    :goto_1
    :try_start_3
    const-string v2, "DownloadAndParseVTTFileTask : getVTT File Error!"

    .line 219
    invoke-static {v0, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_7

    .line 221
    invoke-static {v1}, Lcom/tencent/rtmp/a/b;->c(Lcom/tencent/rtmp/a/b;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 270
    :cond_7
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v1

    move-object v2, v4

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v4, v2

    goto :goto_4

    :catch_2
    move-exception v1

    :goto_2
    :try_start_5
    const-string v3, "load image sprite failed."

    .line 266
    invoke-static {v0, v3, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_8

    .line 270
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :catch_3
    :cond_8
    :goto_3
    return-void

    :goto_4
    if-eqz v4, :cond_9

    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 275
    :catch_4
    :cond_9
    throw v0
.end method
