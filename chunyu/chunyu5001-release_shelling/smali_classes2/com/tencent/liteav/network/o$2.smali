.class Lcom/tencent/liteav/network/o$2;
.super Ljava/lang/Thread;
.source "TXRTMPAccUrlFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/network/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/tencent/liteav/network/o$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:I

.field final synthetic f:Lcom/tencent/liteav/network/o$a;

.field final synthetic g:Lcom/tencent/liteav/network/o;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/network/o;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/tencent/liteav/network/o$a;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/tencent/liteav/network/o$2;->g:Lcom/tencent/liteav/network/o;

    iput-object p3, p0, Lcom/tencent/liteav/network/o$2;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/liteav/network/o$2;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/tencent/liteav/network/o$2;->c:Ljava/lang/String;

    iput-object p6, p0, Lcom/tencent/liteav/network/o$2;->d:Ljava/lang/String;

    iput p7, p0, Lcom/tencent/liteav/network/o$2;->e:I

    iput-object p8, p0, Lcom/tencent/liteav/network/o$2;->f:Lcom/tencent/liteav/network/o$a;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    move-object/from16 v1, p0

    const-string v2, "message"

    const-string v3, "pull_addr"

    const-string v4, "code"

    const-string v5, "TXRTMPAccUrlFetcher"

    .line 160
    iget-object v0, v1, Lcom/tencent/liteav/network/o$2;->a:Ljava/lang/String;

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    iget-object v0, v1, Lcom/tencent/liteav/network/o$2;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v7, v0

    goto :goto_0

    :cond_0
    move v7, v6

    :goto_0
    const/4 v0, 0x7

    const-string v8, ""

    const/4 v9, -0x1

    move-object v11, v8

    move v10, v9

    move v9, v0

    :goto_1
    const/4 v0, 0x1

    if-lt v9, v0, :cond_12

    .line 171
    :try_start_0
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    const-string v13, "bizid"

    .line 172
    invoke-virtual {v12, v13, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v13, "stream_id"

    .line 173
    iget-object v14, v1, Lcom/tencent/liteav/network/o$2;->b:Ljava/lang/String;

    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v13, "txSecret"

    .line 174
    iget-object v14, v1, Lcom/tencent/liteav/network/o$2;->c:Ljava/lang/String;

    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v13, "txTime"

    .line 175
    iget-object v14, v1, Lcom/tencent/liteav/network/o$2;->d:Ljava/lang/String;

    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v13, "type"

    .line 176
    invoke-virtual {v12, v13, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 177
    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x2

    if-le v9, v13, :cond_1

    const-string v14, "https://livepull.myqcloud.com/getpulladdr"

    goto :goto_2

    :cond_1
    const-string v14, "https://livepullipv6.myqcloud.com/getpulladdr"

    .line 187
    :goto_2
    new-instance v15, Ljava/net/URL;

    invoke-direct {v15, v14}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v15}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v14

    .line 189
    check-cast v14, Ljavax/net/ssl/HttpsURLConnection;

    .line 190
    invoke-virtual {v14, v0}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 191
    invoke-virtual {v14, v0}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 192
    invoke-virtual {v14, v6}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    const/16 v15, 0x1388

    .line 193
    invoke-virtual {v14, v15}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 194
    invoke-virtual {v14, v15}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    const-string v15, "POST"

    .line 195
    invoke-virtual {v14, v15}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v15, "Charsert"

    const-string v6, "UTF-8"

    .line 196
    invoke-virtual {v14, v15, v6}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "Content-Type"

    const-string v15, "text/plain;"

    .line 197
    invoke-virtual {v14, v6, v15}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "Content-Length"

    .line 198
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v6, v15}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getAccelerateStreamPlayUrl: sendHttpRequest[ "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "] retryIndex = "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    new-instance v6, Ljava/io/DataOutputStream;

    invoke-virtual {v14}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v15

    invoke-direct {v6, v15}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 204
    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/io/OutputStream;->write([B)V

    .line 208
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/InputStreamReader;

    invoke-virtual {v14}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    invoke-direct {v12, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v12, v8

    .line 210
    :goto_3
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_2

    .line 211
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_3

    .line 214
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getAccelerateStreamPlayUrl: receive response, strResponse = "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    new-instance v6, Lorg/json/JSONTokener;

    invoke-direct {v6, v12}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v6}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONObject;

    .line 220
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 221
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    :cond_3
    if-eqz v10, :cond_5

    .line 225
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 226
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 228
    :cond_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getAccelerateStreamPlayUrl: errorCode = "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " errorMessage = "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :cond_5
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 232
    new-instance v12, Ljava/util/Vector;

    invoke-direct {v12}, Ljava/util/Vector;-><init>()V

    .line 233
    new-instance v14, Ljava/util/Vector;

    invoke-direct {v14}, Ljava/util/Vector;-><init>()V

    .line 235
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_c

    .line 236
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-nez v15, :cond_6

    goto/16 :goto_7

    :cond_6
    const/4 v15, 0x0

    .line 239
    :goto_4
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v15, v13, :cond_b

    .line 240
    invoke-virtual {v6, v15}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/json/JSONObject;

    if-eqz v13, :cond_9

    const-string v0, "rtmp_url"

    .line 242
    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v16, v2

    :try_start_1
    const-string v2, "proto"

    .line 243
    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v13, 0x1

    if-ne v2, v13, :cond_7

    const/4 v2, 0x1

    goto :goto_5

    :cond_7
    const/4 v2, 0x0

    .line 246
    :goto_5
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v17, v3

    :try_start_2
    const-string v3, "getAccelerateStreamPlayUrl: streamUrl = "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Q channel = "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-static {v0}, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->getStreamIDByStreamUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 249
    iget-object v13, v1, Lcom/tencent/liteav/network/o$2;->b:Ljava/lang/String;

    invoke-virtual {v3, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    if-eqz v2, :cond_8

    .line 251
    new-instance v3, Lcom/tencent/liteav/network/h;

    invoke-direct {v3, v0, v2}, Lcom/tencent/liteav/network/h;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v12, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 253
    :cond_8
    new-instance v3, Lcom/tencent/liteav/network/h;

    invoke-direct {v3, v0, v2}, Lcom/tencent/liteav/network/h;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v14, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :catch_0
    move-exception v0

    goto/16 :goto_a

    :cond_9
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    :cond_a
    :goto_6
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    const/4 v0, 0x1

    goto :goto_4

    :cond_b
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    goto :goto_8

    :cond_c
    :goto_7
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    const-string v0, "getAccelerateStreamPlayUrl: no pull_addr"

    .line 237
    invoke-static {v5, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :goto_8
    iget v0, v1, Lcom/tencent/liteav/network/o$2;->e:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_d

    .line 261
    invoke-virtual {v14}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_11

    .line 262
    iget-object v0, v1, Lcom/tencent/liteav/network/o$2;->g:Lcom/tencent/liteav/network/o;

    invoke-static {v0}, Lcom/tencent/liteav/network/o;->a(Lcom/tencent/liteav/network/o;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/tencent/liteav/network/o$2$1;

    invoke-direct {v2, v1, v14}, Lcom/tencent/liteav/network/o$2$1;-><init>(Lcom/tencent/liteav/network/o$2;Ljava/util/Vector;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 272
    :cond_d
    iget v0, v1, Lcom/tencent/liteav/network/o$2;->e:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_e

    .line 273
    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_11

    .line 274
    iget-object v0, v1, Lcom/tencent/liteav/network/o$2;->g:Lcom/tencent/liteav/network/o;

    invoke-static {v0}, Lcom/tencent/liteav/network/o;->a(Lcom/tencent/liteav/network/o;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/tencent/liteav/network/o$2$2;

    invoke-direct {v2, v1, v12}, Lcom/tencent/liteav/network/o$2$2;-><init>(Lcom/tencent/liteav/network/o$2;Ljava/util/Vector;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 286
    :cond_e
    invoke-virtual {v14}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/liteav/network/h;

    .line 287
    invoke-virtual {v12, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 289
    :cond_f
    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_11

    .line 290
    iget-object v0, v1, Lcom/tencent/liteav/network/o$2;->g:Lcom/tencent/liteav/network/o;

    invoke-static {v0}, Lcom/tencent/liteav/network/o;->a(Lcom/tencent/liteav/network/o;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/tencent/liteav/network/o$2$3;

    invoke-direct {v2, v1, v12}, Lcom/tencent/liteav/network/o$2$3;-><init>(Lcom/tencent/liteav/network/o$2;Ljava/util/Vector;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception v0

    goto :goto_b

    :cond_10
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    goto :goto_c

    :catch_2
    move-exception v0

    move-object/from16 v16, v2

    :goto_a
    move-object/from16 v17, v3

    .line 304
    :goto_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAccelerateStreamPlayUrl exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    :goto_c
    const-wide/16 v2, 0x3e8

    const/4 v6, 0x0

    .line 308
    :try_start_3
    invoke-static {v2, v3, v6}, Lcom/tencent/liteav/network/o$2;->sleep(JI)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_d

    :catch_3
    const-string v0, "getAccelerateStreamPlayUrl exception sleep"

    .line 311
    invoke-static {v5, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    add-int/lit8 v9, v9, -0x1

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    goto/16 :goto_1

    .line 318
    :cond_12
    iget-object v0, v1, Lcom/tencent/liteav/network/o$2;->g:Lcom/tencent/liteav/network/o;

    invoke-static {v0}, Lcom/tencent/liteav/network/o;->a(Lcom/tencent/liteav/network/o;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/tencent/liteav/network/o$2$4;

    invoke-direct {v2, v1, v10, v11}, Lcom/tencent/liteav/network/o$2$4;-><init>(Lcom/tencent/liteav/network/o$2;ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
