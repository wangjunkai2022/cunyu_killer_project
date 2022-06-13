.class public Lcom/tencent/liteav/h;
.super Lcom/tencent/liteav/j;
.source "TXCVodPlayer.java"

# interfaces
.implements Lcom/tencent/liteav/renderer/a$a;
.implements Lcom/tencent/liteav/renderer/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/h$a;
    }
.end annotation


# instance fields
.field protected a:Z

.field private f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

.field private g:Lcom/tencent/liteav/txcplayer/h;

.field private h:Lcom/tencent/liteav/f;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:F

.field private n:Landroid/view/Surface;

.field private o:Lcom/tencent/liteav/renderer/a;

.field private p:Ljava/lang/Object;

.field private q:Lcom/tencent/liteav/h$a;

.field private r:Z

.field private s:Z

.field private t:Lcom/tencent/liteav/txcplayer/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 73
    invoke-direct {p0, p1}, Lcom/tencent/liteav/j;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/tencent/liteav/h;->h:Lcom/tencent/liteav/f;

    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lcom/tencent/liteav/h;->j:Z

    .line 61
    iput-boolean v0, p0, Lcom/tencent/liteav/h;->k:Z

    .line 62
    iput-boolean v0, p0, Lcom/tencent/liteav/h;->l:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 63
    iput v0, p0, Lcom/tencent/liteav/h;->m:F

    .line 471
    new-instance v0, Lcom/tencent/liteav/h$1;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/h$1;-><init>(Lcom/tencent/liteav/h;)V

    iput-object v0, p0, Lcom/tencent/liteav/h;->t:Lcom/tencent/liteav/txcplayer/e;

    .line 74
    invoke-static {}, Lcom/tencent/liteav/txcplayer/ext/service/RenderProcessService;->getInstance()Lcom/tencent/liteav/txcplayer/ext/service/RenderProcessService;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcplayer/ext/service/RenderProcessService;->checkInit(Landroid/content/Context;)V

    .line 75
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-direct {v0, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 76
    iget-object p1, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    iget-object v0, p0, Lcom/tencent/liteav/h;->t:Lcom/tencent/liteav/txcplayer/e;

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setListener(Lcom/tencent/liteav/txcplayer/e;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/h;)Lcom/tencent/liteav/f;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/tencent/liteav/h;->h:Lcom/tencent/liteav/f;

    return-object p0
.end method

.method static synthetic a(Lcom/tencent/liteav/h;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/tencent/liteav/h;->i:Z

    return p1
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 797
    invoke-static {p0}, Lcom/tencent/liteav/txcvodplayer/hlsencoder/TXCHLSEncoder;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/tencent/liteav/h;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/tencent/liteav/h;->i:Z

    return p0
.end method

.method static synthetic c(Lcom/tencent/liteav/h;)Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    return-object p0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p0

    .line 123
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 124
    invoke-virtual {v1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TXVodPlayer"

    const-string v4, ""

    if-eqz v2, :cond_9

    .line 126
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_9

    const-string v6, "&"

    .line 127
    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 128
    array-length v7, v2

    const-string v9, "0"

    if-lez v7, :cond_7

    .line 130
    array-length v7, v2

    move-object v11, v4

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    const/4 v4, 0x0

    const/4 v10, 0x0

    :goto_0
    if-ge v4, v7, :cond_5

    aget-object v15, v2, v4

    const-string v8, "="

    .line 131
    invoke-virtual {v15, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 132
    array-length v5, v8

    move-object/from16 v17, v2

    const/4 v2, 0x2

    if-ne v5, v2, :cond_4

    const/4 v2, 0x0

    .line 133
    aget-object v5, v8, v2

    const-string v2, "spfileid"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 134
    aget-object v11, v8, v2

    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_0
    const/4 v5, 0x0

    .line 136
    aget-object v2, v8, v5

    const-string v5, "spdrmtype"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 137
    aget-object v12, v8, v2

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 139
    aget-object v2, v8, v5

    const-string v5, "spappid"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    .line 140
    aget-object v13, v8, v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    .line 143
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 144
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 146
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v14, v5

    goto :goto_2

    :cond_4
    const/4 v2, 0x1

    const-string v5, "fieldIds.length != 2"

    .line 149
    invoke-static {v3, v5}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v2, v17

    goto :goto_0

    :cond_5
    const/4 v2, 0x1

    const/4 v4, 0x3

    if-ne v10, v4, :cond_6

    const-string v9, "1"

    move v5, v2

    move-object v4, v14

    goto :goto_4

    :cond_6
    move-object v4, v14

    goto :goto_3

    :cond_7
    move-object v11, v4

    move-object v12, v11

    move-object v13, v12

    :goto_3
    const/4 v5, 0x0

    :goto_4
    if-eqz v5, :cond_8

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "spfileid, "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", spdrmtype= "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", spappid="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v2, v0, Lcom/tencent/liteav/h;->h:Lcom/tencent/liteav/f;

    invoke-virtual {v2, v11}, Lcom/tencent/liteav/f;->d(Ljava/lang/String;)V

    .line 160
    iget-object v2, v0, Lcom/tencent/liteav/h;->h:Lcom/tencent/liteav/f;

    invoke-virtual {v2, v12}, Lcom/tencent/liteav/f;->c(Ljava/lang/String;)V

    .line 161
    iget-object v2, v0, Lcom/tencent/liteav/h;->h:Lcom/tencent/liteav/f;

    invoke-virtual {v2, v13}, Lcom/tencent/liteav/f;->f(Ljava/lang/String;)V

    .line 162
    iget-object v2, v0, Lcom/tencent/liteav/h;->h:Lcom/tencent/liteav/f;

    invoke-virtual {v2, v9}, Lcom/tencent/liteav/f;->b(Ljava/lang/String;)V

    :cond_8
    move/from16 v16, v5

    goto :goto_5

    :cond_9
    const/16 v16, 0x0

    :goto_5
    if-eqz v16, :cond_b

    .line 166
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 167
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_a

    .line 168
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/net/Uri$Builder;->query(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_a
    move-object v1, v2

    goto :goto_6

    :cond_b
    move-object/from16 v1, p1

    .line 171
    :goto_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parsePlayUrl url: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method static synthetic d(Lcom/tencent/liteav/h;)Lcom/tencent/liteav/txcplayer/h;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/tencent/liteav/h;->g:Lcom/tencent/liteav/txcplayer/h;

    return-object p0
.end method

.method static synthetic e(Lcom/tencent/liteav/h;)Lcom/tencent/liteav/renderer/a;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/tencent/liteav/h;->o:Lcom/tencent/liteav/renderer/a;

    return-object p0
.end method

.method private h(Z)V
    .locals 7

    .line 740
    iput-boolean p1, p0, Lcom/tencent/liteav/h;->r:Z

    .line 742
    :try_start_0
    iget-object p1, p0, Lcom/tencent/liteav/h;->p:Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 744
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "enableCustomVideoCapture"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    .line 745
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 746
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    iget-boolean v2, p0, Lcom/tencent/liteav/h;->r:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "TXVodPlayer"

    const-string v1, "setTRTCCustomVideoCapture error "

    .line 749
    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)I
    .locals 1

    const/4 v0, 0x0

    .line 176
    invoke-virtual {p0, p1, p2, v0}, Lcom/tencent/liteav/h;->a(Ljava/lang/String;ILcom/tencent/liteav/basic/b/a;)I

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;ILcom/tencent/liteav/basic/b/a;)I
    .locals 1

    .line 181
    sget p2, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->ENV_PRIORITY_FUNCTION:I

    const-string p3, "default"

    invoke-static {p3, p2}, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->setGlobalEnv(Ljava/lang/String;I)I

    .line 183
    iget-object p2, p0, Lcom/tencent/liteav/h;->d:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    .line 184
    iget-object p2, p0, Lcom/tencent/liteav/h;->d:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-virtual {p2, p3}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->setVisibility(I)V

    .line 186
    iget-object p2, p0, Lcom/tencent/liteav/h;->d:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-virtual {p2}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->getVideoView()Landroid/view/TextureView;

    move-result-object p2

    if-nez p2, :cond_0

    .line 187
    new-instance p2, Lcom/tencent/liteav/txcvodplayer/TextureRenderView;

    iget-object v0, p0, Lcom/tencent/liteav/h;->d:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-virtual {v0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/tencent/liteav/txcvodplayer/TextureRenderView;-><init>(Landroid/content/Context;)V

    .line 188
    iget-object v0, p0, Lcom/tencent/liteav/h;->d:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-virtual {v0, p2}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->addVideoView(Landroid/view/TextureView;)V

    .line 189
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-virtual {v0, p2}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setTextureRenderView(Lcom/tencent/liteav/txcvodplayer/TextureRenderView;)V

    .line 192
    :cond_0
    iget-object p2, p0, Lcom/tencent/liteav/h;->d:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-virtual {p2}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->getVideoView()Landroid/view/TextureView;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/view/TextureView;->setVisibility(I)V

    goto :goto_0

    .line 193
    :cond_1
    iget-object p2, p0, Lcom/tencent/liteav/h;->n:Landroid/view/Surface;

    if-eqz p2, :cond_2

    .line 194
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-virtual {v0, p2}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setRenderSurface(Landroid/view/Surface;)V

    .line 196
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/tencent/liteav/h;->o:Lcom/tencent/liteav/renderer/a;

    if-eqz p2, :cond_3

    .line 197
    invoke-virtual {p2}, Lcom/tencent/liteav/renderer/a;->e()V

    .line 199
    :cond_3
    new-instance p2, Lcom/tencent/liteav/f;

    iget-object v0, p0, Lcom/tencent/liteav/h;->c:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/tencent/liteav/f;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/tencent/liteav/h;->h:Lcom/tencent/liteav/f;

    .line 200
    invoke-direct {p0, p1}, Lcom/tencent/liteav/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 201
    iget-object p2, p0, Lcom/tencent/liteav/h;->h:Lcom/tencent/liteav/f;

    invoke-virtual {p2, p1}, Lcom/tencent/liteav/f;->a(Ljava/lang/String;)V

    .line 202
    iget-object p2, p0, Lcom/tencent/liteav/h;->h:Lcom/tencent/liteav/f;

    iget-boolean v0, p0, Lcom/tencent/liteav/h;->k:Z

    invoke-virtual {p2, v0}, Lcom/tencent/liteav/f;->a(Z)V

    .line 204
    iput-boolean p3, p0, Lcom/tencent/liteav/h;->i:Z

    .line 205
    iget-object p2, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    iget-object v0, p0, Lcom/tencent/liteav/h;->g:Lcom/tencent/liteav/txcplayer/h;

    invoke-virtual {v0}, Lcom/tencent/liteav/txcplayer/h;->g()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setPlayerType(I)V

    .line 206
    iget-object p2, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    iget-boolean v0, p0, Lcom/tencent/liteav/h;->j:Z

    invoke-virtual {p2, v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->b(Z)Z

    .line 207
    iget-object p2, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-virtual {p2, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setVideoPath(Ljava/lang/String;)V

    .line 208
    iget-object p2, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    iget-boolean v0, p0, Lcom/tencent/liteav/h;->k:Z

    invoke-virtual {p2, v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setAutoPlay(Z)V

    .line 209
    iget-object p2, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    iget v0, p0, Lcom/tencent/liteav/h;->m:F

    invoke-virtual {p2, v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setRate(F)V

    .line 210
    iget-object p2, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    iget-boolean v0, p0, Lcom/tencent/liteav/h;->l:Z

    invoke-virtual {p2, v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setAutoRotate(Z)V

    .line 211
    iget-object p2, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-virtual {p2}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->b()V

    .line 212
    iget-object p2, p0, Lcom/tencent/liteav/h;->h:Lcom/tencent/liteav/f;

    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-virtual {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getPlayerType()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/tencent/liteav/f;->a(I)V

    .line 213
    iget-boolean p2, p0, Lcom/tencent/liteav/h;->r:Z

    if-eqz p2, :cond_4

    .line 214
    invoke-virtual {p0}, Lcom/tencent/liteav/h;->s()V

    .line 216
    :cond_4
    iget-boolean p2, p0, Lcom/tencent/liteav/h;->s:Z

    if-eqz p2, :cond_5

    .line 217
    invoke-virtual {p0}, Lcom/tencent/liteav/h;->u()V

    .line 219
    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "startPlay "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TXVodPlayer"

    invoke-static {p2, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object p1, p0, Lcom/tencent/liteav/h;->c:Landroid/content/Context;

    sget p2, Lcom/tencent/liteav/basic/datareport/a;->bu:I

    invoke-static {p1, p2}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txReportDAU(Landroid/content/Context;I)V

    .line 221
    iget-object p1, p0, Lcom/tencent/liteav/h;->h:Lcom/tencent/liteav/f;

    invoke-virtual {p1}, Lcom/tencent/liteav/f;->b()V

    :try_start_0
    const-string p1, "com.tencent.liteav.demo.play.SuperPlayerView"

    .line 225
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 227
    iget-object p1, p0, Lcom/tencent/liteav/h;->c:Landroid/content/Context;

    sget p2, Lcom/tencent/liteav/basic/datareport/a;->bF:I

    invoke-static {p1, p2}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txReportDAU(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_6
    return p3
.end method

.method public a(Z)I
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-virtual {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c()V

    .line 237
    iget-object v0, p0, Lcom/tencent/liteav/h;->o:Lcom/tencent/liteav/renderer/a;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 238
    invoke-virtual {v0, v1}, Lcom/tencent/liteav/renderer/a;->a(Z)V

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/h;->d:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/liteav/h;->d:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-virtual {v0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->getVideoView()Landroid/view/TextureView;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 241
    iget-object p1, p0, Lcom/tencent/liteav/h;->d:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-virtual {p1}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->getVideoView()Landroid/view/TextureView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setVisibility(I)V

    .line 243
    :cond_1
    iget-object p1, p0, Lcom/tencent/liteav/h;->h:Lcom/tencent/liteav/f;

    if-eqz p1, :cond_2

    .line 244
    invoke-virtual {p1}, Lcom/tencent/liteav/f;->c()V

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public a()V
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-virtual {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->d()V

    .line 259
    iget-object v0, p0, Lcom/tencent/liteav/h;->h:Lcom/tencent/liteav/f;

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {v0}, Lcom/tencent/liteav/f;->d()V

    :cond_0
    return-void
.end method

.method public a(F)V
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(I)V

    .line 281
    iget-boolean p1, p0, Lcom/tencent/liteav/h;->i:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/liteav/h;->h:Lcom/tencent/liteav/f;

    if-eqz p1, :cond_0

    .line 282
    invoke-virtual {p1}, Lcom/tencent/liteav/f;->m()V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setRenderMode(I)V

    goto :goto_0

    .line 347
    :cond_0
    iget-object v1, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-virtual {v1, v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setRenderMode(I)V

    .line 349
    :goto_0
    iget-object v0, p0, Lcom/tencent/liteav/h;->o:Lcom/tencent/liteav/renderer/a;

    if-eqz v0, :cond_1

    .line 350
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/renderer/a;->c(I)V

    :cond_1
    return-void
.end method

.method public a(Landroid/view/Surface;)V
    .locals 1

    .line 250
    iput-object p1, p0, Lcom/tencent/liteav/h;->n:Landroid/view/Surface;

    .line 251
    iget-object p1, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    if-eqz p1, :cond_0

    .line 252
    iget-object v0, p0, Lcom/tencent/liteav/h;->n:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setRenderSurface(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/tencent/liteav/basic/e/k;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/tencent/liteav/d;)V
    .locals 3

    .line 83
    invoke-super {p0, p1}, Lcom/tencent/liteav/j;->a(Lcom/tencent/liteav/d;)V

    .line 85
    iget-object v0, p0, Lcom/tencent/liteav/h;->g:Lcom/tencent/liteav/txcplayer/h;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/tencent/liteav/txcplayer/h;

    invoke-direct {v0}, Lcom/tencent/liteav/txcplayer/h;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/h;->g:Lcom/tencent/liteav/txcplayer/h;

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/h;->g:Lcom/tencent/liteav/txcplayer/h;

    iget-object v1, p0, Lcom/tencent/liteav/h;->b:Lcom/tencent/liteav/d;

    iget v1, v1, Lcom/tencent/liteav/d;->e:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcplayer/h;->a(F)V

    .line 89
    iget-object v0, p0, Lcom/tencent/liteav/h;->g:Lcom/tencent/liteav/txcplayer/h;

    iget-object v1, p0, Lcom/tencent/liteav/h;->b:Lcom/tencent/liteav/d;

    iget v1, v1, Lcom/tencent/liteav/d;->f:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcplayer/h;->b(F)V

    .line 90
    iget-object v0, p0, Lcom/tencent/liteav/h;->g:Lcom/tencent/liteav/txcplayer/h;

    iget-object v1, p0, Lcom/tencent/liteav/h;->b:Lcom/tencent/liteav/d;

    iget v1, v1, Lcom/tencent/liteav/d;->r:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcplayer/h;->c(F)V

    .line 91
    iget-object v0, p0, Lcom/tencent/liteav/h;->g:Lcom/tencent/liteav/txcplayer/h;

    iget-object v1, p0, Lcom/tencent/liteav/h;->b:Lcom/tencent/liteav/d;

    iget-boolean v1, v1, Lcom/tencent/liteav/d;->h:Z

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcplayer/h;->a(Z)V

    .line 92
    iget-object v0, p0, Lcom/tencent/liteav/h;->g:Lcom/tencent/liteav/txcplayer/h;

    iget-object v1, p0, Lcom/tencent/liteav/h;->b:Lcom/tencent/liteav/d;

    iget-object v1, v1, Lcom/tencent/liteav/d;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcplayer/h;->a(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/tencent/liteav/h;->g:Lcom/tencent/liteav/txcplayer/h;

    iget-object v1, p0, Lcom/tencent/liteav/h;->b:Lcom/tencent/liteav/d;

    iget v1, v1, Lcom/tencent/liteav/d;->o:I

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcplayer/h;->a(I)V

    .line 94
    iget-object v0, p0, Lcom/tencent/liteav/h;->g:Lcom/tencent/liteav/txcplayer/h;

    iget-object v1, p0, Lcom/tencent/liteav/h;->b:Lcom/tencent/liteav/d;

    iget v1, v1, Lcom/tencent/liteav/d;->p:I

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcplayer/h;->b(I)V

    .line 95
    iget-object v0, p0, Lcom/tencent/liteav/h;->g:Lcom/tencent/liteav/txcplayer/h;

    iget-object v1, p0, Lcom/tencent/liteav/h;->b:Lcom/tencent/liteav/d;

    iget-object v1, v1, Lcom/tencent/liteav/d;->q:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcplayer/h;->a(Ljava/util/Map;)V

    .line 96
    iget-object v0, p0, Lcom/tencent/liteav/h;->g:Lcom/tencent/liteav/txcplayer/h;

    iget-object v1, p0, Lcom/tencent/liteav/h;->b:Lcom/tencent/liteav/d;

    iget-boolean v1, v1, Lcom/tencent/liteav/d;->s:Z

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcplayer/h;->b(Z)V

    .line 97
    iget-object v0, p0, Lcom/tencent/liteav/h;->g:Lcom/tencent/liteav/txcplayer/h;

    iget-object v1, p0, Lcom/tencent/liteav/h;->b:Lcom/tencent/liteav/d;

    iget-boolean v1, v1, Lcom/tencent/liteav/d;->u:Z

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcplayer/h;->c(Z)V

    .line 98
    iget-object v0, p0, Lcom/tencent/liteav/h;->g:Lcom/tencent/liteav/txcplayer/h;

    iget-object v1, p0, Lcom/tencent/liteav/h;->b:Lcom/tencent/liteav/d;

    iget-object v1, v1, Lcom/tencent/liteav/d;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcplayer/h;->b(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/tencent/liteav/h;->g:Lcom/tencent/liteav/txcplayer/h;

    iget-object v1, p0, Lcom/tencent/liteav/h;->b:Lcom/tencent/liteav/d;

    iget v1, v1, Lcom/tencent/liteav/d;->w:I

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcplayer/h;->c(I)V

    .line 100
    iget-object v0, p0, Lcom/tencent/liteav/h;->g:Lcom/tencent/liteav/txcplayer/h;

    iget-object v1, p0, Lcom/tencent/liteav/h;->b:Lcom/tencent/liteav/d;

    iget v1, v1, Lcom/tencent/liteav/d;->x:I

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcplayer/h;->d(I)V

    .line 101
    iget-object v0, p0, Lcom/tencent/liteav/h;->g:Lcom/tencent/liteav/txcplayer/h;

    iget-object v1, p0, Lcom/tencent/liteav/h;->b:Lcom/tencent/liteav/d;

    iget v1, v1, Lcom/tencent/liteav/d;->y:I

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcplayer/h;->h(I)Lcom/tencent/liteav/txcplayer/h;

    .line 102
    iget-object v0, p0, Lcom/tencent/liteav/h;->g:Lcom/tencent/liteav/txcplayer/h;

    iget-object v1, p0, Lcom/tencent/liteav/h;->b:Lcom/tencent/liteav/d;

    iget v1, v1, Lcom/tencent/liteav/d;->z:I

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcplayer/h;->f(I)V

    .line 103
    iget-object v0, p0, Lcom/tencent/liteav/h;->g:Lcom/tencent/liteav/txcplayer/h;

    iget-object v1, p0, Lcom/tencent/liteav/h;->b:Lcom/tencent/liteav/d;

    iget v1, v1, Lcom/tencent/liteav/d;->A:I

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcplayer/h;->g(I)V

    .line 104
    iget-object v0, p0, Lcom/tencent/liteav/h;->g:Lcom/tencent/liteav/txcplayer/h;

    iget-object v1, p0, Lcom/tencent/liteav/h;->b:Lcom/tencent/liteav/d;

    iget-object v1, v1, Lcom/tencent/liteav/d;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcplayer/h;->d(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/tencent/liteav/h;->g:Lcom/tencent/liteav/txcplayer/h;

    iget-object v1, p0, Lcom/tencent/liteav/h;->b:Lcom/tencent/liteav/d;

    iget-object v1, v1, Lcom/tencent/liteav/d;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcplayer/h;->e(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/tencent/liteav/h;->g:Lcom/tencent/liteav/txcplayer/h;

    iget-object v1, p0, Lcom/tencent/liteav/h;->b:Lcom/tencent/liteav/d;

    iget-object v1, v1, Lcom/tencent/liteav/d;->E:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcplayer/h;->b(Ljava/util/Map;)V

    .line 107
    iget-object v0, p0, Lcom/tencent/liteav/h;->g:Lcom/tencent/liteav/txcplayer/h;

    iget-object v1, p0, Lcom/tencent/liteav/h;->b:Lcom/tencent/liteav/d;

    iget-boolean v1, v1, Lcom/tencent/liteav/d;->F:Z

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcplayer/h;->f(Z)V

    .line 108
    iget-object v0, p0, Lcom/tencent/liteav/h;->g:Lcom/tencent/liteav/txcplayer/h;

    iget-object v1, p0, Lcom/tencent/liteav/h;->b:Lcom/tencent/liteav/d;

    iget-wide v1, v1, Lcom/tencent/liteav/d;->G:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/txcplayer/h;->b(J)V

    .line 110
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    iget-object v1, p0, Lcom/tencent/liteav/h;->g:Lcom/tencent/liteav/txcplayer/h;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setConfig(Lcom/tencent/liteav/txcplayer/h;)V

    .line 111
    iget-boolean p1, p1, Lcom/tencent/liteav/d;->t:Z

    iput-boolean p1, p0, Lcom/tencent/liteav/h;->l:Z

    .line 113
    invoke-static {}, Lcom/tencent/liteav/txcplayer/ext/service/RenderProcessService;->getInstance()Lcom/tencent/liteav/txcplayer/ext/service/RenderProcessService;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/liteav/h;->g:Lcom/tencent/liteav/txcplayer/h;

    invoke-virtual {v0}, Lcom/tencent/liteav/txcplayer/h;->s()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/txcplayer/ext/service/RenderProcessService;->setEnableRenderProcess(Z)V

    return-void
.end method

.method public a(Lcom/tencent/liteav/txcvodplayer/TextureRenderView;)V
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    if-eqz v0, :cond_0

    .line 403
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setRenderView(Lcom/tencent/liteav/txcvodplayer/a;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/tencent/rtmp/ui/TXCloudVideoView;)V
    .locals 3

    .line 365
    iget-object v0, p0, Lcom/tencent/liteav/h;->d:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    if-eq p1, v0, :cond_1

    .line 367
    iget-object v0, p0, Lcom/tencent/liteav/h;->d:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/tencent/liteav/h;->d:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-virtual {v0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->removeVideoView()V

    :cond_0
    if-eqz p1, :cond_1

    .line 373
    invoke-virtual {p1}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->removeVideoView()V

    :cond_1
    if-eqz p1, :cond_4

    const/4 v0, 0x0

    .line 378
    invoke-virtual {p1, v0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->setVisibility(I)V

    .line 379
    iget-object v1, p0, Lcom/tencent/liteav/h;->o:Lcom/tencent/liteav/renderer/a;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/liteav/h;->p:Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 380
    invoke-virtual {p1}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->getVideoView()Landroid/view/TextureView;

    move-result-object v1

    if-nez v1, :cond_3

    .line 381
    new-instance v1, Landroid/view/TextureView;

    invoke-virtual {p1}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 382
    invoke-virtual {p1, v1}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->addVideoView(Landroid/view/TextureView;)V

    .line 383
    iget-object v2, p0, Lcom/tencent/liteav/h;->o:Lcom/tencent/liteav/renderer/a;

    invoke-virtual {v2, p0}, Lcom/tencent/liteav/renderer/a;->a(Lcom/tencent/liteav/renderer/f;)V

    .line 384
    iget-object v2, p0, Lcom/tencent/liteav/h;->o:Lcom/tencent/liteav/renderer/a;

    invoke-virtual {v2, v1}, Lcom/tencent/liteav/renderer/a;->a(Landroid/view/TextureView;)V

    goto :goto_0

    .line 388
    :cond_2
    invoke-virtual {p1}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->getVideoView()Landroid/view/TextureView;

    move-result-object v1

    if-nez v1, :cond_3

    .line 389
    new-instance v1, Lcom/tencent/liteav/txcvodplayer/TextureRenderView;

    invoke-virtual {p1}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/liteav/txcvodplayer/TextureRenderView;-><init>(Landroid/content/Context;)V

    .line 390
    invoke-virtual {p1, v1}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->addVideoView(Landroid/view/TextureView;)V

    .line 391
    iget-object v2, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-virtual {v2, v1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setTextureRenderView(Lcom/tencent/liteav/txcvodplayer/TextureRenderView;)V

    .line 395
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->getVideoView()Landroid/view/TextureView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/TextureView;->setVisibility(I)V

    .line 398
    :cond_4
    invoke-super {p0, p1}, Lcom/tencent/liteav/j;->a(Lcom/tencent/rtmp/ui/TXCloudVideoView;)V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    .line 716
    iput-object p1, p0, Lcom/tencent/liteav/h;->p:Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 872
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public a(ZI)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 2

    .line 265
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-virtual {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->b()V

    .line 266
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setAutoPlay(Z)V

    .line 267
    iget-object v0, p0, Lcom/tencent/liteav/h;->h:Lcom/tencent/liteav/f;

    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {v0}, Lcom/tencent/liteav/f;->e()V

    :cond_0
    return-void
.end method

.method public b(F)V
    .locals 1

    .line 456
    iput p1, p0, Lcom/tencent/liteav/h;->m:F

    .line 457
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    if-eqz v0, :cond_0

    .line 458
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setRate(F)V

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/h;->h:Lcom/tencent/liteav/f;

    if-eqz v0, :cond_1

    .line 461
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/f;->a(F)V

    :cond_1
    return-void
.end method

.method public b(I)V
    .locals 2

    .line 356
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    rsub-int v1, p1, 0x168

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setVideoRotationDegree(I)V

    .line 357
    iget-object v0, p0, Lcom/tencent/liteav/h;->o:Lcom/tencent/liteav/renderer/a;

    if-eqz v0, :cond_0

    .line 358
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/renderer/a;->e(I)V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setMute(Z)V

    return-void
.end method

.method public c(F)V
    .locals 1

    .line 466
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    if-eqz v0, :cond_0

    .line 467
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setStartTime(F)V

    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setVolume(I)V

    return-void
.end method

.method public c(Z)V
    .locals 0

    return-void
.end method

.method public c()Z
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-virtual {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->e()Z

    move-result v0

    return v0
.end method

.method public d()Landroid/view/TextureView;
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/tencent/liteav/h;->d:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/tencent/liteav/h;->d:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-virtual {v0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->getVideoView()Landroid/view/TextureView;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public d(I)V
    .locals 0

    return-void
.end method

.method public d(Z)Z
    .locals 1

    .line 439
    iput-boolean p1, p0, Lcom/tencent/liteav/h;->j:Z

    .line 440
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    if-eqz v0, :cond_0

    .line 441
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->b(Z)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public e()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public e(Z)V
    .locals 1

    .line 448
    iput-boolean p1, p0, Lcom/tencent/liteav/h;->k:Z

    .line 449
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    if-eqz v0, :cond_0

    .line 450
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setAutoPlay(Z)V

    :cond_0
    return-void
.end method

.method public f(I)V
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    mul-int/lit16 p1, p1, 0x3e8

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(I)V

    .line 274
    iget-boolean p1, p0, Lcom/tencent/liteav/h;->i:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/liteav/h;->h:Lcom/tencent/liteav/f;

    if-eqz p1, :cond_0

    .line 275
    invoke-virtual {p1}, Lcom/tencent/liteav/f;->m()V

    :cond_0
    return-void
.end method

.method public f(Z)V
    .locals 0

    .line 690
    iput-boolean p1, p0, Lcom/tencent/liteav/h;->a:Z

    return-void
.end method

.method public g(I)V
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setAudioPlayoutVolume(I)V

    return-void
.end method

.method public g(Z)V
    .locals 5

    .line 694
    invoke-virtual {p0}, Lcom/tencent/liteav/h;->d()Landroid/view/TextureView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 696
    iget-object v1, p0, Lcom/tencent/liteav/h;->b:Lcom/tencent/liteav/d;

    iget-boolean v1, v1, Lcom/tencent/liteav/d;->t:Z

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-virtual {v1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getMetaRotationDegree()I

    move-result v1

    const/16 v4, 0x5a

    if-eq v1, v4, :cond_0

    iget-object v1, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-virtual {v1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getMetaRotationDegree()I

    move-result v1

    const/16 v4, 0x10e

    if-ne v1, v4, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    .line 697
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setScaleY(F)V

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    .line 699
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setScaleX(F)V

    .line 702
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/tencent/liteav/h;->h:Lcom/tencent/liteav/f;

    if-eqz v0, :cond_5

    .line 703
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/f;->b(Z)V

    :cond_5
    return-void
.end method

.method public h(I)V
    .locals 1

    .line 663
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    if-eqz v0, :cond_0

    .line 664
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setBitrateIndex(I)V

    :cond_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 665
    iget-boolean p1, p0, Lcom/tencent/liteav/h;->i:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/tencent/liteav/h;->h:Lcom/tencent/liteav/f;

    if-eqz p1, :cond_1

    .line 666
    iget-object v0, p0, Lcom/tencent/liteav/h;->g:Lcom/tencent/liteav/txcplayer/h;

    invoke-virtual {v0}, Lcom/tencent/liteav/txcplayer/h;->j()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/f;->c(Z)V

    :cond_1
    return-void
.end method

.method public i()F
    .locals 2

    .line 287
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getCurrentPosition()J

    move-result-wide v0

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public j()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public k()F
    .locals 2

    .line 294
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getBufferDuration()J

    move-result-wide v0

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public l()F
    .locals 2

    .line 301
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getDuration()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public m()F
    .locals 2

    .line 308
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getBufferDuration()J

    move-result-wide v0

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public n()I
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    if-eqz v0, :cond_0

    .line 316
    invoke-virtual {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getVideoWidth()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public o()I
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getVideoHeight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 765
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/tencent/liteav/h;->n:Landroid/view/Surface;

    .line 766
    iget-object p1, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    iget-object v0, p0, Lcom/tencent/liteav/h;->n:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setRenderSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public onSurfaceTextureDestroy(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    const/4 p1, 0x0

    .line 771
    iput-object p1, p0, Lcom/tencent/liteav/h;->n:Landroid/view/Surface;

    .line 772
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setRenderSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public onTextureProcess(IIII)V
    .locals 6

    .line 778
    :try_start_0
    iget-object p4, p0, Lcom/tencent/liteav/h;->q:Lcom/tencent/liteav/h$a;

    if-nez p4, :cond_0

    iget-object p4, p0, Lcom/tencent/liteav/h;->p:Ljava/lang/Object;

    if-eqz p4, :cond_0

    .line 779
    new-instance p4, Lcom/tencent/liteav/h$a;

    iget-object v0, p0, Lcom/tencent/liteav/h;->p:Ljava/lang/Object;

    invoke-direct {p4, v0}, Lcom/tencent/liteav/h$a;-><init>(Ljava/lang/Object;)V

    iput-object p4, p0, Lcom/tencent/liteav/h;->q:Lcom/tencent/liteav/h$a;

    .line 781
    :cond_0
    iget-object p4, p0, Lcom/tencent/liteav/h;->q:Lcom/tencent/liteav/h$a;

    if-eqz p4, :cond_1

    .line 782
    iget-object v0, p0, Lcom/tencent/liteav/h;->q:Lcom/tencent/liteav/h$a;

    iget-object v1, p0, Lcom/tencent/liteav/h;->p:Ljava/lang/Object;

    iget-object v2, p0, Lcom/tencent/liteav/h;->o:Lcom/tencent/liteav/renderer/a;

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/liteav/h$a;->a(Ljava/lang/Object;Lcom/tencent/liteav/renderer/a;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "TXVodPlayer"

    const-string p3, "get enableCustomVideoCapture method error "

    .line 786
    invoke-static {p2, p3, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public p()I
    .locals 1

    .line 657
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    if-eqz v0, :cond_0

    .line 658
    invoke-virtual {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getBitrateIndex()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public q()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/rtmp/TXBitrateItem;",
            ">;"
        }
    .end annotation

    .line 671
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 672
    iget-object v1, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    if-eqz v1, :cond_0

    .line 673
    invoke-virtual {v1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getSupportedBitrates()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 675
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/liteav/txcplayer/b;

    .line 676
    new-instance v3, Lcom/tencent/rtmp/TXBitrateItem;

    invoke-direct {v3}, Lcom/tencent/rtmp/TXBitrateItem;-><init>()V

    .line 677
    iget v4, v2, Lcom/tencent/liteav/txcplayer/b;->a:I

    iput v4, v3, Lcom/tencent/rtmp/TXBitrateItem;->index:I

    .line 678
    iget v4, v2, Lcom/tencent/liteav/txcplayer/b;->b:I

    iput v4, v3, Lcom/tencent/rtmp/TXBitrateItem;->width:I

    .line 679
    iget v4, v2, Lcom/tencent/liteav/txcplayer/b;->c:I

    iput v4, v3, Lcom/tencent/rtmp/TXBitrateItem;->height:I

    .line 680
    iget v2, v2, Lcom/tencent/liteav/txcplayer/b;->d:I

    iput v2, v3, Lcom/tencent/rtmp/TXBitrateItem;->bitrate:I

    .line 681
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public r()V
    .locals 1

    const/4 v0, 0x0

    .line 720
    iput-object v0, p0, Lcom/tencent/liteav/h;->p:Ljava/lang/Object;

    .line 721
    invoke-virtual {p0}, Lcom/tencent/liteav/h;->v()V

    .line 722
    invoke-virtual {p0}, Lcom/tencent/liteav/h;->t()V

    return-void
.end method

.method public s()V
    .locals 1

    .line 726
    iget-object v0, p0, Lcom/tencent/liteav/h;->o:Lcom/tencent/liteav/renderer/a;

    if-eqz v0, :cond_0

    .line 727
    invoke-virtual {v0, p0}, Lcom/tencent/liteav/renderer/a;->b(Lcom/tencent/liteav/renderer/a$a;)V

    :cond_0
    const/4 v0, 0x1

    .line 729
    invoke-direct {p0, v0}, Lcom/tencent/liteav/h;->h(Z)V

    return-void
.end method

.method public t()V
    .locals 2

    .line 733
    iget-object v0, p0, Lcom/tencent/liteav/h;->o:Lcom/tencent/liteav/renderer/a;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 734
    invoke-virtual {v0, v1}, Lcom/tencent/liteav/renderer/a;->b(Lcom/tencent/liteav/renderer/a$a;)V

    :cond_0
    const/4 v0, 0x0

    .line 736
    invoke-direct {p0, v0}, Lcom/tencent/liteav/h;->h(Z)V

    return-void
.end method

.method public u()V
    .locals 1

    const/4 v0, 0x1

    .line 754
    iput-boolean v0, p0, Lcom/tencent/liteav/h;->s:Z

    .line 755
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-virtual {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->f()V

    return-void
.end method

.method public v()V
    .locals 1

    const/4 v0, 0x0

    .line 759
    iput-boolean v0, p0, Lcom/tencent/liteav/h;->s:Z

    .line 760
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-virtual {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->g()V

    return-void
.end method
