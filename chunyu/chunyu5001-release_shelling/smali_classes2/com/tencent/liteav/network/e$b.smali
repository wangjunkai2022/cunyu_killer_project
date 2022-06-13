.class Lcom/tencent/liteav/network/e$b;
.super Ljava/lang/Object;
.source "TXCMultiStreamDownloader.java"

# interfaces
.implements Lcom/tencent/liteav/basic/c/b;
.implements Lcom/tencent/liteav/network/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/network/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:I

.field private b:J

.field private c:J

.field private d:I

.field private e:Z

.field private f:J

.field private g:J

.field private h:J

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tencent/liteav/basic/structs/TXSNALPacket;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tencent/liteav/basic/structs/a;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/tencent/liteav/network/TXIStreamDownloader;

.field private l:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tencent/liteav/network/e;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/tencent/liteav/network/l;


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/network/TXIStreamDownloader;Lcom/tencent/liteav/network/e;)V
    .locals 3

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 134
    iput v0, p0, Lcom/tencent/liteav/network/e$b;->a:I

    const-wide/16 v0, 0x0

    .line 136
    iput-wide v0, p0, Lcom/tencent/liteav/network/e$b;->b:J

    .line 138
    iput-wide v0, p0, Lcom/tencent/liteav/network/e$b;->c:J

    const/4 v2, 0x0

    .line 139
    iput v2, p0, Lcom/tencent/liteav/network/e$b;->d:I

    .line 140
    iput-boolean v2, p0, Lcom/tencent/liteav/network/e$b;->e:Z

    .line 143
    iput-wide v0, p0, Lcom/tencent/liteav/network/e$b;->f:J

    .line 144
    iput-wide v0, p0, Lcom/tencent/liteav/network/e$b;->g:J

    .line 145
    iput-wide v0, p0, Lcom/tencent/liteav/network/e$b;->h:J

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/network/e$b;->i:Ljava/util/ArrayList;

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/network/e$b;->j:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 149
    iput-object v0, p0, Lcom/tencent/liteav/network/e$b;->k:Lcom/tencent/liteav/network/TXIStreamDownloader;

    .line 154
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/liteav/network/e$b;->l:Ljava/lang/ref/WeakReference;

    .line 155
    iput-object p1, p0, Lcom/tencent/liteav/network/e$b;->k:Lcom/tencent/liteav/network/TXIStreamDownloader;

    .line 156
    iget-object p1, p0, Lcom/tencent/liteav/network/e$b;->k:Lcom/tencent/liteav/network/TXIStreamDownloader;

    invoke-virtual {p1, p0}, Lcom/tencent/liteav/network/TXIStreamDownloader;->setListener(Lcom/tencent/liteav/network/l;)V

    return-void
.end method

