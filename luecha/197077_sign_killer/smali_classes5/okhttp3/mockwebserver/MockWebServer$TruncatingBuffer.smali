.class Lokhttp3/mockwebserver/MockWebServer$TruncatingBuffer;
.super Ljava/lang/Object;
.source "MockWebServer.java"

# interfaces
.implements Lokio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/mockwebserver/MockWebServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TruncatingBuffer"
.end annotation


# instance fields
.field private final buffer:Lokio/Buffer;

.field private receivedByteCount:J

.field private remainingByteCount:J


# direct methods
.method constructor <init>(J)V
    .locals 1

    .line 859
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 855
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lokhttp3/mockwebserver/MockWebServer$TruncatingBuffer;->buffer:Lokio/Buffer;

    .line 860
    iput-wide p1, p0, Lokhttp3/mockwebserver/MockWebServer$TruncatingBuffer;->remainingByteCount:J

    return-void
.end method

.method static synthetic access$2000(Lokhttp3/mockwebserver/MockWebServer$TruncatingBuffer;)J
    .locals 2

    .line 854
    iget-wide v0, p0, Lokhttp3/mockwebserver/MockWebServer$TruncatingBuffer;->receivedByteCount:J

    return-wide v0
.end method

.method static synthetic access$2100(Lokhttp3/mockwebserver/MockWebServer$TruncatingBuffer;)Lokio/Buffer;
    .locals 0

    .line 854
    iget-object p0, p0, Lokhttp3/mockwebserver/MockWebServer$TruncatingBuffer;->buffer:Lokio/Buffer;

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    .line 880
    sget-object v0, Lokio/Timeout;->NONE:Lokio/Timeout;

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 864
    iget-wide v0, p0, Lokhttp3/mockwebserver/MockWebServer$TruncatingBuffer;->remainingByteCount:J

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 866
    iget-object v4, p0, Lokhttp3/mockwebserver/MockWebServer$TruncatingBuffer;->buffer:Lokio/Buffer;

    invoke-virtual {p1, v4, v0, v1}, Lokio/Buffer;->read(Lokio/Buffer;J)J

    :cond_0
    sub-long v4, p2, v0

    cmp-long v2, v4, v2

    if-lez v2, :cond_1

    .line 870
    invoke-virtual {p1, v4, v5}, Lokio/Buffer;->skip(J)V

    .line 872
    :cond_1
    iget-wide v2, p0, Lokhttp3/mockwebserver/MockWebServer$TruncatingBuffer;->remainingByteCount:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lokhttp3/mockwebserver/MockWebServer$TruncatingBuffer;->remainingByteCount:J

    .line 873
    iget-wide v0, p0, Lokhttp3/mockwebserver/MockWebServer$TruncatingBuffer;->receivedByteCount:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lokhttp3/mockwebserver/MockWebServer$TruncatingBuffer;->receivedByteCount:J

    return-void
.end method
