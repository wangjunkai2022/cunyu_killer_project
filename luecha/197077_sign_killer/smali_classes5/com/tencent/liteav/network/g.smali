.class public Lcom/tencent/liteav/network/g;
.super Ljava/lang/Object;
.source "TXCPlayInfoProtocolV4.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/network/g$a;,
        Lcom/tencent/liteav/network/g$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/os/Handler;

.field private c:Lcom/tencent/rtmp/b;

.field private d:Lcom/tencent/liteav/network/f;

.field private e:Lcom/tencent/liteav/network/m;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tencent/rtmp/b;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "https://playvideo.qcloud.com/getplayinfo/v4"

    .line 25
    iput-object v0, p0, Lcom/tencent/liteav/network/g;->a:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/tencent/liteav/network/g;->c:Lcom/tencent/rtmp/b;

    .line 43
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/tencent/liteav/network/g;->b:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/network/g;)Lcom/tencent/rtmp/b;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/tencent/liteav/network/g;->c:Lcom/tencent/rtmp/b;

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "&"

    if-nez v1, :cond_0

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pcfg="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 163
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "psign="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-static {}, Lcom/tencent/liteav/txcvodplayer/hlsencoder/TXCHLSEncoder;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/network/g;->g:Ljava/lang/String;

    .line 167
    invoke-static {}, Lcom/tencent/liteav/txcvodplayer/hlsencoder/TXCHLSEncoder;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/network/g;->h:Ljava/lang/String;

    .line 168
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "V4 protocol send request fileId : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/tencent/liteav/network/g;->c:Lcom/tencent/rtmp/b;

    invoke-virtual {p2}, Lcom/tencent/rtmp/b;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " | overlayKey: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/tencent/liteav/network/g;->g:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " | overlayIv: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/tencent/liteav/network/g;->h:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TXCPlayInfoProtocolV4"

    invoke-static {p2, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object p1, p0, Lcom/tencent/liteav/network/g;->g:Ljava/lang/String;

    invoke-static {p1}, Lcom/tencent/liteav/txcvodplayer/hlsencoder/TXCHLSEncoder;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 172
    iget-object p2, p0, Lcom/tencent/liteav/network/g;->h:Ljava/lang/String;

    invoke-static {p2}, Lcom/tencent/liteav/txcvodplayer/hlsencoder/TXCHLSEncoder;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 173
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "1"

    goto :goto_0

    :cond_1
    const-string v1, ""

    .line 176
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "cipheredOverlayKey="

    .line 177
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "cipheredOverlayIv="

    .line 178
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "keyId="

    .line 179
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 184
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "context="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    const/4 p2, 0x1

    if-le p1, p2, :cond_4

    .line 187
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    sub-int/2addr p1, p2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 189
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/liteav/network/g;Ljava/lang/Runnable;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/tencent/liteav/network/g;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 2

    .line 308
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/network/g;->b:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 309
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/network/g;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/network/g;Ljava/lang/String;Lcom/tencent/liteav/network/g$a;)Z
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/network/g;->a(Ljava/lang/String;Lcom/tencent/liteav/network/g$a;)Z

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/String;Lcom/tencent/liteav/network/g$a;)Z
    .locals 7

    .line 89
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "TXCPlayInfoProtocolV4"

    if-eqz v0, :cond_0

    const-string p1, "parseJson err, content is empty!"

    .line 90
    invoke-static {v2, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    new-instance p1, Lcom/tencent/liteav/network/g$2;

    invoke-direct {p1, p0, p2}, Lcom/tencent/liteav/network/g$2;-><init>(Lcom/tencent/liteav/network/g;Lcom/tencent/liteav/network/g$a;)V

    invoke-direct {p0, p1}, Lcom/tencent/liteav/network/g;->a(Ljava/lang/Runnable;)V

    return v1

    .line 100
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "code"

    .line 101
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v3, "message"

    .line 102
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "warning"

    .line 103
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "context"

    .line 104
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/tencent/liteav/network/g;->f:Ljava/lang/String;

    .line 105
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "context : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/tencent/liteav/network/g;->f:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "warning: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_2

    const-string p1, "version"

    .line 109
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 110
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "version: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    .line 112
    iput-object p1, p0, Lcom/tencent/liteav/network/g;->g:Ljava/lang/String;

    .line 113
    iput-object p1, p0, Lcom/tencent/liteav/network/g;->h:Ljava/lang/String;

    .line 114
    new-instance p1, Lcom/tencent/liteav/network/m;

    invoke-direct {p1, v0}, Lcom/tencent/liteav/network/m;-><init>(Lorg/json/JSONObject;)V

    iput-object p1, p0, Lcom/tencent/liteav/network/g;->e:Lcom/tencent/liteav/network/m;

    goto :goto_0

    :cond_1
    const/4 p2, 0x4

    if-ne p1, p2, :cond_3

    .line 116
    new-instance p1, Lcom/tencent/liteav/network/f;

    invoke-direct {p1, v0}, Lcom/tencent/liteav/network/f;-><init>(Lorg/json/JSONObject;)V

    iput-object p1, p0, Lcom/tencent/liteav/network/g;->d:Lcom/tencent/liteav/network/f;

    goto :goto_0

    .line 119
    :cond_2
    new-instance v0, Lcom/tencent/liteav/network/g$3;

    invoke-direct {v0, p0, p2, p1, v3}, Lcom/tencent/liteav/network/g$3;-><init>(Lcom/tencent/liteav/network/g;Lcom/tencent/liteav/network/g$a;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/tencent/liteav/network/g;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    .line 127
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const-string p1, "parseJson err"

    .line 128
    invoke-static {v2, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private l()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "https://playvideo.qcloud.com/getplayinfo/v4"

    aput-object v2, v0, v1

    .line 139
    iget-object v1, p0, Lcom/tencent/liteav/network/g;->c:Lcom/tencent/rtmp/b;

    invoke-virtual {v1}, Lcom/tencent/rtmp/b;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/tencent/liteav/network/g;->c:Lcom/tencent/rtmp/b;

    invoke-virtual {v1}, Lcom/tencent/rtmp/b;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "%s/%d/%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lcom/tencent/liteav/network/g;->c:Lcom/tencent/rtmp/b;

    invoke-virtual {v1}, Lcom/tencent/rtmp/b;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/tencent/liteav/network/g;->c:Lcom/tencent/rtmp/b;

    invoke-virtual {v1}, Lcom/tencent/rtmp/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1, v2}, Lcom/tencent/liteav/network/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 144
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TXCPlayInfoProtocolV4"

    invoke-static {v2, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/tencent/liteav/network/g;->d:Lcom/tencent/liteav/network/f;

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {v0}, Lcom/tencent/liteav/network/f;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/network/g;->e:Lcom/tencent/liteav/network/m;

    if-eqz v0, :cond_1

    .line 203
    invoke-virtual {v0}, Lcom/tencent/liteav/network/m;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcom/tencent/liteav/network/g$a;)V
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/tencent/liteav/network/g;->c:Lcom/tencent/rtmp/b;

    if-nez v0, :cond_0

    return-void

    .line 55
    :cond_0
    invoke-direct {p0}, Lcom/tencent/liteav/network/g;->l()Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-static {}, Lcom/tencent/liteav/network/c;->a()Lcom/tencent/liteav/network/c;

    move-result-object v1

    new-instance v2, Lcom/tencent/liteav/network/g$1;

    invoke-direct {v2, p0, p1}, Lcom/tencent/liteav/network/g$1;-><init>(Lcom/tencent/liteav/network/g;Lcom/tencent/liteav/network/g$a;)V

    invoke-virtual {v1, v0, v2}, Lcom/tencent/liteav/network/c;->a(Ljava/lang/String;Lcom/tencent/liteav/network/c$b;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/tencent/liteav/network/g;->d:Lcom/tencent/liteav/network/f;

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {v0}, Lcom/tencent/liteav/network/f;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/network/g;->e:Lcom/tencent/liteav/network/m;

    if-eqz v0, :cond_1

    .line 219
    invoke-virtual {v0}, Lcom/tencent/liteav/network/m;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/tencent/liteav/network/g;->d:Lcom/tencent/liteav/network/f;

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {v0}, Lcom/tencent/liteav/network/f;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/tencent/liteav/network/g;->d:Lcom/tencent/liteav/network/f;

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {v0}, Lcom/tencent/liteav/network/f;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/network/g;->e:Lcom/tencent/liteav/network/m;

    if-eqz v0, :cond_1

    .line 242
    invoke-virtual {v0}, Lcom/tencent/liteav/network/m;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/tencent/liteav/network/g;->d:Lcom/tencent/liteav/network/f;

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {v0}, Lcom/tencent/liteav/network/f;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/network/g;->e:Lcom/tencent/liteav/network/m;

    if-eqz v0, :cond_1

    .line 257
    invoke-virtual {v0}, Lcom/tencent/liteav/network/m;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public f()I
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/tencent/liteav/network/g;->d:Lcom/tencent/liteav/network/f;

    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {v0}, Lcom/tencent/liteav/network/f;->f()I

    move-result v0

    return v0

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/network/g;->e:Lcom/tencent/liteav/network/m;

    if-eqz v0, :cond_1

    .line 272
    invoke-virtual {v0}, Lcom/tencent/liteav/network/m;->b()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public g()I
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/tencent/liteav/network/g;->d:Lcom/tencent/liteav/network/f;

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {v0}, Lcom/tencent/liteav/network/f;->g()I

    move-result v0

    return v0

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/network/g;->e:Lcom/tencent/liteav/network/m;

    if-eqz v0, :cond_1

    .line 287
    invoke-virtual {v0}, Lcom/tencent/liteav/network/m;->c()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/tencent/liteav/network/g;->g:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/tencent/liteav/network/g;->h:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/liteav/network/g$b;",
            ">;"
        }
    .end annotation

    .line 320
    iget-object v0, p0, Lcom/tencent/liteav/network/g;->d:Lcom/tencent/liteav/network/f;

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {v0}, Lcom/tencent/liteav/network/f;->h()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/network/g;->e:Lcom/tencent/liteav/network/m;

    if-eqz v0, :cond_5

    .line 324
    invoke-virtual {v0}, Lcom/tencent/liteav/network/m;->k()Ljava/util/List;

    move-result-object v0

    .line 325
    iget-object v1, p0, Lcom/tencent/liteav/network/g;->e:Lcom/tencent/liteav/network/m;

    invoke-virtual {v1}, Lcom/tencent/liteav/network/m;->e()Ljava/util/List;

    move-result-object v1

    if-eqz v0, :cond_5

    .line 326
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    if-eqz v1, :cond_5

    .line 327
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 328
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/liteav/network/m$a;

    .line 329
    new-instance v4, Lcom/tencent/liteav/network/g$b;

    invoke-direct {v4}, Lcom/tencent/liteav/network/g$b;-><init>()V

    .line 330
    iget-object v5, v3, Lcom/tencent/liteav/network/m$a;->b:Ljava/lang/String;

    iput-object v5, v4, Lcom/tencent/liteav/network/g$b;->a:Ljava/lang/String;

    .line 331
    iget-object v3, v3, Lcom/tencent/liteav/network/m$a;->c:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 333
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/liteav/network/n;

    .line 334
    iget v7, v6, Lcom/tencent/liteav/network/n;->i:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 335
    iget v3, v6, Lcom/tencent/liteav/network/n;->c:I

    iput v3, v4, Lcom/tencent/liteav/network/g$b;->b:I

    .line 336
    iget v3, v6, Lcom/tencent/liteav/network/n;->b:I

    iput v3, v4, Lcom/tencent/liteav/network/g$b;->c:I

    .line 337
    iget v3, v4, Lcom/tencent/liteav/network/g$b;->b:I

    if-lez v3, :cond_3

    const-string v3, "video"

    .line 338
    iput-object v3, v4, Lcom/tencent/liteav/network/g$b;->d:Ljava/lang/String;

    .line 340
    :cond_3
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v2

    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/tencent/liteav/network/g;->d:Lcom/tencent/liteav/network/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/liteav/network/f;->i()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method
