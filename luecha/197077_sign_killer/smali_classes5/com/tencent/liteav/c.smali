.class public Lcom/tencent/liteav/c;
.super Lcom/tencent/liteav/j;
.source "TXCLivePlayer.java"

# interfaces
.implements Lcom/tencent/liteav/TXCRenderAndDec$a;
.implements Lcom/tencent/liteav/TXCRenderAndDec$b;
.implements Lcom/tencent/liteav/audio/c;
.implements Lcom/tencent/liteav/audio/e;
.implements Lcom/tencent/liteav/basic/c/b;
.implements Lcom/tencent/liteav/network/l;
.implements Lcom/tencent/liteav/renderer/a$a;
.implements Lcom/tencent/liteav/renderer/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/c$a;
    }
.end annotation


# instance fields
.field private A:Lcom/tencent/liteav/b;

.field private B:I

.field private C:I

.field private D:Lcom/tencent/liteav/renderer/h;

.field private E:Lcom/tencent/liteav/renderer/h;

.field private F:[F

.field private G:[F

.field private H:Ljava/lang/String;

.field private I:I

.field private J:Z

.field private K:Lcom/tencent/liteav/basic/enums/b;

.field private L:Ljava/lang/Object;

.field private M:Lcom/tencent/liteav/basic/c/a;

.field private N:Lcom/tencent/rtmp/TXLivePlayer$ITXAudioRawDataListener;

.field private O:Ljava/lang/String;

.field private P:Z

.field private Q:J

.field private R:J

.field private S:Lcom/tencent/liteav/c$a;

.field private a:Lcom/tencent/liteav/TXCRenderAndDec;

.field private f:Lcom/tencent/liteav/renderer/a;

.field private g:Lcom/tencent/liteav/network/TXCStreamDownloader;

.field private h:I

.field private i:Landroid/os/Handler;

.field private j:Landroid/view/TextureView;

.field private k:Z

.field private l:Z

.field private m:I

.field private n:I

.field private o:I

.field private p:Z

.field private q:Landroid/view/Surface;

.field private r:I

.field private s:I

.field private t:I

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:I

.field private y:Lcom/tencent/liteav/a/a;

.field private z:Lcom/tencent/ugc/TXRecordCommon$ITXVideoRecordListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 165
    invoke-direct {p0, p1}, Lcom/tencent/liteav/j;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/tencent/liteav/c;->a:Lcom/tencent/liteav/TXCRenderAndDec;

    .line 62
    iput-object v0, p0, Lcom/tencent/liteav/c;->f:Lcom/tencent/liteav/renderer/a;

    .line 63
    iput-object v0, p0, Lcom/tencent/liteav/c;->g:Lcom/tencent/liteav/network/TXCStreamDownloader;

    const/4 v1, 0x0

    .line 64
    iput v1, p0, Lcom/tencent/liteav/c;->h:I

    .line 69
    iput-boolean v1, p0, Lcom/tencent/liteav/c;->k:Z

    .line 70
    iput-boolean v1, p0, Lcom/tencent/liteav/c;->l:Z

    const/16 v2, 0x64

    .line 71
    iput v2, p0, Lcom/tencent/liteav/c;->m:I

    .line 72
    iput v1, p0, Lcom/tencent/liteav/c;->n:I

    .line 73
    iput v1, p0, Lcom/tencent/liteav/c;->o:I

    .line 74
    iput-boolean v1, p0, Lcom/tencent/liteav/c;->p:Z

    const/4 v2, 0x2

    .line 77
    iput v2, p0, Lcom/tencent/liteav/c;->r:I

    const v2, 0xbb80

    .line 78
    iput v2, p0, Lcom/tencent/liteav/c;->s:I

    const/16 v2, 0x10

    .line 79
    iput v2, p0, Lcom/tencent/liteav/c;->t:I

    .line 80
    iput-boolean v1, p0, Lcom/tencent/liteav/c;->u:Z

    .line 81
    iput-boolean v1, p0, Lcom/tencent/liteav/c;->v:Z

    .line 82
    iput-boolean v1, p0, Lcom/tencent/liteav/c;->w:Z

    .line 83
    iput v1, p0, Lcom/tencent/liteav/c;->x:I

    .line 89
    iput v1, p0, Lcom/tencent/liteav/c;->B:I

    .line 90
    iput v1, p0, Lcom/tencent/liteav/c;->C:I

    .line 92
    iput-object v0, p0, Lcom/tencent/liteav/c;->D:Lcom/tencent/liteav/renderer/h;

    .line 93
    iput-object v0, p0, Lcom/tencent/liteav/c;->E:Lcom/tencent/liteav/renderer/h;

    new-array v3, v2, [F

    .line 94
    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/tencent/liteav/c;->F:[F

    new-array v2, v2, [F

    .line 100
    iput-object v2, p0, Lcom/tencent/liteav/c;->G:[F

    const-string v2, ""

    .line 102
    iput-object v2, p0, Lcom/tencent/liteav/c;->H:Ljava/lang/String;

    .line 105
    iput-boolean v1, p0, Lcom/tencent/liteav/c;->J:Z

    .line 107
    sget-object v3, Lcom/tencent/liteav/basic/enums/b;->a:Lcom/tencent/liteav/basic/enums/b;

    iput-object v3, p0, Lcom/tencent/liteav/c;->K:Lcom/tencent/liteav/basic/enums/b;

    .line 108
    iput-object v0, p0, Lcom/tencent/liteav/c;->L:Ljava/lang/Object;

    .line 110
    new-instance v3, Lcom/tencent/liteav/c$1;

    invoke-direct {v3, p0}, Lcom/tencent/liteav/c$1;-><init>(Lcom/tencent/liteav/c;)V

    iput-object v3, p0, Lcom/tencent/liteav/c;->M:Lcom/tencent/liteav/basic/c/a;

    .line 740
    iput-object v2, p0, Lcom/tencent/liteav/c;->O:Ljava/lang/String;

    .line 761
    iput-boolean v1, p0, Lcom/tencent/liteav/c;->P:Z

    const-wide/16 v2, 0x0

    .line 762
    iput-wide v2, p0, Lcom/tencent/liteav/c;->Q:J

    .line 763
    iput-wide v2, p0, Lcom/tencent/liteav/c;->R:J

    .line 806
    iput-object v0, p0, Lcom/tencent/liteav/c;->S:Lcom/tencent/liteav/c$a;

    .line 167
    invoke-static {}, Lcom/tencent/liteav/basic/f/c;->a()Lcom/tencent/liteav/basic/f/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/basic/f/c;->a(Landroid/content/Context;)V

    .line 168
    invoke-static {p1}, Lcom/tencent/liteav/AudioServerConfig;->loadFromSharedPreferences(Landroid/content/Context;)Lcom/tencent/liteav/AudioServerConfig;

    move-result-object v0

    .line 169
    invoke-static {}, Lcom/tencent/liteav/basic/f/c;->a()Lcom/tencent/liteav/basic/f/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/liteav/basic/f/c;->b()Ljava/lang/String;

    move-result-object v2

    .line 170
    invoke-virtual {v0}, Lcom/tencent/liteav/AudioServerConfig;->isAudioDeviceDSPEnabled()Z

    move-result v0

    .line 169
    invoke-static {p1, v2, v0}, Lcom/tencent/liteav/audio/TXCAudioEngine;->CreateInstance(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 171
    invoke-static {}, Lcom/tencent/liteav/audio/TXCAudioEngine;->getInstance()Lcom/tencent/liteav/audio/TXCAudioEngine;

    move-result-object p1

    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/tencent/liteav/c;->M:Lcom/tencent/liteav/basic/c/a;

    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/audio/TXCAudioEngine;->addEventCallback(Ljava/lang/ref/WeakReference;)V

    .line 172
    invoke-static {}, Lcom/tencent/liteav/basic/f/c;->a()Lcom/tencent/liteav/basic/f/c;

    move-result-object p1

    const-string v0, "Audio"

    const-string v2, "EnableAutoRestartDevice"

    invoke-virtual {p1, v0, v2}, Lcom/tencent/liteav/basic/f/c;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    .line 173
    invoke-static {}, Lcom/tencent/liteav/audio/TXCAudioEngine;->getInstance()Lcom/tencent/liteav/audio/TXCAudioEngine;

    move-result-object p1

    const-wide/16 v4, 0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    invoke-virtual {p1, v1}, Lcom/tencent/liteav/audio/TXCAudioEngine;->enableAutoRestartDevice(Z)V

    .line 175
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/tencent/liteav/c;->i:Landroid/os/Handler;

    .line 177
    new-instance p1, Lcom/tencent/liteav/renderer/a;

    invoke-direct {p1}, Lcom/tencent/liteav/renderer/a;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/c;->f:Lcom/tencent/liteav/renderer/a;

    .line 178
    iget-object p1, p0, Lcom/tencent/liteav/c;->f:Lcom/tencent/liteav/renderer/a;

    invoke-virtual {p1, p0}, Lcom/tencent/liteav/renderer/a;->a(Lcom/tencent/liteav/basic/c/b;)V

    .line 180
    new-instance p1, Lcom/tencent/liteav/c$a;

    invoke-direct {p1, p0}, Lcom/tencent/liteav/c$a;-><init>(Lcom/tencent/liteav/c;)V

    iput-object p1, p0, Lcom/tencent/liteav/c;->S:Lcom/tencent/liteav/c$a;

    .line 181
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[FirstFramePath] TXCLivePlayer: create player success. instance:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TXCLivePlayer"

    invoke-static {v0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic a(Lcom/tencent/liteav/c;)Lcom/tencent/ugc/TXRecordCommon$ITXVideoRecordListener;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/tencent/liteav/c;->z:Lcom/tencent/ugc/TXRecordCommon$ITXVideoRecordListener;

    return-object p0
.end method

.method private a(ILjava/lang/String;)V
    .locals 4

    .line 917
    iget-object v0, p0, Lcom/tencent/liteav/c;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 918
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "EVT_ID"

    .line 921
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 922
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v1

    const-string v3, "EVT_TIME"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 923
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getUtcTimeTick()J

    move-result-wide v1

    const-string v3, "EVT_UTC_TIME"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    if-eqz p2, :cond_0

    const-string v1, "EVT_MSG"

    .line 925
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 927
    :cond_0
    iget-object p2, p0, Lcom/tencent/liteav/c;->i:Landroid/os/Handler;

    if-eqz p2, :cond_1

    .line 928
    new-instance v1, Lcom/tencent/liteav/c$5;

    invoke-direct {v1, p0, p1, v0}, Lcom/tencent/liteav/c$5;-><init>(Lcom/tencent/liteav/c;ILandroid/os/Bundle;)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private b(Ljava/lang/String;ILcom/tencent/liteav/basic/b/a;)I
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x5

    if-nez p2, :cond_0

    .line 689
    new-instance v3, Lcom/tencent/liteav/network/TXCStreamDownloader;

    iget-object v4, p0, Lcom/tencent/liteav/c;->c:Landroid/content/Context;

    invoke-direct {v3, v4, v1}, Lcom/tencent/liteav/network/TXCStreamDownloader;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/tencent/liteav/c;->g:Lcom/tencent/liteav/network/TXCStreamDownloader;

    goto :goto_0

    :cond_0
    if-ne p2, v2, :cond_1

    .line 691
    new-instance v3, Lcom/tencent/liteav/network/TXCStreamDownloader;

    iget-object v4, p0, Lcom/tencent/liteav/c;->c:Landroid/content/Context;

    const/4 v5, 0x4

    invoke-direct {v3, v4, v5}, Lcom/tencent/liteav/network/TXCStreamDownloader;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/tencent/liteav/c;->g:Lcom/tencent/liteav/network/TXCStreamDownloader;

    goto :goto_0

    .line 693
    :cond_1
    new-instance v3, Lcom/tencent/liteav/network/TXCStreamDownloader;

    iget-object v4, p0, Lcom/tencent/liteav/c;->c:Landroid/content/Context;

    invoke-direct {v3, v4, v0}, Lcom/tencent/liteav/network/TXCStreamDownloader;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/tencent/liteav/c;->g:Lcom/tencent/liteav/network/TXCStreamDownloader;

    .line 694
    iget-object v3, p0, Lcom/tencent/liteav/c;->b:Lcom/tencent/liteav/d;

    iget-object v3, v3, Lcom/tencent/liteav/d;->l:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 695
    iget-object v3, p0, Lcom/tencent/liteav/c;->g:Lcom/tencent/liteav/network/TXCStreamDownloader;

    iget-object v4, p0, Lcom/tencent/liteav/c;->b:Lcom/tencent/liteav/d;

    iget-object v4, v4, Lcom/tencent/liteav/d;->l:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/tencent/liteav/network/TXCStreamDownloader;->setFlvSessionKey(Ljava/lang/String;)V

    .line 698
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/tencent/liteav/c;->g:Lcom/tencent/liteav/network/TXCStreamDownloader;

    iget-object v4, p0, Lcom/tencent/liteav/c;->O:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/tencent/liteav/network/TXCStreamDownloader;->setID(Ljava/lang/String;)V

    .line 699
    iget-object v3, p0, Lcom/tencent/liteav/c;->g:Lcom/tencent/liteav/network/TXCStreamDownloader;

    invoke-virtual {v3, p0}, Lcom/tencent/liteav/network/TXCStreamDownloader;->setListener(Lcom/tencent/liteav/network/l;)V

    .line 700
    iget-object v3, p0, Lcom/tencent/liteav/c;->g:Lcom/tencent/liteav/network/TXCStreamDownloader;

    invoke-virtual {v3, p0}, Lcom/tencent/liteav/network/TXCStreamDownloader;->setNotifyListener(Lcom/tencent/liteav/basic/c/b;)V

    .line 701
    iget-object v3, p0, Lcom/tencent/liteav/c;->g:Lcom/tencent/liteav/network/TXCStreamDownloader;

    iget-object v4, p0, Lcom/tencent/liteav/c;->b:Lcom/tencent/liteav/d;

    iget-object v4, v4, Lcom/tencent/liteav/d;->q:Ljava/util/Map;

    invoke-virtual {v3, v4}, Lcom/tencent/liteav/network/TXCStreamDownloader;->setHeaders(Ljava/util/Map;)V

    .line 702
    iget-object v3, p0, Lcom/tencent/liteav/c;->g:Lcom/tencent/liteav/network/TXCStreamDownloader;

    iget v4, p0, Lcom/tencent/liteav/c;->h:I

    invoke-virtual {v3, v4}, Lcom/tencent/liteav/network/TXCStreamDownloader;->setPayloadType(I)V

    if-ne p2, v2, :cond_3

    move v0, v1

    :cond_3
    if-eqz v0, :cond_4

    .line 706
    iget-object p2, p0, Lcom/tencent/liteav/c;->g:Lcom/tencent/liteav/network/TXCStreamDownloader;

    invoke-virtual {p2, v2}, Lcom/tencent/liteav/network/TXCStreamDownloader;->setRetryTimes(I)V

    .line 707
    iget-object p2, p0, Lcom/tencent/liteav/c;->g:Lcom/tencent/liteav/network/TXCStreamDownloader;

    invoke-virtual {p2, v1}, Lcom/tencent/liteav/network/TXCStreamDownloader;->setRetryInterval(I)V

    goto :goto_1

    .line 709
    :cond_4
    iget-object p2, p0, Lcom/tencent/liteav/c;->g:Lcom/tencent/liteav/network/TXCStreamDownloader;

    iget-object v0, p0, Lcom/tencent/liteav/c;->b:Lcom/tencent/liteav/d;

    iget v0, v0, Lcom/tencent/liteav/d;->e:I

    invoke-virtual {p2, v0}, Lcom/tencent/liteav/network/TXCStreamDownloader;->setRetryTimes(I)V

    .line 710
    iget-object p2, p0, Lcom/tencent/liteav/c;->g:Lcom/tencent/liteav/network/TXCStreamDownloader;

    iget-object v0, p0, Lcom/tencent/liteav/c;->b:Lcom/tencent/liteav/d;

    iget v0, v0, Lcom/tencent/liteav/d;->f:I

    invoke-virtual {p2, v0}, Lcom/tencent/liteav/network/TXCStreamDownloader;->setRetryInterval(I)V

    .line 712
    :goto_1
    iget-object v1, p0, Lcom/tencent/liteav/c;->g:Lcom/tencent/liteav/network/TXCStreamDownloader;

    iget-object p2, p0, Lcom/tencent/liteav/c;->b:Lcom/tencent/liteav/d;

    iget-boolean v3, p2, Lcom/tencent/liteav/d;->i:Z

    iget-object p2, p0, Lcom/tencent/liteav/c;->b:Lcom/tencent/liteav/d;

    iget v4, p2, Lcom/tencent/liteav/d;->m:I

    iget-object p2, p0, Lcom/tencent/liteav/c;->b:Lcom/tencent/liteav/d;

    iget-boolean v5, p2, Lcom/tencent/liteav/d;->j:Z

    iget-object p2, p0, Lcom/tencent/liteav/c;->b:Lcom/tencent/liteav/d;

    iget-boolean v6, p2, Lcom/tencent/liteav/d;->k:Z

    move-object v2, p1

    move-object v7, p3

    invoke-virtual/range {v1 .. v7}, Lcom/tencent/liteav/network/TXCStreamDownloader;->start(Ljava/lang/String;ZIZZLcom/tencent/liteav/basic/b/a;)I

    move-result p1

    return p1
.end method

.method static synthetic b(Lcom/tencent/liteav/c;)Lcom/tencent/liteav/renderer/a;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/tencent/liteav/c;->f:Lcom/tencent/liteav/renderer/a;

    return-object p0
.end method

.method private b(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 742
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v1

    const-wide/16 v3, 0x2710

    rem-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "%s-%d"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/c;->O:Ljava/lang/String;

    .line 744
    iget-object p1, p0, Lcom/tencent/liteav/c;->a:Lcom/tencent/liteav/TXCRenderAndDec;

    if-eqz p1, :cond_0

    .line 745
    iget-object v0, p0, Lcom/tencent/liteav/c;->O:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/TXCRenderAndDec;->setID(Ljava/lang/String;)V

    .line 748
    :cond_0
    iget-object p1, p0, Lcom/tencent/liteav/c;->f:Lcom/tencent/liteav/renderer/a;

    if-eqz p1, :cond_1

    .line 749
    iget-object v0, p0, Lcom/tencent/liteav/c;->O:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/renderer/a;->setID(Ljava/lang/String;)V

    .line 752
    :cond_1
    iget-object p1, p0, Lcom/tencent/liteav/c;->g:Lcom/tencent/liteav/network/TXCStreamDownloader;

    if-eqz p1, :cond_2

    .line 753
    iget-object v0, p0, Lcom/tencent/liteav/c;->O:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/network/TXCStreamDownloader;->setID(Ljava/lang/String;)V

    .line 756
    :cond_2
    iget-object p1, p0, Lcom/tencent/liteav/c;->A:Lcom/tencent/liteav/b;

    if-eqz p1, :cond_3

    .line 757
    iget-object v0, p0, Lcom/tencent/liteav/c;->O:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/b;->d(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method static synthetic c(Lcom/tencent/liteav/c;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/tencent/liteav/c;->P:Z

    return p0
.end method

.method static synthetic d(Lcom/tencent/liteav/c;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/tencent/liteav/c;->u()V

    return-void
.end method

.method static synthetic e(Lcom/tencent/liteav/c;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/tencent/liteav/c;->v()V

    return-void
.end method

.method static synthetic f(Lcom/tencent/liteav/c;)Lcom/tencent/liteav/TXCRenderAndDec;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/tencent/liteav/c;->a:Lcom/tencent/liteav/TXCRenderAndDec;

    return-object p0
.end method

.method private g(I)V
    .locals 3

    .line 638
    iget-object v0, p0, Lcom/tencent/liteav/c;->j:Landroid/view/TextureView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 639
    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 642
    :cond_0
    new-instance v0, Lcom/tencent/liteav/TXCRenderAndDec;

    iget-object v2, p0, Lcom/tencent/liteav/c;->c:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/tencent/liteav/TXCRenderAndDec;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/liteav/c;->a:Lcom/tencent/liteav/TXCRenderAndDec;

    .line 643
    iget-object v0, p0, Lcom/tencent/liteav/c;->a:Lcom/tencent/liteav/TXCRenderAndDec;

    invoke-virtual {v0, p0}, Lcom/tencent/liteav/TXCRenderAndDec;->setNotifyListener(Lcom/tencent/liteav/basic/c/b;)V

    .line 644
    iget-object v0, p0, Lcom/tencent/liteav/c;->a:Lcom/tencent/liteav/TXCRenderAndDec;

    iget-object v2, p0, Lcom/tencent/liteav/c;->f:Lcom/tencent/liteav/renderer/a;

    invoke-virtual {v0, v2}, Lcom/tencent/liteav/TXCRenderAndDec;->setVideoRender(Lcom/tencent/liteav/renderer/e;)V

    .line 645
    iget-object v0, p0, Lcom/tencent/liteav/c;->a:Lcom/tencent/liteav/TXCRenderAndDec;

    invoke-virtual {v0, p0}, Lcom/tencent/liteav/TXCRenderAndDec;->setDecListener(Lcom/tencent/liteav/TXCRenderAndDec$a;)V

    .line 646
    iget-object v0, p0, Lcom/tencent/liteav/c;->a:Lcom/tencent/liteav/TXCRenderAndDec;

    invoke-virtual {v0, p0}, Lcom/tencent/liteav/TXCRenderAndDec;->setRenderAndDecDelegate(Lcom/tencent/liteav/TXCRenderAndDec$b;)V

    .line 647
    iget-object v0, p0, Lcom/tencent/liteav/c;->a:Lcom/tencent/liteav/TXCRenderAndDec;

    iget-object v2, p0, Lcom/tencent/liteav/c;->b:Lcom/tencent/liteav/d;

    invoke-virtual {v0, v2}, Lcom/tencent/liteav/TXCRenderAndDec;->setConfig(Lcom/tencent/liteav/d;)V

    .line 648
    iget-object v0, p0, Lcom/tencent/liteav/c;->a:Lcom/tencent/liteav/TXCRenderAndDec;

    iget-object v2, p0, Lcom/tencent/liteav/c;->O:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/tencent/liteav/TXCRenderAndDec;->setID(Ljava/lang/String;)V

    .line 649
    iget-object v0, p0, Lcom/tencent/liteav/c;->a:Lcom/tencent/liteav/TXCRenderAndDec;

    const/4 v2, 0x5

    if-ne p1, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v0, v1}, Lcom/tencent/liteav/TXCRenderAndDec;->start(Z)V

    .line 650
    iget-object p1, p0, Lcom/tencent/liteav/c;->a:Lcom/tencent/liteav/TXCRenderAndDec;

    iget v0, p0, Lcom/tencent/liteav/c;->o:I

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/TXCRenderAndDec;->setRenderMode(I)V

    .line 651
    iget-object p1, p0, Lcom/tencent/liteav/c;->a:Lcom/tencent/liteav/TXCRenderAndDec;

    iget v0, p0, Lcom/tencent/liteav/c;->n:I

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/TXCRenderAndDec;->setRenderRotation(I)V

    return-void
.end method

.method private k()V
    .locals 4

    .line 554
    iget-object v0, p0, Lcom/tencent/liteav/c;->y:Lcom/tencent/liteav/a/a;

    if-nez v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/tencent/liteav/c;->f:Lcom/tencent/liteav/renderer/a;

    invoke-virtual {v0}, Lcom/tencent/liteav/renderer/a;->h()I

    move-result v0

    iput v0, p0, Lcom/tencent/liteav/c;->B:I

    .line 556
    iget-object v0, p0, Lcom/tencent/liteav/c;->f:Lcom/tencent/liteav/renderer/a;

    invoke-virtual {v0}, Lcom/tencent/liteav/renderer/a;->i()I

    move-result v0

    iput v0, p0, Lcom/tencent/liteav/c;->C:I

    .line 557
    invoke-direct {p0}, Lcom/tencent/liteav/c;->m()Lcom/tencent/liteav/a/a$a;

    move-result-object v0

    .line 558
    new-instance v1, Lcom/tencent/liteav/a/a;

    iget-object v2, p0, Lcom/tencent/liteav/c;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/tencent/liteav/a/a;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tencent/liteav/c;->y:Lcom/tencent/liteav/a/a;

    .line 559
    iget-object v1, p0, Lcom/tencent/liteav/c;->y:Lcom/tencent/liteav/a/a;

    invoke-virtual {v1, v0}, Lcom/tencent/liteav/a/a;->a(Lcom/tencent/liteav/a/a$a;)V

    .line 560
    iget-object v0, p0, Lcom/tencent/liteav/c;->y:Lcom/tencent/liteav/a/a;

    new-instance v1, Lcom/tencent/liteav/c$2;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/c$2;-><init>(Lcom/tencent/liteav/c;)V

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/a/a;->a(Lcom/tencent/liteav/a/a$b;)V

    .line 588
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/c;->D:Lcom/tencent/liteav/renderer/h;

    if-nez v0, :cond_1

    .line 589
    new-instance v0, Lcom/tencent/liteav/renderer/h;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/liteav/renderer/h;-><init>(Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/tencent/liteav/c;->D:Lcom/tencent/liteav/renderer/h;

    .line 590
    iget-object v0, p0, Lcom/tencent/liteav/c;->D:Lcom/tencent/liteav/renderer/h;

    invoke-virtual {v0}, Lcom/tencent/liteav/renderer/h;->b()V

    .line 591
    iget-object v0, p0, Lcom/tencent/liteav/c;->D:Lcom/tencent/liteav/renderer/h;

    iget v1, p0, Lcom/tencent/liteav/c;->B:I

    iget v2, p0, Lcom/tencent/liteav/c;->C:I

    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/renderer/h;->b(II)V

    .line 592
    iget-object v0, p0, Lcom/tencent/liteav/c;->D:Lcom/tencent/liteav/renderer/h;

    iget v1, p0, Lcom/tencent/liteav/c;->B:I

    iget v2, p0, Lcom/tencent/liteav/c;->C:I

    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/renderer/h;->a(II)V

    .line 594
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/c;->E:Lcom/tencent/liteav/renderer/h;

    if-nez v0, :cond_2

    .line 595
    new-instance v0, Lcom/tencent/liteav/renderer/h;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/tencent/liteav/renderer/h;-><init>(Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/tencent/liteav/c;->E:Lcom/tencent/liteav/renderer/h;

    .line 596
    iget-object v0, p0, Lcom/tencent/liteav/c;->E:Lcom/tencent/liteav/renderer/h;

    invoke-virtual {v0}, Lcom/tencent/liteav/renderer/h;->b()V

    .line 597
    iget-object v0, p0, Lcom/tencent/liteav/c;->E:Lcom/tencent/liteav/renderer/h;

    iget-object v2, p0, Lcom/tencent/liteav/c;->f:Lcom/tencent/liteav/renderer/a;

    invoke-virtual {v2}, Lcom/tencent/liteav/renderer/a;->f()I

    move-result v2

    iget-object v3, p0, Lcom/tencent/liteav/c;->f:Lcom/tencent/liteav/renderer/a;

    invoke-virtual {v3}, Lcom/tencent/liteav/renderer/a;->g()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/tencent/liteav/renderer/h;->b(II)V

    .line 598
    iget-object v0, p0, Lcom/tencent/liteav/c;->E:Lcom/tencent/liteav/renderer/h;

    iget-object v2, p0, Lcom/tencent/liteav/c;->f:Lcom/tencent/liteav/renderer/a;

    invoke-virtual {v2}, Lcom/tencent/liteav/renderer/a;->f()I

    move-result v2

    iget-object v3, p0, Lcom/tencent/liteav/c;->f:Lcom/tencent/liteav/renderer/a;

    invoke-virtual {v3}, Lcom/tencent/liteav/renderer/a;->g()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/tencent/liteav/renderer/h;->a(II)V

    .line 599
    iget-object v0, p0, Lcom/tencent/liteav/c;->G:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    :cond_2
    return-void
.end method

.method private l()V
    .locals 2

    .line 604
    iget-object v0, p0, Lcom/tencent/liteav/c;->D:Lcom/tencent/liteav/renderer/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 605
    invoke-virtual {v0}, Lcom/tencent/liteav/renderer/h;->c()V

    .line 606
    iput-object v1, p0, Lcom/tencent/liteav/c;->D:Lcom/tencent/liteav/renderer/h;

    .line 608
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/c;->E:Lcom/tencent/liteav/renderer/h;

    if-eqz v0, :cond_1

    .line 609
    invoke-virtual {v0}, Lcom/tencent/liteav/renderer/h;->c()V

    .line 610
    iput-object v1, p0, Lcom/tencent/liteav/c;->E:Lcom/tencent/liteav/renderer/h;

    :cond_1
    return-void
.end method

.method private m()Lcom/tencent/liteav/a/a$a;
    .locals 7

    .line 618
    iget v0, p0, Lcom/tencent/liteav/c;->B:I

    if-lez v0, :cond_0

    iget v1, p0, Lcom/tencent/liteav/c;->C:I

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x1e0

    const/16 v1, 0x280

    .line 622
    :goto_0
    new-instance v2, Lcom/tencent/liteav/a/a$a;

    invoke-direct {v2}, Lcom/tencent/liteav/a/a$a;-><init>()V

    .line 623
    iput v0, v2, Lcom/tencent/liteav/a/a$a;->a:I

    .line 624
    iput v1, v2, Lcom/tencent/liteav/a/a$a;->b:I

    const/16 v3, 0x14

    .line 625
    iput v3, v2, Lcom/tencent/liteav/a/a$a;->c:I

    mul-int/2addr v0, v0

    int-to-double v3, v0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v3, v5

    mul-int/2addr v1, v1

    int-to-double v0, v1

    add-double/2addr v3, v0

    .line 626
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide v3, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v0, v3

    double-to-int v0, v0

    iput v0, v2, Lcom/tencent/liteav/a/a$a;->d:I

    .line 627
    iget v0, p0, Lcom/tencent/liteav/c;->r:I

    iput v0, v2, Lcom/tencent/liteav/a/a$a;->h:I

    .line 628
    iget v0, p0, Lcom/tencent/liteav/c;->s:I

    iput v0, v2, Lcom/tencent/liteav/a/a$a;->i:I

    .line 629
    iget v0, p0, Lcom/tencent/liteav/c;->t:I

    iput v0, v2, Lcom/tencent/liteav/a/a$a;->j:I

    .line 630
    iget-object v0, p0, Lcom/tencent/liteav/c;->c:Landroid/content/Context;

    const-string v1, ".mp4"

    invoke-static {v0, v1}, Lcom/tencent/liteav/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/liteav/a/a$a;->f:Ljava/lang/String;

    .line 631
    iget-object v0, p0, Lcom/tencent/liteav/c;->c:Landroid/content/Context;

    const-string v1, ".jpg"

    invoke-static {v0, v1}, Lcom/tencent/liteav/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/liteav/a/a$a;->g:Ljava/lang/String;

    .line 632
    iget-object v0, p0, Lcom/tencent/liteav/c;->f:Lcom/tencent/liteav/renderer/a;

    invoke-virtual {v0}, Lcom/tencent/liteav/renderer/a;->b()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/liteav/a/a$a;->e:Ljava/lang/Object;

    .line 633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "record config: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCLivePlayer"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private n()V
    .locals 2

    .line 655
    iget-object v0, p0, Lcom/tencent/liteav/c;->a:Lcom/tencent/liteav/TXCRenderAndDec;

    if-eqz v0, :cond_0

    .line 656
    invoke-virtual {v0}, Lcom/tencent/liteav/TXCRenderAndDec;->stop()V

    .line 657
    iget-object v0, p0, Lcom/tencent/liteav/c;->a:Lcom/tencent/liteav/TXCRenderAndDec;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/TXCRenderAndDec;->setVideoRender(Lcom/tencent/liteav/renderer/e;)V

    .line 658
    iget-object v0, p0, Lcom/tencent/liteav/c;->a:Lcom/tencent/liteav/TXCRenderAndDec;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/TXCRenderAndDec;->setDecListener(Lcom/tencent/liteav/TXCRenderAndDec$a;)V

    .line 659
    iget-object v0, p0, Lcom/tencent/liteav/c;->a:Lcom/tencent/liteav/TXCRenderAndDec;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/TXCRenderAndDec;->setNotifyListener(Lcom/tencent/liteav/basic/c/b;)V

    .line 660
    iput-object v1, p0, Lcom/tencent/liteav/c;->a:Lcom/tencent/liteav/TXCRenderAndDec;

    :cond_0
    return-void
.end method

.method private o()V
    .locals 18

    move-object/from16 v0, p0

    .line 665
    iget v1, v0, Lcom/tencent/liteav/c;->I:I

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 666
    :goto_0
    invoke-static {}, Lcom/tencent/liteav/audio/TXCAudioEngine;->getInstance()Lcom/tencent/liteav/audio/TXCAudioEngine;

    iget-boolean v4, v0, Lcom/tencent/liteav/c;->J:Z

    const/16 v5, 0x12c

    invoke-static {v4, v5}, Lcom/tencent/liteav/audio/TXCAudioEngine;->enableAudioVolumeEvaluation(ZI)Z

    .line 667
    iget-object v4, v0, Lcom/tencent/liteav/c;->N:Lcom/tencent/rtmp/TXLivePlayer$ITXAudioRawDataListener;

    invoke-virtual {v0, v4}, Lcom/tencent/liteav/c;->a(Lcom/tencent/rtmp/TXLivePlayer$ITXAudioRawDataListener;)V

    .line 668
    iget v4, v0, Lcom/tencent/liteav/c;->I:I

    const/high16 v5, 0x447a0000    # 1000.0f

    if-ne v4, v2, :cond_1

    .line 669
    invoke-static {}, Lcom/tencent/liteav/audio/TXCAudioEngine;->getInstance()Lcom/tencent/liteav/audio/TXCAudioEngine;

    move-result-object v6

    iget-object v7, v0, Lcom/tencent/liteav/c;->O:Ljava/lang/String;

    iget-object v2, v0, Lcom/tencent/liteav/c;->b:Lcom/tencent/liteav/d;

    iget-boolean v2, v2, Lcom/tencent/liteav/d;->g:Z

    xor-int/lit8 v8, v2, 0x1

    sget v2, Lcom/tencent/liteav/basic/enums/a;->b:F

    mul-float/2addr v2, v5

    float-to-int v9, v2

    sget v2, Lcom/tencent/liteav/basic/enums/a;->b:F

    mul-float/2addr v2, v5

    float-to-int v10, v2

    sget v2, Lcom/tencent/liteav/basic/enums/a;->c:F

    mul-float/2addr v2, v5

    float-to-int v11, v2

    invoke-virtual/range {v6 .. v11}, Lcom/tencent/liteav/audio/TXCAudioEngine;->setRemoteAudioCacheParams(Ljava/lang/String;ZIII)V

    goto :goto_1

    .line 671
    :cond_1
    invoke-static {}, Lcom/tencent/liteav/audio/TXCAudioEngine;->getInstance()Lcom/tencent/liteav/audio/TXCAudioEngine;

    move-result-object v12

    iget-object v13, v0, Lcom/tencent/liteav/c;->O:Ljava/lang/String;

    iget-object v2, v0, Lcom/tencent/liteav/c;->b:Lcom/tencent/liteav/d;

    iget-boolean v2, v2, Lcom/tencent/liteav/d;->g:Z

    xor-int/lit8 v14, v2, 0x1

    iget-object v2, v0, Lcom/tencent/liteav/c;->b:Lcom/tencent/liteav/d;

    iget v2, v2, Lcom/tencent/liteav/d;->a:F

    mul-float/2addr v2, v5

    float-to-int v15, v2

    iget-object v2, v0, Lcom/tencent/liteav/c;->b:Lcom/tencent/liteav/d;

    iget v2, v2, Lcom/tencent/liteav/d;->c:F

    mul-float/2addr v2, v5

    float-to-int v2, v2

    iget-object v3, v0, Lcom/tencent/liteav/c;->b:Lcom/tencent/liteav/d;

    iget v3, v3, Lcom/tencent/liteav/d;->b:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    move/from16 v16, v2

    move/from16 v17, v3

    invoke-virtual/range {v12 .. v17}, Lcom/tencent/liteav/audio/TXCAudioEngine;->setRemoteAudioCacheParams(Ljava/lang/String;ZIII)V

    .line 673
    :goto_1
    invoke-static {}, Lcom/tencent/liteav/audio/TXCAudioEngine;->getInstance()Lcom/tencent/liteav/audio/TXCAudioEngine;

    move-result-object v2

    iget-object v3, v0, Lcom/tencent/liteav/c;->O:Ljava/lang/String;

    iget-boolean v4, v0, Lcom/tencent/liteav/c;->k:Z

    invoke-virtual {v2, v3, v4}, Lcom/tencent/liteav/audio/TXCAudioEngine;->muteRemoteAudio(Ljava/lang/String;Z)V

    .line 674
    invoke-static {}, Lcom/tencent/liteav/audio/TXCAudioEngine;->getInstance()Lcom/tencent/liteav/audio/TXCAudioEngine;

    move-result-object v2

    iget-object v3, v0, Lcom/tencent/liteav/c;->O:Ljava/lang/String;

    iget-boolean v4, v0, Lcom/tencent/liteav/c;->l:Z

    invoke-virtual {v2, v3, v4}, Lcom/tencent/liteav/audio/TXCAudioEngine;->muteRemoteAudioInSpeaker(Ljava/lang/String;Z)V

    .line 675
    invoke-static {}, Lcom/tencent/liteav/audio/TXCAudioEngine;->getInstance()Lcom/tencent/liteav/audio/TXCAudioEngine;

    move-result-object v2

    iget-object v3, v0, Lcom/tencent/liteav/c;->O:Ljava/lang/String;

    iget v4, v0, Lcom/tencent/liteav/c;->m:I

    invoke-virtual {v2, v3, v4}, Lcom/tencent/liteav/audio/TXCAudioEngine;->setRemotePlayoutVolume(Ljava/lang/String;I)V

    .line 676
    invoke-static {}, Lcom/tencent/liteav/audio/TXCAudioEngine;->getInstance()Lcom/tencent/liteav/audio/TXCAudioEngine;

    move-result-object v2

    iget-object v3, v0, Lcom/tencent/liteav/c;->O:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/tencent/liteav/audio/TXCAudioEngine;->setRemoteAudioStreamEventListener(Ljava/lang/String;Lcom/tencent/liteav/audio/c;)V

    .line 677
    invoke-direct/range {p0 .. p0}, Lcom/tencent/liteav/c;->z()V

    .line 678
    invoke-static {}, Lcom/tencent/liteav/audio/TXCAudioEngine;->getInstance()Lcom/tencent/liteav/audio/TXCAudioEngine;

    move-result-object v2

    iget-object v3, v0, Lcom/tencent/liteav/c;->O:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/tencent/liteav/audio/TXCAudioEngine;->startRemoteAudio(Ljava/lang/String;Z)V

    return-void
.end method

.method private p()V
    .locals 3

    .line 682
    invoke-static {}, Lcom/tencent/liteav/audio/TXCAudioEngine;->getInstance()Lcom/tencent/liteav/audio/TXCAudioEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/c;->O:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/audio/TXCAudioEngine;->setRemoteAudioStreamEventListener(Ljava/lang/String;Lcom/tencent/liteav/audio/c;)V

    .line 683
    invoke-static {}, Lcom/tencent/liteav/audio/TXCAudioEngine;->getInstance()Lcom/tencent/liteav/audio/TXCAudioEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/c;->O:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/audio/TXCAudioEngine;->setSetAudioEngineRemoteStreamDataListener(Ljava/lang/String;Lcom/tencent/liteav/audio/e;)V

    .line 684
    invoke-static {}, Lcom/tencent/liteav/audio/TXCAudioEngine;->getInstance()Lcom/tencent/liteav/audio/TXCAudioEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/c;->O:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/audio/TXCAudioEngine;->stopRemoteAudio(Ljava/lang/String;)V

    return-void
.end method

.method private q()V
    .locals 2

    .line 716
    iget-object v0, p0, Lcom/tencent/liteav/c;->g:Lcom/tencent/liteav/network/TXCStreamDownloader;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 717
    invoke-virtual {v0, v1}, Lcom/tencent/liteav/network/TXCStreamDownloader;->setListener(Lcom/tencent/liteav/network/l;)V

    .line 718
    iget-object v0, p0, Lcom/tencent/liteav/c;->g:Lcom/tencent/liteav/network/TXCStreamDownloader;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/network/TXCStreamDownloader;->setNotifyListener(Lcom/tencent/liteav/basic/c/b;)V

    .line 719
    iget-object v0, p0, Lcom/tencent/liteav/c;->g:Lcom/tencent/liteav/network/TXCStreamDownloader;

    invoke-virtual {v0}, Lcom/tencent/liteav/network/TXCStreamDownloader;->stop()V

    .line 720
    iput-object v1, p0, Lcom/tencent/liteav/c;->g:Lcom/tencent/liteav/network/TXCStreamDownloader;

    :cond_0
    return-void
.end method

.method private r()V
    .locals 3

    .line 725
    new-instance v0, Lcom/tencent/liteav/b;

    iget-object v1, p0, Lcom/tencent/liteav/c;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/liteav/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/liteav/c;->A:Lcom/tencent/liteav/b;

    .line 726
    iget-object v0, p0, Lcom/tencent/liteav/c;->A:Lcom/tencent/liteav/b;

    iget-object v1, p0, Lcom/tencent/liteav/c;->H:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/b;->a(Ljava/lang/String;)V

    .line 727
    iget-object v0, p0, Lcom/tencent/liteav/c;->A:Lcom/tencent/liteav/b;

    iget v1, p0, Lcom/tencent/liteav/c;->I:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/tencent/liteav/b;->a(Z)V

    .line 728
    iget-object v0, p0, Lcom/tencent/liteav/c;->A:Lcom/tencent/liteav/b;

    iget-object v1, p0, Lcom/tencent/liteav/c;->O:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/b;->d(Ljava/lang/String;)V

    .line 729
    iget-object v0, p0, Lcom/tencent/liteav/c;->A:Lcom/tencent/liteav/b;

    iget-object v1, p0, Lcom/tencent/liteav/c;->g:Lcom/tencent/liteav/network/TXCStreamDownloader;

    invoke-virtual {v1}, Lcom/tencent/liteav/network/TXCStreamDownloader;->getRTMPProxyUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/b;->e(Ljava/lang/String;)V

    .line 730
    iget-object v0, p0, Lcom/tencent/liteav/c;->A:Lcom/tencent/liteav/b;

    invoke-virtual {v0}, Lcom/tencent/liteav/b;->a()V

    return-void
.end method

.method private s()V
    .locals 1

    .line 734
    iget-object v0, p0, Lcom/tencent/liteav/c;->A:Lcom/tencent/liteav/b;

    if-eqz v0, :cond_0

    .line 735
    invoke-virtual {v0}, Lcom/tencent/liteav/b;->b()V

    const/4 v0, 0x0

    .line 736
    iput-object v0, p0, Lcom/tencent/liteav/c;->A:Lcom/tencent/liteav/b;

    :cond_0
    return-void
.end method

.method private t()V
    .locals 1

    const/4 v0, 0x0

    .line 782
    iput-boolean v0, p0, Lcom/tencent/liteav/c;->P:Z

    .line 783
    invoke-direct {p0}, Lcom/tencent/liteav/c;->z()V

    return-void
.end method

.method private u()V
    .locals 5

    .line 787
    iget-wide v0, p0, Lcom/tencent/liteav/c;->Q:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-wide/16 v1, 0x3e8

    if-lez v0, :cond_0

    .line 788
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 789
    iget-wide v3, p0, Lcom/tencent/liteav/c;->Q:J

    div-long/2addr v3, v1

    long-to-int v3, v3

    const-string v4, "EVT_PLAY_PROGRESS"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 790
    iget-wide v3, p0, Lcom/tencent/liteav/c;->Q:J

    long-to-int v3, v3

    const-string v4, "EVT_PLAY_PROGRESS_MS"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v3, 0x7d5

    .line 791
    invoke-virtual {p0, v3, v0}, Lcom/tencent/liteav/c;->onNotifyEvent(ILandroid/os/Bundle;)V

    .line 794
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/c;->i:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-boolean v3, p0, Lcom/tencent/liteav/c;->P:Z

    if-eqz v3, :cond_1

    .line 795
    new-instance v3, Lcom/tencent/liteav/c$4;

    invoke-direct {v3, p0}, Lcom/tencent/liteav/c$4;-><init>(Lcom/tencent/liteav/c;)V

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method private v()V
    .locals 4

    .line 808
    iget-object v0, p0, Lcom/tencent/liteav/c;->i:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 809
    iget-object v1, p0, Lcom/tencent/liteav/c;->S:Lcom/tencent/liteav/c$a;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private x()V
    .locals 2

    .line 814
    iget-object v0, p0, Lcom/tencent/liteav/c;->i:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 815
    iget-object v1, p0, Lcom/tencent/liteav/c;->S:Lcom/tencent/liteav/c$a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private y()V
    .locals 2

    .line 908
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 909
    iget-object v1, p0, Lcom/tencent/liteav/c;->O:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 911
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v1, "18446744073709551615"

    .line 913
    invoke-static {v1, v0}, Lcom/tencent/liteav/a;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method private z()V
    .locals 3

    .line 951
    iget-boolean v0, p0, Lcom/tencent/liteav/c;->u:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/c;->N:Lcom/tencent/rtmp/TXLivePlayer$ITXAudioRawDataListener;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/liteav/c;->P:Z

    if-eqz v0, :cond_1

    .line 952
    :cond_0
    invoke-static {}, Lcom/tencent/liteav/audio/TXCAudioEngine;->getInstance()Lcom/tencent/liteav/audio/TXCAudioEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/c;->O:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/tencent/liteav/audio/TXCAudioEngine;->setSetAudioEngineRemoteStreamDataListener(Ljava/lang/String;Lcom/tencent/liteav/audio/e;)V

    .line 954
    :cond_1
    iget-boolean v0, p0, Lcom/tencent/liteav/c;->u:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/liteav/c;->N:Lcom/tencent/rtmp/TXLivePlayer$ITXAudioRawDataListener;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/tencent/liteav/c;->P:Z

    if-nez v0, :cond_2

    .line 955
    invoke-static {}, Lcom/tencent/liteav/audio/TXCAudioEngine;->getInstance()Lcom/tencent/liteav/audio/TXCAudioEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/c;->O:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/audio/TXCAudioEngine;->setSetAudioEngineRemoteStreamDataListener(Ljava/lang/String;Lcom/tencent/liteav/audio/e;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public a(I[F)I
    .locals 7

    .line 1039
    iget-object p2, p0, Lcom/tencent/liteav/c;->y:Lcom/tencent/liteav/a/a;

    .line 1040
    iget-boolean v0, p0, Lcom/tencent/liteav/c;->u:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/c;->D:Lcom/tencent/liteav/renderer/h;

    if-eqz v0, :cond_0

    .line 1041
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/renderer/h;->d(I)I

    move-result v2

    .line 1042
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v0

    invoke-virtual {p2, v2, v0, v1}, Lcom/tencent/liteav/a/a;->a(IJ)V

    .line 1043
    iget-object v1, p0, Lcom/tencent/liteav/c;->f:Lcom/tencent/liteav/renderer/a;

    iget v3, p0, Lcom/tencent/liteav/c;->B:I

    iget v4, p0, Lcom/tencent/liteav/c;->C:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/tencent/liteav/renderer/a;->a(IIIZI)V

    .line 1046
    :cond_0
    iget-boolean p2, p0, Lcom/tencent/liteav/c;->u:Z

    if-eqz p2, :cond_1

    .line 1047
    invoke-direct {p0}, Lcom/tencent/liteav/c;->k()V

    goto :goto_0

    .line 1049
    :cond_1
    invoke-direct {p0}, Lcom/tencent/liteav/c;->l()V

    :goto_0
    return p1
.end method

.method public a(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 359
    invoke-virtual {p0, p1, v0}, Lcom/tencent/liteav/c;->a(Ljava/lang/String;Lcom/tencent/liteav/basic/b/a;)I

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;I)I
    .locals 1

    const/4 v0, 0x0

    .line 236
    invoke-virtual {p0, p1, p2, v0}, Lcom/tencent/liteav/c;->a(Ljava/lang/String;ILcom/tencent/liteav/basic/b/a;)I

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;ILcom/tencent/liteav/basic/b/a;)I
    .locals 3

    .line 241
    sget v0, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->ENV_PRIORITY_FUNCTION:I

    const-string v1, "default"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->setGlobalEnv(Ljava/lang/String;I)I

    .line 242
    invoke-virtual {p0}, Lcom/tencent/liteav/c;->c()Z

    move-result v0

    const-string v1, "TXCLivePlayer"

    if-eqz v0, :cond_0

    const-string p1, "play: ignore start play when is playing"

    .line 243
    invoke-static {v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x2

    return p1

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/c;->b:Lcom/tencent/liteav/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/liteav/c;->b:Lcom/tencent/liteav/d;

    iget v0, v0, Lcom/tencent/liteav/d;->c:F

    iget-object v2, p0, Lcom/tencent/liteav/c;->b:Lcom/tencent/liteav/d;

    iget v2, v2, Lcom/tencent/liteav/d;->b:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 248
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "play: can not start play while invalid cache config [minAutoAdjustCacheTime("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/tencent/liteav/c;->b:Lcom/tencent/liteav/d;

    iget p2, p2, Lcom/tencent/liteav/d;->c:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ") > maxAutoAdjustCacheTime("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/tencent/liteav/c;->b:Lcom/tencent/liteav/d;

    iget p2, p2, Lcom/tencent/liteav/d;->b:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ")]!!!!!!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/c;->b:Lcom/tencent/liteav/d;

    iget v0, v0, Lcom/tencent/liteav/d;->a:F

    iget-object v2, p0, Lcom/tencent/liteav/c;->b:Lcom/tencent/liteav/d;

    iget v2, v2, Lcom/tencent/liteav/d;->b:F

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/liteav/c;->b:Lcom/tencent/liteav/d;

    iget v0, v0, Lcom/tencent/liteav/d;->a:F

    iget-object v2, p0, Lcom/tencent/liteav/c;->b:Lcom/tencent/liteav/d;

    iget v2, v2, Lcom/tencent/liteav/d;->c:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    .line 254
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play: invalid cacheTime "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/liteav/c;->b:Lcom/tencent/liteav/d;

    iget v2, v2, Lcom/tencent/liteav/d;->a:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", need between minAutoAdjustCacheTime "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/liteav/c;->b:Lcom/tencent/liteav/d;

    iget v2, v2, Lcom/tencent/liteav/d;->c:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " and maxAutoAdjustCacheTime "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/liteav/c;->b:Lcom/tencent/liteav/d;

    iget v2, v2, Lcom/tencent/liteav/d;->b:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " , fix to maxAutoAdjustCacheTime"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/tencent/liteav/c;->b:Lcom/tencent/liteav/d;

    iget-object v2, p0, Lcom/tencent/liteav/c;->b:Lcom/tencent/liteav/d;

    iget v2, v2, Lcom/tencent/liteav/d;->b:F

    iput v2, v0, Lcom/tencent/liteav/d;->a:F

    .line 260
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FirstFramePath] TXCLivePlayer: start play. instance: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iput-object p1, p0, Lcom/tencent/liteav/c;->H:Ljava/lang/String;

    .line 263
    iput p2, p0, Lcom/tencent/liteav/c;->I:I

    .line 265
    invoke-direct {p0, p1}, Lcom/tencent/liteav/c;->b(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 267
    iput-boolean v0, p0, Lcom/tencent/liteav/c;->p:Z

    const/4 v1, 0x0

    .line 268
    iput v1, p0, Lcom/tencent/liteav/c;->x:I

    .line 269
    iput-boolean v0, p0, Lcom/tencent/liteav/c;->v:Z

    .line 270
    invoke-direct {p0, p2}, Lcom/tencent/liteav/c;->g(I)V

    .line 272
    invoke-direct {p0}, Lcom/tencent/liteav/c;->o()V

    .line 274
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/liteav/c;->b(Ljava/lang/String;ILcom/tencent/liteav/basic/b/a;)I

    move-result p1

    if-eqz p1, :cond_4

    .line 276
    iput-boolean v1, p0, Lcom/tencent/liteav/c;->p:Z

    .line 278
    invoke-direct {p0}, Lcom/tencent/liteav/c;->q()V

    .line 280
    invoke-direct {p0}, Lcom/tencent/liteav/c;->n()V

    .line 282
    invoke-direct {p0}, Lcom/tencent/liteav/c;->p()V

    .line 284
    iget-object p2, p0, Lcom/tencent/liteav/c;->j:Landroid/view/TextureView;

    if-eqz p2, :cond_7

    const/16 p3, 0x8

    .line 285
    invoke-virtual {p2, p3}, Landroid/view/TextureView;->setVisibility(I)V

    goto :goto_0

    .line 290
    :cond_4
    iget-object p2, p0, Lcom/tencent/liteav/c;->q:Landroid/view/Surface;

    invoke-virtual {p0, p2}, Lcom/tencent/liteav/c;->a(Landroid/view/Surface;)V

    .line 292
    invoke-direct {p0}, Lcom/tencent/liteav/c;->r()V

    .line 294
    invoke-direct {p0}, Lcom/tencent/liteav/c;->v()V

    .line 296
    iget-object p2, p0, Lcom/tencent/liteav/c;->K:Lcom/tencent/liteav/basic/enums/b;

    sget-object p3, Lcom/tencent/liteav/basic/enums/b;->c:Lcom/tencent/liteav/basic/enums/b;

    if-ne p2, p3, :cond_5

    iget-object p2, p0, Lcom/tencent/liteav/c;->j:Landroid/view/TextureView;

    if-nez p2, :cond_5

    .line 297
    iget-object p2, p0, Lcom/tencent/liteav/c;->f:Lcom/tencent/liteav/renderer/a;

    if-eqz p2, :cond_5

    .line 298
    iget-object p3, p0, Lcom/tencent/liteav/c;->L:Ljava/lang/Object;

    invoke-virtual {p2, p3}, Lcom/tencent/liteav/renderer/a;->c(Ljava/lang/Object;)V

    .line 302
    :cond_5
    iget-object p2, p0, Lcom/tencent/liteav/c;->f:Lcom/tencent/liteav/renderer/a;

    if-eqz p2, :cond_6

    .line 303
    invoke-virtual {p2, v0}, Lcom/tencent/liteav/renderer/a;->b(Z)V

    :cond_6
    :try_start_0
    const-string p2, "com.tencent.liteav.demo.play.SuperPlayerView"

    .line 307
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 309
    iget-object p2, p0, Lcom/tencent/liteav/c;->c:Landroid/content/Context;

    sget p3, Lcom/tencent/liteav/basic/datareport/a;->bG:I

    invoke-static {p2, p3}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txReportDAU(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_7
    :goto_0
    return p1
.end method

.method public a(Ljava/lang/String;Lcom/tencent/liteav/basic/b/a;)I
    .locals 7

    .line 363
    invoke-virtual {p0}, Lcom/tencent/liteav/c;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/liteav/c;->g:Lcom/tencent/liteav/network/TXCStreamDownloader;

    if-eqz v0, :cond_4

    .line 365
    iget v0, p0, Lcom/tencent/liteav/c;->I:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 367
    iget-object v0, p0, Lcom/tencent/liteav/c;->g:Lcom/tencent/liteav/network/TXCStreamDownloader;

    invoke-virtual {v0, v3}, Lcom/tencent/liteav/network/TXCStreamDownloader;->setRetryTimes(I)V

    .line 368
    iget-object v0, p0, Lcom/tencent/liteav/c;->g:Lcom/tencent/liteav/network/TXCStreamDownloader;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/network/TXCStreamDownloader;->setRetryInterval(I)V

    goto :goto_1

    .line 370
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/c;->g:Lcom/tencent/liteav/network/TXCStreamDownloader;

    iget-object v1, p0, Lcom/tencent/liteav/c;->b:Lcom/tencent/liteav/d;

    iget v1, v1, Lcom/tencent/liteav/d;->e:I

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/network/TXCStreamDownloader;->setRetryTimes(I)V

    .line 371
    iget-object v0, p0, Lcom/tencent/liteav/c;->g:Lcom/tencent/liteav/network/TXCStreamDownloader;

    iget-object v1, p0, Lcom/tencent/liteav/c;->b:Lcom/tencent/liteav/d;

    iget v1, v1, Lcom/tencent/liteav/d;->f:I

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/network/TXCStreamDownloader;->setRetryInterval(I)V

    .line 373
    :goto_1
    iget-object v0, p0, Lcom/tencent/liteav/c;->g:Lcom/tencent/liteav/network/TXCStreamDownloader;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/liteav/network/TXCStreamDownloader;->switchStream(Ljava/lang/String;Lcom/tencent/liteav/basic/b/a;)Z

    move-result p2

    const-wide/16 v0, 0x0

    .line 375
    iget-object v3, p0, Lcom/tencent/liteav/c;->O:Ljava/lang/String;

    const/16 v4, 0x7d7

    invoke-static {v3, v4}, Lcom/tencent/liteav/basic/module/TXCStatus;->c(Ljava/lang/String;I)I

    move-result v3

    int-to-long v3, v3

    .line 376
    iget-object v5, p0, Lcom/tencent/liteav/c;->a:Lcom/tencent/liteav/TXCRenderAndDec;

    if-eqz v5, :cond_2

    .line 377
    invoke-virtual {v5}, Lcom/tencent/liteav/TXCRenderAndDec;->getVideoCacheDuration()J

    move-result-wide v0

    .line 379
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[SwitchStream] current jitter size when start switch stream. video:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " audio:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCLivePlayer"

    .line 382
    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_3

    .line 384
    iput-object p1, p0, Lcom/tencent/liteav/c;->H:Ljava/lang/String;

    return v2

    :cond_3
    const/4 p1, -0x2

    return p1

    :cond_4
    const/4 p1, -0x1

    return p1
.end method

.method public a(Z)I
    .locals 3

    .line 321
    invoke-virtual {p0}, Lcom/tencent/liteav/c;->c()Z

    move-result v0

    const-string v1, "TXCLivePlayer"

    if-nez v0, :cond_0

    const-string p1, "play: ignore stop play when not started"

    .line 322
    invoke-static {v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x2

    return p1

    :cond_0
    const-string v0, "play: stop"

    .line 325
    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 327
    iput-boolean v0, p0, Lcom/tencent/liteav/c;->p:Z

    .line 328
    invoke-direct {p0}, Lcom/tencent/liteav/c;->q()V

    .line 330
    iget-object v1, p0, Lcom/tencent/liteav/c;->f:Lcom/tencent/liteav/renderer/a;

    if-eqz v1, :cond_1

    xor-int/lit8 v2, p1, 0x1

    .line 332
    invoke-virtual {v1, v2}, Lcom/tencent/liteav/renderer/a;->b(Z)V

    .line 335
    :cond_1
    invoke-direct {p0}, Lcom/tencent/liteav/c;->n()V

    .line 337
    iget-object v1, p0, Lcom/tencent/liteav/c;->j:Landroid/view/TextureView;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    const/16 p1, 0x8

    .line 338
    invoke-virtual {v1, p1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 341
    :cond_2
    iget-object p1, p0, Lcom/tencent/liteav/c;->f:Lcom/tencent/liteav/renderer/a;

    if-eqz p1, :cond_3

    const/4 v1, 0x0

    .line 342
    check-cast v1, Landroid/view/Surface;

    invoke-virtual {p1, v1}, Lcom/tencent/liteav/renderer/a;->a(Landroid/view/Surface;)V

    .line 345
    :cond_3
    iget-object p1, p0, Lcom/tencent/liteav/c;->j:Landroid/view/TextureView;

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/tencent/liteav/c;->f:Lcom/tencent/liteav/renderer/a;

    if-eqz p1, :cond_4

    .line 346
    invoke-virtual {p1}, Lcom/tencent/liteav/renderer/a;->d()V

    .line 348
    :cond_4
    invoke-direct {p0}, Lcom/tencent/liteav/c;->p()V

    .line 350
    invoke-direct {p0}, Lcom/tencent/liteav/c;->s()V

    .line 352
    invoke-direct {p0}, Lcom/tencent/liteav/c;->x()V

    .line 354
    invoke-direct {p0}, Lcom/tencent/liteav/c;->t()V

    return v0
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 395
    invoke-virtual {p0, v0}, Lcom/tencent/liteav/c;->a(Z)I

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 420
    iput p1, p0, Lcom/tencent/liteav/c;->o:I

    .line 421
    iget-object v0, p0, Lcom/tencent/liteav/c;->a:Lcom/tencent/liteav/TXCRenderAndDec;

    if-eqz v0, :cond_0

    .line 422
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/TXCRenderAndDec;->setRenderMode(I)V

    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/tencent/liteav/c;->f:Lcom/tencent/liteav/renderer/a;

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {v0, p1, p2}, Lcom/tencent/liteav/renderer/a;->d(II)V

    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 1082
    invoke-direct {p0}, Lcom/tencent/liteav/c;->l()V

    .line 1083
    invoke-virtual {p0}, Lcom/tencent/liteav/c;->e()I

    return-void
.end method

.method public a(Landroid/view/Surface;)V
    .locals 1

    .line 213
    iput-object p1, p0, Lcom/tencent/liteav/c;->q:Landroid/view/Surface;

    .line 214
    iget-object v0, p0, Lcom/tencent/liteav/c;->f:Lcom/tencent/liteav/renderer/a;

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/renderer/a;->a(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/tencent/liteav/basic/e/k;)V
    .locals 1

    .line 538
    iget-object v0, p0, Lcom/tencent/liteav/c;->f:Lcom/tencent/liteav/renderer/a;

    if-eqz v0, :cond_0

    .line 539
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/renderer/a;->a(Lcom/tencent/liteav/basic/e/k;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/tencent/liteav/d;)V
    .locals 1

    .line 227
    invoke-super {p0, p1}, Lcom/tencent/liteav/j;->a(Lcom/tencent/liteav/d;)V

    .line 229
    iget-object v0, p0, Lcom/tencent/liteav/c;->a:Lcom/tencent/liteav/TXCRenderAndDec;

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/TXCRenderAndDec;->setConfig(Lcom/tencent/liteav/d;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/tencent/liteav/k;Lcom/tencent/liteav/basic/enums/b;Ljava/lang/Object;)V
    .locals 1

    .line 518
    iput-object p2, p0, Lcom/tencent/liteav/c;->K:Lcom/tencent/liteav/basic/enums/b;

    .line 519
    iput-object p3, p0, Lcom/tencent/liteav/c;->L:Ljava/lang/Object;

    .line 521
    invoke-virtual {p0}, Lcom/tencent/liteav/c;->c()Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/tencent/liteav/c;->K:Lcom/tencent/liteav/basic/enums/b;

    sget-object v0, Lcom/tencent/liteav/basic/enums/b;->c:Lcom/tencent/liteav/basic/enums/b;

    if-ne p3, v0, :cond_0

    iget-object p3, p0, Lcom/tencent/liteav/c;->j:Landroid/view/TextureView;

    if-nez p3, :cond_0

    if-eqz p1, :cond_0

    .line 522
    iget-object p3, p0, Lcom/tencent/liteav/c;->f:Lcom/tencent/liteav/renderer/a;

    if-eqz p3, :cond_0

    .line 523
    iget-object v0, p0, Lcom/tencent/liteav/c;->L:Ljava/lang/Object;

    invoke-virtual {p3, v0}, Lcom/tencent/liteav/renderer/a;->c(Ljava/lang/Object;)V

    .line 527
    :cond_0
    iget-object p3, p0, Lcom/tencent/liteav/c;->a:Lcom/tencent/liteav/TXCRenderAndDec;

    if-eqz p3, :cond_1

    .line 528
    invoke-virtual {p3, p1, p2}, Lcom/tencent/liteav/TXCRenderAndDec;->setVideoFrameListener(Lcom/tencent/liteav/k;Lcom/tencent/liteav/basic/enums/b;)V

    goto :goto_0

    :cond_1
    const-string p1, "TXCLivePlayer"

    const-string p2, "setVideoFrameListener->enter with renderAndDec is empty"

    .line 530
    invoke-static {p1, p2}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/tencent/rtmp/TXLivePlayer$ITXAudioRawDataListener;)V
    .locals 0

    .line 499
    iput-object p1, p0, Lcom/tencent/liteav/c;->N:Lcom/tencent/rtmp/TXLivePlayer$ITXAudioRawDataListener;

    .line 500
    invoke-direct {p0}, Lcom/tencent/liteav/c;->z()V

    return-void
.end method

.method public a(Lcom/tencent/rtmp/ui/TXCloudVideoView;)V
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/tencent/liteav/c;->d:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/c;->d:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    if-eq v0, p1, :cond_0

    .line 187
    iget-object v0, p0, Lcom/tencent/liteav/c;->d:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-virtual {v0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->getVideoView()Landroid/view/TextureView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v1, p0, Lcom/tencent/liteav/c;->d:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-virtual {v1, v0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->removeView(Landroid/view/View;)V

    .line 193
    :cond_0
    invoke-super {p0, p1}, Lcom/tencent/liteav/j;->a(Lcom/tencent/rtmp/ui/TXCloudVideoView;)V

    .line 195
    iget-object p1, p0, Lcom/tencent/liteav/c;->d:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    if-eqz p1, :cond_2

    .line 196
    iget-object p1, p0, Lcom/tencent/liteav/c;->d:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-virtual {p1}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->getVideoView()Landroid/view/TextureView;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/c;->j:Landroid/view/TextureView;

    .line 197
    iget-object p1, p0, Lcom/tencent/liteav/c;->j:Landroid/view/TextureView;

    if-nez p1, :cond_1

    .line 198
    new-instance p1, Landroid/view/TextureView;

    iget-object v0, p0, Lcom/tencent/liteav/c;->d:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-virtual {v0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/tencent/liteav/c;->j:Landroid/view/TextureView;

    .line 200
    :cond_1
    iget-object p1, p0, Lcom/tencent/liteav/c;->d:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    iget-object v0, p0, Lcom/tencent/liteav/c;->j:Landroid/view/TextureView;

    invoke-virtual {p1, v0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->addVideoView(Landroid/view/TextureView;)V

    .line 202
    :cond_2
    iget-object p1, p0, Lcom/tencent/liteav/c;->f:Lcom/tencent/liteav/renderer/a;

    if-eqz p1, :cond_3

    .line 203
    iget-object v0, p0, Lcom/tencent/liteav/c;->j:Landroid/view/TextureView;

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/renderer/a;->a(Landroid/view/TextureView;)V

    :cond_3
    return-void
.end method

.method public a(Lcom/tencent/ugc/TXRecordCommon$ITXVideoRecordListener;)V
    .locals 0

    .line 476
    iput-object p1, p0, Lcom/tencent/liteav/c;->z:Lcom/tencent/ugc/TXRecordCommon$ITXVideoRecordListener;

    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    .line 1122
    invoke-virtual {p0, p2, p1}, Lcom/tencent/liteav/c;->onNotifyEvent(ILandroid/os/Bundle;)V

    return-void
.end method

.method public a(Ljava/lang/String;[BJII[B)V
    .locals 4

    .line 1091
    iput p5, p0, Lcom/tencent/liteav/c;->s:I

    .line 1092
    iput p6, p0, Lcom/tencent/liteav/c;->r:I

    .line 1093
    iget-object p1, p0, Lcom/tencent/liteav/c;->y:Lcom/tencent/liteav/a/a;

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_1

    cmp-long p1, p3, v0

    if-gtz p1, :cond_0

    .line 1095
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide p3

    .line 1097
    :cond_0
    iget-object p1, p0, Lcom/tencent/liteav/c;->y:Lcom/tencent/liteav/a/a;

    invoke-virtual {p1, p2, p3, p4}, Lcom/tencent/liteav/a/a;->a([BJ)V

    .line 1100
    :cond_1
    iget-wide v2, p0, Lcom/tencent/liteav/c;->R:J

    cmp-long p1, v2, v0

    if-gtz p1, :cond_2

    iget-object p1, p0, Lcom/tencent/liteav/c;->N:Lcom/tencent/rtmp/TXLivePlayer$ITXAudioRawDataListener;

    if-eqz p1, :cond_2

    const/16 p7, 0x10

    .line 1101
    invoke-interface {p1, p5, p6, p7}, Lcom/tencent/rtmp/TXLivePlayer$ITXAudioRawDataListener;->onAudioInfoChanged(III)V

    .line 1104
    :cond_2
    iget-object p1, p0, Lcom/tencent/liteav/c;->N:Lcom/tencent/rtmp/TXLivePlayer$ITXAudioRawDataListener;

    if-eqz p1, :cond_3

    .line 1105
    invoke-interface {p1, p2, p3, p4}, Lcom/tencent/rtmp/TXLivePlayer$ITXAudioRawDataListener;->onPcmDataAvailable([BJ)V

    .line 1108
    :cond_3
    iget-wide p1, p0, Lcom/tencent/liteav/c;->R:J

    cmp-long p5, p1, v0

    if-gtz p5, :cond_4

    .line 1109
    iput-wide p3, p0, Lcom/tencent/liteav/c;->R:J

    return-void

    :cond_4
    sub-long/2addr p3, p1

    .line 1112
    iput-wide p3, p0, Lcom/tencent/liteav/c;->Q:J

    return-void
.end method

.method public a(ZI)V
    .locals 0

    .line 1127
    iput-boolean p1, p0, Lcom/tencent/liteav/c;->J:Z

    .line 1128
    invoke-static {}, Lcom/tencent/liteav/audio/TXCAudioEngine;->getInstance()Lcom/tencent/liteav/audio/TXCAudioEngine;

    invoke-static {p1, p2}, Lcom/tencent/liteav/audio/TXCAudioEngine;->enableAudioVolumeEvaluation(ZI)Z

    return-void
.end method

.method public b()V
    .locals 2

    .line 399
    iget-object v0, p0, Lcom/tencent/liteav/c;->H:Ljava/lang/String;

    iget v1, p0, Lcom/tencent/liteav/c;->I:I

    invoke-virtual {p0, v0, v1}, Lcom/tencent/liteav/c;->a(Ljava/lang/String;I)I

    return-void
.end method

.method public b(I)V
    .locals 1

    .line 433
    iput p1, p0, Lcom/tencent/liteav/c;->n:I

    .line 434
    iget-object v0, p0, Lcom/tencent/liteav/c;->a:Lcom/tencent/liteav/TXCRenderAndDec;

    if-eqz v0, :cond_0

    .line 435
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/TXCRenderAndDec;->setRenderRotation(I)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;I)V
    .locals 0

    .line 1138
    iget-boolean p1, p0, Lcom/tencent/liteav/c;->p:Z

    if-eqz p1, :cond_0

    .line 1139
    iget-object p1, p0, Lcom/tencent/liteav/c;->g:Lcom/tencent/liteav/network/TXCStreamDownloader;

    if-eqz p1, :cond_0

    .line 1140
    iget-object p2, p0, Lcom/tencent/liteav/c;->H:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/tencent/liteav/network/TXCStreamDownloader;->requestKeyFrame(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 2

    .line 446
    iput-boolean p1, p0, Lcom/tencent/liteav/c;->k:Z

    .line 447
    invoke-static {}, Lcom/tencent/liteav/audio/TXCAudioEngine;->getInstance()Lcom/tencent/liteav/audio/TXCAudioEngine;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/liteav/c;->O:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/tencent/liteav/c;->k:Z

    invoke-virtual {p1, v0, v1}, Lcom/tencent/liteav/audio/TXCAudioEngine;->muteRemoteAudio(Ljava/lang/String;Z)V

    return-void
.end method

.method public c(I)V
    .locals 2

    .line 460
    iput p1, p0, Lcom/tencent/liteav/c;->m:I

    .line 461
    invoke-static {}, Lcom/tencent/liteav/audio/TXCAudioEngine;->getInstance()Lcom/tencent/liteav/audio/TXCAudioEngine;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/liteav/c;->O:Ljava/lang/String;

    iget v1, p0, Lcom/tencent/liteav/c;->m:I

    invoke-virtual {p1, v0, v1}, Lcom/tencent/liteav/audio/TXCAudioEngine;->setRemotePlayoutVolume(Ljava/lang/String;I)V

    return-void
.end method

.method public c(Z)V
    .locals 2

    .line 451
    iput-boolean p1, p0, Lcom/tencent/liteav/c;->l:Z

    .line 452
    invoke-static {}, Lcom/tencent/liteav/audio/TXCAudioEngine;->getInstance()Lcom/tencent/liteav/audio/TXCAudioEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/c;->O:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/tencent/liteav/audio/TXCAudioEngine;->muteRemoteAudioInSpeaker(Ljava/lang/String;Z)V

    return-void
.end method

.method public c()Z
    .locals 1

    .line 409
    iget-boolean v0, p0, Lcom/tencent/liteav/c;->p:Z

    return v0
.end method

.method public d()Landroid/view/TextureView;
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/tencent/liteav/c;->j:Landroid/view/TextureView;

    return-object v0
.end method

.method public d(I)V
    .locals 1

    .line 465
    iput p1, p0, Lcom/tencent/liteav/c;->h:I

    .line 466
    iget-object v0, p0, Lcom/tencent/liteav/c;->g:Lcom/tencent/liteav/network/TXCStreamDownloader;

    if-eqz v0, :cond_0

    .line 467
    invoke-virtual {v0, p1}, Lcom/tencent/liteav/network/TXCStreamDownloader;->setPayloadType(I)V

    :cond_0
    return-void
.end method

.method public e()I
    .locals 2

    .line 504
    iget-boolean v0, p0, Lcom/tencent/liteav/c;->u:Z

    if-nez v0, :cond_0

    const-string v0, "TXCLivePlayer"

    const-string v1, "stopRecord: no recording task exist"

    .line 505
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 508
    iput-boolean v0, p0, Lcom/tencent/liteav/c;->u:Z

    .line 509
    invoke-direct {p0}, Lcom/tencent/liteav/c;->z()V

    .line 510
    iget-object v1, p0, Lcom/tencent/liteav/c;->y:Lcom/tencent/liteav/a/a;

    if-eqz v1, :cond_1

    .line 511
    invoke-virtual {v1}, Lcom/tencent/liteav/a/a;->a()V

    const/4 v1, 0x0

    .line 512
    iput-object v1, p0, Lcom/tencent/liteav/c;->y:Lcom/tencent/liteav/a/a;

    :cond_1
    return v0
.end method

.method public e(I)I
    .locals 1

    .line 480
    iget-boolean p1, p0, Lcom/tencent/liteav/c;->u:Z

    if-eqz p1, :cond_0

    const-string p1, "TXCLivePlayer"

    const-string v0, "startRecord: there is existing uncompleted record task"

    .line 481
    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 p1, 0x1

    .line 484
    iput-boolean p1, p0, Lcom/tencent/liteav/c;->u:Z

    .line 485
    iget-object p1, p0, Lcom/tencent/liteav/c;->f:Lcom/tencent/liteav/renderer/a;

    invoke-virtual {p1, p0}, Lcom/tencent/liteav/renderer/a;->a(Lcom/tencent/liteav/renderer/g;)V

    .line 486
    iget-object p1, p0, Lcom/tencent/liteav/c;->f:Lcom/tencent/liteav/renderer/a;

    invoke-virtual {p1, p0}, Lcom/tencent/liteav/renderer/a;->a(Lcom/tencent/liteav/renderer/a$a;)V

    .line 487
    invoke-direct {p0}, Lcom/tencent/liteav/c;->z()V

    .line 488
    iget-object p1, p0, Lcom/tencent/liteav/c;->c:Landroid/content/Context;

    sget v0, Lcom/tencent/liteav/basic/datareport/a;->ax:I

    invoke-static {p1, v0}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txReportDAU(Landroid/content/Context;I)V

    const/4 p1, 0x0

    return p1
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public g()J
    .locals 2

    .line 544
    iget-object v0, p0, Lcom/tencent/liteav/c;->a:Lcom/tencent/liteav/TXCRenderAndDec;

    if-eqz v0, :cond_0

    .line 545
    invoke-virtual {v0}, Lcom/tencent/liteav/TXCRenderAndDec;->getCurrentRenderPts()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public h()V
    .locals 4

    const-wide/16 v0, 0x0

    .line 765
    iput-wide v0, p0, Lcom/tencent/liteav/c;->R:J

    .line 766
    iget-boolean v0, p0, Lcom/tencent/liteav/c;->P:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 767
    iput-boolean v0, p0, Lcom/tencent/liteav/c;->P:Z

    .line 768
    invoke-direct {p0}, Lcom/tencent/liteav/c;->z()V

    .line 769
    iget-object v0, p0, Lcom/tencent/liteav/c;->i:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 770
    new-instance v1, Lcom/tencent/liteav/c$3;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/c$3;-><init>(Lcom/tencent/liteav/c;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public i()V
    .locals 13

    .line 821
    invoke-direct {p0}, Lcom/tencent/liteav/c;->y()V

    .line 822
    invoke-static {}, Lcom/tencent/liteav/basic/util/h;->a()[I

    move-result-object v0

    const/4 v1, 0x0

    .line 823
    aget v1, v0, v1

    div-int/lit8 v1, v1, 0xa

    const/4 v2, 0x1

    .line 824
    aget v0, v0, v2

    div-int/lit8 v0, v0, 0xa

    .line 825
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "%"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 826
    iget-object v1, p0, Lcom/tencent/liteav/c;->O:Ljava/lang/String;

    const/16 v3, 0x1bbe

    invoke-static {v1, v3}, Lcom/tencent/liteav/basic/module/TXCStatus;->c(Ljava/lang/String;I)I

    move-result v1

    .line 827
    iget-object v3, p0, Lcom/tencent/liteav/c;->O:Ljava/lang/String;

    const/16 v4, 0x1bbd

    invoke-static {v3, v4}, Lcom/tencent/liteav/basic/module/TXCStatus;->c(Ljava/lang/String;I)I

    move-result v3

    .line 828
    iget-object v4, p0, Lcom/tencent/liteav/c;->O:Ljava/lang/String;

    const/16 v5, 0x1bc6

    invoke-static {v4, v5}, Lcom/tencent/liteav/basic/module/TXCStatus;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 829
    iget-object v5, p0, Lcom/tencent/liteav/c;->O:Ljava/lang/String;

    const/16 v6, 0x1772

    invoke-static {v5, v6}, Lcom/tencent/liteav/basic/module/TXCStatus;->d(Ljava/lang/String;I)D

    move-result-wide v5

    double-to-int v5, v5

    .line 830
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 831
    iget-object v7, p0, Lcom/tencent/liteav/c;->f:Lcom/tencent/liteav/renderer/a;

    if-eqz v7, :cond_0

    .line 832
    invoke-virtual {v7}, Lcom/tencent/liteav/renderer/a;->h()I

    move-result v7

    const-string v8, "VIDEO_WIDTH"

    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 833
    iget-object v7, p0, Lcom/tencent/liteav/c;->f:Lcom/tencent/liteav/renderer/a;

    invoke-virtual {v7}, Lcom/tencent/liteav/renderer/a;->i()I

    move-result v7

    const-string v8, "VIDEO_HEIGHT"

    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 835
    :cond_0
    iget-object v7, p0, Lcom/tencent/liteav/c;->a:Lcom/tencent/liteav/TXCRenderAndDec;

    if-eqz v7, :cond_2

    .line 836
    invoke-virtual {v7}, Lcom/tencent/liteav/TXCRenderAndDec;->getVideoCacheDuration()J

    move-result-wide v7

    long-to-int v7, v7

    const-string v8, "VIDEO_CACHE"

    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 837
    iget-object v7, p0, Lcom/tencent/liteav/c;->a:Lcom/tencent/liteav/TXCRenderAndDec;

    invoke-virtual {v7}, Lcom/tencent/liteav/TXCRenderAndDec;->getVideoCacheFrameCount()J

    move-result-wide v7

    long-to-int v7, v7

    const-string v8, "V_SUM_CACHE_SIZE"

    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 838
    iget-object v7, p0, Lcom/tencent/liteav/c;->a:Lcom/tencent/liteav/TXCRenderAndDec;

    invoke-virtual {v7}, Lcom/tencent/liteav/TXCRenderAndDec;->getVideoDecCacheFrameCount()I

    move-result v7

    const-string v8, "V_DEC_CACHE_SIZE"

    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 839
    iget-object v7, p0, Lcom/tencent/liteav/c;->a:Lcom/tencent/liteav/TXCRenderAndDec;

    invoke-virtual {v7}, Lcom/tencent/liteav/TXCRenderAndDec;->getAVPlayInterval()J

    move-result-wide v7

    long-to-int v7, v7

    const-string v8, "AV_PLAY_INTERVAL"

    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 840
    iget-object v7, p0, Lcom/tencent/liteav/c;->a:Lcom/tencent/liteav/TXCRenderAndDec;

    invoke-virtual {v7}, Lcom/tencent/liteav/TXCRenderAndDec;->getAVNetRecvInterval()J

    move-result-wide v7

    long-to-int v7, v7

    const-string v8, "AV_RECV_INTERVAL"

    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-nez v5, :cond_1

    const/16 v7, 0xf

    goto :goto_0

    :cond_1
    move v7, v5

    .line 842
    :goto_0
    iget-object v8, p0, Lcom/tencent/liteav/c;->O:Ljava/lang/String;

    const/16 v9, 0x1bd0

    invoke-static {v8, v9}, Lcom/tencent/liteav/basic/module/TXCStatus;->c(Ljava/lang/String;I)I

    move-result v8

    mul-int/lit8 v8, v8, 0xa

    .line 843
    div-int/2addr v8, v7

    int-to-float v7, v8

    const/high16 v8, 0x41200000    # 10.0f

    div-float/2addr v7, v8

    float-to-double v7, v7

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    add-double/2addr v7, v9

    double-to-int v7, v7

    const-string v8, "VIDEO_GOP"

    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 848
    :cond_2
    invoke-static {}, Lcom/tencent/liteav/audio/TXCAudioEngine;->getInstance()Lcom/tencent/liteav/audio/TXCAudioEngine;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tencent/liteav/audio/TXCAudioEngine;->getPlayAECType()I

    move-result v7

    .line 849
    iget-object v8, p0, Lcom/tencent/liteav/c;->O:Ljava/lang/String;

    const/16 v9, 0x7e3

    invoke-static {v8, v9}, Lcom/tencent/liteav/basic/module/TXCStatus;->c(Ljava/lang/String;I)I

    move-result v8

    .line 850
    iget-object v9, p0, Lcom/tencent/liteav/c;->O:Ljava/lang/String;

    const/16 v10, 0x7e4

    invoke-static {v9, v10}, Lcom/tencent/liteav/basic/module/TXCStatus;->c(Ljava/lang/String;I)I

    move-result v9

    .line 851
    invoke-static {}, Lcom/tencent/liteav/audio/TXCAudioEngine;->getInstance()Lcom/tencent/liteav/audio/TXCAudioEngine;

    move-result-object v10

    invoke-virtual {v10}, Lcom/tencent/liteav/audio/TXCAudioEngine;->getPlaySampleRate()I

    move-result v10

    .line 852
    invoke-static {}, Lcom/tencent/liteav/audio/TXCAudioEngine;->getInstance()Lcom/tencent/liteav/audio/TXCAudioEngine;

    move-result-object v11

    invoke-virtual {v11}, Lcom/tencent/liteav/audio/TXCAudioEngine;->getPlayChannels()I

    move-result v11

    .line 853
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " | "

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "AUDIO_PLAY_INFO"

    .line 854
    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    iget-object v7, p0, Lcom/tencent/liteav/c;->O:Ljava/lang/String;

    const/16 v8, 0x7d7

    invoke-static {v7, v8}, Lcom/tencent/liteav/basic/module/TXCStatus;->c(Ljava/lang/String;I)I

    move-result v7

    const-string v8, "AUDIO_CACHE"

    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 856
    iget-object v7, p0, Lcom/tencent/liteav/c;->O:Ljava/lang/String;

    const/16 v8, 0x7e2

    invoke-static {v7, v8}, Lcom/tencent/liteav/basic/module/TXCStatus;->c(Ljava/lang/String;I)I

    move-result v7

    const-string v8, "NET_JITTER"

    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 857
    iget-object v7, p0, Lcom/tencent/liteav/c;->O:Ljava/lang/String;

    const/16 v8, 0x7e5

    invoke-static {v7, v8}, Lcom/tencent/liteav/basic/module/TXCStatus;->c(Ljava/lang/String;I)I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x447a0000    # 1000.0f

    div-float/2addr v7, v8

    const-string v8, "AUDIO_CACHE_THRESHOLD"

    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 858
    iget-object v7, p0, Lcom/tencent/liteav/c;->O:Ljava/lang/String;

    const/16 v8, 0x7f4

    invoke-static {v7, v8}, Lcom/tencent/liteav/basic/module/TXCStatus;->c(Ljava/lang/String;I)I

    move-result v7

    const-string v8, "AUDIO_BLOCK_TIME"

    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    add-int v7, v3, v1

    const-string v8, "NET_SPEED"

    .line 861
    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v7, "VIDEO_FPS"

    .line 862
    invoke-virtual {v6, v7, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "VIDEO_BITRATE"

    .line 863
    invoke-virtual {v6, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "AUDIO_BITRATE"

    .line 864
    invoke-virtual {v6, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "SERVER_IP"

    .line 865
    invoke-virtual {v6, v1, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v1, "CPU_USAGE"

    .line 866
    invoke-virtual {v6, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 868
    iget v0, p0, Lcom/tencent/liteav/c;->x:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/tencent/liteav/c;->x:I

    .line 869
    iget v0, p0, Lcom/tencent/liteav/c;->x:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 870
    iget-boolean v0, p0, Lcom/tencent/liteav/c;->w:Z

    const/16 v1, 0x177d

    if-eqz v0, :cond_3

    .line 871
    iget-object v0, p0, Lcom/tencent/liteav/c;->O:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;ILjava/lang/Object;)Z

    goto :goto_1

    .line 873
    :cond_3
    iget-object v0, p0, Lcom/tencent/liteav/c;->O:Ljava/lang/String;

    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;ILjava/lang/Object;)Z

    .line 877
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/tencent/liteav/c;->e:Ljava/lang/ref/WeakReference;

    const/16 v1, 0x3a99

    invoke-static {v0, v1, v6}, Lcom/tencent/liteav/basic/util/h;->a(Ljava/lang/ref/WeakReference;ILandroid/os/Bundle;)V

    .line 879
    iget-object v0, p0, Lcom/tencent/liteav/c;->a:Lcom/tencent/liteav/TXCRenderAndDec;

    if-eqz v0, :cond_5

    .line 880
    invoke-virtual {v0}, Lcom/tencent/liteav/TXCRenderAndDec;->updateLoadInfo()V

    .line 883
    :cond_5
    iget-object v0, p0, Lcom/tencent/liteav/c;->A:Lcom/tencent/liteav/b;

    if-eqz v0, :cond_6

    .line 884
    invoke-virtual {v0}, Lcom/tencent/liteav/b;->d()V

    :cond_6
    return-void
.end method

.method public j()I
    .locals 2

    .line 1133
    invoke-static {}, Lcom/tencent/liteav/audio/TXCAudioEngine;->getInstance()Lcom/tencent/liteav/audio/TXCAudioEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/c;->O:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/audio/TXCAudioEngine;->getRemotePlayoutVolumeLevel(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onNotifyEvent(ILandroid/os/Bundle;)V
    .locals 4

    const/16 v0, 0x7d3

    if-ne v0, p1, :cond_0

    .line 993
    iget-boolean v1, p0, Lcom/tencent/liteav/c;->w:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 994
    iput-boolean v1, p0, Lcom/tencent/liteav/c;->w:Z

    :cond_0
    const-string v1, "Video play started"

    const/16 v2, 0x7d4

    const/16 v3, 0x7ea

    if-eq v0, p1, :cond_1

    if-ne v3, p1, :cond_3

    .line 998
    :cond_1
    iget-boolean v0, p0, Lcom/tencent/liteav/c;->v:Z

    if-eqz v0, :cond_2

    .line 999
    invoke-direct {p0, v2, v1}, Lcom/tencent/liteav/c;->a(ILjava/lang/String;)V

    const/4 v0, 0x0

    .line 1000
    iput-boolean v0, p0, Lcom/tencent/liteav/c;->v:Z

    :cond_2
    if-ne v3, p1, :cond_3

    const-string p1, "Audio play started"

    .line 1003
    invoke-direct {p0, v3, p1}, Lcom/tencent/liteav/c;->a(ILjava/lang/String;)V

    .line 1004
    iget-object p1, p0, Lcom/tencent/liteav/c;->O:Ljava/lang/String;

    const/16 p2, 0x7f1

    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/tencent/liteav/basic/module/TXCStatus;->a(Ljava/lang/String;ILjava/lang/Object;)Z

    return-void

    :cond_3
    const/16 v0, 0x7e9

    if-ne v0, p1, :cond_4

    .line 1009
    invoke-direct {p0, v2, v1}, Lcom/tencent/liteav/c;->a(ILjava/lang/String;)V

    return-void

    :cond_4
    const/16 v0, 0x7e7

    if-eq v0, p1, :cond_7

    const/16 v0, 0x7e8

    if-ne v0, p1, :cond_5

    goto :goto_0

    .line 1018
    :cond_5
    iget-object v0, p0, Lcom/tencent/liteav/c;->i:Landroid/os/Handler;

    if-eqz v0, :cond_6

    .line 1019
    new-instance v1, Lcom/tencent/liteav/c$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/liteav/c$6;-><init>(Lcom/tencent/liteav/c;ILandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_6
    return-void

    :cond_7
    :goto_0
    const/16 p1, 0x7d7

    const-string p2, "Video play loading"

    .line 1014
    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/c;->a(ILjava/lang/String;)V

    return-void
.end method

.method public onPullAudio(Lcom/tencent/liteav/basic/structs/a;)V
    .locals 0

    return-void
.end method

.method public onPullNAL(Lcom/tencent/liteav/basic/structs/TXSNALPacket;)V
    .locals 2

    .line 973
    iget-boolean v0, p0, Lcom/tencent/liteav/c;->p:Z

    if-nez v0, :cond_0

    return-void

    .line 976
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/c;->a:Lcom/tencent/liteav/TXCRenderAndDec;

    if-eqz v0, :cond_1

    .line 977
    iget-object v0, p0, Lcom/tencent/liteav/c;->a:Lcom/tencent/liteav/TXCRenderAndDec;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/TXCRenderAndDec;->decVideo(Lcom/tencent/liteav/basic/structs/TXSNALPacket;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 980
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "decode video failed."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TXCLivePlayer"

    invoke-static {v0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onTextureProcess(IIII)V
    .locals 2

    .line 1060
    iget-object p2, p0, Lcom/tencent/liteav/c;->y:Lcom/tencent/liteav/a/a;

    .line 1061
    iget-boolean p3, p0, Lcom/tencent/liteav/c;->u:Z

    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    iget-object p3, p0, Lcom/tencent/liteav/c;->E:Lcom/tencent/liteav/renderer/h;

    if-eqz p3, :cond_0

    .line 1062
    iget-object p4, p0, Lcom/tencent/liteav/c;->F:[F

    invoke-virtual {p3, p4}, Lcom/tencent/liteav/renderer/h;->a([F)V

    .line 1063
    iget-object p3, p0, Lcom/tencent/liteav/c;->E:Lcom/tencent/liteav/renderer/h;

    invoke-virtual {p3, p1}, Lcom/tencent/liteav/renderer/h;->d(I)I

    move-result p3

    .line 1064
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v0

    invoke-virtual {p2, p3, v0, v1}, Lcom/tencent/liteav/a/a;->a(IJ)V

    .line 1066
    iget-object p2, p0, Lcom/tencent/liteav/c;->E:Lcom/tencent/liteav/renderer/h;

    iget-object p3, p0, Lcom/tencent/liteav/c;->G:[F

    invoke-virtual {p2, p3}, Lcom/tencent/liteav/renderer/h;->a([F)V

    .line 1067
    iget-object p2, p0, Lcom/tencent/liteav/c;->E:Lcom/tencent/liteav/renderer/h;

    invoke-virtual {p2, p1}, Lcom/tencent/liteav/renderer/h;->c(I)V

    .line 1070
    :cond_0
    iget-boolean p1, p0, Lcom/tencent/liteav/c;->u:Z

    if-eqz p1, :cond_1

    .line 1071
    invoke-direct {p0}, Lcom/tencent/liteav/c;->k()V

    goto :goto_0

    .line 1073
    :cond_1
    invoke-direct {p0}, Lcom/tencent/liteav/c;->l()V

    :goto_0
    return-void
.end method
