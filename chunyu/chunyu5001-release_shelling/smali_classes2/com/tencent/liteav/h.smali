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

    .line 74
    invoke-direct {p0, p1}, Lcom/tencent/liteav/j;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/tencent/liteav/h;->h:Lcom/tencent/liteav/f;

    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Lcom/tencent/liteav/h;->j:Z

    .line 62
    iput-boolean v0, p0, Lcom/tencent/liteav/h;->k:Z

    .line 63
    iput-boolean v0, p0, Lcom/tencent/liteav/h;->l:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 64
    iput v0, p0, Lcom/tencent/liteav/h;->m:F

    .line 510
    new-instance v0, Lcom/tencent/liteav/h$1;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/h$1;-><init>(Lcom/tencent/liteav/h;)V

    iput-object v0, p0, Lcom/tencent/liteav/h;->t:Lcom/tencent/liteav/txcplayer/e;

    .line 75
    invoke-static {}, Lcom/tencent/liteav/txcplayer/ext/service/RenderProcessService;->getInstance()Lcom/tencent/liteav/txcplayer/ext/service/RenderProcessService;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcplayer/ext/service/RenderProcessService;->checkInit(Landroid/content/Context;)V

    .line 76
    new-instance v0, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-direct {v0, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    .line 77
    iget-object p1, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    iget-object v0, p0, Lcom/tencent/liteav/h;->t:Lcom/tencent/liteav/txcplayer/e;

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setListener(Lcom/tencent/liteav/txcplayer/e;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/h;)Lcom/tencent/liteav/f;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/tencent/liteav/h;->h:Lcom/tencent/liteav/f;

    return-object p0
.end method

.method static synthetic a(Lcom/tencent/liteav/h;Z)Z
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/tencent/liteav/h;->i:Z

    return p1
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 836
    invoke-static {p0}, Lcom/tencent/liteav/txcvodplayer/hlsencoder/TXCHLSEncoder;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/tencent/liteav/h;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/tencent/liteav/h;->i:Z

    return p0
.end method

.method static synthetic c(Lcom/tencent/liteav/h;)Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    return-object p0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 19

    move-object/from16 v0, p0

    const-string v1, "&oversign="

    move-object/from16 v2, p1

    .line 120
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    invoke-direct/range {p0 .. p1}, Lcom/tencent/liteav/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 128
    :goto_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 129
    invoke-virtual {v2}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TXVodPlayer"

    const-string v5, ""

    if-eqz v3, :cond_a

    .line 131
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_a

    const-string v7, "&"

    .line 132
    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 133
    array-length v8, v3

    const-string v10, "0"

    if-lez v8, :cond_8

    .line 135
    array-length v8, v3

    move-object v12, v5

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    const/4 v5, 0x0

    const/4 v11, 0x0

    :goto_1
    if-ge v5, v8, :cond_6

    aget-object v9, v3, v5

    const-string v6, "="

    .line 136
    invoke-virtual {v9, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    move-object/from16 v17, v1

    .line 137
    array-length v1, v6

    move-object/from16 v18, v3

    const/4 v3, 0x2

    if-ne v1, v3, :cond_5

    const/4 v1, 0x0

    .line 138
    aget-object v3, v6, v1

    const-string v1, "spfileid"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 139
    aget-object v12, v6, v1

    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_1
    const/4 v3, 0x0

    .line 141
    aget-object v1, v6, v3

    const-string v3, "spdrmtype"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 142
    aget-object v13, v6, v1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 144
    aget-object v1, v6, v3

    const-string v3, "spappid"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    .line 145
    aget-object v14, v6, v1

    goto :goto_2

    :cond_3
    const/4 v1, 0x1

    .line 148
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 149
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 151
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v15, v3

    goto :goto_3

    :cond_5
    const/4 v1, 0x1

    const-string v3, "fieldIds.length != 2"

    .line 154
    invoke-static {v4, v3}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, v17

    move-object/from16 v3, v18

    goto :goto_1

    :cond_6
    move-object/from16 v17, v1

    const/4 v1, 0x1

    const/4 v3, 0x3

    if-ne v11, v3, :cond_7

    const-string v10, "1"

    move v6, v1

    move-object v5, v15

    goto :goto_5

    :cond_7
    move-object v5, v15

    goto :goto_4

    :cond_8
    move-object/from16 v17, v1

    move-object v12, v5

    move-object v13, v12

    move-object v14, v13

    :goto_4
    const/4 v6, 0x0

    :goto_5
    if-eqz v6, :cond_9

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "spfileid, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", spdrmtype= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", spappid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v1, v0, Lcom/tencent/liteav/h;->h:Lcom/tencent/liteav/f;

    invoke-virtual {v1, v12}, Lcom/tencent/liteav/f;->d(Ljava/lang/String;)V

    .line 165
    iget-object v1, v0, Lcom/tencent/liteav/h;->h:Lcom/tencent/liteav/f;

    invoke-virtual {v1, v13}, Lcom/tencent/liteav/f;->c(Ljava/lang/String;)V

    .line 166
    iget-object v1, v0, Lcom/tencent/liteav/h;->h:Lcom/tencent/liteav/f;

    invoke-virtual {v1, v14}, Lcom/tencent/liteav/f;->f(Ljava/lang/String;)V

    .line 167
    iget-object v1, v0, Lcom/tencent/liteav/h;->h:Lcom/tencent/liteav/f;

    invoke-virtual {v1, v10}, Lcom/tencent/liteav/f;->b(Ljava/lang/String;)V

    :cond_9
    move/from16 v16, v6

    goto :goto_6

    :cond_a
    move-object/from16 v17, v1

    const/16 v16, 0x0

    :goto_6
    if-eqz v16, :cond_b

    .line 171
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 172
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c

    .line 173
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/net/Uri$Builder;->query(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_b
    move-object/from16 v1, v17

    .line 176
    :cond_c
    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parsePlayUrl url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method static synthetic d(Lcom/tencent/liteav/h;)Lcom/tencent/liteav/txcplayer/h;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/tencent/liteav/h;->g:Lcom/tencent/liteav/txcplayer/h;

    return-object p0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const-string v0, "&oversign="

    .line 188
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 189
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 190
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v2, v1, 0x1

    .line 191
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 192
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    const-string v3, "&"

    .line 193
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 194
    array-length v3, v2

    const/4 v5, 0x6

    if-ne v3, v5, :cond_1

    const/4 v3, 0x4

    .line 195
    aget-object v5, v2, v3

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x5

    aget-object v8, v2, v5

    invoke-virtual {v8, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v7

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 196
    aget-object v8, v2, v4

    invoke-virtual {v8, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget-object v9, v2, v7

    .line 197
    invoke-virtual {v9, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v7

    const/4 v10, 0x2

    aget-object v10, v2, v10

    invoke-virtual {v10, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v7

    const/4 v11, 0x3

    aget-object v11, v2, v11

    invoke-virtual {v11, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v7

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 196
    invoke-static {v8, v9, v10, v11}, Lcom/tencent/liteav/txcvodplayer/hlsencoder/TXCHLSEncoder;->a(ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 198
    iget-object v9, p0, Lcom/tencent/liteav/h;->g:Lcom/tencent/liteav/txcplayer/h;

    if-nez v9, :cond_0

    .line 199
    new-instance v9, Lcom/tencent/liteav/txcplayer/h;

    invoke-direct {v9}, Lcom/tencent/liteav/txcplayer/h;-><init>()V

    iput-object v9, p0, Lcom/tencent/liteav/h;->g:Lcom/tencent/liteav/txcplayer/h;

    .line 201
    :cond_0
    iget-object v9, p0, Lcom/tencent/liteav/h;->g:Lcom/tencent/liteav/txcplayer/h;

    aget-object v3, v2, v3

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v7

    invoke-static {v8, v3}, Lcom/tencent/liteav/txcvodplayer/hlsencoder/TXCHLSEncoder;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/tencent/liteav/txcplayer/h;->d(Ljava/lang/String;)V

    .line 202
    iget-object v3, p0, Lcom/tencent/liteav/h;->g:Lcom/tencent/liteav/txcplayer/h;

    aget-object v2, v2, v5

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v7

    invoke-static {v8, v2}, Lcom/tencent/liteav/txcvodplayer/hlsencoder/TXCHLSEncoder;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/tencent/liteav/txcplayer/h;->e(Ljava/lang/String;)V

    .line 203
    iget-object v2, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    iget-object v3, p0, Lcom/tencent/liteav/h;->g:Lcom/tencent/liteav/txcplayer/h;

    invoke-virtual {v2, v3}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setConfig(Lcom/tencent/liteav/txcplayer/h;)V

    :cond_1
    if-lez v1, :cond_2

    if-ge v1, v0, :cond_2

    .line 208
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method static synthetic e(Lcom/tencent/liteav/h;)Lcom/tencent/liteav/renderer/a;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/tencent/liteav/h;->o:Lcom/tencent/liteav/renderer/a;

    return-object p0
.end method

.method private h(Z)V
    .locals 7

    .line 779
    iput-boolean p1, p0, Lcom/tencent/liteav/h;->r:Z

    .line 781
    :try_start_0
    iget-object p1, p0, Lcom/tencent/liteav/h;->p:Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 783
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "enableCustomVideoCapture"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    .line 784
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 785
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

    .line 788
    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)I
    .locals 1

    const/4 v0, 0x0

    .line 215
    invoke-virtual {p0, p1, p2, v0}, Lcom/tencent/liteav/h;->a(Ljava/lang/String;ILcom/tencent/liteav/basic/b/a;)I

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;ILcom/tencent/liteav/basic/b/a;)I
    .locals 1

    .line 220
    sget p2, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->ENV_PRIORITY_FUNCTION:I

    const-string p3, "default"

    invoke-static {p3, p2}, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->setGlobalEnv(Ljava/lang/String;I)I

    .line 222
    iget-object p2, p0, Lcom/tencent/liteav/h;->d:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    .line 223
    iget-object p2, p0, Lcom/tencent/liteav/h;->d:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-virtual {p2, p3}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->setVisibility(I)V

    .line 225
    iget-object p2, p0, Lcom/tencent/liteav/h;->d:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-virtual {p2}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->getVideoView()Landroid/view/TextureView;

    move-result-object p2

    if-nez p2, :cond_0

    .line 226
    new-instance p2, Lcom/tencent/liteav/txcvodplayer/TextureRenderView;

    iget-object v0, p0, Lcom/tencent/liteav/h;->d:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-virtual {v0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/tencent/liteav/txcvodplayer/TextureRenderView;-><init>(Landroid/content/Context;)V

    .line 227
    iget-object v0, p0, Lcom/tencent/liteav/h;->d:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-virtual {v0, p2}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->addVideoView(Landroid/view/TextureView;)V

    .line 228
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-virtual {v0, p2}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setTextureRenderView(Lcom/tencent/liteav/txcvodplayer/TextureRenderView;)V

    .line 231
    :cond_0
    iget-object p2, p0, Lcom/tencent/liteav/h;->d:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-virtual {p2}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->getVideoView()Landroid/view/TextureView;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/view/TextureView;->setVisibility(I)V

    goto :goto_0

    .line 232
    :cond_1
    iget-object p2, p0, Lcom/tencent/liteav/h;->n:Landroid/view/Surface;

    if-eqz p2, :cond_2

    .line 233
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-virtual {v0, p2}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setRenderSurface(Landroid/view/Surface;)V

    .line 235
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/tencent/liteav/h;->o:Lcom/tencent/liteav/renderer/a;

    if-eqz p2, :cond_3

    .line 236
    invoke-virtual {p2}, Lcom/tencent/liteav/renderer/a;->e()V

    .line 238
    :cond_3
    new-instance p2, Lcom/tencent/liteav/f;

    iget-object v0, p0, Lcom/tencent/liteav/h;->c:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/tencent/liteav/f;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/tencent/liteav/h;->h:Lcom/tencent/liteav/f;

    .line 239
    invoke-direct {p0, p1}, Lcom/tencent/liteav/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 240
    iget-object p2, p0, Lcom/tencent/liteav/h;->h:Lcom/tencent/liteav/f;

    invoke-virtual {p2, p1}, Lcom/tencent/liteav/f;->a(Ljava/lang/String;)V

    .line 241
    iget-object p2, p0, Lcom/tencent/liteav/h;->h:Lcom/tencent/liteav/f;

    iget-boolean v0, p0, Lcom/tencent/liteav/h;->k:Z

    invoke-virtual {p2, v0}, Lcom/tencent/liteav/f;->a(Z)V

    .line 243
    iput-boolean p3, p0, Lcom/tencent/liteav/h;->i:Z

    .line 244
    iget-object p2, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    iget-object v0, p0, Lcom/tencent/liteav/h;->g:Lcom/tencent/liteav/txcplayer/h;

    invoke-virtual {v0}, Lcom/tencent/liteav/txcplayer/h;->g()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setPlayerType(I)V

    .line 245
    iget-object p2, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    iget-boolean v0, p0, Lcom/tencent/liteav/h;->j:Z

    invoke-virtual {p2, v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->b(Z)Z

    .line 246
    iget-object p2, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-virtual {p2, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setVideoPath(Ljava/lang/String;)V

    .line 247
    iget-object p2, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    iget-boolean v0, p0, Lcom/tencent/liteav/h;->k:Z

    invoke-virtual {p2, v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setAutoPlay(Z)V

    .line 248
    iget-object p2, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    iget v0, p0, Lcom/tencent/liteav/h;->m:F

    invoke-virtual {p2, v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setRate(F)V

    .line 249
    iget-object p2, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    iget-boolean v0, p0, Lcom/tencent/liteav/h;->l:Z

    invoke-virtual {p2, v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setAutoRotate(Z)V

    .line 250
    iget-object p2, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-virtual {p2}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->b()V

    .line 251
    iget-object p2, p0, Lcom/tencent/liteav/h;->h:Lcom/tencent/liteav/f;

    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-virtual {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getPlayerType()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/tencent/liteav/f;->a(I)V

    .line 252
    iget-boolean p2, p0, Lcom/tencent/liteav/h;->r:Z

    if-eqz p2, :cond_4

    .line 253
    invoke-virtual {p0}, Lcom/tencent/liteav/h;->s()V

    .line 255
    :cond_4
    iget-boolean p2, p0, Lcom/tencent/liteav/h;->s:Z

    if-eqz p2, :cond_5

    .line 256
    invoke-virtual {p0}, Lcom/tencent/liteav/h;->u()V

    .line 258
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

    .line 259
    iget-object p1, p0, Lcom/tencent/liteav/h;->c:Landroid/content/Context;

    sget p2, Lcom/tencent/liteav/basic/datareport/a;->bu:I

    invoke-static {p1, p2}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txReportDAU(Landroid/content/Context;I)V

    .line 260
    iget-object p1, p0, Lcom/tencent/liteav/h;->h:Lcom/tencent/liteav/f;

    invoke-virtual {p1}, Lcom/tencent/liteav/f;->b()V

    :try_start_0
    const-string p1, "com.tencent.liteav.demo.play.SuperPlayerView"

    .line 264
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 266
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

    .line 275
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-virtual {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->c()V

    .line 276
    iget-object v0, p0, Lcom/tencent/liteav/h;->o:Lcom/tencent/liteav/renderer/a;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 277
    invoke-virtual {v0, v1}, Lcom/tencent/liteav/renderer/a;->a(Z)V

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/h;->d:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/liteav/h;->d:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-virtual {v0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->getVideoView()Landroid/view/TextureView;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 280
    iget-object p1, p0, Lcom/tencent/liteav/h;->d:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-virtual {p1}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->getVideoView()Landroid/view/TextureView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setVisibility(I)V

    .line 282
    :cond_1
    iget-object p1, p0, Lcom/tencent/liteav/h;->h:Lcom/tencent/liteav/f;

    if-eqz p1, :cond_2

    .line 283
    invoke-virtual {p1}, Lcom/tencent/liteav/f;->c()V

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public a()V
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-virtual {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->d()V

    .line 298
    iget-object v0, p0, Lcom/tencent/liteav/h;->h:Lcom/tencent/liteav/f;

    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {v0}, Lcom/tencent/liteav/f;->d()V

    :cond_0
    return-void
.end method

.method public a(F)V
    .locals 2

    .line 319
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(I)V

    .line 320
    iget-boolean p1, p0, Lcom/tencent/liteav/h;->i:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/liteav/h;->h:Lcom/tencent/liteav/f;

    if-eqz p1, :cond_0

    .line 321
    invoke-virtual {p1}, Lcom/tencent/liteav/f;->m()V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setRenderMode(I)V

    goto :goto_0

    .line 386
    :cond_0
    iget-object v1, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-virtual {v1, v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setRenderMode(I)V

    .line 388
    :goto_0
    iget-object v0, p0, Lcom/tencent/liteav/h;->o:Lcom/tencent/liteav/renderer/a;

    if-eqz v0, :cond_1

    .line 389
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/renderer/a;->c(I)V

    :cond_1
    return-void
.end method

.method public a(Landroid/view/Surface;)V
    .locals 1

    .line 289
    iput-object p1, p0, Lcom/tencent/liteav/h;->n:Landroid/view/Surface;

    .line 290
    iget-object p1, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    if-eqz p1, :cond_0

    .line 291
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

    .line 84
    invoke-super {p0, p1}, Lcom/tencent/liteav/j;->a(Lcom/tencent/liteav/d;)V

    .line 86
    iget-object v0, p0, Lcom/tencent/liteav/h;->g:Lcom/tencent/liteav/txcplayer/h;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/tencent/liteav/txcplayer/h;

    invoke-direct {v0}, Lcom/tencent/liteav/txcplayer/h;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/h;->g:Lcom/tencent/liteav/txcplayer/h;

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/h;->g:Lcom/tencent/liteav/txcplayer/h;

    iget-object v1, p0, Lcom/tencent/liteav/h;->b:Lcom/tencent/liteav/d;

    iget v1, v1, Lcom/tencent/liteav/d;->e:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcplayer/h;->a(F)V

    .line 90
    iget-object v0, p0, Lcom/tencent/liteav/h;->g:Lcom/tencent/liteav/txcplayer/h;

    iget-object v1, p0, Lcom/tencent/liteav/h;->b:Lcom/tencent/liteav/d;

    iget v1, v1, Lcom/tencent/liteav/d;->f:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcplayer/h;->b(F)V

    .line 91
    iget-object v0, p0, Lcom/tencent/liteav/h;->g:Lcom/tencent/liteav/txcplayer/h;

    iget-object v1, p0, Lcom/tencent/liteav/h;->b:Lcom/tencent/liteav/d;

    iget v1, v1, Lcom/tencent/liteav/d;->r:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcplayer/h;->c(F)V

    .line 92
    iget-object v0, p0, Lcom/tencent/liteav/h;->g:Lcom/tencent/liteav/txcplayer/h;

    iget-object v1, p0, Lcom/tencent/liteav/h;->b:Lcom/tencent/liteav/d;

    iget-boolean v1, v1, Lcom/tencent/liteav/d;->h:Z

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcplayer/h;->a(Z)V

    .line 93
    iget-object v0, p0, Lcom/tencent/liteav/h;->g:Lcom/tencent/liteav/txcplayer/h;

    iget-object v1, p0, Lcom/tencent/liteav/h;->b:Lcom/tencent/liteav/d;

    iget-object v1, v1, Lcom/tencent/liteav/d;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcplayer/h;->a(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/tencent/liteav/h;->g:Lcom/tencent/liteav/txcplayer/h;

    iget-object v1, p0, Lcom/tencent/liteav/h;->b:Lcom/tencent/liteav/d;

    iget v1, v1, Lcom/tencent/liteav/d;->o:I

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcplayer/h;->a(I)V

    .line 95
    iget-object v0, p0, Lcom/tencent/liteav/h;->g:Lcom/tencent/liteav/txcplayer/h;

    iget-object v1, p0, Lcom/tencent/liteav/h;->b:Lcom/tencent/liteav/d;

    iget v1, v1, Lcom/tencent/liteav/d;->p:I

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcplayer/h;->b(I)V

    .line 96
    iget-object v0, p0, Lcom/tencent/liteav/h;->g:Lcom/tencent/liteav/txcplayer/h;

    iget-object v1, p0, Lcom/tencent/liteav/h;->b:Lcom/tencent/liteav/d;

    iget-object v1, v1, Lcom/tencent/liteav/d;->q:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcplayer/h;->a(Ljava/util/Map;)V

    .line 97
    iget-object v0, p0, Lcom/tencent/liteav/h;->g:Lcom/tencent/liteav/txcplayer/h;

    iget-object v1, p0, Lcom/tencent/liteav/h;->b:Lcom/tencent/liteav/d;

    iget-boolean v1, v1, Lcom/tencent/liteav/d;->s:Z

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcplayer/h;->b(Z)V

    .line 98
    iget-object v0, p0, Lcom/tencent/liteav/h;->g:Lcom/tencent/liteav/txcplayer/h;

    iget-object v1, p0, Lcom/tencent/liteav/h;->b:Lcom/tencent/liteav/d;

    iget-boolean v1, v1, Lcom/tencent/liteav/d;->u:Z

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcplayer/h;->c(Z)V

    .line 99
    iget-object v0, p0, Lcom/tencent/liteav/h;->g:Lcom/tencent/liteav/txcplayer/h;

    iget-object v1, p0, Lcom/tencent/liteav/h;->b:Lcom/tencent/liteav/d;

    iget-object v1, v1, Lcom/tencent/liteav/d;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcplayer/h;->b(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/tencent/liteav/h;->g:Lcom/tencent/liteav/txcplayer/h;

    iget-object v1, p0, Lcom/tencent/liteav/h;->b:Lcom/tencent/liteav/d;

    iget v1, v1, Lcom/tencent/liteav/d;->w:I

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcplayer/h;->c(I)V

    .line 101
    iget-object v0, p0, Lcom/tencent/liteav/h;->g:Lcom/tencent/liteav/txcplayer/h;

    iget-object v1, p0, Lcom/tencent/liteav/h;->b:Lcom/tencent/liteav/d;

    iget v1, v1, Lcom/tencent/liteav/d;->x:I

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcplayer/h;->d(I)V

    .line 102
    iget-object v0, p0, Lcom/tencent/liteav/h;->g:Lcom/tencent/liteav/txcplayer/h;

    iget-object v1, p0, Lcom/tencent/liteav/h;->b:Lcom/tencent/liteav/d;

    iget v1, v1, Lcom/tencent/liteav/d;->y:I

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcplayer/h;->h(I)Lcom/tencent/liteav/txcplayer/h;

    .line 103
    iget-object v0, p0, Lcom/tencent/liteav/h;->g:Lcom/tencent/liteav/txcplayer/h;

    iget-object v1, p0, Lcom/tencent/liteav/h;->b:Lcom/tencent/liteav/d;

    iget v1, v1, Lcom/tencent/liteav/d;->z:I

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcplayer/h;->f(I)V

    .line 104
    iget-object v0, p0, Lcom/tencent/liteav/h;->g:Lcom/tencent/liteav/txcplayer/h;

    iget-object v1, p0, Lcom/tencent/liteav/h;->b:Lcom/tencent/liteav/d;

    iget v1, v1, Lcom/tencent/liteav/d;->A:I

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcplayer/h;->g(I)V

    .line 105
    iget-object v0, p0, Lcom/tencent/liteav/h;->g:Lcom/tencent/liteav/txcplayer/h;

    iget-object v1, p0, Lcom/tencent/liteav/h;->b:Lcom/tencent/liteav/d;

    iget-object v1, v1, Lcom/tencent/liteav/d;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcplayer/h;->d(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/tencent/liteav/h;->g:Lcom/tencent/liteav/txcplayer/h;

    iget-object v1, p0, Lcom/tencent/liteav/h;->b:Lcom/tencent/liteav/d;

    iget-object v1, v1, Lcom/tencent/liteav/d;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcplayer/h;->e(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/tencent/liteav/h;->g:Lcom/tencent/liteav/txcplayer/h;

    iget-object v1, p0, Lcom/tencent/liteav/h;->b:Lcom/tencent/liteav/d;

    iget-object v1, v1, Lcom/tencent/liteav/d;->E:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcplayer/h;->b(Ljava/util/Map;)V

    .line 108
    iget-object v0, p0, Lcom/tencent/liteav/h;->g:Lcom/tencent/liteav/txcplayer/h;

    iget-object v1, p0, Lcom/tencent/liteav/h;->b:Lcom/tencent/liteav/d;

    iget-boolean v1, v1, Lcom/tencent/liteav/d;->F:Z

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcplayer/h;->f(Z)V

    .line 109
    iget-object v0, p0, Lcom/tencent/liteav/h;->g:Lcom/tencent/liteav/txcplayer/h;

    iget-object v1, p0, Lcom/tencent/liteav/h;->b:Lcom/tencent/liteav/d;

    iget-wide v1, v1, Lcom/tencent/liteav/d;->G:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/txcplayer/h;->b(J)V

    .line 111
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    iget-object v1, p0, Lcom/tencent/liteav/h;->g:Lcom/tencent/liteav/txcplayer/h;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setConfig(Lcom/tencent/liteav/txcplayer/h;)V

    .line 112
    iget-boolean p1, p1, Lcom/tencent/liteav/d;->t:Z

    iput-boolean p1, p0, Lcom/tencent/liteav/h;->l:Z

    .line 114
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

    .line 441
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    if-eqz v0, :cond_0

    .line 442
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setRenderView(Lcom/tencent/liteav/txcvodplayer/a;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/tencent/rtmp/ui/TXCloudVideoView;)V
    .locals 3

    .line 404
    iget-object v0, p0, Lcom/tencent/liteav/h;->d:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    if-eq p1, v0, :cond_1

    .line 406
    iget-object v0, p0, Lcom/tencent/liteav/h;->d:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/tencent/liteav/h;->d:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-virtual {v0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->removeVideoView()V

    :cond_0
    if-eqz p1, :cond_1

    .line 412
    invoke-virtual {p1}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->removeVideoView()V

    :cond_1
    if-eqz p1, :cond_4

    const/4 v0, 0x0

    .line 417
    invoke-virtual {p1, v0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->setVisibility(I)V

    .line 418
    iget-object v1, p0, Lcom/tencent/liteav/h;->o:Lcom/tencent/liteav/renderer/a;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/liteav/h;->p:Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 419
    invoke-virtual {p1}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->getVideoView()Landroid/view/TextureView;

    move-result-object v1

    if-nez v1, :cond_3

    .line 420
    new-instance v1, Landroid/view/TextureView;

    invoke-virtual {p1}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 421
    invoke-virtual {p1, v1}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->addVideoView(Landroid/view/TextureView;)V

    .line 422
    iget-object v2, p0, Lcom/tencent/liteav/h;->o:Lcom/tencent/liteav/renderer/a;

    invoke-virtual {v2, p0}, Lcom/tencent/liteav/renderer/a;->a(Lcom/tencent/liteav/renderer/f;)V

    .line 423
    iget-object v2, p0, Lcom/tencent/liteav/h;->o:Lcom/tencent/liteav/renderer/a;

    invoke-virtual {v2, v1}, Lcom/tencent/liteav/renderer/a;->a(Landroid/view/TextureView;)V

    goto :goto_0

    .line 427
    :cond_2
    invoke-virtual {p1}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->getVideoView()Landroid/view/TextureView;

    move-result-object v1

    if-nez v1, :cond_3

    .line 428
    new-instance v1, Lcom/tencent/liteav/txcvodplayer/TextureRenderView;

    invoke-virtual {p1}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/liteav/txcvodplayer/TextureRenderView;-><init>(Landroid/content/Context;)V

    .line 429
    invoke-virtual {p1, v1}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->addVideoView(Landroid/view/TextureView;)V

    .line 430
    iget-object v2, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-virtual {v2, v1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setTextureRenderView(Lcom/tencent/liteav/txcvodplayer/TextureRenderView;)V

    .line 434
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->getVideoView()Landroid/view/TextureView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/TextureView;->setVisibility(I)V

    .line 437
    :cond_4
    invoke-super {p0, p1}, Lcom/tencent/liteav/j;->a(Lcom/tencent/rtmp/ui/TXCloudVideoView;)V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    .line 755
    iput-object p1, p0, Lcom/tencent/liteav/h;->p:Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 911
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

    .line 304
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-virtual {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->b()V

    .line 305
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setAutoPlay(Z)V

    .line 306
    iget-object v0, p0, Lcom/tencent/liteav/h;->h:Lcom/tencent/liteav/f;

    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {v0}, Lcom/tencent/liteav/f;->e()V

    :cond_0
    return-void
.end method

.method public b(F)V
    .locals 1

    .line 495
    iput p1, p0, Lcom/tencent/liteav/h;->m:F

    .line 496
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    if-eqz v0, :cond_0

    .line 497
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setRate(F)V

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/h;->h:Lcom/tencent/liteav/f;

    if-eqz v0, :cond_1

    .line 500
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/f;->a(F)V

    :cond_1
    return-void
.end method

.method public b(I)V
    .locals 2

    .line 395
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    rsub-int v1, p1, 0x168

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setVideoRotationDegree(I)V

    .line 396
    iget-object v0, p0, Lcom/tencent/liteav/h;->o:Lcom/tencent/liteav/renderer/a;

    if-eqz v0, :cond_0

    .line 397
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/renderer/a;->e(I)V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setMute(Z)V

    return-void
.end method

.method public c(F)V
    .locals 1

    .line 505
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    if-eqz v0, :cond_0

    .line 506
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setStartTime(F)V

    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setAudioPlayoutVolume(I)V

    return-void
.end method

.method public c(Z)V
    .locals 0

    return-void
.end method

.method public c()Z
    .locals 1

    .line 465
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-virtual {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->e()Z

    move-result v0

    return v0
.end method

.method public d()Landroid/view/TextureView;
    .locals 1

    .line 457
    iget-object v0, p0, Lcom/tencent/liteav/h;->d:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    if-eqz v0, :cond_0

    .line 458
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

    .line 478
    iput-boolean p1, p0, Lcom/tencent/liteav/h;->j:Z

    .line 479
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    if-eqz v0, :cond_0

    .line 480
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

    .line 487
    iput-boolean p1, p0, Lcom/tencent/liteav/h;->k:Z

    .line 488
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    if-eqz v0, :cond_0

    .line 489
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setAutoPlay(Z)V

    :cond_0
    return-void
.end method

.method public f(I)V
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    mul-int/lit16 p1, p1, 0x3e8

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->a(I)V

    .line 313
    iget-boolean p1, p0, Lcom/tencent/liteav/h;->i:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/liteav/h;->h:Lcom/tencent/liteav/f;

    if-eqz p1, :cond_0

    .line 314
    invoke-virtual {p1}, Lcom/tencent/liteav/f;->m()V

    :cond_0
    return-void
.end method

.method public f(Z)V
    .locals 0

    .line 729
    iput-boolean p1, p0, Lcom/tencent/liteav/h;->a:Z

    return-void
.end method

.method public g(I)V
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setAudioPlayoutVolume(I)V

    return-void
.end method

.method public g(Z)V
    .locals 5

    .line 733
    invoke-virtual {p0}, Lcom/tencent/liteav/h;->d()Landroid/view/TextureView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 735
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

    .line 736
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setScaleY(F)V

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    .line 738
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setScaleX(F)V

    .line 741
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/tencent/liteav/h;->h:Lcom/tencent/liteav/f;

    if-eqz v0, :cond_5

    .line 742
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/f;->b(Z)V

    :cond_5
    return-void
.end method

.method public h(I)V
    .locals 1

    .line 702
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    if-eqz v0, :cond_0

    .line 703
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setBitrateIndex(I)V

    :cond_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 704
    iget-boolean p1, p0, Lcom/tencent/liteav/h;->i:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/tencent/liteav/h;->h:Lcom/tencent/liteav/f;

    if-eqz p1, :cond_1

    .line 705
    iget-object v0, p0, Lcom/tencent/liteav/h;->g:Lcom/tencent/liteav/txcplayer/h;

    invoke-virtual {v0}, Lcom/tencent/liteav/txcplayer/h;->j()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/f;->c(Z)V

    :cond_1
    return-void
.end method

.method public i()F
    .locals 2

    .line 326
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    if-eqz v0, :cond_0

    .line 327
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

    .line 333
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    if-eqz v0, :cond_0

    .line 334
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

    .line 340
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    if-eqz v0, :cond_0

    .line 341
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

    .line 347
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    if-eqz v0, :cond_0

    .line 348
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

    .line 354
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    if-eqz v0, :cond_0

    .line 355
    invoke-virtual {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getVideoWidth()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public o()I
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    if-eqz v0, :cond_0

    .line 362
    invoke-virtual {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getVideoHeight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 804
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/tencent/liteav/h;->n:Landroid/view/Surface;

    .line 805
    iget-object p1, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    iget-object v0, p0, Lcom/tencent/liteav/h;->n:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setRenderSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public onSurfaceTextureDestroy(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    const/4 p1, 0x0

    .line 810
    iput-object p1, p0, Lcom/tencent/liteav/h;->n:Landroid/view/Surface;

    .line 811
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->setRenderSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public onTextureProcess(IIII)V
    .locals 6

    .line 817
    :try_start_0
    iget-object p4, p0, Lcom/tencent/liteav/h;->q:Lcom/tencent/liteav/h$a;

    if-nez p4, :cond_0

    iget-object p4, p0, Lcom/tencent/liteav/h;->p:Ljava/lang/Object;

    if-eqz p4, :cond_0

    .line 818
    new-instance p4, Lcom/tencent/liteav/h$a;

    iget-object v0, p0, Lcom/tencent/liteav/h;->p:Ljava/lang/Object;

    invoke-direct {p4, v0}, Lcom/tencent/liteav/h$a;-><init>(Ljava/lang/Object;)V

    iput-object p4, p0, Lcom/tencent/liteav/h;->q:Lcom/tencent/liteav/h$a;

    .line 820
    :cond_0
    iget-object p4, p0, Lcom/tencent/liteav/h;->q:Lcom/tencent/liteav/h$a;

    if-eqz p4, :cond_1

    .line 821
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

    .line 825
    invoke-static {p2, p3, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public p()I
    .locals 1

    .line 696
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    if-eqz v0, :cond_0

    .line 697
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

    .line 710
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 711
    iget-object v1, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    if-eqz v1, :cond_0

    .line 712
    invoke-virtual {v1}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->getSupportedBitrates()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 714
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/liteav/txcplayer/b;

    .line 715
    new-instance v3, Lcom/tencent/rtmp/TXBitrateItem;

    invoke-direct {v3}, Lcom/tencent/rtmp/TXBitrateItem;-><init>()V

    .line 716
    iget v4, v2, Lcom/tencent/liteav/txcplayer/b;->a:I

    iput v4, v3, Lcom/tencent/rtmp/TXBitrateItem;->index:I

    .line 717
    iget v4, v2, Lcom/tencent/liteav/txcplayer/b;->b:I

    iput v4, v3, Lcom/tencent/rtmp/TXBitrateItem;->width:I

    .line 718
    iget v4, v2, Lcom/tencent/liteav/txcplayer/b;->c:I

    iput v4, v3, Lcom/tencent/rtmp/TXBitrateItem;->height:I

    .line 719
    iget v2, v2, Lcom/tencent/liteav/txcplayer/b;->d:I

    iput v2, v3, Lcom/tencent/rtmp/TXBitrateItem;->bitrate:I

    .line 720
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public r()V
    .locals 1

    const/4 v0, 0x0

    .line 759
    iput-object v0, p0, Lcom/tencent/liteav/h;->p:Ljava/lang/Object;

    .line 760
    invoke-virtual {p0}, Lcom/tencent/liteav/h;->v()V

    .line 761
    invoke-virtual {p0}, Lcom/tencent/liteav/h;->t()V

    return-void
.end method

.method public s()V
    .locals 1

    .line 765
    iget-object v0, p0, Lcom/tencent/liteav/h;->o:Lcom/tencent/liteav/renderer/a;

    if-eqz v0, :cond_0

    .line 766
    invoke-virtual {v0, p0}, Lcom/tencent/liteav/renderer/a;->b(Lcom/tencent/liteav/renderer/a$a;)V

    :cond_0
    const/4 v0, 0x1

    .line 768
    invoke-direct {p0, v0}, Lcom/tencent/liteav/h;->h(Z)V

    return-void
.end method

.method public t()V
    .locals 2

    .line 772
    iget-object v0, p0, Lcom/tencent/liteav/h;->o:Lcom/tencent/liteav/renderer/a;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 773
    invoke-virtual {v0, v1}, Lcom/tencent/liteav/renderer/a;->b(Lcom/tencent/liteav/renderer/a$a;)V

    :cond_0
    const/4 v0, 0x0

    .line 775
    invoke-direct {p0, v0}, Lcom/tencent/liteav/h;->h(Z)V

    return-void
.end method

.method public u()V
    .locals 1

    const/4 v0, 0x1

    .line 793
    iput-boolean v0, p0, Lcom/tencent/liteav/h;->s:Z

    .line 794
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-virtual {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->f()V

    return-void
.end method

.method public v()V
    .locals 1

    const/4 v0, 0x0

    .line 798
    iput-boolean v0, p0, Lcom/tencent/liteav/h;->s:Z

    .line 799
    iget-object v0, p0, Lcom/tencent/liteav/h;->f:Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;

    invoke-virtual {v0}, Lcom/tencent/liteav/txcvodplayer/TXCVodVideoView;->g()V

    return-void
.end method
