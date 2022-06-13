.class public Lcom/jaredrummler/truetypeparser/TTFFile;
.super Ljava/lang/Object;
.source "TTFFile.java"


# instance fields
.field private dirTabs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/jaredrummler/truetypeparser/TTFTableName;",
            "Lcom/jaredrummler/truetypeparser/TTFDirTabEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final familyNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fontFile:Lcom/jaredrummler/truetypeparser/FontFileReader;

.field private fullName:Ljava/lang/String;

.field private notice:Ljava/lang/String;

.field private postScriptName:Ljava/lang/String;

.field private subFamilyName:Ljava/lang/String;

.field private weightClass:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->familyNames:Ljava/util/Set;

    const-string v0, ""

    .line 70
    iput-object v0, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->postScriptName:Ljava/lang/String;

    .line 71
    iput-object v0, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->fullName:Ljava/lang/String;

    .line 72
    iput-object v0, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->notice:Ljava/lang/String;

    .line 73
    iput-object v0, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->subFamilyName:Ljava/lang/String;

    return-void
.end method

.method public static open(Ljava/io/File;)Lcom/jaredrummler/truetypeparser/TTFFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lcom/jaredrummler/truetypeparser/TTFFile;->open(Ljava/io/InputStream;)Lcom/jaredrummler/truetypeparser/TTFFile;

    move-result-object p0

    return-object p0
.end method

.method public static open(Ljava/io/InputStream;)Lcom/jaredrummler/truetypeparser/TTFFile;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    new-instance v0, Lcom/jaredrummler/truetypeparser/TTFFile;

    invoke-direct {v0}, Lcom/jaredrummler/truetypeparser/TTFFile;-><init>()V

    .line 61
    new-instance v1, Lcom/jaredrummler/truetypeparser/FontFileReader;

    invoke-direct {v1, p0}, Lcom/jaredrummler/truetypeparser/FontFileReader;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v1}, Lcom/jaredrummler/truetypeparser/TTFFile;->readFont(Lcom/jaredrummler/truetypeparser/FontFileReader;)V

    return-object v0
.end method

