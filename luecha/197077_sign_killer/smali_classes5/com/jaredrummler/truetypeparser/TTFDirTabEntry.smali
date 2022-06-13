.class public Lcom/jaredrummler/truetypeparser/TTFDirTabEntry;
.super Ljava/lang/Object;
.source "TTFDirTabEntry.java"


# instance fields
.field private length:J

.field private offset:J

.field private final tag:[B


# direct methods
.method constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 30
    iput-object v0, p0, Lcom/jaredrummler/truetypeparser/TTFDirTabEntry;->tag:[B

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 30
    iput-object v0, p0, Lcom/jaredrummler/truetypeparser/TTFDirTabEntry;->tag:[B

    .line 38
    iput-wide p1, p0, Lcom/jaredrummler/truetypeparser/TTFDirTabEntry;->offset:J

    .line 39
    iput-wide p3, p0, Lcom/jaredrummler/truetypeparser/TTFDirTabEntry;->length:J

    return-void
.end method


# virtual methods
.method public getLength()J
    .locals 2

    .line 48
    iget-wide v0, p0, Lcom/jaredrummler/truetypeparser/TTFDirTabEntry;->length:J

    return-wide v0
.end method

.method public getOffset()J
    .locals 2

    .line 57
    iget-wide v0, p0, Lcom/jaredrummler/truetypeparser/TTFDirTabEntry;->offset:J

    return-wide v0
.end method

.method public getTag()[B
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/jaredrummler/truetypeparser/TTFDirTabEntry;->tag:[B

    return-object v0
.end method

.method public getTagString()Ljava/lang/String;
    .locals 3

    .line 76
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/jaredrummler/truetypeparser/TTFDirTabEntry;->tag:[B

    const-string v2, "ISO-8859-1"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 78
    :catch_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/jaredrummler/truetypeparser/FontFileReader;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/jaredrummler/truetypeparser/TTFDirTabEntry;->tag:[B

    invoke-virtual {p1}, Lcom/jaredrummler/truetypeparser/FontFileReader;->readTTFByte()B

    move-result v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 93
    iget-object v0, p0, Lcom/jaredrummler/truetypeparser/TTFDirTabEntry;->tag:[B

    invoke-virtual {p1}, Lcom/jaredrummler/truetypeparser/FontFileReader;->readTTFByte()B

    move-result v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 94
    iget-object v0, p0, Lcom/jaredrummler/truetypeparser/TTFDirTabEntry;->tag:[B

    invoke-virtual {p1}, Lcom/jaredrummler/truetypeparser/FontFileReader;->readTTFByte()B

    move-result v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 95
    iget-object v0, p0, Lcom/jaredrummler/truetypeparser/TTFDirTabEntry;->tag:[B

    invoke-virtual {p1}, Lcom/jaredrummler/truetypeparser/FontFileReader;->readTTFByte()B

    move-result v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    const-wide/16 v0, 0x4

    .line 96
    invoke-virtual {p1, v0, v1}, Lcom/jaredrummler/truetypeparser/FontFileReader;->skip(J)V

    .line 97
    invoke-virtual {p1}, Lcom/jaredrummler/truetypeparser/FontFileReader;->readTTFULong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jaredrummler/truetypeparser/TTFDirTabEntry;->offset:J

    .line 98
    invoke-virtual {p1}, Lcom/jaredrummler/truetypeparser/FontFileReader;->readTTFULong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jaredrummler/truetypeparser/TTFDirTabEntry;->length:J

    .line 99
    new-instance p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/jaredrummler/truetypeparser/TTFDirTabEntry;->tag:[B

    const-string v1, "ISO-8859-1"

    invoke-direct {p1, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object p1
.end method