.method private a(Lcom/tencent/liteav/basic/structs/TXSNALPacket;)V
    .locals 10

    .line 239
    iget-object v0, p0, Lcom/tencent/liteav/network/e$b;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/network/e;

    .line 240
    iget v1, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->nalType:I

    const/4 v2, 0x1

    const-string v3, "TXCMultiStreamDownloader"

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/tencent/liteav/network/e$b;->e:Z

    if-nez v1, :cond_3

    .line 242
    iget v1, p0, Lcom/tencent/liteav/network/e$b;->d:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/tencent/liteav/network/e$b;->d:I

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SwitchStream] processing... current video ts:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->pts:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " target video ts:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->pts:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " check times:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/tencent/liteav/network/e$b;->d:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " maxTimes:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    .line 247
    invoke-static {v0}, Lcom/tencent/liteav/network/e;->a(Lcom/tencent/liteav/network/e;)J

    move-result-wide v5

    iget-wide v7, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->pts:J

    cmp-long v1, v5, v7

    if-lez v1, :cond_0

    iget v1, p0, Lcom/tencent/liteav/network/e$b;->d:I

    if-ne v1, v4, :cond_3

    .line 248
    :cond_0
    invoke-static {v0}, Lcom/tencent/liteav/network/e;->a(Lcom/tencent/liteav/network/e;)J

    move-result-wide v5

    iget-wide v7, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->pts:J

    cmp-long v1, v5, v7

    if-gtz v1, :cond_1

    const-string v1, "[SwitchStream] switch video success, video data is ready."

    .line 249
    invoke-static {v3, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 250
    :cond_1
    iget v1, p0, Lcom/tencent/liteav/network/e$b;->d:I

    if-ne v1, v4, :cond_2

    const-string v1, "[SwitchStream] switch video failed. all times retried. max times:2"

    .line 251
    invoke-static {v3, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/tencent/liteav/network/e;->c()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/tencent/liteav/network/e$b;->b:J

    .line 254
    iput-boolean v2, p0, Lcom/tencent/liteav/network/e$b;->e:Z

    .line 257
    :cond_3
    iget-boolean v1, p0, Lcom/tencent/liteav/network/e$b;->e:Z

    if-nez v1, :cond_4

    return-void

    :cond_4
    if-eqz v0, :cond_5

    .line 259
    iget-wide v4, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->pts:J

    invoke-virtual {v0, v4, v5}, Lcom/tencent/liteav/network/e;->a(J)V

    .line 260
    :cond_5
    iget-wide v4, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->pts:J

    iget-wide v6, p0, Lcom/tencent/liteav/network/e$b;->b:J

    cmp-long v1, v4, v6

    if-ltz v1, :cond_e

    .line 261
    iget v1, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->nalType:I

    const-wide/16 v4, 0x0

    const-string v6, " type "

    const-string v7, " from "

    if-nez v1, :cond_6

    .line 262
    iget-wide v8, p0, Lcom/tencent/liteav/network/e$b;->c:J

    cmp-long v1, v8, v4

    if-nez v1, :cond_6

    .line 263
    iget-wide v8, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->pts:J

    iput-wide v8, p0, Lcom/tencent/liteav/network/e$b;->c:J

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[SwitchStream] pre start end "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->pts:J

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p0, Lcom/tencent/liteav/network/e$b;->b:J

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->nalType:I

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :cond_6
    iget-wide v8, p0, Lcom/tencent/liteav/network/e$b;->c:J

    cmp-long v1, v8, v4

    if-lez v1, :cond_e

    .line 268
    iget-object v1, p0, Lcom/tencent/liteav/network/e$b;->m:Lcom/tencent/liteav/network/l;

    if-eqz v1, :cond_d

    if-eqz v0, :cond_7

    .line 269
    iget-object v1, p0, Lcom/tencent/liteav/network/e$b;->k:Lcom/tencent/liteav/network/TXIStreamDownloader;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/network/e;->a(Lcom/tencent/liteav/network/TXIStreamDownloader;Z)V

    .line 271
    :cond_7
    iget-object v0, p0, Lcom/tencent/liteav/network/e$b;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 272
    iget-object v0, p0, Lcom/tencent/liteav/network/e$b;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/liteav/basic/structs/a;

    .line 273
    iget-wide v4, v1, Lcom/tencent/liteav/basic/structs/a;->e:J

    iget-wide v8, p0, Lcom/tencent/liteav/network/e$b;->c:J

    cmp-long v2, v4, v8

    if-ltz v2, :cond_8

    .line 274
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SwitchStream] pre start cache audio pts "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v1, Lcom/tencent/liteav/basic/structs/a;->e:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/tencent/liteav/network/e$b;->c:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v2, p0, Lcom/tencent/liteav/network/e$b;->m:Lcom/tencent/liteav/network/l;

    invoke-interface {v2, v1}, Lcom/tencent/liteav/network/l;->onPullAudio(Lcom/tencent/liteav/basic/structs/a;)V

    goto :goto_1

    .line 278
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SwitchStream] pre start end audio cache  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/liteav/network/e$b;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/tencent/liteav/network/e$b;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 282
    :cond_a
    iget-object v0, p0, Lcom/tencent/liteav/network/e$b;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SwitchStream] pre start end video cache  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/liteav/network/e$b;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/tencent/liteav/network/e$b;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;

    .line 285
    iget-object v2, p0, Lcom/tencent/liteav/network/e$b;->m:Lcom/tencent/liteav/network/l;

    invoke-interface {v2, v1}, Lcom/tencent/liteav/network/l;->onPullNAL(Lcom/tencent/liteav/basic/structs/TXSNALPacket;)V

    goto :goto_2

    .line 287
    :cond_b
    iget-object v0, p0, Lcom/tencent/liteav/network/e$b;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 289
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SwitchStream] pre start first pull nal "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->pts:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/liteav/network/e$b;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->nalType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/tencent/liteav/network/e$b;->m:Lcom/tencent/liteav/network/l;

    invoke-interface {v0, p1}, Lcom/tencent/liteav/network/l;->onPullNAL(Lcom/tencent/liteav/basic/structs/TXSNALPacket;)V

    const/4 p1, 0x0

    .line 291
    iput-object p1, p0, Lcom/tencent/liteav/network/e$b;->m:Lcom/tencent/liteav/network/l;

    goto :goto_3

    .line 293
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SwitchStream] pre start cache video pts "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->pts:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/liteav/network/e$b;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->nalType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/tencent/liteav/network/e$b;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    :goto_3
    return-void