.method private readDirTabs()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->fontFile:Lcom/jaredrummler/truetypeparser/FontFileReader;

    invoke-virtual {v0}, Lcom/jaredrummler/truetypeparser/FontFileReader;->readTTFLong()I

    .line 138
    iget-object v0, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->fontFile:Lcom/jaredrummler/truetypeparser/FontFileReader;

    invoke-virtual {v0}, Lcom/jaredrummler/truetypeparser/FontFileReader;->readTTFUShort()I

    move-result v0

    .line 139
    iget-object v1, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->fontFile:Lcom/jaredrummler/truetypeparser/FontFileReader;

    const-wide/16 v2, 0x6

    invoke-virtual {v1, v2, v3}, Lcom/jaredrummler/truetypeparser/FontFileReader;->skip(J)V

    .line 141
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->dirTabs:Ljava/util/Map;

    .line 142
    new-array v1, v0, [Lcom/jaredrummler/truetypeparser/TTFDirTabEntry;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 145
    new-instance v3, Lcom/jaredrummler/truetypeparser/TTFDirTabEntry;

    invoke-direct {v3}, Lcom/jaredrummler/truetypeparser/TTFDirTabEntry;-><init>()V

    aput-object v3, v1, v2

    .line 146
    aget-object v3, v1, v2

    iget-object v4, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->fontFile:Lcom/jaredrummler/truetypeparser/FontFileReader;

    invoke-virtual {v3, v4}, Lcom/jaredrummler/truetypeparser/TTFDirTabEntry;->read(Lcom/jaredrummler/truetypeparser/FontFileReader;)Ljava/lang/String;

    move-result-object v3

    .line 147
    iget-object v4, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->dirTabs:Ljava/util/Map;

    invoke-static {v3}, Lcom/jaredrummler/truetypeparser/TTFTableName;->getValue(Ljava/lang/String;)Lcom/jaredrummler/truetypeparser/TTFTableName;

    move-result-object v3

    aget-object v5, v1, v2

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->dirTabs:Ljava/util/Map;

    sget-object v1, Lcom/jaredrummler/truetypeparser/TTFTableName;->TABLE_DIRECTORY:Lcom/jaredrummler/truetypeparser/TTFTableName;

    new-instance v2, Lcom/jaredrummler/truetypeparser/TTFDirTabEntry;

    const-wide/16 v3, 0x0

    iget-object v5, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->fontFile:Lcom/jaredrummler/truetypeparser/FontFileReader;

    invoke-virtual {v5}, Lcom/jaredrummler/truetypeparser/FontFileReader;->getCurrentPos()I

    move-result v5

    int-to-long v5, v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/jaredrummler/truetypeparser/TTFDirTabEntry;-><init>(JJ)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private readName()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->fontFile:Lcom/jaredrummler/truetypeparser/FontFileReader;

    sget-object v1, Lcom/jaredrummler/truetypeparser/TTFTableName;->NAME:Lcom/jaredrummler/truetypeparser/TTFTableName;

    const-wide/16 v2, 0x2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/jaredrummler/truetypeparser/TTFFile;->seekTab(Lcom/jaredrummler/truetypeparser/FontFileReader;Lcom/jaredrummler/truetypeparser/TTFTableName;J)Z

    .line 183
    iget-object v0, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->fontFile:Lcom/jaredrummler/truetypeparser/FontFileReader;

    invoke-virtual {v0}, Lcom/jaredrummler/truetypeparser/FontFileReader;->getCurrentPos()I

    move-result v0

    .line 184
    iget-object v1, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->fontFile:Lcom/jaredrummler/truetypeparser/FontFileReader;

    invoke-virtual {v1}, Lcom/jaredrummler/truetypeparser/FontFileReader;->readTTFUShort()I

    move-result v1

    .line 185
    iget-object v2, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->fontFile:Lcom/jaredrummler/truetypeparser/FontFileReader;

    invoke-virtual {v2}, Lcom/jaredrummler/truetypeparser/FontFileReader;->readTTFUShort()I

    move-result v2

    add-int/2addr v2, v0

    const/4 v3, 0x2

    sub-int/2addr v2, v3

    const/4 v4, 0x4

    add-int/2addr v0, v4

    :goto_0
    add-int/lit8 v5, v1, -0x1

    if-lez v1, :cond_a

    .line 189
    iget-object v1, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->fontFile:Lcom/jaredrummler/truetypeparser/FontFileReader;

    int-to-long v6, v0

    invoke-virtual {v1, v6, v7}, Lcom/jaredrummler/truetypeparser/FontFileReader;->seekSet(J)V

    .line 190
    iget-object v1, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->fontFile:Lcom/jaredrummler/truetypeparser/FontFileReader;

    invoke-virtual {v1}, Lcom/jaredrummler/truetypeparser/FontFileReader;->readTTFUShort()I

    move-result v1

    .line 191
    iget-object v6, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->fontFile:Lcom/jaredrummler/truetypeparser/FontFileReader;

    invoke-virtual {v6}, Lcom/jaredrummler/truetypeparser/FontFileReader;->readTTFUShort()I

    move-result v6

    .line 192
    iget-object v7, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->fontFile:Lcom/jaredrummler/truetypeparser/FontFileReader;

    invoke-virtual {v7}, Lcom/jaredrummler/truetypeparser/FontFileReader;->readTTFUShort()I

    move-result v7

    .line 194
    iget-object v8, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->fontFile:Lcom/jaredrummler/truetypeparser/FontFileReader;

    invoke-virtual {v8}, Lcom/jaredrummler/truetypeparser/FontFileReader;->readTTFUShort()I

    move-result v8

    .line 195
    iget-object v9, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->fontFile:Lcom/jaredrummler/truetypeparser/FontFileReader;

    invoke-virtual {v9}, Lcom/jaredrummler/truetypeparser/FontFileReader;->readTTFUShort()I

    move-result v9

    const/4 v10, 0x3

    const/4 v11, 0x1

    if-eq v1, v11, :cond_0

    if-ne v1, v10, :cond_9

    :cond_0
    if-eqz v6, :cond_1

    if-ne v6, v11, :cond_9

    .line 198
    :cond_1
    iget-object v12, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->fontFile:Lcom/jaredrummler/truetypeparser/FontFileReader;

    invoke-virtual {v12}, Lcom/jaredrummler/truetypeparser/FontFileReader;->readTTFUShort()I

    move-result v13

    add-int/2addr v13, v2

    int-to-long v13, v13

    invoke-virtual {v12, v13, v14}, Lcom/jaredrummler/truetypeparser/FontFileReader;->seekSet(J)V

    if-ne v1, v10, :cond_2

    .line 201
    iget-object v12, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->fontFile:Lcom/jaredrummler/truetypeparser/FontFileReader;

    invoke-virtual {v12, v9, v6}, Lcom/jaredrummler/truetypeparser/FontFileReader;->readTTFString(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 203
    :cond_2
    iget-object v6, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->fontFile:Lcom/jaredrummler/truetypeparser/FontFileReader;

    invoke-virtual {v6, v9}, Lcom/jaredrummler/truetypeparser/FontFileReader;->readTTFString(I)Ljava/lang/String;

    move-result-object v6

    :goto_1
    if-eqz v8, :cond_8

    if-eq v8, v11, :cond_7

    if-eq v8, v3, :cond_6

    if-eq v8, v4, :cond_4

    const/4 v1, 0x6

    if-eq v8, v1, :cond_3

    const/16 v1, 0x10

    if-eq v8, v1, :cond_7

    goto :goto_2

    .line 226
    :cond_3
    iget-object v1, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->postScriptName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_9

    .line 227
    iput-object v6, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->postScriptName:Ljava/lang/String;

    goto :goto_2

    .line 221
    :cond_4
    iget-object v8, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->fullName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_5

    if-ne v1, v10, :cond_9

    const/16 v1, 0x409

    if-ne v7, v1, :cond_9

    .line 222
    :cond_5
    iput-object v6, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->fullName:Ljava/lang/String;

    goto :goto_2

    .line 216
    :cond_6
    iget-object v1, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->subFamilyName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_9

    .line 217
    iput-object v6, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->subFamilyName:Ljava/lang/String;

    goto :goto_2

    .line 213
    :cond_7
    iget-object v1, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->familyNames:Ljava/util/Set;

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 207
    :cond_8
    iget-object v1, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->notice:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_9

    .line 208
    iput-object v6, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->notice:Ljava/lang/String;

    :cond_9
    :goto_2
    add-int/lit8 v0, v0, 0xc

    move v1, v5

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method private seekTab(Lcom/jaredrummler/truetypeparser/FontFileReader;Lcom/jaredrummler/truetypeparser/TTFTableName;J)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->dirTabs:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jaredrummler/truetypeparser/TTFDirTabEntry;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 257
    :cond_0
    invoke-virtual {p2}, Lcom/jaredrummler/truetypeparser/TTFDirTabEntry;->getOffset()J

    move-result-wide v0

    add-long/2addr v0, p3

    invoke-virtual {p1, v0, v1}, Lcom/jaredrummler/truetypeparser/FontFileReader;->seekSet(J)V

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public getFamilyNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->familyNames:Ljava/util/Set;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public getNotice()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->notice:Ljava/lang/String;

    return-object v0
.end method

.method public getPostScriptName()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->postScriptName:Ljava/lang/String;

    return-object v0
.end method

.method public getSubFamilyName()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->subFamilyName:Ljava/lang/String;

    return-object v0
.end method

.method public getWeightClass()I
    .locals 1

    .line 126
    iget v0, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->weightClass:I

    return v0
.end method

.method readFont(Lcom/jaredrummler/truetypeparser/FontFileReader;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    iput-object p1, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->fontFile:Lcom/jaredrummler/truetypeparser/FontFileReader;

    .line 162
    invoke-direct {p0}, Lcom/jaredrummler/truetypeparser/TTFFile;->readDirTabs()V

    .line 164
    iget-object p1, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->dirTabs:Ljava/util/Map;

    sget-object v0, Lcom/jaredrummler/truetypeparser/TTFTableName;->OS2:Lcom/jaredrummler/truetypeparser/TTFTableName;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jaredrummler/truetypeparser/TTFDirTabEntry;

    if-eqz p1, :cond_0

    .line 166
    iget-object p1, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->fontFile:Lcom/jaredrummler/truetypeparser/FontFileReader;

    sget-object v0, Lcom/jaredrummler/truetypeparser/TTFTableName;->OS2:Lcom/jaredrummler/truetypeparser/TTFTableName;

    const-wide/16 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/jaredrummler/truetypeparser/TTFFile;->seekTab(Lcom/jaredrummler/truetypeparser/FontFileReader;Lcom/jaredrummler/truetypeparser/TTFTableName;J)Z

    .line 167
    iget-object p1, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->fontFile:Lcom/jaredrummler/truetypeparser/FontFileReader;

    invoke-virtual {p1}, Lcom/jaredrummler/truetypeparser/FontFileReader;->readTTFUShort()I

    .line 168
    iget-object p1, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->fontFile:Lcom/jaredrummler/truetypeparser/FontFileReader;

    const-wide/16 v0, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/jaredrummler/truetypeparser/FontFileReader;->skip(J)V

    .line 169
    iget-object p1, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->fontFile:Lcom/jaredrummler/truetypeparser/FontFileReader;

    invoke-virtual {p1}, Lcom/jaredrummler/truetypeparser/FontFileReader;->readTTFUShort()I

    move-result p1

    iput p1, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->weightClass:I

    .line 172
    :cond_0
    invoke-direct {p0}, Lcom/jaredrummler/truetypeparser/TTFFile;->readName()V

    return-void
.end method
