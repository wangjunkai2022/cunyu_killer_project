.class public Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDao;
.super Ljava/lang/Object;
.source "CredentialDao.java"


# instance fields
.field credentialDatabaseHelper:Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabaseHelper;

.field projection:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabaseHelper;)V
    .locals 4

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "_id"

    const-string v1, "username"

    const-string v2, "password"

    const-string v3, "protection_space_id"

    .line 12
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDao;->projection:[Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDao;->credentialDatabaseHelper:Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabaseHelper;

    return-void
.end method


# virtual methods
.method public delete(Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/Credential;)J
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 99
    iget-object p1, p1, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/Credential;->id:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 101
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDao;->credentialDatabaseHelper:Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabaseHelper;

    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string v1, "_id = ?"

    const-string v2, "credential"

    invoke-virtual {p1, v2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public find(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/Credential;
    .locals 9

    const/4 v0, 0x3

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    const/4 p1, 0x1

    aput-object p2, v5, p1

    .line 53
    invoke-virtual {p3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v5, p2

    .line 55
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDao;->credentialDatabaseHelper:Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabaseHelper;

    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDao;->projection:[Ljava/lang/String;

    const-string v4, "username = ? AND password = ? AND protection_space_id = ?"

    const-string v2, "credential"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 66
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "_id"

    .line 67
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v0, "username"

    .line 68
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "password"

    .line 69
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 70
    new-instance v2, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/Credential;

    invoke-direct {v2, p2, v0, v1, p3}, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/Credential;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 72
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v2
.end method

.method public getAllByProtectionSpaceId(Ljava/lang/Long;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/List<",
            "Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/Credential;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v5, v1

    .line 27
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDao;->credentialDatabaseHelper:Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabaseHelper;

    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v3, p0, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDao;->projection:[Ljava/lang/String;

    const-string v4, "protection_space_id = ?"

    const-string v2, "credential"

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

    move-result-object v2

    const-string v3, "username"

    .line 40
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "password"

    .line 41
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 42
    new-instance v5, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/Credential;

    invoke-direct {v5, v2, v3, v4, p1}, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/Credential;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 44
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1
.end method

.method public insert(Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/Credential;)J
    .locals 3

    .line 78
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 79
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/Credential;->username:Ljava/lang/String;

    const-string v2, "username"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/Credential;->password:Ljava/lang/String;

    const-string v2, "password"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object p1, p1, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/Credential;->protectionSpaceId:Ljava/lang/Long;

    const-string v1, "protection_space_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 83
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDao;->credentialDatabaseHelper:Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabaseHelper;

    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string v1, "credential"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public update(Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/Credential;)J
    .locals 4

    .line 87
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 88
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/Credential;->username:Ljava/lang/String;

    const-string v2, "username"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v1, p1, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/Credential;->password:Ljava/lang/String;

    const-string v2, "password"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 92
    iget-object p1, p1, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/Credential;->protectionSpaceId:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 94
    iget-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDao;->credentialDatabaseHelper:Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabaseHelper;

    invoke-virtual {p1}, Lcom/pichillilorenzo/flutter_inappwebview/CredentialDatabase/CredentialDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string v2, "protection_space_id = ?"

    const-string v3, "credential"

    invoke-virtual {p1, v3, v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method
