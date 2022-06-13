.class public Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/ProtectionSpaceDao;
.super Ljava/lang/Object;
.source "ProtectionSpaceDao.java"


# instance fields
.field credentialDatabaseHelper:Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabaseHelper;

.field projection:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabaseHelper;)V
    .locals 5

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "_id"

    const-string v1, "host"

    const-string v2, "protocol"

    const-string v3, "realm"

    const-string v4, "port"

    .line 12
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/ProtectionSpaceDao;->projection:[Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/ProtectionSpaceDao;->credentialDatabaseHelper:Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabaseHelper;

    return-void
.end method


# virtual methods
.method public delete(Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/ProtectionSpace;)J
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 94
    iget-object p1, p1, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/ProtectionSpace;->id:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 96
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/ProtectionSpaceDao;->credentialDatabaseHelper:Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabaseHelper;

    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string v1, "_id = ?"

    const-string v2, "protection_space"

    invoke-virtual {p1, v2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public find(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/ProtectionSpace;
    .locals 9

    .line 52
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/ProtectionSpaceDao;->credentialDatabaseHelper:Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabaseHelper;

    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v0, 0x4

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    const/4 p1, 0x1

    aput-object p2, v5, p1

    const/4 p1, 0x2

    aput-object p3, v5, p1

    .line 56
    invoke-virtual {p4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v5, p2

    .line 58
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/ProtectionSpaceDao;->projection:[Ljava/lang/String;

    const-string v4, "host = ? AND protocol = ? AND realm = ? AND port = ?"

    const-string v2, "protection_space"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 69
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "_id"

    .line 70
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string p2, "host"

    .line 71
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string p2, "protocol"

    .line 72
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string p2, "realm"

    .line 73
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string p2, "port"

    .line 74
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 75
    new-instance p2, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/ProtectionSpace;

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/ProtectionSpace;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 77
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2
.end method

.method public getAll()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/ProtectionSpace;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/ProtectionSpaceDao;->credentialDatabaseHelper:Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabaseHelper;

    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 27
    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/ProtectionSpaceDao;->projection:[Ljava/lang/String;

    const-string v2, "protection_space"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 37
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 38
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "_id"

    .line 39
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v2, "host"

    .line 40
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v2, "protocol"

    .line 41
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v2, "realm"

    .line 42
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v2, "port"

    .line 43
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 44
    new-instance v2, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/ProtectionSpace;

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/ProtectionSpace;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 46
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1
.end method

.method public insert(Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/ProtectionSpace;)J
    .locals 3

    .line 83
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 84
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/ProtectionSpace;->host:Ljava/lang/String;

    const-string v2, "host"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/ProtectionSpace;->procotol:Ljava/lang/String;

    const-string v2, "protocol"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/ProtectionSpace;->realm:Ljava/lang/String;

    const-string v2, "realm"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object p1, p1, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/ProtectionSpace;->port:Ljava/lang/Integer;

    const-string v1, "port"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 89
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/ProtectionSpaceDao;->credentialDatabaseHelper:Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabaseHelper;

    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string v1, "protection_space"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method
