.class public Lcom/tekartik/sqflite/SqflitePlugin;
.super Ljava/lang/Object;
.source "SqflitePlugin.java"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tekartik/sqflite/SqflitePlugin$BgResult;
    }
.end annotation


# static fields
.field private static QUERY_AS_MAP_LIST:Z

.field private static THREAD_PRIORITY:I

.field static final _singleInstancesByPath:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static databaseId:I

.field static final databaseMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/tekartik/sqflite/Database;",
            ">;"
        }
    .end annotation
.end field

.field private static final databaseMapLocker:Ljava/lang/Object;

.field static databasesPath:Ljava/lang/String;

.field private static handler:Landroid/os/Handler;

.field private static handlerThread:Landroid/os/HandlerThread;

.field static logLevel:I

.field private static final openCloseLocker:Ljava/lang/Object;


# instance fields
.field private context:Landroid/content/Context;

.field private methodChannel:Lio/flutter/plugin/common/MethodChannel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tekartik/sqflite/SqflitePlugin;->_singleInstancesByPath:Ljava/util/Map;

    const/4 v0, 0x0

    .line 73
    sput-boolean v0, Lcom/tekartik/sqflite/SqflitePlugin;->QUERY_AS_MAP_LIST:Z

    .line 74
    sput v0, Lcom/tekartik/sqflite/SqflitePlugin;->THREAD_PRIORITY:I

    .line 75
    sput v0, Lcom/tekartik/sqflite/SqflitePlugin;->logLevel:I

    .line 77
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/tekartik/sqflite/SqflitePlugin;->databaseMapLocker:Ljava/lang/Object;

    .line 78
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/tekartik/sqflite/SqflitePlugin;->openCloseLocker:Ljava/lang/Object;

    .line 82
    sput v0, Lcom/tekartik/sqflite/SqflitePlugin;->databaseId:I

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tekartik/sqflite/SqflitePlugin;->databaseMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tekartik/sqflite/SqflitePlugin;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$100(Lcom/tekartik/sqflite/SqflitePlugin;Lcom/tekartik/sqflite/Database;Lcom/tekartik/sqflite/operation/Operation;)Z
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/tekartik/sqflite/SqflitePlugin;->query(Lcom/tekartik/sqflite/Database;Lcom/tekartik/sqflite/operation/Operation;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000()I
    .locals 1

    .line 69
    sget v0, Lcom/tekartik/sqflite/SqflitePlugin;->databaseId:I

    return v0
.end method

.method static synthetic access$200(Lcom/tekartik/sqflite/SqflitePlugin;Lcom/tekartik/sqflite/Database;Lcom/tekartik/sqflite/operation/Operation;)Z
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/tekartik/sqflite/SqflitePlugin;->execute(Lcom/tekartik/sqflite/Database;Lcom/tekartik/sqflite/operation/Operation;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/tekartik/sqflite/SqflitePlugin;Lcom/tekartik/sqflite/Database;Lcom/tekartik/sqflite/operation/Operation;)Z
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/tekartik/sqflite/SqflitePlugin;->insert(Lcom/tekartik/sqflite/Database;Lcom/tekartik/sqflite/operation/Operation;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/tekartik/sqflite/SqflitePlugin;Lcom/tekartik/sqflite/Database;Lcom/tekartik/sqflite/operation/Operation;)Z
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/tekartik/sqflite/SqflitePlugin;->update(Lcom/tekartik/sqflite/Database;Lcom/tekartik/sqflite/operation/Operation;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/tekartik/sqflite/SqflitePlugin;Lcom/tekartik/sqflite/Database;Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)Lcom/tekartik/sqflite/Database;
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/tekartik/sqflite/SqflitePlugin;->executeOrError(Lcom/tekartik/sqflite/Database;Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)Lcom/tekartik/sqflite/Database;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600()Ljava/lang/Object;
    .locals 1

    .line 69
    sget-object v0, Lcom/tekartik/sqflite/SqflitePlugin;->openCloseLocker:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tekartik/sqflite/SqflitePlugin;Ljava/lang/Exception;Lcom/tekartik/sqflite/operation/Operation;Lcom/tekartik/sqflite/Database;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/tekartik/sqflite/SqflitePlugin;->handleException(Ljava/lang/Exception;Lcom/tekartik/sqflite/operation/Operation;Lcom/tekartik/sqflite/Database;)V

    return-void
.end method

.method static synthetic access$800()Ljava/lang/Object;
    .locals 1

    .line 69
    sget-object v0, Lcom/tekartik/sqflite/SqflitePlugin;->databaseMapLocker:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$900(Lcom/tekartik/sqflite/SqflitePlugin;Lcom/tekartik/sqflite/Database;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/tekartik/sqflite/SqflitePlugin;->closeDatabase(Lcom/tekartik/sqflite/Database;)V

    return-void
.end method

.method private closeDatabase(Lcom/tekartik/sqflite/Database;)V
    .locals 3

    .line 931
    :try_start_0
    iget v0, p1, Lcom/tekartik/sqflite/Database;->logLevel:I

    invoke-static {v0}, Lcom/tekartik/sqflite/LogLevel;->hasSqlLevel(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Sqflite"

    .line 932
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/tekartik/sqflite/Database;->getThreadLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "closing database "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/tekartik/sqflite/SqflitePlugin;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    :cond_0
    invoke-virtual {p1}, Lcom/tekartik/sqflite/Database;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 936
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " while closing database "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/tekartik/sqflite/SqflitePlugin;->databaseId:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Sqflite"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    :goto_0
    sget-object v0, Lcom/tekartik/sqflite/SqflitePlugin;->databaseMapLocker:Ljava/lang/Object;

    monitor-enter v0

    .line 940
    :try_start_1
    sget-object v1, Lcom/tekartik/sqflite/SqflitePlugin;->databaseMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/tekartik/sqflite/SqflitePlugin;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 941
    iget v1, p1, Lcom/tekartik/sqflite/Database;->logLevel:I

    invoke-static {v1}, Lcom/tekartik/sqflite/LogLevel;->hasSqlLevel(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Sqflite"

    .line 942
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/tekartik/sqflite/Database;->getThreadLogPrefix()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "stopping thread"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/tekartik/sqflite/SqflitePlugin;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    :cond_1
    sget-object p1, Lcom/tekartik/sqflite/SqflitePlugin;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z

    const/4 p1, 0x0

    .line 945
    sput-object p1, Lcom/tekartik/sqflite/SqflitePlugin;->handlerThread:Landroid/os/HandlerThread;

    .line 946
    sput-object p1, Lcom/tekartik/sqflite/SqflitePlugin;->handler:Landroid/os/Handler;

    .line 948
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private static cursorRowToList(Landroid/database/Cursor;I)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_4

    .line 147
    invoke-static {p0, v1}, Lcom/tekartik/sqflite/SqflitePlugin;->cursorValue(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v2

    .line 148
    sget-boolean v3, Lcom/tekartik/sqflite/dev/Debug;->EXTRA_LOGV:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    const-string v4, ")"

    if-eqz v2, :cond_1

    .line 151
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 152
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "array("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 154
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 157
    :cond_1
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "column "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getType(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_2

    const-string v3, ""

    goto :goto_2

    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Sqflite"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_3
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    return-object v0
.end method

.method private static cursorRowToMap(Landroid/database/Cursor;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 165
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 166
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    .line 167
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_6

    .line 169
    sget-boolean v4, Lcom/tekartik/sqflite/dev/Debug;->EXTRA_LOGV:Z

    if-eqz v4, :cond_0

    .line 170
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "column "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getType(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Sqflite"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_0
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getType(I)I

    move-result v4

    if-eqz v4, :cond_5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    goto :goto_1

    .line 186
    :cond_1
    aget-object v4, v1, v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 183
    :cond_2
    aget-object v4, v1, v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 180
    :cond_3
    aget-object v4, v1, v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 177
    :cond_4
    aget-object v4, v1, v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 174
    :cond_5
    aget-object v4, v1, v3

    const/4 v5, 0x0

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    return-object v0
.end method

.method private static cursorValue(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 3

    .line 128
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getType(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    return-object v1

    .line 138
    :cond_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p0

    return-object p0

    .line 136
    :cond_1
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 134
    :cond_2
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 132
    :cond_3
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v1
.end method

.method private execute(Lcom/tekartik/sqflite/Database;Lcom/tekartik/sqflite/operation/Operation;)Z
    .locals 0

    .line 411
    invoke-direct {p0, p1, p2}, Lcom/tekartik/sqflite/SqflitePlugin;->executeOrError(Lcom/tekartik/sqflite/Database;Lcom/tekartik/sqflite/operation/Operation;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 414
    invoke-interface {p2, p1}, Lcom/tekartik/sqflite/operation/Operation;->success(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method private executeOrError(Lcom/tekartik/sqflite/Database;Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)Lcom/tekartik/sqflite/Database;
    .locals 2

    .line 260
    invoke-direct {p0, p2}, Lcom/tekartik/sqflite/SqflitePlugin;->getSqlCommand(Lio/flutter/plugin/common/MethodCall;)Lcom/tekartik/sqflite/SqlCommand;

    move-result-object v0

    const-string v1, "inTransaction"

    .line 261
    invoke-virtual {p2, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    .line 263
    new-instance v1, Lcom/tekartik/sqflite/operation/ExecuteOperation;

    invoke-direct {v1, p3, v0, p2}, Lcom/tekartik/sqflite/operation/ExecuteOperation;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;Lcom/tekartik/sqflite/SqlCommand;Ljava/lang/Boolean;)V

    .line 264
    invoke-direct {p0, p1, v1}, Lcom/tekartik/sqflite/SqflitePlugin;->executeOrError(Lcom/tekartik/sqflite/Database;Lcom/tekartik/sqflite/operation/Operation;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private executeOrError(Lcom/tekartik/sqflite/Database;Lcom/tekartik/sqflite/operation/Operation;)Z
    .locals 5

    .line 272
    invoke-interface {p2}, Lcom/tekartik/sqflite/operation/Operation;->getSqlCommand()Lcom/tekartik/sqflite/SqlCommand;

    move-result-object v0

    .line 273
    iget v1, p1, Lcom/tekartik/sqflite/Database;->logLevel:I

    invoke-static {v1}, Lcom/tekartik/sqflite/LogLevel;->hasSqlLevel(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/tekartik/sqflite/Database;->getThreadLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Sqflite"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_0
    invoke-interface {p2}, Lcom/tekartik/sqflite/operation/Operation;->getInTransaction()Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    .line 279
    :try_start_0
    invoke-virtual {p1}, Lcom/tekartik/sqflite/Database;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tekartik/sqflite/SqlCommand;->getSql()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/tekartik/sqflite/SqlCommand;->getSqlArguments()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 282
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 283
    iput-boolean v3, p1, Lcom/tekartik/sqflite/Database;->inTransaction:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    :cond_1
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 292
    iput-boolean v2, p1, Lcom/tekartik/sqflite/Database;->inTransaction:Z

    :cond_2
    return v3

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception v0

    .line 287
    :try_start_1
    invoke-direct {p0, v0, p2, p1}, Lcom/tekartik/sqflite/SqflitePlugin;->handleException(Ljava/lang/Exception;Lcom/tekartik/sqflite/operation/Operation;Lcom/tekartik/sqflite/Database;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 291
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 292
    iput-boolean v2, p1, Lcom/tekartik/sqflite/Database;->inTransaction:Z

    :cond_3
    return v2

    .line 291
    :goto_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 292
    iput-boolean v2, p1, Lcom/tekartik/sqflite/Database;->inTransaction:Z

    .line 295
    :cond_4
    throw p2
.end method

.method private static fixMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 194
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 195
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 196
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 197
    instance-of v3, v2, Ljava/util/Map;

    if-eqz v3, :cond_0

    .line 199
    check-cast v2, Ljava/util/Map;

    .line 200
    invoke-static {v2}, Lcom/tekartik/sqflite/SqflitePlugin;->fixMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    goto :goto_1

    .line 202
    :cond_0
    invoke-static {v2}, Lcom/tekartik/sqflite/SqflitePlugin;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 204
    :goto_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/tekartik/sqflite/SqflitePlugin;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/tekartik/sqflite/SqflitePlugin;->context:Landroid/content/Context;

    return-object v0
.end method

.method private getDatabase(I)Lcom/tekartik/sqflite/Database;
    .locals 1

    .line 238
    sget-object v0, Lcom/tekartik/sqflite/SqflitePlugin;->databaseMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tekartik/sqflite/Database;

    return-object p1
.end method

.method private getDatabaseOrError(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)Lcom/tekartik/sqflite/Database;
    .locals 2

    const-string v0, "id"

    .line 242
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 243
    invoke-direct {p0, p1}, Lcom/tekartik/sqflite/SqflitePlugin;->getDatabase(I)Lcom/tekartik/sqflite/Database;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 248
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "database_closed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "sqlite_error"

    invoke-interface {p2, v1, p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method private getSqlCommand(Lio/flutter/plugin/common/MethodCall;)Lcom/tekartik/sqflite/SqlCommand;
    .locals 2

    const-string v0, "sql"

    .line 254
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "arguments"

    .line 255
    invoke-virtual {p1, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 256
    new-instance v1, Lcom/tekartik/sqflite/SqlCommand;

    invoke-direct {v1, v0, p1}, Lcom/tekartik/sqflite/SqlCommand;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v1
.end method

.method private handleException(Ljava/lang/Exception;Lcom/tekartik/sqflite/operation/Operation;Lcom/tekartik/sqflite/Database;)V
    .locals 2

    .line 632
    instance-of v0, p1, Landroid/database/sqlite/SQLiteCantOpenDatabaseException;

    const-string v1, "sqlite_error"

    if-eqz v0, :cond_0

    .line 633
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "open_failed "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p3, Lcom/tekartik/sqflite/Database;->path:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    invoke-interface {p2, v1, p1, p3}, Lcom/tekartik/sqflite/operation/Operation;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 635
    :cond_0
    instance-of p3, p1, Landroid/database/SQLException;

    if-eqz p3, :cond_1

    .line 636
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lcom/tekartik/sqflite/operation/SqlErrorInfo;->getMap(Lcom/tekartik/sqflite/operation/Operation;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p2, v1, p1, p3}, Lcom/tekartik/sqflite/operation/Operation;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 639
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lcom/tekartik/sqflite/operation/SqlErrorInfo;->getMap(Lcom/tekartik/sqflite/operation/Operation;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p2, v1, p1, p3}, Lcom/tekartik/sqflite/operation/Operation;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private insert(Lcom/tekartik/sqflite/Database;Lcom/tekartik/sqflite/operation/Operation;)Z
    .locals 9

    .line 420
    invoke-direct {p0, p1, p2}, Lcom/tekartik/sqflite/SqflitePlugin;->executeOrError(Lcom/tekartik/sqflite/Database;Lcom/tekartik/sqflite/operation/Operation;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 424
    :cond_0
    invoke-interface {p2}, Lcom/tekartik/sqflite/operation/Operation;->getNoResult()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 425
    invoke-interface {p2, v2}, Lcom/tekartik/sqflite/operation/Operation;->success(Ljava/lang/Object;)V

    return v3

    :cond_1
    const-string v0, "SELECT changes(), last_insert_rowid()"

    .line 436
    :try_start_0
    invoke-virtual {p1}, Lcom/tekartik/sqflite/Database;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 438
    invoke-virtual {v4, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "Sqflite"

    if-eqz v0, :cond_7

    .line 439
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_7

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 440
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-nez v5, :cond_4

    .line 445
    iget v5, p1, Lcom/tekartik/sqflite/Database;->logLevel:I

    invoke-static {v5}, Lcom/tekartik/sqflite/LogLevel;->hasSqlLevel(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 446
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/tekartik/sqflite/Database;->getThreadLogPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "no changes (id was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_2
    invoke-interface {p2, v2}, Lcom/tekartik/sqflite/operation/Operation;->success(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_3

    .line 468
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    return v3

    .line 451
    :cond_4
    :try_start_2
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 452
    iget v2, p1, Lcom/tekartik/sqflite/Database;->logLevel:I

    invoke-static {v2}, Lcom/tekartik/sqflite/LogLevel;->hasSqlLevel(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 453
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/tekartik/sqflite/Database;->getThreadLogPrefix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "inserted "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :cond_5
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/tekartik/sqflite/operation/Operation;->success(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_6

    .line 468
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6
    return v3

    :catch_0
    move-exception v2

    goto :goto_0

    .line 459
    :cond_7
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/tekartik/sqflite/Database;->getThreadLogPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "fail to read changes for Insert"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    invoke-interface {p2, v2}, Lcom/tekartik/sqflite/operation/Operation;->success(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_8

    .line 468
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_8
    return v3

    :catchall_0
    move-exception p1

    move-object v0, v2

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v8, v2

    move-object v2, v0

    move-object v0, v8

    .line 464
    :goto_0
    :try_start_4
    invoke-direct {p0, v2, p2, p1}, Lcom/tekartik/sqflite/SqflitePlugin;->handleException(Ljava/lang/Exception;Lcom/tekartik/sqflite/operation/Operation;Lcom/tekartik/sqflite/Database;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_9

    .line 468
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_9
    return v1

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v0, :cond_a

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 470
    :cond_a
    throw p1
.end method

.method static isInMemoryPath(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, ":memory:"

    .line 230
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static makeOpenResult(IZZ)Ljava/util/Map;
    .locals 2

    .line 647
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 648
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "id"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    .line 649
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p1, :cond_0

    const-string p1, "recovered"

    .line 650
    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p2, :cond_1

    const-string p1, "recoveredInTransaction"

    .line 653
    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method private onAttachedToEngine(Landroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;)V
    .locals 1

    .line 115
    iput-object p1, p0, Lcom/tekartik/sqflite/SqflitePlugin;->context:Landroid/content/Context;

    .line 116
    new-instance p1, Lio/flutter/plugin/common/MethodChannel;

    const-string v0, "com.tekartik.sqflite"

    invoke-direct {p1, p2, v0}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tekartik/sqflite/SqflitePlugin;->methodChannel:Lio/flutter/plugin/common/MethodChannel;

    .line 117
    iget-object p1, p0, Lcom/tekartik/sqflite/SqflitePlugin;->methodChannel:Lio/flutter/plugin/common/MethodChannel;

    invoke-virtual {p1, p0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    return-void
.end method

.method private onBatchCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    .line 323
    invoke-direct {p0, p1, p2}, Lcom/tekartik/sqflite/SqflitePlugin;->getDatabaseOrError(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)Lcom/tekartik/sqflite/Database;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 327
    :cond_0
    new-instance v1, Lcom/tekartik/sqflite/SqflitePlugin$BgResult;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, v2}, Lcom/tekartik/sqflite/SqflitePlugin$BgResult;-><init>(Lcom/tekartik/sqflite/SqflitePlugin;Lio/flutter/plugin/common/MethodChannel$Result;Lcom/tekartik/sqflite/SqflitePlugin$1;)V

    .line 328
    sget-object p2, Lcom/tekartik/sqflite/SqflitePlugin;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/tekartik/sqflite/SqflitePlugin$2;

    invoke-direct {v2, p0, p1, v1, v0}, Lcom/tekartik/sqflite/SqflitePlugin$2;-><init>(Lcom/tekartik/sqflite/SqflitePlugin;Lio/flutter/plugin/common/MethodCall;Lcom/tekartik/sqflite/SqflitePlugin$BgResult;Lcom/tekartik/sqflite/Database;)V

    invoke-virtual {p2, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onCloseDatabaseCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 4

    const-string v0, "id"

    .line 832
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 833
    invoke-direct {p0, p1, p2}, Lcom/tekartik/sqflite/SqflitePlugin;->getDatabaseOrError(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)Lcom/tekartik/sqflite/Database;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 838
    :cond_0
    iget v1, p1, Lcom/tekartik/sqflite/Database;->logLevel:I

    invoke-static {v1}, Lcom/tekartik/sqflite/LogLevel;->hasSqlLevel(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 839
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/tekartik/sqflite/Database;->getThreadLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "closing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/tekartik/sqflite/Database;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Sqflite"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    :cond_1
    iget-object v1, p1, Lcom/tekartik/sqflite/Database;->path:Ljava/lang/String;

    .line 845
    sget-object v2, Lcom/tekartik/sqflite/SqflitePlugin;->databaseMapLocker:Ljava/lang/Object;

    monitor-enter v2

    .line 846
    :try_start_0
    sget-object v3, Lcom/tekartik/sqflite/SqflitePlugin;->databaseMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 848
    iget-boolean v0, p1, Lcom/tekartik/sqflite/Database;->singleInstance:Z

    if-eqz v0, :cond_2

    .line 849
    sget-object v0, Lcom/tekartik/sqflite/SqflitePlugin;->_singleInstancesByPath:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 851
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 853
    new-instance v0, Lcom/tekartik/sqflite/SqflitePlugin$BgResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/tekartik/sqflite/SqflitePlugin$BgResult;-><init>(Lcom/tekartik/sqflite/SqflitePlugin;Lio/flutter/plugin/common/MethodChannel$Result;Lcom/tekartik/sqflite/SqflitePlugin$1;)V

    .line 854
    sget-object p2, Lcom/tekartik/sqflite/SqflitePlugin;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/tekartik/sqflite/SqflitePlugin$7;

    invoke-direct {v1, p0, p1, v0}, Lcom/tekartik/sqflite/SqflitePlugin$7;-><init>(Lcom/tekartik/sqflite/SqflitePlugin;Lcom/tekartik/sqflite/Database;Lcom/tekartik/sqflite/SqflitePlugin$BgResult;)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception p1

    .line 851
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private onDebugCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 8

    const-string v0, "cmd"

    .line 659
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 660
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "get"

    .line 664
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 665
    sget p1, Lcom/tekartik/sqflite/SqflitePlugin;->logLevel:I

    const-string v1, "logLevel"

    if-lez p1, :cond_0

    .line 666
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    :cond_0
    sget-object p1, Lcom/tekartik/sqflite/SqflitePlugin;->databaseMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 669
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 670
    sget-object v2, Lcom/tekartik/sqflite/SqflitePlugin;->databaseMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 671
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tekartik/sqflite/Database;

    .line 672
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 673
    iget-object v6, v4, Lcom/tekartik/sqflite/Database;->path:Ljava/lang/String;

    const-string v7, "path"

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    iget-boolean v6, v4, Lcom/tekartik/sqflite/Database;->singleInstance:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-string v7, "singleInstance"

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    iget v6, v4, Lcom/tekartik/sqflite/Database;->logLevel:I

    if-lez v6, :cond_1

    .line 676
    iget v4, v4, Lcom/tekartik/sqflite/Database;->logLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    :cond_1
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const-string v1, "databases"

    .line 681
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    :cond_3
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method

.method private onDebugModeCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 691
    invoke-virtual {p1}, Lio/flutter/plugin/common/MethodCall;->arguments()Ljava/lang/Object;

    move-result-object p1

    .line 692
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    sput-boolean p1, Lcom/tekartik/sqflite/dev/Debug;->LOGV:Z

    .line 693
    sget-boolean p1, Lcom/tekartik/sqflite/dev/Debug;->_EXTRA_LOGV:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    sget-boolean p1, Lcom/tekartik/sqflite/dev/Debug;->LOGV:Z

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    sput-boolean p1, Lcom/tekartik/sqflite/dev/Debug;->EXTRA_LOGV:Z

    .line 696
    sget-boolean p1, Lcom/tekartik/sqflite/dev/Debug;->LOGV:Z

    if-eqz p1, :cond_2

    .line 697
    sget-boolean p1, Lcom/tekartik/sqflite/dev/Debug;->EXTRA_LOGV:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    .line 698
    sput p1, Lcom/tekartik/sqflite/SqflitePlugin;->logLevel:I

    goto :goto_1

    .line 699
    :cond_1
    sget-boolean p1, Lcom/tekartik/sqflite/dev/Debug;->LOGV:Z

    if-eqz p1, :cond_3

    .line 700
    sput v0, Lcom/tekartik/sqflite/SqflitePlugin;->logLevel:I

    goto :goto_1

    .line 704
    :cond_2
    sput v1, Lcom/tekartik/sqflite/SqflitePlugin;->logLevel:I

    :cond_3
    :goto_1
    const/4 p1, 0x0

    .line 706
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method

.method private onDeleteDatabaseCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 7

    const-string v0, "path"

    .line 871
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 874
    sget-object v0, Lcom/tekartik/sqflite/SqflitePlugin;->databaseMapLocker:Ljava/lang/Object;

    monitor-enter v0

    .line 875
    :try_start_0
    sget v1, Lcom/tekartik/sqflite/SqflitePlugin;->logLevel:I

    invoke-static {v1}, Lcom/tekartik/sqflite/LogLevel;->hasVerboseLevel(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Sqflite"

    .line 876
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Look for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/tekartik/sqflite/SqflitePlugin;->_singleInstancesByPath:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    :cond_0
    sget-object v1, Lcom/tekartik/sqflite/SqflitePlugin;->_singleInstancesByPath:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 880
    sget-object v3, Lcom/tekartik/sqflite/SqflitePlugin;->databaseMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tekartik/sqflite/Database;

    if-eqz v3, :cond_3

    .line 882
    iget-object v4, v3, Lcom/tekartik/sqflite/Database;->sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 883
    sget v4, Lcom/tekartik/sqflite/SqflitePlugin;->logLevel:I

    invoke-static {v4}, Lcom/tekartik/sqflite/LogLevel;->hasVerboseLevel(I)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "Sqflite"

    .line 884
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/tekartik/sqflite/Database;->getThreadLogPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "found single instance "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v3, Lcom/tekartik/sqflite/Database;->inTransaction:Z

    if-eqz v6, :cond_1

    const-string v6, "(in transaction) "

    goto :goto_0

    :cond_1
    const-string v6, ""

    :goto_0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    :cond_2
    sget-object v4, Lcom/tekartik/sqflite/SqflitePlugin;->databaseMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    sget-object v1, Lcom/tekartik/sqflite/SqflitePlugin;->_singleInstancesByPath:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    move-object v3, v2

    .line 894
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 897
    new-instance v0, Lcom/tekartik/sqflite/SqflitePlugin$BgResult;

    invoke-direct {v0, p0, p2, v2}, Lcom/tekartik/sqflite/SqflitePlugin$BgResult;-><init>(Lcom/tekartik/sqflite/SqflitePlugin;Lio/flutter/plugin/common/MethodChannel$Result;Lcom/tekartik/sqflite/SqflitePlugin$1;)V

    .line 898
    new-instance p2, Lcom/tekartik/sqflite/SqflitePlugin$8;

    invoke-direct {p2, p0, v3, p1, v0}, Lcom/tekartik/sqflite/SqflitePlugin$8;-><init>(Lcom/tekartik/sqflite/SqflitePlugin;Lcom/tekartik/sqflite/Database;Ljava/lang/String;Lcom/tekartik/sqflite/SqflitePlugin$BgResult;)V

    .line 920
    sget-object p1, Lcom/tekartik/sqflite/SqflitePlugin;->handler:Landroid/os/Handler;

    if-eqz p1, :cond_4

    .line 921
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 924
    :cond_4
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :goto_2
    return-void

    :catchall_0
    move-exception p1

    .line 894
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private onExecuteCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    .line 556
    invoke-direct {p0, p1, p2}, Lcom/tekartik/sqflite/SqflitePlugin;->getDatabaseOrError(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)Lcom/tekartik/sqflite/Database;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 560
    :cond_0
    new-instance v1, Lcom/tekartik/sqflite/SqflitePlugin$BgResult;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, v2}, Lcom/tekartik/sqflite/SqflitePlugin$BgResult;-><init>(Lcom/tekartik/sqflite/SqflitePlugin;Lio/flutter/plugin/common/MethodChannel$Result;Lcom/tekartik/sqflite/SqflitePlugin$1;)V

    .line 561
    sget-object p2, Lcom/tekartik/sqflite/SqflitePlugin;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/tekartik/sqflite/SqflitePlugin$4;

    invoke-direct {v2, p0, v0, p1, v1}, Lcom/tekartik/sqflite/SqflitePlugin$4;-><init>(Lcom/tekartik/sqflite/SqflitePlugin;Lcom/tekartik/sqflite/Database;Lio/flutter/plugin/common/MethodCall;Lcom/tekartik/sqflite/SqflitePlugin$BgResult;)V

    invoke-virtual {p2, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onInsertCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    .line 536
    invoke-direct {p0, p1, p2}, Lcom/tekartik/sqflite/SqflitePlugin;->getDatabaseOrError(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)Lcom/tekartik/sqflite/Database;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 540
    :cond_0
    new-instance v1, Lcom/tekartik/sqflite/SqflitePlugin$BgResult;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, v2}, Lcom/tekartik/sqflite/SqflitePlugin$BgResult;-><init>(Lcom/tekartik/sqflite/SqflitePlugin;Lio/flutter/plugin/common/MethodChannel$Result;Lcom/tekartik/sqflite/SqflitePlugin$1;)V

    .line 541
    sget-object p2, Lcom/tekartik/sqflite/SqflitePlugin;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/tekartik/sqflite/SqflitePlugin$3;

    invoke-direct {v2, p0, p1, v1, v0}, Lcom/tekartik/sqflite/SqflitePlugin$3;-><init>(Lcom/tekartik/sqflite/SqflitePlugin;Lio/flutter/plugin/common/MethodCall;Lcom/tekartik/sqflite/SqflitePlugin$BgResult;Lcom/tekartik/sqflite/Database;)V

    invoke-virtual {p2, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onOpenDatabaseCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 12

    const-string v0, "path"

    .line 713
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    const-string v0, "readOnly"

    .line 714
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/Boolean;

    .line 715
    invoke-static {v4}, Lcom/tekartik/sqflite/SqflitePlugin;->isInMemoryPath(Ljava/lang/String;)Z

    move-result v3

    .line 717
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "singleInstance"

    invoke-virtual {p1, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    if-nez v3, :cond_0

    move v9, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move v9, v0

    :goto_0
    if-eqz v9, :cond_6

    .line 725
    sget-object v0, Lcom/tekartik/sqflite/SqflitePlugin;->databaseMapLocker:Ljava/lang/Object;

    monitor-enter v0

    .line 726
    :try_start_0
    sget v2, Lcom/tekartik/sqflite/SqflitePlugin;->logLevel:I

    invoke-static {v2}, Lcom/tekartik/sqflite/LogLevel;->hasVerboseLevel(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Sqflite"

    .line 727
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Look for "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " in "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/tekartik/sqflite/SqflitePlugin;->_singleInstancesByPath:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    :cond_1
    sget-object v2, Lcom/tekartik/sqflite/SqflitePlugin;->_singleInstancesByPath:Ljava/util/Map;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_5

    .line 731
    sget-object v5, Lcom/tekartik/sqflite/SqflitePlugin;->databaseMap:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tekartik/sqflite/Database;

    if-eqz v5, :cond_5

    .line 733
    iget-object v7, v5, Lcom/tekartik/sqflite/Database;->sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v7

    if-nez v7, :cond_2

    .line 734
    sget v2, Lcom/tekartik/sqflite/SqflitePlugin;->logLevel:I

    invoke-static {v2}, Lcom/tekartik/sqflite/LogLevel;->hasVerboseLevel(I)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "Sqflite"

    .line 735
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/tekartik/sqflite/Database;->getThreadLogPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "single instance database of "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " not opened"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 738
    :cond_2
    sget p1, Lcom/tekartik/sqflite/SqflitePlugin;->logLevel:I

    invoke-static {p1}, Lcom/tekartik/sqflite/LogLevel;->hasVerboseLevel(I)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "Sqflite"

    .line 739
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/tekartik/sqflite/Database;->getThreadLogPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "re-opened single instance "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v5, Lcom/tekartik/sqflite/Database;->inTransaction:Z

    if-eqz v6, :cond_3

    const-string v6, "(in transaction) "

    goto :goto_1

    :cond_3
    const-string v6, ""

    :goto_1
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-boolean v2, v5, Lcom/tekartik/sqflite/Database;->inTransaction:Z

    invoke-static {p1, v1, v2}, Lcom/tekartik/sqflite/SqflitePlugin;->makeOpenResult(IZZ)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 742
    monitor-exit v0

    return-void

    .line 746
    :cond_5
    :goto_2
    monitor-exit v0

    goto :goto_3

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 751
    :cond_6
    :goto_3
    sget-object v0, Lcom/tekartik/sqflite/SqflitePlugin;->databaseMapLocker:Ljava/lang/Object;

    monitor-enter v0

    .line 752
    :try_start_1
    sget v2, Lcom/tekartik/sqflite/SqflitePlugin;->databaseId:I

    add-int/lit8 v10, v2, 0x1

    sput v10, Lcom/tekartik/sqflite/SqflitePlugin;->databaseId:I

    .line 753
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 756
    new-instance v7, Lcom/tekartik/sqflite/Database;

    sget v0, Lcom/tekartik/sqflite/SqflitePlugin;->logLevel:I

    invoke-direct {v7, v4, v10, v9, v0}, Lcom/tekartik/sqflite/Database;-><init>(Ljava/lang/String;IZI)V

    .line 758
    new-instance v5, Lcom/tekartik/sqflite/SqflitePlugin$BgResult;

    const/4 v0, 0x0

    invoke-direct {v5, p0, p2, v0}, Lcom/tekartik/sqflite/SqflitePlugin$BgResult;-><init>(Lcom/tekartik/sqflite/SqflitePlugin;Lio/flutter/plugin/common/MethodChannel$Result;Lcom/tekartik/sqflite/SqflitePlugin$1;)V

    .line 760
    sget-object p2, Lcom/tekartik/sqflite/SqflitePlugin;->databaseMapLocker:Ljava/lang/Object;

    monitor-enter p2

    .line 762
    :try_start_2
    sget-object v0, Lcom/tekartik/sqflite/SqflitePlugin;->handler:Landroid/os/Handler;

    if-nez v0, :cond_7

    .line 763
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Sqflite"

    sget v2, Lcom/tekartik/sqflite/SqflitePlugin;->THREAD_PRIORITY:I

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tekartik/sqflite/SqflitePlugin;->handlerThread:Landroid/os/HandlerThread;

    .line 764
    sget-object v0, Lcom/tekartik/sqflite/SqflitePlugin;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 765
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/tekartik/sqflite/SqflitePlugin;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/tekartik/sqflite/SqflitePlugin;->handler:Landroid/os/Handler;

    .line 766
    iget v0, v7, Lcom/tekartik/sqflite/Database;->logLevel:I

    invoke-static {v0}, Lcom/tekartik/sqflite/LogLevel;->hasSqlLevel(I)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "Sqflite"

    .line 767
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/tekartik/sqflite/Database;->getThreadLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "starting thread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/tekartik/sqflite/SqflitePlugin;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " priority "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/tekartik/sqflite/SqflitePlugin;->THREAD_PRIORITY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    :cond_7
    iget v0, v7, Lcom/tekartik/sqflite/Database;->logLevel:I

    invoke-static {v0}, Lcom/tekartik/sqflite/LogLevel;->hasSqlLevel(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "Sqflite"

    .line 771
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/tekartik/sqflite/Database;->getThreadLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "opened "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    :cond_8
    sget-object v0, Lcom/tekartik/sqflite/SqflitePlugin;->handler:Landroid/os/Handler;

    new-instance v11, Lcom/tekartik/sqflite/SqflitePlugin$6;

    move-object v1, v11

    move-object v2, p0

    move-object v8, p1

    invoke-direct/range {v1 .. v10}, Lcom/tekartik/sqflite/SqflitePlugin$6;-><init>(Lcom/tekartik/sqflite/SqflitePlugin;ZLjava/lang/String;Lcom/tekartik/sqflite/SqflitePlugin$BgResult;Ljava/lang/Boolean;Lcom/tekartik/sqflite/Database;Lio/flutter/plugin/common/MethodCall;ZI)V

    invoke-virtual {v0, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 824
    monitor-exit p2

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :catchall_2
    move-exception p1

    .line 753
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1
.end method

.method private onQueryCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    .line 303
    invoke-direct {p0, p1, p2}, Lcom/tekartik/sqflite/SqflitePlugin;->getDatabaseOrError(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)Lcom/tekartik/sqflite/Database;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 307
    :cond_0
    new-instance v1, Lcom/tekartik/sqflite/SqflitePlugin$BgResult;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, v2}, Lcom/tekartik/sqflite/SqflitePlugin$BgResult;-><init>(Lcom/tekartik/sqflite/SqflitePlugin;Lio/flutter/plugin/common/MethodChannel$Result;Lcom/tekartik/sqflite/SqflitePlugin$1;)V

    .line 308
    sget-object p2, Lcom/tekartik/sqflite/SqflitePlugin;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/tekartik/sqflite/SqflitePlugin$1;

    invoke-direct {v2, p0, p1, v1, v0}, Lcom/tekartik/sqflite/SqflitePlugin$1;-><init>(Lcom/tekartik/sqflite/SqflitePlugin;Lio/flutter/plugin/common/MethodCall;Lcom/tekartik/sqflite/SqflitePlugin$BgResult;Lcom/tekartik/sqflite/Database;)V

    invoke-virtual {p2, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onUpdateCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    .line 617
    invoke-direct {p0, p1, p2}, Lcom/tekartik/sqflite/SqflitePlugin;->getDatabaseOrError(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)Lcom/tekartik/sqflite/Database;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 621
    :cond_0
    new-instance v1, Lcom/tekartik/sqflite/SqflitePlugin$BgResult;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, v2}, Lcom/tekartik/sqflite/SqflitePlugin$BgResult;-><init>(Lcom/tekartik/sqflite/SqflitePlugin;Lio/flutter/plugin/common/MethodChannel$Result;Lcom/tekartik/sqflite/SqflitePlugin$1;)V

    .line 622
    sget-object p2, Lcom/tekartik/sqflite/SqflitePlugin;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/tekartik/sqflite/SqflitePlugin$5;

    invoke-direct {v2, p0, p1, v1, v0}, Lcom/tekartik/sqflite/SqflitePlugin$5;-><init>(Lcom/tekartik/sqflite/SqflitePlugin;Lio/flutter/plugin/common/MethodCall;Lcom/tekartik/sqflite/SqflitePlugin$BgResult;Lcom/tekartik/sqflite/Database;)V

    invoke-virtual {p2, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private query(Lcom/tekartik/sqflite/Database;Lcom/tekartik/sqflite/operation/Operation;)Z
    .locals 12

    .line 475
    invoke-interface {p2}, Lcom/tekartik/sqflite/operation/Operation;->getSqlCommand()Lcom/tekartik/sqflite/SqlCommand;

    move-result-object v0

    .line 477
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 481
    iget v2, p1, Lcom/tekartik/sqflite/Database;->logLevel:I

    invoke-static {v2}, Lcom/tekartik/sqflite/LogLevel;->hasSqlLevel(I)Z

    move-result v2

    const-string v3, "Sqflite"

    if-eqz v2, :cond_0

    .line 482
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/tekartik/sqflite/Database;->getThreadLogPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_0
    sget-boolean v2, Lcom/tekartik/sqflite/SqflitePlugin;->QUERY_AS_MAP_LIST:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 489
    :try_start_0
    invoke-virtual {v0}, Lcom/tekartik/sqflite/SqlCommand;->sanitizeForQuery()Lcom/tekartik/sqflite/SqlCommand;

    move-result-object v0

    .line 491
    invoke-virtual {p1}, Lcom/tekartik/sqflite/Database;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    invoke-virtual {v0}, Lcom/tekartik/sqflite/SqlCommand;->getSql()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/tekartik/sqflite/SqlCommand;->getQuerySqlArguments()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v6, v4

    move-object v7, v5

    .line 492
    :goto_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_4

    if-eqz v2, :cond_2

    .line 494
    invoke-static {v0}, Lcom/tekartik/sqflite/SqflitePlugin;->cursorRowToMap(Landroid/database/Cursor;)Ljava/util/Map;

    move-result-object v8

    .line 495
    iget v9, p1, Lcom/tekartik/sqflite/Database;->logLevel:I

    invoke-static {v9}, Lcom/tekartik/sqflite/LogLevel;->hasSqlLevel(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 496
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/tekartik/sqflite/Database;->getThreadLogPrefix()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/tekartik/sqflite/SqflitePlugin;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_1
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-nez v5, :cond_3

    .line 501
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 502
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 503
    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v7

    const-string v8, "columns"

    .line 504
    invoke-interface {v0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "rows"

    .line 505
    invoke-interface {v6, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v11, v7

    move-object v7, v5

    move-object v5, v6

    move v6, v11

    .line 507
    :cond_3
    invoke-static {v0, v6}, Lcom/tekartik/sqflite/SqflitePlugin;->cursorRowToList(Landroid/database/Cursor;I)Ljava/util/List;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_5

    .line 511
    invoke-interface {p2, v1}, Lcom/tekartik/sqflite/operation/Operation;->success(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    if-nez v5, :cond_6

    .line 515
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 517
    :cond_6
    invoke-interface {p2, v5}, Lcom/tekartik/sqflite/operation/Operation;->success(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    const/4 p1, 0x1

    if-eqz v0, :cond_7

    .line 526
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_7
    return p1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception v1

    move-object v5, v0

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v0, v5

    goto :goto_3

    :catch_1
    move-exception v1

    .line 522
    :goto_2
    :try_start_2
    invoke-direct {p0, v1, p2, p1}, Lcom/tekartik/sqflite/SqflitePlugin;->handleException(Ljava/lang/Exception;Lcom/tekartik/sqflite/operation/Operation;Lcom/tekartik/sqflite/Database;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v5, :cond_8

    .line 526
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_8
    return v4

    :goto_3
    if-eqz v0, :cond_9

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 528
    :cond_9
    throw p1
.end method

.method public static registerWith(Lio/flutter/plugin/common/PluginRegistry$Registrar;)V
    .locals 2

    .line 105
    new-instance v0, Lcom/tekartik/sqflite/SqflitePlugin;

    invoke-direct {v0}, Lcom/tekartik/sqflite/SqflitePlugin;-><init>()V

    .line 106
    invoke-interface {p0}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->context()Landroid/content/Context;

    move-result-object v1

    invoke-interface {p0}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->messenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/tekartik/sqflite/SqflitePlugin;->onAttachedToEngine(Landroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;)V

    return-void
.end method

.method private static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 214
    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_2

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 216
    check-cast p0, [B

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v3, p0, v2

    .line 217
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 219
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 220
    :cond_2
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 222
    check-cast p0, Ljava/util/Map;

    .line 223
    invoke-static {p0}, Lcom/tekartik/sqflite/SqflitePlugin;->fixMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 225
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private update(Lcom/tekartik/sqflite/Database;Lcom/tekartik/sqflite/operation/Operation;)Z
    .locals 7

    .line 577
    invoke-direct {p0, p1, p2}, Lcom/tekartik/sqflite/SqflitePlugin;->executeOrError(Lcom/tekartik/sqflite/Database;Lcom/tekartik/sqflite/operation/Operation;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 581
    :cond_0
    invoke-interface {p2}, Lcom/tekartik/sqflite/operation/Operation;->getNoResult()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 582
    invoke-interface {p2, v3}, Lcom/tekartik/sqflite/operation/Operation;->success(Ljava/lang/Object;)V

    return v2

    .line 587
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/tekartik/sqflite/Database;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v4, "SELECT changes()"

    .line 589
    invoke-virtual {v0, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v4, "Sqflite"

    if-eqz v0, :cond_4

    .line 590
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 591
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 592
    iget v5, p1, Lcom/tekartik/sqflite/Database;->logLevel:I

    invoke-static {v5}, Lcom/tekartik/sqflite/LogLevel;->hasSqlLevel(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 593
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/tekartik/sqflite/Database;->getThreadLogPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "changed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v3}, Lcom/tekartik/sqflite/operation/Operation;->success(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 607
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    return v2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v2

    move-object v3, v0

    goto :goto_0

    .line 598
    :cond_4
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/tekartik/sqflite/Database;->getThreadLogPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "fail to read changes for Update/Delete"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    invoke-interface {p2, v3}, Lcom/tekartik/sqflite/operation/Operation;->success(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_5

    .line 607
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    return v2

    :catchall_1
    move-exception p1

    move-object v0, v3

    goto :goto_1

    :catch_1
    move-exception v2

    .line 603
    :goto_0
    :try_start_3
    invoke-direct {p0, v2, p2, p1}, Lcom/tekartik/sqflite/SqflitePlugin;->handleException(Ljava/lang/Exception;Lcom/tekartik/sqflite/operation/Operation;Lcom/tekartik/sqflite/Database;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_6

    .line 607
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_6
    return v1

    :goto_1
    if-eqz v0, :cond_7

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 609
    :cond_7
    throw p1
.end method


# virtual methods
.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 1

    .line 111
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/tekartik/sqflite/SqflitePlugin;->onAttachedToEngine(Landroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;)V

    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 1

    const/4 p1, 0x0

    .line 122
    iput-object p1, p0, Lcom/tekartik/sqflite/SqflitePlugin;->context:Landroid/content/Context;

    .line 123
    iget-object v0, p0, Lcom/tekartik/sqflite/SqflitePlugin;->methodChannel:Lio/flutter/plugin/common/MethodChannel;

    invoke-virtual {v0, p1}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 124
    iput-object p1, p0, Lcom/tekartik/sqflite/SqflitePlugin;->methodChannel:Lio/flutter/plugin/common/MethodChannel;

    return-void
.end method

.method onGetDatabasesPathCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 1033
    sget-object p1, Lcom/tekartik/sqflite/SqflitePlugin;->databasesPath:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 1035
    iget-object p1, p0, Lcom/tekartik/sqflite/SqflitePlugin;->context:Landroid/content/Context;

    const-string v0, "tekartik_sqflite.db"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 1036
    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/tekartik/sqflite/SqflitePlugin;->databasesPath:Ljava/lang/String;

    .line 1038
    :cond_0
    sget-object p1, Lcom/tekartik/sqflite/SqflitePlugin;->databasesPath:Ljava/lang/String;

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 953
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "getDatabasesPath"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "getPlatformVersion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "query"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "debug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto :goto_1

    :sswitch_4
    const-string v1, "batch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_5
    const-string v1, "openDatabase"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_6
    const-string v1, "debugMode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto :goto_1

    :sswitch_7
    const-string v1, "deleteDatabase"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_1

    :sswitch_8
    const-string v1, "update"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_9
    const-string v1, "insert"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_a
    const-string v1, "options"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_b
    const-string v1, "closeDatabase"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_c
    const-string v1, "execute"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 1009
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    goto :goto_2

    .line 1005
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/tekartik/sqflite/SqflitePlugin;->onDebugModeCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_2

    .line 1000
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/tekartik/sqflite/SqflitePlugin;->onDebugCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_2

    .line 996
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/tekartik/sqflite/SqflitePlugin;->onDeleteDatabaseCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_2

    .line 992
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lcom/tekartik/sqflite/SqflitePlugin;->onGetDatabasesPathCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_2

    .line 988
    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lcom/tekartik/sqflite/SqflitePlugin;->onOptionsCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_2

    .line 984
    :pswitch_5
    invoke-direct {p0, p1, p2}, Lcom/tekartik/sqflite/SqflitePlugin;->onBatchCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_2

    .line 980
    :pswitch_6
    invoke-direct {p0, p1, p2}, Lcom/tekartik/sqflite/SqflitePlugin;->onOpenDatabaseCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_2

    .line 976
    :pswitch_7
    invoke-direct {p0, p1, p2}, Lcom/tekartik/sqflite/SqflitePlugin;->onExecuteCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_2

    .line 972
    :pswitch_8
    invoke-direct {p0, p1, p2}, Lcom/tekartik/sqflite/SqflitePlugin;->onUpdateCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_2

    .line 968
    :pswitch_9
    invoke-direct {p0, p1, p2}, Lcom/tekartik/sqflite/SqflitePlugin;->onInsertCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_2

    .line 964
    :pswitch_a
    invoke-direct {p0, p1, p2}, Lcom/tekartik/sqflite/SqflitePlugin;->onQueryCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_2

    .line 960
    :pswitch_b
    invoke-direct {p0, p1, p2}, Lcom/tekartik/sqflite/SqflitePlugin;->onCloseDatabaseCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_2

    .line 956
    :pswitch_c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Android "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4ea7088b -> :sswitch_c
        -0x4ab8246d -> :sswitch_b
        -0x4a797962 -> :sswitch_a
        -0x468f3d47 -> :sswitch_9
        -0x31ffc737 -> :sswitch_8
        -0xfb4dfba -> :sswitch_7
        -0xbd41d6a -> :sswitch_6
        -0x1064e1b -> :sswitch_5
        0x592d73a -> :sswitch_4
        0x5b09653 -> :sswitch_3
        0x66f18c8 -> :sswitch_2
        0x529446af -> :sswitch_1
        0x6f17c6e7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method onOptionsCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    const-string v0, "queryAsMapList"

    .line 1015
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1017
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/tekartik/sqflite/SqflitePlugin;->QUERY_AS_MAP_LIST:Z

    :cond_0
    const-string v0, "androidThreadPriority"

    .line 1019
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1021
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/tekartik/sqflite/SqflitePlugin;->THREAD_PRIORITY:I

    .line 1023
    :cond_1
    invoke-static {p1}, Lcom/tekartik/sqflite/LogLevel;->getLogLevel(Lio/flutter/plugin/common/MethodCall;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1025
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sput p1, Lcom/tekartik/sqflite/SqflitePlugin;->logLevel:I

    :cond_2
    const/4 p1, 0x0

    .line 1027
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method