.end method

.method private a(Lcom/tencent/liteav/basic/structs/a;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 214
    :cond_0
    iget-wide v0, p1, Lcom/tencent/liteav/basic/structs/a;->e:J

    iget-wide v2, p0, Lcom/tencent/liteav/network/e$b;->c:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    iget-wide v0, p1, Lcom/tencent/liteav/basic/structs/a;->e:J

    iget-wide v2, p0, Lcom/tencent/liteav/network/e$b;->b:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    goto :goto_0

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/network/e$b;->m:Lcom/tencent/liteav/network/l;

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/tencent/liteav/network/e$b;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    iget-wide v0, p1, Lcom/tencent/liteav/basic/structs/a;->e:J

    iget-wide v2, p0, Lcom/tencent/liteav/network/e$b;->c:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 219
    iget-object v0, p0, Lcom/tencent/liteav/network/e$b;->m:Lcom/tencent/liteav/network/l;

    invoke-interface {v0, p1}, Lcom/tencent/liteav/network/l;->onPullAudio(Lcom/tencent/liteav/basic/structs/a;)V

    goto :goto_0

    .line 221
    :cond_2
    iget-object v0, p0, Lcom/tencent/liteav/network/e$b;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method private b(Lcom/tencent/liteav/basic/structs/TXSNALPacket;)V
    .locals 5

    .line 301
    iget-object v0, p0, Lcom/tencent/liteav/network/e$b;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/network/e;

    if-eqz v0, :cond_0

    .line 302
    iget-wide v1, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->pts:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/network/e;->b(J)V

    .line 303
    :cond_0
    iget-wide v1, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->pts:J

    iget-wide v3, p0, Lcom/tencent/liteav/network/e$b;->f:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_5

    .line 304
    iget v1, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->nalType:I

    if-nez v1, :cond_1

    .line 305
    iget-wide v1, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->pts:J

    iput-wide v1, p0, Lcom/tencent/liteav/network/e$b;->g:J

    .line 307
    :cond_1
    iget-wide v1, p0, Lcom/tencent/liteav/network/e$b;->g:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_4

    .line 308
    iget-wide v1, p0, Lcom/tencent/liteav/network/e$b;->h:J

    cmp-long v1, v1, v3

    const-string v2, "TXCMultiStreamDownloader"

    if-lez v1, :cond_3

    .line 309
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SwitchStream] switch finish and stop old downloader. video ts:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/tencent/liteav/network/e$b;->g:J

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " audio ts:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/tencent/liteav/network/e$b;->h:J

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " stop ts:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/tencent/liteav/network/e$b;->f:J

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    .line 311
    invoke-virtual {v0}, Lcom/tencent/liteav/network/e;->b()V

    :cond_2
    const/4 p1, 0x0

    .line 313
    iput-object p1, p0, Lcom/tencent/liteav/network/e$b;->m:Lcom/tencent/liteav/network/l;

    .line 314
    iget-object v0, p0, Lcom/tencent/liteav/network/e$b;->k:Lcom/tencent/liteav/network/TXIStreamDownloader;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/network/TXIStreamDownloader;->setListener(Lcom/tencent/liteav/network/l;)V

    .line 315
    iget-object p1, p0, Lcom/tencent/liteav/network/e$b;->k:Lcom/tencent/liteav/network/TXIStreamDownloader;

    invoke-virtual {p1}, Lcom/tencent/liteav/network/TXIStreamDownloader;->stopDownload()V

    goto :goto_0

    .line 317
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SwitchStream] delay stop video end wait audio end video pts "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->pts:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/tencent/liteav/network/e$b;->f:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->nalType:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 322
    :cond_4
    iget-object v0, p0, Lcom/tencent/liteav/network/e$b;->m:Lcom/tencent/liteav/network/l;

    if-eqz v0, :cond_6

    .line 323
    invoke-interface {v0, p1}, Lcom/tencent/liteav/network/l;->onPullNAL(Lcom/tencent/liteav/basic/structs/TXSNALPacket;)V

    goto :goto_0

    .line 327
    :cond_5
    iget-object v0, p0, Lcom/tencent/liteav/network/e$b;->m:Lcom/tencent/liteav/network/l;

    if-eqz v0, :cond_6

    .line 328
    invoke-interface {v0, p1}, Lcom/tencent/liteav/network/l;->onPullNAL(Lcom/tencent/liteav/basic/structs/TXSNALPacket;)V

    :cond_6
    :goto_0
    return-void
