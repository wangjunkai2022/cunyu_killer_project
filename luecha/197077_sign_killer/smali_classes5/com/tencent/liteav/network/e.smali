.class public Lcom/tencent/liteav/network/e;
.super Ljava/lang/Object;
.source "TXCMultiStreamDownloader.java"

# interfaces
.implements Lcom/tencent/liteav/network/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/network/e$b;,
        Lcom/tencent/liteav/network/e$a;
    }
.end annotation


# instance fields
.field private a:Lcom/tencent/liteav/network/l;

.field private b:Lcom/tencent/liteav/network/e$b;

.field private c:J

.field private d:J

.field private e:Lcom/tencent/liteav/network/e$b;

.field private f:Lcom/tencent/liteav/network/e$a;

.field private g:J

.field private h:J


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/network/e$a;)V
    .locals 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/tencent/liteav/network/e;->a:Lcom/tencent/liteav/network/l;

    .line 26
    iput-object v0, p0, Lcom/tencent/liteav/network/e;->b:Lcom/tencent/liteav/network/e$b;

    const-wide/16 v1, 0x0

    .line 27
    iput-wide v1, p0, Lcom/tencent/liteav/network/e;->c:J

    .line 28
    iput-wide v1, p0, Lcom/tencent/liteav/network/e;->d:J

    .line 29
    iput-object v0, p0, Lcom/tencent/liteav/network/e;->e:Lcom/tencent/liteav/network/e$b;

    .line 103
    iput-wide v1, p0, Lcom/tencent/liteav/network/e;->g:J

    .line 108
    iput-wide v1, p0, Lcom/tencent/liteav/network/e;->h:J

    .line 41
    iput-object p1, p0, Lcom/tencent/liteav/network/e;->f:Lcom/tencent/liteav/network/e$a;

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/network/e;)J
    .locals 2

    .line 21
    iget-wide v0, p0, Lcom/tencent/liteav/network/e;->d:J

    return-wide v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/tencent/liteav/network/e;->b:Lcom/tencent/liteav/network/e$b;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/network/e$b;->b(J)V

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/network/e;->e:Lcom/tencent/liteav/network/e$b;

    if-eqz v0, :cond_1

    .line 49
    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/network/e$b;->b(J)V

    :cond_1
    return-void
.end method

.method a(J)V
    .locals 0

    .line 105
    iput-wide p1, p0, Lcom/tencent/liteav/network/e;->g:J

    return-void
.end method

.method public a(Lcom/tencent/liteav/network/TXIStreamDownloader;Lcom/tencent/liteav/network/TXIStreamDownloader;JJLjava/lang/String;Lcom/tencent/liteav/basic/b/a;)V
    .locals 7

    .line 58
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "[SwitchStream] old downloader:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " new downloader:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "TXCMultiStreamDownloader"

    invoke-static {p4, p3}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1}, Lcom/tencent/liteav/network/TXIStreamDownloader;->getCurrentTS()J

    move-result-wide p3

    iput-wide p3, p0, Lcom/tencent/liteav/network/e;->c:J

    .line 60
    invoke-virtual {p1}, Lcom/tencent/liteav/network/TXIStreamDownloader;->getLastIFrameTS()J

    move-result-wide p3

    iput-wide p3, p0, Lcom/tencent/liteav/network/e;->d:J

    .line 61
    new-instance p3, Lcom/tencent/liteav/network/e$b;

    invoke-direct {p3, p1, p0}, Lcom/tencent/liteav/network/e$b;-><init>(Lcom/tencent/liteav/network/TXIStreamDownloader;Lcom/tencent/liteav/network/e;)V

    iput-object p3, p0, Lcom/tencent/liteav/network/e;->b:Lcom/tencent/liteav/network/e$b;

    .line 62
    iget-object p3, p0, Lcom/tencent/liteav/network/e;->b:Lcom/tencent/liteav/network/e$b;

    invoke-virtual {p3, p0}, Lcom/tencent/liteav/network/e$b;->a(Lcom/tencent/liteav/network/l;)V

    .line 63
    move-object p3, p1

    check-cast p3, Lcom/tencent/liteav/network/TXCFLVDownloader;

    const/4 p4, 0x1

    invoke-virtual {p3, p4}, Lcom/tencent/liteav/network/TXCFLVDownloader;->recvData(Z)V

    .line 65
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 66
    new-instance p3, Lcom/tencent/liteav/network/h;

    const/4 p5, 0x0

    invoke-direct {p3, p7, p5}, Lcom/tencent/liteav/network/h;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1, p3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-virtual {p2, p7}, Lcom/tencent/liteav/network/TXIStreamDownloader;->setOriginUrl(Ljava/lang/String;)V

    .line 68
    move-object p3, p2

    check-cast p3, Lcom/tencent/liteav/network/TXCFLVDownloader;

    invoke-virtual {p3, p4}, Lcom/tencent/liteav/network/TXCFLVDownloader;->recvData(Z)V

    .line 69
    iget-boolean v4, p1, Lcom/tencent/liteav/network/TXIStreamDownloader;->mEnableMessage:Z

    iget-boolean v5, p1, Lcom/tencent/liteav/network/TXIStreamDownloader;->mEnableMetaData:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p2

    move-object v6, p8

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/liteav/network/TXIStreamDownloader;->startDownload(Ljava/util/Vector;ZZZZLcom/tencent/liteav/basic/b/a;)V

    .line 70
    new-instance p1, Lcom/tencent/liteav/network/e$b;

    invoke-direct {p1, p2, p0}, Lcom/tencent/liteav/network/e$b;-><init>(Lcom/tencent/liteav/network/TXIStreamDownloader;Lcom/tencent/liteav/network/e;)V

    iput-object p1, p0, Lcom/tencent/liteav/network/e;->e:Lcom/tencent/liteav/network/e$b;

    .line 71
    iget-object p1, p0, Lcom/tencent/liteav/network/e;->e:Lcom/tencent/liteav/network/e$b;

    iget-wide p2, p0, Lcom/tencent/liteav/network/e;->c:J

    invoke-virtual {p1, p2, p3}, Lcom/tencent/liteav/network/e$b;->a(J)V

    return-void
