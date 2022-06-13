.class public Lcom/jaredrummler/truetypeparser/FontFileReader;
.super Ljava/lang/Object;
.source "FontFileReader.java"


# instance fields
.field private current:I

.field private file:[B

.field private fsize:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-direct {p0, p1}, Lcom/jaredrummler/truetypeparser/FontFileReader;->init(Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 59
    :try_start_0
    invoke-direct {p0, v0}, Lcom/jaredrummler/truetypeparser/FontFileReader;->init(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw p1
.end method

.method private init(Ljava/io/InputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x1000

    new-array v1, v1, [B

    .line 104
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    .line 105
    invoke-virtual {v0, v1, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jaredrummler/truetypeparser/FontFileReader;->file:[B

    .line 108
    iget-object p1, p0, Lcom/jaredrummler/truetypeparser/FontFileReader;->file:[B

    array-length p1, p1

    iput p1, p0, Lcom/jaredrummler/truetypeparser/FontFileReader;->fsize:I

    .line 109
    iput v4, p0, Lcom/jaredrummler/truetypeparser/FontFileReader;->current:I

    return-void
.end method

.method private read()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    iget v0, p0, Lcom/jaredrummler/truetypeparser/FontFileReader;->current:I

    iget v1, p0, Lcom/jaredrummler/truetypeparser/FontFileReader;->fsize:I

    if-ge v0, v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/jaredrummler/truetypeparser/FontFileReader;->file:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/jaredrummler/truetypeparser/FontFileReader;->current:I

    aget-byte v0, v1, v0

    return v0

    .line 121
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reached EOF, file size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/jaredrummler/truetypeparser/FontFileReader;->fsize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getAllBytes()[B
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/jaredrummler/truetypeparser/FontFileReader;->file:[B

    return-object v0
.end method

.method public getCurrentPos()I
    .locals 1

    .line 80
    iget v0, p0, Lcom/jaredrummler/truetypeparser/FontFileReader;->current:I

    return v0
.end method

.method public getFileSize()I
    .locals 1

    .line 89
    iget v0, p0, Lcom/jaredrummler/truetypeparser/FontFileReader;->fsize:I

    return v0
.end method

.method public readTTFByte()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    invoke-direct {p0}, Lcom/jaredrummler/truetypeparser/FontFileReader;->read()B

    move-result v0

    return v0
.end method

.method public readTTFLong()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    invoke-virtual {p0}, Lcom/jaredrummler/truetypeparser/FontFileReader;->readTTFUByte()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x8

    shl-long/2addr v0, v2

    .line 146
    invoke-virtual {p0}, Lcom/jaredrummler/truetypeparser/FontFileReader;->readTTFUByte()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v0, v3

    shl-long/2addr v0, v2

    .line 147
    invoke-virtual {p0}, Lcom/jaredrummler/truetypeparser/FontFileReader;->readTTFUByte()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v0, v3

    shl-long/2addr v0, v2

    .line 148
    invoke-virtual {p0}, Lcom/jaredrummler/truetypeparser/FontFileReader;->readTTFUByte()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public readTTFString(I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    iget v0, p0, Lcom/jaredrummler/truetypeparser/FontFileReader;->current:I

    add-int v1, p1, v0

    iget v2, p0, Lcom/jaredrummler/truetypeparser/FontFileReader;->fsize:I

    if-gt v1, v2, :cond_1

    .line 166
    new-array v1, p1, [B

    .line 167
    iget-object v2, p0, Lcom/jaredrummler/truetypeparser/FontFileReader;->file:[B

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    iget v0, p0, Lcom/jaredrummler/truetypeparser/FontFileReader;->current:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/jaredrummler/truetypeparser/FontFileReader;->current:I

    .line 170
    array-length p1, v1

    if-lez p1, :cond_0

    aget-byte p1, v1, v3

    if-nez p1, :cond_0

    const-string p1, "UTF-16BE"

    goto :goto_0

    :cond_0
    const-string p1, "ISO-8859-1"

    .line 175
    :goto_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0

    .line 163
    :cond_1
    new-instance p1, Ljava/io/EOFException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reached EOF, file size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jaredrummler/truetypeparser/FontFileReader;->fsize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readTTFString(II)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    iget p2, p0, Lcom/jaredrummler/truetypeparser/FontFileReader;->current:I

    add-int v0, p1, p2

    iget v1, p0, Lcom/jaredrummler/truetypeparser/FontFileReader;->fsize:I

    if-gt v0, v1, :cond_0

    .line 194
    new-array v0, p1, [B

    .line 195
    iget-object v1, p0, Lcom/jaredrummler/truetypeparser/FontFileReader;->file:[B

    const/4 v2, 0x0

    invoke-static {v1, p2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 196
    iget p2, p0, Lcom/jaredrummler/truetypeparser/FontFileReader;->current:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/jaredrummler/truetypeparser/FontFileReader;->current:I

    .line 199
    new-instance p1, Ljava/lang/String;

    const-string p2, "UTF-16BE"

    invoke-direct {p1, v0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object p1

    .line 191
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Reached EOF, file size="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/jaredrummler/truetypeparser/FontFileReader;->fsize:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readTTFUByte()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    invoke-direct {p0}, Lcom/jaredrummler/truetypeparser/FontFileReader;->read()B

    move-result v0

    if-gez v0, :cond_0

    add-int/lit16 v0, v0, 0x100

    :cond_0
    return v0
.end method

.method public readTTFULong()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    invoke-virtual {p0}, Lcom/jaredrummler/truetypeparser/FontFileReader;->readTTFUByte()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x8

    shl-long/2addr v0, v2

    .line 228
    invoke-virtual {p0}, Lcom/jaredrummler/truetypeparser/FontFileReader;->readTTFUByte()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v0, v3

    shl-long/2addr v0, v2

    .line 229
    invoke-virtual {p0}, Lcom/jaredrummler/truetypeparser/FontFileReader;->readTTFUByte()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v0, v3

    shl-long/2addr v0, v2

    .line 230
    invoke-virtual {p0}, Lcom/jaredrummler/truetypeparser/FontFileReader;->readTTFUByte()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public readTTFUShort()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    invoke-virtual {p0}, Lcom/jaredrummler/truetypeparser/FontFileReader;->readTTFUByte()I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Lcom/jaredrummler/truetypeparser/FontFileReader;->readTTFUByte()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public seekSet(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    iget v0, p0, Lcom/jaredrummler/truetypeparser/FontFileReader;->fsize:I

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    long-to-int p1, p1

    .line 258
    iput p1, p0, Lcom/jaredrummler/truetypeparser/FontFileReader;->current:I

    return-void

    .line 256
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reached EOF, file size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/jaredrummler/truetypeparser/FontFileReader;->fsize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skip(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 270
    iget v0, p0, Lcom/jaredrummler/truetypeparser/FontFileReader;->current:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/jaredrummler/truetypeparser/FontFileReader;->seekSet(J)V

    return-void
.end method