.end method

.method private b(Lcom/tencent/liteav/basic/structs/a;)V
    .locals 4

    .line 226
    iget-wide v0, p0, Lcom/tencent/liteav/network/e$b;->h:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    return-void

    .line 228
    :cond_0
    iget-wide v0, p0, Lcom/tencent/liteav/network/e$b;->g:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    if-eqz p1, :cond_1

    iget-wide v0, p1, Lcom/tencent/liteav/basic/structs/a;->e:J

    iget-wide v2, p0, Lcom/tencent/liteav/network/e$b;->g:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 229
    iget-wide v0, p1, Lcom/tencent/liteav/basic/structs/a;->e:J

    iput-wide v0, p0, Lcom/tencent/liteav/network/e$b;->h:J

    return-void

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/network/e$b;->m:Lcom/tencent/liteav/network/l;

    if-eqz v0, :cond_2

    .line 234
    invoke-interface {v0, p1}, Lcom/tencent/liteav/network/l;->onPullAudio(Lcom/tencent/liteav/basic/structs/a;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 2

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SwitchStream] start switch. current video pts:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCMultiStreamDownloader"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 161
    iput v0, p0, Lcom/tencent/liteav/network/e$b;->d:I

    .line 162
    iput-wide p1, p0, Lcom/tencent/liteav/network/e$b;->b:J

    .line 163
    iget-object p1, p0, Lcom/tencent/liteav/network/e$b;->k:Lcom/tencent/liteav/network/TXIStreamDownloader;

    invoke-virtual {p1, p0}, Lcom/tencent/liteav/network/TXIStreamDownloader;->setListener(Lcom/tencent/liteav/network/l;)V

    .line 164
    iget-object p1, p0, Lcom/tencent/liteav/network/e$b;->k:Lcom/tencent/liteav/network/TXIStreamDownloader;

    invoke-virtual {p1, p0}, Lcom/tencent/liteav/network/TXIStreamDownloader;->setNotifyListener(Lcom/tencent/liteav/basic/c/b;)V

    return-void
.end method

