.class Lcom/tencent/liteav/network/TXCRTMPDownloader$a;
.super Ljava/lang/Thread;
.source "TXCRTMPDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/network/TXCRTMPDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/network/TXCRTMPDownloader;

.field private b:J

.field private c:Ljava/lang/String;

.field private d:Z


# direct methods
.method constructor <init>(Lcom/tencent/liteav/network/TXCRTMPDownloader;Ljava/lang/String;Z)V
    .locals 2

    .line 60
    iput-object p1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader$a;->a:Lcom/tencent/liteav/network/TXCRTMPDownloader;

    const-string p1, "RTMPDownLoad"

    .line 61
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 56
    iput-wide v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader$a;->b:J

    .line 62
    iput-object p2, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader$a;->c:Ljava/lang/String;

    .line 63
    iput-boolean p3, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader$a;->d:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 81
    monitor-enter p0

    .line 82
    :try_start_0
    iget-wide v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader$a;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader$a;->a:Lcom/tencent/liteav/network/TXCRTMPDownloader;

    iget-wide v1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader$a;->b:J

    invoke-static {v0, v1, v2}, Lcom/tencent/liteav/network/TXCRTMPDownloader;->access$300(Lcom/tencent/liteav/network/TXCRTMPDownloader;J)V

    .line 85
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(I)V
    .locals 4

    .line 107
    monitor-enter p0

    .line 108
    :try_start_0
    iget-wide v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader$a;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader$a;->a:Lcom/tencent/liteav/network/TXCRTMPDownloader;

    iget-wide v1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader$a;->b:J

    invoke-static {v0, v1, v2, p1}, Lcom/tencent/liteav/network/TXCRTMPDownloader;->access$600(Lcom/tencent/liteav/network/TXCRTMPDownloader;JI)V

    .line 111
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .line 99
    monitor-enter p0

    .line 100
    :try_start_0
    iget-wide v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader$a;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader$a;->a:Lcom/tencent/liteav/network/TXCRTMPDownloader;

    iget-wide v1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader$a;->b:J

    invoke-static {v0, v1, v2, p1}, Lcom/tencent/liteav/network/TXCRTMPDownloader;->access$500(Lcom/tencent/liteav/network/TXCRTMPDownloader;JLjava/lang/String;)V

    .line 103
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b()Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;
    .locals 4

    .line 90
    monitor-enter p0

    .line 91
    :try_start_0
    iget-wide v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader$a;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader$a;->a:Lcom/tencent/liteav/network/TXCRTMPDownloader;

    iget-wide v1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader$a;->b:J

    invoke-static {v0, v1, v2}, Lcom/tencent/liteav/network/TXCRTMPDownloader;->access$400(Lcom/tencent/liteav/network/TXCRTMPDownloader;J)Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 94
    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 7

    .line 68
    monitor-enter p0

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader$a;->a:Lcom/tencent/liteav/network/TXCRTMPDownloader;

    iget-object v1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader$a;->a:Lcom/tencent/liteav/network/TXCRTMPDownloader;

    iget-object v1, v1, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mUserID:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader$a;->a:Lcom/tencent/liteav/network/TXCRTMPDownloader;

    iget-object v2, v2, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mOriginUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader$a;->c:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader$a;->d:Z

    iget-object v5, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader$a;->a:Lcom/tencent/liteav/network/TXCRTMPDownloader;

    iget-boolean v5, v5, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mEnableMessage:Z

    iget-object v6, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader$a;->a:Lcom/tencent/liteav/network/TXCRTMPDownloader;

    iget-boolean v6, v6, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mEnableMetaData:Z

    invoke-static/range {v0 .. v6}, Lcom/tencent/liteav/network/TXCRTMPDownloader;->access$000(Lcom/tencent/liteav/network/TXCRTMPDownloader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader$a;->b:J

    .line 70
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 71
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader$a;->a:Lcom/tencent/liteav/network/TXCRTMPDownloader;

    iget v0, v0, Lcom/tencent/liteav/network/TXCRTMPDownloader;->mPayloadType:I

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/network/TXCRTMPDownloader$a;->a(I)V

    .line 72
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader$a;->a:Lcom/tencent/liteav/network/TXCRTMPDownloader;

    iget-wide v1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader$a;->b:J

    invoke-static {v0, v1, v2}, Lcom/tencent/liteav/network/TXCRTMPDownloader;->access$100(Lcom/tencent/liteav/network/TXCRTMPDownloader;J)V

    .line 74
    monitor-enter p0

    .line 75
    :try_start_1
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader$a;->a:Lcom/tencent/liteav/network/TXCRTMPDownloader;

    iget-wide v1, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader$a;->b:J

    invoke-static {v0, v1, v2}, Lcom/tencent/liteav/network/TXCRTMPDownloader;->access$200(Lcom/tencent/liteav/network/TXCRTMPDownloader;J)V

    const-wide/16 v0, 0x0

    .line 76
    iput-wide v0, p0, Lcom/tencent/liteav/network/TXCRTMPDownloader$a;->b:J

    .line 77
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 70
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method