.end method

.method a(Lcom/tencent/liteav/network/TXIStreamDownloader;Z)V
    .locals 2

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SwitchStream] switch stream finish. result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCMultiStreamDownloader"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/tencent/liteav/network/e;->f:Lcom/tencent/liteav/network/e$a;

    if-eqz v0, :cond_0

    .line 90
    invoke-interface {v0, p1, p2}, Lcom/tencent/liteav/network/e$a;->onSwitchFinish(Lcom/tencent/liteav/network/TXIStreamDownloader;Z)V

    :cond_0
    return-void
.end method

.method public a(Lcom/tencent/liteav/network/l;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/tencent/liteav/network/e;->a:Lcom/tencent/liteav/network/l;

    return-void
.end method

.method public b()V
    .locals 6

    .line 76
    iget-object v0, p0, Lcom/tencent/liteav/network/e;->b:Lcom/tencent/liteav/network/e$b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/network/e$b;->a(Lcom/tencent/liteav/network/l;)V

    .line 78
    iget-object v0, p0, Lcom/tencent/liteav/network/e;->e:Lcom/tencent/liteav/network/e$b;

    invoke-virtual {v0, p0}, Lcom/tencent/liteav/network/e$b;->a(Lcom/tencent/liteav/network/l;)V

    .line 80
    iget-object v0, p0, Lcom/tencent/liteav/network/e;->e:Lcom/tencent/liteav/network/e$b;

    iput-object v0, p0, Lcom/tencent/liteav/network/e;->b:Lcom/tencent/liteav/network/e$b;

    .line 81
    iput-object v1, p0, Lcom/tencent/liteav/network/e;->e:Lcom/tencent/liteav/network/e$b;

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SwitchStream] end at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/liteav/network/e;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " stop ts "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/liteav/network/e;->h:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " start ts "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/liteav/network/e;->g:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " diff ts "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/liteav/network/e;->h:J

    iget-wide v3, p0, Lcom/tencent/liteav/network/e;->g:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    sub-long/2addr v1, v3

    goto :goto_0

    :cond_0
    sub-long v1, v3, v1

    :goto_0
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCMultiStreamDownloader"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method b(J)V
    .locals 0

    .line 110
    iput-wide p1, p0, Lcom/tencent/liteav/network/e;->h:J

    return-void
.end method

.method c()J
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/tencent/liteav/network/e;->b:Lcom/tencent/liteav/network/e$b;

    if-eqz v0, :cond_0

    .line 97
    iget-wide v1, p0, Lcom/tencent/liteav/network/e;->c:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/network/e$b;->b(J)V

    .line 99
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SwitchStream] stop original downloader, when video ts is"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/liteav/network/e;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCMultiStreamDownloader"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-wide v0, p0, Lcom/tencent/liteav/network/e;->c:J

    return-wide v0
.end method

.method public onPullAudio(Lcom/tencent/liteav/basic/structs/a;)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/tencent/liteav/network/e;->a:Lcom/tencent/liteav/network/l;

    if-eqz v0, :cond_0

    .line 117
    invoke-interface {v0, p1}, Lcom/tencent/liteav/network/l;->onPullAudio(Lcom/tencent/liteav/basic/structs/a;)V

    :cond_0
    return-void
.end method

.method public onPullNAL(Lcom/tencent/liteav/basic/structs/TXSNALPacket;)V
    .locals 2

    .line 123
    iget-wide v0, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->pts:J

    iput-wide v0, p0, Lcom/tencent/liteav/network/e;->c:J

    .line 124
    iget v0, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->nalType:I

    if-nez v0, :cond_0

    .line 125
    iget-wide v0, p1, Lcom/tencent/liteav/basic/structs/TXSNALPacket;->pts:J

    iput-wide v0, p0, Lcom/tencent/liteav/network/e;->d:J

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/network/e;->a:Lcom/tencent/liteav/network/l;

    if-eqz v0, :cond_1

    .line 129
    invoke-interface {v0, p1}, Lcom/tencent/liteav/network/l;->onPullNAL(Lcom/tencent/liteav/basic/structs/TXSNALPacket;)V

    :cond_1
    return-void
.end method