.method public a(Lcom/tencent/liteav/network/l;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/tencent/liteav/network/e$b;->m:Lcom/tencent/liteav/network/l;

    return-void
.end method

.method public b(J)V
    .locals 4

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SwitchStream] stop switch. pts:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCMultiStreamDownloader"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 169
    iput-wide v0, p0, Lcom/tencent/liteav/network/e$b;->b:J

    .line 170
    iput-wide p1, p0, Lcom/tencent/liteav/network/e$b;->f:J

    .line 171
    iput-wide v0, p0, Lcom/tencent/liteav/network/e$b;->h:J

    .line 172
    iput-wide v0, p0, Lcom/tencent/liteav/network/e$b;->g:J

    .line 173
    iget-object p1, p0, Lcom/tencent/liteav/network/e$b;->k:Lcom/tencent/liteav/network/TXIStreamDownloader;

    if-eqz p1, :cond_0

    iget-wide v2, p0, Lcom/tencent/liteav/network/e$b;->f:J

    cmp-long p2, v2, v0

    if-nez p2, :cond_0

    .line 174
    invoke-virtual {p1}, Lcom/tencent/liteav/network/TXIStreamDownloader;->stopDownload()V

    const/4 p1, 0x0

    .line 175
    iput-object p1, p0, Lcom/tencent/liteav/network/e$b;->k:Lcom/tencent/liteav/network/TXIStreamDownloader;

    :cond_0
    return-void
.end method

.method public onNotifyEvent(ILandroid/os/Bundle;)V
    .locals 1

    const/16 p2, -0x8fd

    if-eq p1, p2, :cond_0

    const/16 p2, 0xbc2

    if-ne p1, p2, :cond_2

    .line 336
    :cond_0
    iget-object p1, p0, Lcom/tencent/liteav/network/e$b;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/liteav/network/e;

    if-eqz p1, :cond_1

    .line 337
    iget-object p2, p0, Lcom/tencent/liteav/network/e$b;->k:Lcom/tencent/liteav/network/TXIStreamDownloader;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/tencent/liteav/network/e;->a(Lcom/tencent/liteav/network/TXIStreamDownloader;Z)V

    .line 338
    :cond_1
    iget-object p1, p0, Lcom/tencent/liteav/network/e$b;->k:Lcom/tencent/liteav/network/TXIStreamDownloader;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/tencent/liteav/network/TXIStreamDownloader;->setNotifyListener(Lcom/tencent/liteav/basic/c/b;)V

    :cond_2
    return-void
.end method

.method public onPullAudio(Lcom/tencent/liteav/basic/structs/a;)V
    .locals 4

    .line 186
    iget-wide v0, p0, Lcom/tencent/liteav/network/e$b;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 187
    invoke-direct {p0, p1}, Lcom/tencent/liteav/network/e$b;->a(Lcom/tencent/liteav/basic/structs/a;)V

    goto :goto_0

    .line 188
    :cond_0
    iget-wide v0, p0, Lcom/tencent/liteav/network/e$b;->f:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 189
    invoke-direct {p0, p1}, Lcom/tencent/liteav/network/e$b;->b(Lcom/tencent/liteav/basic/structs/a;)V

    goto :goto_0

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/network/e$b;->m:Lcom/tencent/liteav/network/l;

    if-eqz v0, :cond_2

    .line 192
    invoke-interface {v0, p1}, Lcom/tencent/liteav/network/l;->onPullAudio(Lcom/tencent/liteav/basic/structs/a;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onPullNAL(Lcom/tencent/liteav/basic/structs/TXSNALPacket;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 201
    :cond_0
    iget-wide v0, p0, Lcom/tencent/liteav/network/e$b;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 202
    invoke-direct {p0, p1}, Lcom/tencent/liteav/network/e$b;->a(Lcom/tencent/liteav/basic/structs/TXSNALPacket;)V

    goto :goto_0

    .line 203
    :cond_1
    iget-wide v0, p0, Lcom/tencent/liteav/network/e$b;->f:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 204
    invoke-direct {p0, p1}, Lcom/tencent/liteav/network/e$b;->b(Lcom/tencent/liteav/basic/structs/TXSNALPacket;)V

    goto :goto_0

    .line 206
    :cond_2
    iget-object v0, p0, Lcom/tencent/liteav/network/e$b;->m:Lcom/tencent/liteav/network/l;

    if-eqz v0, :cond_3

    .line 207
    invoke-interface {v0, p1}, Lcom/tencent/liteav/network/l;->onPullNAL(Lcom/tencent/liteav/basic/structs/TXSNALPacket;)V

    :cond_3
    :goto_0
    return-void
.end method
