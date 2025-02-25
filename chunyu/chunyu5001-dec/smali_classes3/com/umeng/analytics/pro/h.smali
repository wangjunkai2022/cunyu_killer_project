.class public Lcom/umeng/analytics/pro/h;
.super Ljava/lang/Object;
.source "UMStoreManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/pro/h$a;,
        Lcom/umeng/analytics/pro/h$b;
    }
.end annotation


# static fields
.field public static final a:I = 0x801

.field public static final b:I = 0x802

.field private static final c:I = 0x3e8

.field private static d:Landroid/content/Context; = null

.field private static e:Ljava/lang/String; = null

.field private static final f:Ljava/lang/String; = "umeng+"

.field private static final g:Ljava/lang/String; = "ek__id"

.field private static final h:Ljava/lang/String; = "ek_key"


# instance fields
.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/lang/String;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/h;->i:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/h;->j:Ljava/util/List;

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/umeng/analytics/pro/h;->k:Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/h;->l:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/pro/h$1;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/umeng/analytics/pro/h;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/umeng/analytics/pro/h;
    .locals 2

    .line 79
    invoke-static {}, Lcom/umeng/analytics/pro/h$b;->a()Lcom/umeng/analytics/pro/h;

    move-result-object v0

    .line 80
    sget-object v1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    if-nez v1, :cond_0

    if-eqz p0, :cond_0

    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    .line 83
    invoke-direct {v0}, Lcom/umeng/analytics/pro/h;->k()V

    :cond_0
    return-object v0
.end method

.method private a(Lorg/json/JSONObject;Z)Ljava/lang/String;
    .locals 21

    move-object/from16 v1, p0

    const/4 v0, 0x0

    .line 937
    :try_start_0
    sget-object v2, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/analytics/pro/f;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 938
    :try_start_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v3, "select *  from __sd"

    .line 941
    invoke-virtual {v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    if-eqz v3, :cond_11

    .line 944
    :try_start_2
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 947
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 948
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "__f"

    .line 949
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "__e"

    .line 950
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "__g"

    .line 951
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "__ii"

    .line 953
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 956
    :try_start_3
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_b

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 957
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    sub-long/2addr v9, v11

    const-wide/16 v11, 0x0

    cmp-long v13, v9, v11

    if-lez v13, :cond_9

    const-string v9, "__a"

    .line 959
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "__b"

    .line 961
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v13, "__c"

    .line 963
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "__d"

    .line 965
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v3, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 966
    iget-object v15, v1, Lcom/umeng/analytics/pro/h;->i:Ljava/util/List;

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v15, "__sp"

    .line 967
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v3, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const-string v11, "__pp"

    .line 968
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "id"

    .line 969
    invoke-virtual {v5, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v12, "start_time"

    .line 970
    invoke-virtual {v5, v12, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v12, "end_time"

    .line 971
    invoke-virtual {v5, v12, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v12, "header_foreground_count"

    .line 972
    invoke-static {v12}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result v12
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object/from16 v18, v0

    const-string v0, "duration"

    if-eqz v12, :cond_1

    .line 973
    :try_start_4
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v19

    const-wide/16 v16, 0x0

    cmp-long v12, v19, v16

    if-gtz v12, :cond_0

    .line 976
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    sub-long v6, v16, v6

    .line 975
    invoke-virtual {v5, v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v12, v2

    move-object/from16 v16, v3

    goto :goto_1

    :cond_0
    move-object v12, v2

    move-object/from16 v16, v3

    .line 978
    :try_start_5
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v5, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "duration_old"

    .line 980
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    sub-long/2addr v2, v6

    .line 979
    invoke-virtual {v5, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_1

    :catchall_0
    move-object v12, v2

    move-object/from16 v16, v3

    :catchall_1
    move-object/from16 v0, v18

    goto/16 :goto_7

    :catch_0
    move-object v12, v2

    move-object/from16 v16, v3

    :catch_1
    move-object/from16 v0, v18

    goto/16 :goto_8

    :cond_1
    move-object v12, v2

    move-object/from16 v16, v3

    .line 985
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    sub-long/2addr v2, v6

    .line 984
    invoke-virtual {v5, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 988
    :goto_1
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 989
    new-instance v0, Lorg/json/JSONArray;

    invoke-virtual {v1, v9}, Lcom/umeng/analytics/pro/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const-string v2, "pages"

    .line 990
    invoke-virtual {v5, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 992
    :cond_2
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/umeng/analytics/pro/k;->b:Lcom/umeng/analytics/MobclickAgent$PageMode;

    sget-object v2, Lcom/umeng/analytics/MobclickAgent$PageMode;->AUTO:Lcom/umeng/analytics/MobclickAgent$PageMode;

    if-ne v0, v2, :cond_4

    .line 994
    new-instance v0, Lorg/json/JSONArray;

    invoke-virtual {v1, v10}, Lcom/umeng/analytics/pro/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 995
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 997
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 998
    invoke-direct {v1, v0}, Lcom/umeng/analytics/pro/h;->b(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v2

    :cond_3
    const-string v0, "autopages"

    .line 1000
    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1002
    :cond_4
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "traffic"

    .line 1003
    new-instance v2, Lorg/json/JSONObject;

    .line 1004
    invoke-virtual {v1, v13}, Lcom/umeng/analytics/pro/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1003
    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1006
    :cond_5
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "locations"

    .line 1007
    new-instance v2, Lorg/json/JSONArray;

    .line 1008
    invoke-virtual {v1, v14}, Lcom/umeng/analytics/pro/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1007
    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1010
    :cond_6
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "_$sp"

    .line 1011
    new-instance v2, Lorg/json/JSONObject;

    .line 1012
    invoke-virtual {v1, v15}, Lcom/umeng/analytics/pro/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1011
    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1014
    :cond_7
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "_$pp"

    .line 1015
    new-instance v2, Lorg/json/JSONObject;

    .line 1016
    invoke-virtual {v1, v11}, Lcom/umeng/analytics/pro/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1015
    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1018
    :cond_8
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_a

    .line 1019
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :cond_9
    move-object/from16 v18, v0

    move-object v12, v2

    move-object/from16 v16, v3

    :cond_a
    :goto_2
    if-eqz p2, :cond_c

    move-object/from16 v0, v18

    goto :goto_3

    :cond_b
    move-object/from16 v18, v0

    move-object v12, v2

    move-object/from16 v16, v3

    :cond_c
    move-object v2, v12

    move-object/from16 v3, v16

    move-object/from16 v0, v18

    goto/16 :goto_0

    :catchall_2
    move-object/from16 v18, v0

    goto :goto_4

    :catch_2
    move-object/from16 v18, v0

    goto :goto_5

    :cond_d
    move-object v12, v2

    move-object/from16 v16, v3

    .line 1029
    :goto_3
    :try_start_6
    iget-object v2, v1, Lcom/umeng/analytics/pro/h;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    const/4 v3, 0x1

    if-ge v2, v3, :cond_10

    if-eqz v16, :cond_e

    .line 1047
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_e
    if-eqz v12, :cond_f

    .line 1051
    :try_start_7
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1054
    :catchall_3
    :cond_f
    sget-object v2, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/analytics/pro/f;->b()V

    return-object v0

    .line 1032
    :cond_10
    :try_start_8
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_12

    const-string v2, "sessions"

    move-object/from16 v3, p1

    .line 1033
    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_6

    :catchall_4
    :goto_4
    move-object v12, v2

    move-object/from16 v16, v3

    goto :goto_7

    :catch_3
    :goto_5
    move-object v12, v2

    move-object/from16 v16, v3

    goto :goto_8

    :cond_11
    move-object v12, v2

    move-object/from16 v16, v3

    .line 1038
    :cond_12
    :goto_6
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    if-eqz v16, :cond_13

    .line 1047
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_13
    if-eqz v12, :cond_16

    goto :goto_9

    :catchall_5
    move-object v12, v2

    move-object/from16 v16, v0

    goto :goto_7

    :catch_4
    move-object v12, v2

    move-object/from16 v16, v0

    goto :goto_8

    :catchall_6
    move-object v12, v0

    move-object/from16 v16, v12

    .line 1044
    :catchall_7
    :goto_7
    :try_start_9
    sget-object v2, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    if-eqz v16, :cond_14

    .line 1047
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_14
    if-eqz v12, :cond_16

    goto :goto_9

    :catch_5
    move-object v12, v0

    move-object/from16 v16, v12

    .line 1042
    :catch_6
    :goto_8
    :try_start_a
    sget-object v2, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    if-eqz v16, :cond_15

    .line 1047
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_15
    if-eqz v12, :cond_16

    .line 1051
    :goto_9
    :try_start_b
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    .line 1054
    :catchall_8
    :cond_16
    sget-object v2, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/analytics/pro/f;->b()V

    return-object v0

    :catchall_9
    move-exception v0

    if-eqz v16, :cond_17

    .line 1047
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_17
    if-eqz v12, :cond_18

    .line 1051
    :try_start_c
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_a

    .line 1054
    :catchall_a
    :cond_18
    sget-object v2, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/analytics/pro/f;->b()V

    throw v0
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 12

    const-string v0, "__pp"

    const-string v1, "__sp"

    const-string v2, "__g"

    const-string v3, "\", "

    const-string v4, "=\""

    :try_start_0
    const-string v5, "__f"

    .line 309
    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    .line 311
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 313
    instance-of v10, v9, Ljava/lang/Long;

    if-eqz v10, :cond_0

    .line 314
    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 318
    :cond_0
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 319
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v10, ""

    if-eqz v9, :cond_1

    .line 322
    :try_start_1
    invoke-virtual {v9}, Lorg/json/JSONObject;->length()I

    move-result v11

    if-lez v11, :cond_1

    .line 323
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/umeng/analytics/pro/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :cond_1
    move-object v9, v10

    :goto_0
    if-eqz p2, :cond_2

    .line 325
    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result v11

    if-lez v11, :cond_2

    .line 326
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/umeng/analytics/pro/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 329
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "update __sd set __f=\""

    invoke-virtual {p2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" where "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "__ii"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 336
    invoke-virtual {p3, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-void
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "=\""

    const-string v1, "__ii"

    const-string v2, "__b"

    const-string v3, "__a"

    const/4 v4, 0x0

    .line 490
    :try_start_0
    invoke-virtual {v3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 491
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 492
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-gtz v2, :cond_4

    :cond_0
    return-void

    .line 495
    :cond_1
    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 496
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 497
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-gtz v2, :cond_4

    :cond_2
    return-void

    :cond_3
    move-object p2, v4

    .line 502
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "select "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "__sd"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " where "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v3, v5

    .line 504
    invoke-virtual {p3, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_5

    .line 507
    :goto_0
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 508
    invoke-interface {v2, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 509
    invoke-virtual {p0, v3}, Lcom/umeng/analytics/pro/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :catchall_0
    move-object v4, v2

    goto/16 :goto_2

    .line 514
    :cond_5
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 515
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 516
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 520
    :cond_6
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v6, 0x3e8

    if-le v4, v6, :cond_8

    if-eqz v2, :cond_7

    .line 550
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_7
    return-void

    .line 525
    :cond_8
    :goto_1
    :try_start_2
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ge v5, v4, :cond_a

    .line 529
    :try_start_3
    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_9

    .line 535
    :try_start_4
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :catch_0
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 540
    :cond_a
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/umeng/analytics/pro/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 541
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 542
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update __sd set "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\" where "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 544
    invoke-virtual {p3, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_b
    if-eqz v2, :cond_c

    .line 550
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    nop

    :goto_2
    if-eqz v4, :cond_c

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_c
    :goto_3
    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 10

    const/4 v0, 0x0

    .line 669
    :try_start_0
    sget-object v1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/f;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 670
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v2, "select *  from __et"

    .line 672
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    const-string v2, "select *  from __et where __i=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    aput-object p2, v3, v4

    .line 675
    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    goto :goto_0

    .line 677
    :cond_0
    invoke-virtual {v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    :goto_0
    move-object v0, p2

    if-eqz v0, :cond_e

    .line 687
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 688
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 689
    invoke-static {}, Lcom/umeng/analytics/pro/t;->a()Lcom/umeng/analytics/pro/t;

    move-result-object v3

    invoke-virtual {v3}, Lcom/umeng/analytics/pro/t;->b()Ljava/lang/String;

    move-result-object v3

    .line 691
    :cond_1
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "__t"

    .line 692
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const-string v6, "__i"

    .line 693
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "__s"

    .line 694
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 700
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "-1"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 701
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    move-object v6, v3

    .line 708
    :cond_3
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 710
    iget-object v9, p0, Lcom/umeng/analytics/pro/h;->j:Ljava/util/List;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v8, 0x801

    if-eq v5, v8, :cond_6

    const/16 v8, 0x802

    if-eq v5, v8, :cond_4

    goto :goto_1

    .line 726
    :cond_4
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 727
    new-instance v5, Lorg/json/JSONObject;

    invoke-virtual {p0, v7}, Lcom/umeng/analytics/pro/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 728
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 729
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    goto :goto_2

    .line 731
    :cond_5
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 733
    :goto_2
    invoke-virtual {v7, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 734
    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 714
    :cond_6
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 715
    new-instance v5, Lorg/json/JSONObject;

    invoke-virtual {p0, v7}, Lcom/umeng/analytics/pro/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 716
    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 717
    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    goto :goto_3

    .line 719
    :cond_7
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 721
    :goto_3
    invoke-virtual {v7, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 722
    invoke-virtual {p2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 742
    :cond_8
    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_b

    .line 743
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 744
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 746
    :cond_9
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 747
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 748
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 749
    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 750
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8, v7}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 751
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v6

    if-lez v6, :cond_9

    .line 752
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_4

    .line 755
    :cond_a
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-lez p2, :cond_b

    const-string p2, "ekv"

    .line 756
    invoke-virtual {p1, p2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 759
    :cond_b
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result p2

    if-lez p2, :cond_e

    .line 760
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    .line 761
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 763
    :cond_c
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 764
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 765
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 766
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 767
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 768
    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v5

    if-lez v5, :cond_c

    .line 769
    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_5

    .line 772
    :cond_d
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_e

    const-string v2, "gkv"

    .line 773
    invoke-virtual {p1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 782
    :cond_e
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_f

    .line 790
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_f
    if-eqz v1, :cond_12

    goto :goto_6

    :catchall_0
    move-object v1, v0

    .line 787
    :catchall_1
    :try_start_2
    sget-object p1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v0, :cond_10

    .line 790
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_10
    if-eqz v1, :cond_12

    goto :goto_6

    :catch_0
    move-object v1, v0

    .line 785
    :catch_1
    :try_start_3
    sget-object p1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v0, :cond_11

    .line 790
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_11
    if-eqz v1, :cond_12

    .line 794
    :goto_6
    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 797
    :catchall_2
    :cond_12
    sget-object p1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/f;->b()V

    return-void

    :catchall_3
    move-exception p1

    if-eqz v0, :cond_13

    .line 790
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_13
    if-eqz v1, :cond_14

    .line 794
    :try_start_5
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 797
    :catchall_4
    :cond_14
    sget-object p2, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object p2

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/f;->b()V

    throw p1
.end method

.method private b(Lorg/json/JSONObject;Z)Ljava/lang/String;
    .locals 10

    const/4 v0, 0x0

    .line 1071
    :try_start_0
    sget-object v1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/f;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1072
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v2, "select *  from __is"

    .line 1075
    invoke-virtual {v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v2, :cond_5

    .line 1078
    :try_start_2
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 1081
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1082
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "__e"

    .line 1084
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "__ii"

    .line 1086
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1089
    iget-object v6, p0, Lcom/umeng/analytics/pro/h;->l:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v6, "__sp"

    .line 1090
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "__pp"

    .line 1091
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1092
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "_$sp"

    .line 1093
    new-instance v9, Lorg/json/JSONObject;

    invoke-virtual {p0, v6}, Lcom/umeng/analytics/pro/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v9, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1096
    :cond_1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "_$pp"

    .line 1097
    new-instance v8, Lorg/json/JSONObject;

    invoke-virtual {p0, v7}, Lcom/umeng/analytics/pro/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1100
    :cond_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "id"

    .line 1102
    invoke-virtual {v4, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "start_time"

    .line 1103
    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1105
    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 1106
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_3
    if-eqz p2, :cond_0

    .line 1119
    :cond_4
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-lez p2, :cond_5

    const-string p2, "sessions"

    .line 1120
    invoke-virtual {p1, p2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1125
    :cond_5
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_6

    .line 1134
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_6
    if-eqz v1, :cond_7

    .line 1138
    :try_start_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1141
    :catchall_0
    :cond_7
    sget-object p1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/f;->b()V

    goto :goto_3

    :catchall_1
    move-object p1, v0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-object p1, v0

    move-object v0, v2

    goto :goto_1

    :catchall_2
    move-object p1, v0

    goto :goto_0

    :catch_1
    move-object p1, v0

    goto :goto_1

    :catchall_3
    move-object p1, v0

    move-object v1, p1

    .line 1131
    :goto_0
    :try_start_4
    sget-object p2, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    if-eqz v0, :cond_8

    .line 1134
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_8
    if-eqz v1, :cond_a

    goto :goto_2

    :catch_2
    move-object p1, v0

    move-object v1, p1

    .line 1129
    :goto_1
    :try_start_5
    sget-object p2, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    if-eqz v0, :cond_9

    .line 1134
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_9
    if-eqz v1, :cond_a

    .line 1138
    :goto_2
    :try_start_6
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 1141
    :catchall_4
    :cond_a
    sget-object p2, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object p2

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/f;->b()V

    move-object v0, p1

    :goto_3
    return-object v0

    :catchall_5
    move-exception p1

    if-eqz v0, :cond_b

    .line 1134
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_b
    if-eqz v1, :cond_c

    .line 1138
    :try_start_7
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 1141
    :catchall_6
    :cond_c
    sget-object p2, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object p2

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/f;->b()V

    throw p1
.end method

.method private b(Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 9

    .line 910
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 911
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 915
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "duration"

    .line 917
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_0

    .line 919
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private b(Ljava/lang/String;Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8

    const-string v0, "__pp"

    const-string v1, "__sp"

    const-string v2, "__e"

    .line 350
    :try_start_0
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 352
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 353
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, ""

    if-eqz v5, :cond_0

    .line 356
    :try_start_1
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 357
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/umeng/analytics/pro/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v6

    :goto_0
    if-eqz p2, :cond_1

    .line 359
    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 360
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/umeng/analytics/pro/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 363
    :cond_1
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "__ii"

    .line 364
    invoke-virtual {p2, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    invoke-virtual {p2, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    invoke-virtual {p2, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "__av"

    .line 368
    sget-object v0, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/service/UMGlobalContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "__vc"

    .line 369
    sget-object v0, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "__is"

    const/4 v0, 0x0

    .line 370
    invoke-virtual {p3, p1, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-void
.end method

.method private b(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    .line 812
    :try_start_0
    sget-object v1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/f;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 813
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v2, "select *  from __er"

    .line 815
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v2, "select *  from __er where __i=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    .line 818
    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    goto :goto_0

    .line 820
    :cond_0
    invoke-virtual {v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    :goto_0
    move-object v0, p2

    if-eqz v0, :cond_3

    .line 825
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    .line 826
    :cond_1
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "__a"

    .line 827
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 828
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 829
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p0, v2}, Lcom/umeng/analytics/pro/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 832
    :cond_2
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_3

    const-string v2, "error"

    .line 833
    invoke-virtual {p1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 838
    :cond_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_4

    .line 846
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    if-eqz v1, :cond_7

    goto :goto_2

    :catchall_0
    move-object v1, v0

    .line 843
    :catchall_1
    :try_start_2
    sget-object p1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v0, :cond_5

    .line 846
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    if-eqz v1, :cond_7

    goto :goto_2

    :catch_0
    move-object v1, v0

    .line 841
    :catch_1
    :try_start_3
    sget-object p1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v0, :cond_6

    .line 846
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6
    if-eqz v1, :cond_7

    .line 850
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 853
    :catchall_2
    :cond_7
    sget-object p1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/f;->b()V

    return-void

    :catchall_3
    move-exception p1

    if-eqz v0, :cond_8

    .line 846
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_8
    if-eqz v1, :cond_9

    .line 850
    :try_start_5
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 853
    :catchall_4
    :cond_9
    sget-object p2, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object p2

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/f;->b()V

    throw p1
.end method

.method private c(Ljava/lang/String;Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9

    const-string v0, "__d"

    const/4 v1, 0x0

    .line 418
    :try_start_0
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "select __d from __sd where __ii=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    .line 426
    invoke-virtual {p3, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_1

    .line 428
    :goto_0
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 429
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 430
    invoke-virtual {p0, v1}, Lcom/umeng/analytics/pro/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    move-object v3, v1

    :cond_1
    const-string v0, "\""

    const-string v4, "=\""

    const-string v5, "__ii"

    const-string v6, "\" where "

    if-eqz v2, :cond_3

    .line 436
    :try_start_2
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 437
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 438
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 440
    :cond_2
    invoke-virtual {v7, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 442
    invoke-virtual {v7}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/umeng/analytics/pro/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 443
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 444
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update  __sd set __d=\""

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 447
    invoke-virtual {p3, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_3
    const-string v1, "__c"

    .line 451
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 453
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/umeng/analytics/pro/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 454
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 455
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update  __sd set __c=\""

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 458
    invoke-virtual {p3, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_4
    const-string v1, "__f"

    .line 461
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 462
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update  __sd set __f=\""

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 465
    invoke-virtual {p3, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_5

    .line 469
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-object v1, v3

    goto :goto_1

    :catchall_1
    nop

    :goto_1
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_2
    return-void
.end method

.method private k()V
    .locals 1

    .line 90
    monitor-enter p0

    .line 91
    :try_start_0
    invoke-direct {p0}, Lcom/umeng/analytics/pro/h;->l()V

    .line 92
    iget-object v0, p0, Lcom/umeng/analytics/pro/h;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 93
    iget-object v0, p0, Lcom/umeng/analytics/pro/h;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 94
    iget-object v0, p0, Lcom/umeng/analytics/pro/h;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 95
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private l()V
    .locals 8

    const-string v0, "ek_key"

    const-string v1, "ek__id"

    .line 1429
    :try_start_0
    sget-object v2, Lcom/umeng/analytics/pro/h;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1431
    sget-object v2, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/umeng/commonsdk/utils/UMUtils;->getMultiProcessSP(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1432
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1435
    sget-object v2, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v3, 0x0

    .line 1436
    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1437
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1438
    invoke-static {}, Lcom/umeng/commonsdk/utils/UMUtils;->genId()Ljava/lang/String;

    move-result-object v2

    .line 1440
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1442
    sget-object v3, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v3, v1, v2}, Lcom/umeng/commonsdk/utils/UMUtils;->setMultiProcessSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1445
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_5

    const/16 v1, 0x9

    .line 1446
    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1447
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    .line 1449
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 1450
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 1451
    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1452
    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_2

    .line 1453
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1455
    :cond_2
    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    rsub-int/lit8 v6, v6, 0xa

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1458
    :cond_3
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1461
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/umeng/analytics/pro/h;->e:Ljava/lang/String;

    .line 1463
    :cond_5
    sget-object v1, Lcom/umeng/analytics/pro/h;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1464
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/umeng/analytics/pro/h;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/umeng/analytics/pro/h;->e:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/umeng/analytics/pro/h;->e:Ljava/lang/String;

    .line 1469
    sget-object v1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/umeng/commonsdk/utils/UMUtils;->getMultiProcessSP(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1470
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "umeng+"

    if-eqz v2, :cond_6

    .line 1472
    :try_start_1
    sget-object v1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-virtual {p0, v5}, Lcom/umeng/analytics/pro/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/umeng/commonsdk/utils/UMUtils;->setMultiProcessSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1474
    :cond_6
    invoke-virtual {p0, v1}, Lcom/umeng/analytics/pro/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1475
    invoke-virtual {p0, v4, v3}, Lcom/umeng/analytics/pro/h;->b(ZZ)V

    .line 1476
    invoke-virtual {p0, v4, v3}, Lcom/umeng/analytics/pro/h;->a(ZZ)V

    .line 1477
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/h;->h()V

    .line 1478
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/h;->i()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_7
    :goto_2
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)J
    .locals 7

    const-string v0, "select __f from __sd where __ii=?"

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 389
    :try_start_0
    sget-object v4, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object v4

    invoke-virtual {v4}, Lcom/umeng/analytics/pro/f;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 390
    :try_start_1
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    .line 391
    invoke-virtual {v4, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 393
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string p1, "__f"

    .line 394
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    if-eqz v1, :cond_1

    .line 402
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :cond_1
    if-eqz v4, :cond_5

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v4, v1

    :goto_0
    if-eqz v1, :cond_2

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    if-eqz v4, :cond_3

    .line 405
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 408
    :catch_0
    :cond_3
    sget-object v0, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/f;->b()V

    throw p1

    :catch_1
    move-object v4, v1

    :catch_2
    if-eqz v1, :cond_4

    .line 402
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    if-eqz v4, :cond_5

    .line 405
    :goto_1
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 408
    :catch_3
    :cond_5
    sget-object p1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/f;->b()V

    return-wide v2
.end method

.method public a(Z)Lorg/json/JSONObject;
    .locals 2

    .line 567
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/h;->a()V

    .line 568
    iget-object v0, p0, Lcom/umeng/analytics/pro/h;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 570
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-nez p1, :cond_0

    .line 573
    invoke-direct {p0, v0, p1}, Lcom/umeng/analytics/pro/h;->a(Lorg/json/JSONObject;Z)Ljava/lang/String;

    const/4 p1, 0x0

    .line 574
    invoke-direct {p0, v0, p1}, Lcom/umeng/analytics/pro/h;->b(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 575
    invoke-direct {p0, v0, p1}, Lcom/umeng/analytics/pro/h;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0

    .line 586
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/umeng/analytics/pro/h;->a(Lorg/json/JSONObject;Z)Ljava/lang/String;

    move-result-object p1

    .line 587
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 588
    invoke-direct {p0, v0, p1}, Lcom/umeng/analytics/pro/h;->b(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 589
    invoke-direct {p0, v0, p1}, Lcom/umeng/analytics/pro/h;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public a()V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/umeng/analytics/pro/h;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public a(Lorg/json/JSONArray;)V
    .locals 10

    const-string v0, "__t"

    const-string v1, "__i"

    const/4 v2, 0x0

    .line 121
    :try_start_0
    sget-object v3, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/umeng/analytics/pro/f;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 122
    :try_start_1
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v4, 0x0

    .line 123
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ge v4, v5, :cond_2

    .line 125
    :try_start_2
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 126
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 127
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 131
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v9, "-1"

    if-nez v8, :cond_0

    :try_start_3
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 132
    :cond_0
    invoke-static {}, Lcom/umeng/analytics/pro/t;->a()Lcom/umeng/analytics/pro/t;

    move-result-object v7

    invoke-virtual {v7}, Lcom/umeng/analytics/pro/t;->b()Ljava/lang/String;

    move-result-object v7

    .line 133
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v7, v9

    .line 137
    :cond_1
    invoke-virtual {v6, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "__e"

    const-string v8, "id"

    .line 138
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "__av"

    .line 141
    sget-object v8, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v8}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "__vc"

    .line 142
    sget-object v8, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v8}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 145
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string v7, "__s"

    .line 146
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/umeng/analytics/pro/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "__et"

    .line 147
    invoke-virtual {v3, v5, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 151
    :cond_2
    :try_start_4
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_3

    .line 159
    :try_start_5
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_3

    :catchall_0
    move-object v2, v3

    goto :goto_1

    :catch_1
    move-object v2, v3

    goto :goto_4

    :catchall_1
    :goto_1
    if-eqz v2, :cond_3

    :goto_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 162
    :catchall_2
    :cond_3
    :goto_3
    sget-object p1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/f;->b()V

    goto :goto_5

    .line 154
    :catch_2
    :goto_4
    :try_start_6
    sget-object p1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v2, :cond_3

    goto :goto_2

    :goto_5
    return-void

    :catchall_3
    move-exception p1

    if-eqz v2, :cond_4

    .line 159
    :try_start_7
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 162
    :catchall_4
    :cond_4
    sget-object v0, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/f;->b()V

    throw p1
.end method

.method public a(ZLjava/lang/String;)V
    .locals 3

    const-string p1, "\""

    const/4 v0, 0x0

    .line 1357
    :try_start_0
    sget-object v1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/f;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1358
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1359
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1361
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete from __er where __i=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1363
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1366
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete from __et where __i=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1368
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1369
    iget-object v1, p0, Lcom/umeng/analytics/pro/h;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1372
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete from __sd where __ii=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1374
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1377
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_0

    :catchall_0
    if-eqz v0, :cond_1

    .line 1385
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1388
    :catchall_1
    :cond_1
    sget-object p1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/f;->b()V

    goto :goto_1

    .line 1380
    :catch_0
    :try_start_2
    sget-object p1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v0, :cond_1

    goto :goto_0

    :goto_1
    return-void

    :catchall_2
    move-exception p1

    if-eqz v0, :cond_2

    .line 1385
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1388
    :catchall_3
    :cond_2
    sget-object p2, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object p2

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/f;->b()V

    throw p1
.end method

.method public a(ZZ)V
    .locals 5

    const/4 v0, 0x0

    .line 1155
    :try_start_0
    sget-object v1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/f;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1156
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    if-eqz p2, :cond_0

    if-eqz p1, :cond_4

    const-string p1, "delete from __is"

    .line 1162
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_1

    .line 1169
    :cond_0
    iget-object p1, p0, Lcom/umeng/analytics/pro/h;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    if-lez p1, :cond_3

    const/4 v1, 0x0

    :goto_0
    if-ge p2, p1, :cond_2

    .line 1172
    iget-object v2, p0, Lcom/umeng/analytics/pro/h;->l:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 1176
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete from __is where __ii=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1179
    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    move p2, v1

    :cond_3
    if-eqz p2, :cond_4

    const-string p1, "delete from __is where __ii is null"

    .line 1187
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1192
    :cond_4
    :goto_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_5

    goto :goto_2

    .line 1198
    :catchall_0
    :try_start_1
    sget-object p1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)V

    if-eqz v0, :cond_5

    goto :goto_2

    .line 1195
    :catch_0
    sget-object p1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v0, :cond_5

    .line 1203
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1206
    :catchall_1
    :cond_5
    sget-object p1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/f;->b()V

    return-void

    :catchall_2
    move-exception p1

    if-eqz v0, :cond_6

    .line 1203
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1206
    :catchall_3
    :cond_6
    sget-object p2, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object p2

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/f;->b()V

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4

    const/4 v0, 0x0

    .line 177
    :try_start_0
    sget-object v1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/f;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 178
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 179
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "__i"

    .line 180
    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0, p2}, Lcom/umeng/analytics/pro/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 182
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "__a"

    .line 183
    invoke-virtual {v2, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "__t"

    .line 184
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "__av"

    .line 187
    sget-object p2, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "__vc"

    .line 188
    sget-object p2, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "__er"

    .line 190
    invoke-virtual {v1, p1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 192
    :cond_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 200
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_2

    :catchall_0
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-object v0, v1

    goto :goto_3

    :catchall_1
    :goto_0
    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 203
    :catchall_2
    :cond_1
    :goto_2
    sget-object p1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/f;->b()V

    goto :goto_4

    .line 195
    :catch_1
    :goto_3
    :try_start_3
    sget-object p1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v0, :cond_1

    goto :goto_1

    :goto_4
    const/4 p1, 0x0

    return p1

    :catchall_3
    move-exception p1

    if-eqz v0, :cond_2

    .line 200
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 203
    :catchall_4
    :cond_2
    sget-object p2, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object p2

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/f;->b()V

    throw p1
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/umeng/analytics/pro/h$a;)Z
    .locals 6

    const-string v0, "__e"

    const/4 v1, 0x0

    if-nez p2, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    .line 262
    :try_start_0
    sget-object v3, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/umeng/analytics/pro/f;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 263
    :try_start_1
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 264
    sget-object v4, Lcom/umeng/analytics/pro/h$a;->c:Lcom/umeng/analytics/pro/h$a;

    if-ne p3, v4, :cond_1

    .line 266
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    .line 267
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "__ii"

    .line 268
    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "__av"

    .line 271
    sget-object p2, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "__vc"

    .line 272
    sget-object p2, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "__sd"

    .line 274
    invoke-virtual {v3, p1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    .line 275
    :cond_1
    sget-object v0, Lcom/umeng/analytics/pro/h$a;->f:Lcom/umeng/analytics/pro/h$a;

    if-ne p3, v0, :cond_2

    .line 277
    invoke-direct {p0, p1, p2, v3}, Lcom/umeng/analytics/pro/h;->b(Ljava/lang/String;Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 278
    :cond_2
    sget-object v0, Lcom/umeng/analytics/pro/h$a;->d:Lcom/umeng/analytics/pro/h$a;

    if-ne p3, v0, :cond_3

    .line 280
    invoke-direct {p0, p1, p2, v3}, Lcom/umeng/analytics/pro/h;->a(Ljava/lang/String;Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 282
    :cond_3
    sget-object v0, Lcom/umeng/analytics/pro/h$a;->b:Lcom/umeng/analytics/pro/h$a;

    if-ne p3, v0, :cond_4

    const-string p3, "__a"

    .line 283
    invoke-direct {p0, p1, p2, v3, p3}, Lcom/umeng/analytics/pro/h;->a(Ljava/lang/String;Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_0

    .line 285
    :cond_4
    sget-object v0, Lcom/umeng/analytics/pro/h$a;->a:Lcom/umeng/analytics/pro/h$a;

    if-ne p3, v0, :cond_5

    const-string p3, "__b"

    .line 286
    invoke-direct {p0, p1, p2, v3, p3}, Lcom/umeng/analytics/pro/h;->a(Ljava/lang/String;Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_0

    .line 288
    :cond_5
    sget-object v0, Lcom/umeng/analytics/pro/h$a;->e:Lcom/umeng/analytics/pro/h$a;

    if-ne p3, v0, :cond_6

    .line 289
    invoke-direct {p0, p1, p2, v3}, Lcom/umeng/analytics/pro/h;->c(Ljava/lang/String;Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 291
    :cond_6
    :goto_0
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_7

    .line 299
    :try_start_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_3

    :catchall_0
    move-object v2, v3

    goto :goto_1

    :catch_0
    move-object v2, v3

    goto :goto_4

    :catchall_1
    :goto_1
    if-eqz v2, :cond_7

    :goto_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 302
    :catchall_2
    :cond_7
    :goto_3
    sget-object p1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/f;->b()V

    goto :goto_5

    .line 294
    :catch_1
    :goto_4
    :try_start_3
    sget-object p1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v2, :cond_7

    goto :goto_2

    :goto_5
    return v1

    :catchall_3
    move-exception p1

    if-eqz v2, :cond_8

    .line 299
    :try_start_4
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 302
    :catchall_4
    :cond_8
    sget-object p2, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object p2

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/f;->b()V

    throw p1
.end method

.method public b(Z)Lorg/json/JSONObject;
    .locals 1

    .line 653
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 654
    invoke-direct {p0, v0, p1}, Lcom/umeng/analytics/pro/h;->b(Lorg/json/JSONObject;Z)Ljava/lang/String;

    return-object v0
.end method

.method public b()V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/umeng/analytics/pro/h;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 1400
    :try_start_0
    sget-object v1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/f;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1401
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1402
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1403
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete from __is where __ii=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1405
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1407
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_0

    :catchall_0
    if-eqz v0, :cond_1

    .line 1415
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1418
    :catchall_1
    :cond_1
    sget-object p1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/f;->b()V

    goto :goto_1

    .line 1410
    :catch_0
    :try_start_2
    sget-object p1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v0, :cond_1

    goto :goto_0

    :goto_1
    return-void

    :catchall_2
    move-exception p1

    if-eqz v0, :cond_2

    .line 1415
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1418
    :catchall_3
    :cond_2
    sget-object v0, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/f;->b()V

    throw p1
.end method

.method public b(ZZ)V
    .locals 2

    const/4 v0, 0x0

    .line 1219
    :try_start_0
    sget-object v1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/f;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1220
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    if-eqz p2, :cond_0

    if-eqz p1, :cond_1

    const-string p1, "delete from __sd"

    .line 1226
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_1

    .line 1231
    :cond_0
    iget-object p1, p0, Lcom/umeng/analytics/pro/h;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x0

    .line 1232
    :goto_0
    iget-object p2, p0, Lcom/umeng/analytics/pro/h;->i:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_1

    .line 1233
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete from __sd where __ii=\""

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/umeng/analytics/pro/h;->i:Ljava/util/List;

    .line 1234
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1235
    invoke-virtual {v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1241
    :cond_1
    :goto_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    goto :goto_2

    :catchall_0
    if-eqz v0, :cond_2

    .line 1249
    :goto_2
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1252
    :catchall_1
    :cond_2
    sget-object p1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/f;->b()V

    goto :goto_3

    .line 1244
    :catch_0
    :try_start_2
    sget-object p1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v0, :cond_2

    goto :goto_2

    :goto_3
    return-void

    :catchall_2
    move-exception p1

    if-eqz v0, :cond_3

    .line 1249
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1252
    :catchall_3
    :cond_3
    sget-object p2, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object p2

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/f;->b()V

    throw p1
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1497
    :try_start_0
    sget-object v0, Lcom/umeng/analytics/pro/h;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1500
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    sget-object v0, Lcom/umeng/analytics/pro/h;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p1, v0}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->encrypt([B[B)[B

    move-result-object p1

    const/4 v0, 0x0

    .line 1501
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public c()Z
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/umeng/analytics/pro/h;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1517
    :try_start_0
    sget-object v0, Lcom/umeng/analytics/pro/h;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1520
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    .line 1521
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/umeng/analytics/pro/h;->e:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->decrypt([B[B)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v1

    goto :goto_0

    :catch_0
    nop

    .line 1524
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    .line 1525
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1527
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "MobclickRT"

    const-string v1, "--->>> UMStoreManager decrypt failed, return origin data."

    .line 1528
    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public d()V
    .locals 7

    const/4 v0, 0x0

    .line 216
    :try_start_0
    sget-object v1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/f;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 217
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 219
    invoke-static {}, Lcom/umeng/analytics/pro/t;->a()Lcom/umeng/analytics/pro/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/t;->c()Ljava/lang/String;

    move-result-object v1

    .line 221
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    .line 241
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    :catchall_0
    :cond_0
    sget-object v0, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/f;->b()V

    return-void

    :cond_1
    const/4 v2, 0x2

    :try_start_2
    const-string v3, ""

    const-string v4, "-1"

    .line 225
    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    .line 228
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update __et set __i=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\" where "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "__i"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v3, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 231
    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 233
    :cond_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_3

    goto :goto_1

    :catchall_1
    if-eqz v0, :cond_3

    .line 241
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 244
    :catchall_2
    :cond_3
    sget-object v0, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/f;->b()V

    goto :goto_2

    .line 236
    :catch_0
    :try_start_4
    sget-object v1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v0, :cond_3

    goto :goto_1

    :goto_2
    return-void

    :catchall_3
    move-exception v1

    if-eqz v0, :cond_4

    .line 241
    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 244
    :catchall_4
    :cond_4
    sget-object v0, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/f;->b()V

    throw v1
.end method

.method public e()Z
    .locals 1

    .line 556
    iget-object v0, p0, Lcom/umeng/analytics/pro/h;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public f()Lorg/json/JSONObject;
    .locals 8

    const-string v0, "__vc"

    const-string v1, "__av"

    .line 602
    iget-object v2, p0, Lcom/umeng/analytics/pro/h;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return-object v3

    .line 606
    :cond_0
    :try_start_0
    sget-object v2, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/analytics/pro/f;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 607
    :try_start_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 608
    iget-object v4, p0, Lcom/umeng/analytics/pro/h;->l:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, "select *  from __is where __ii=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    aput-object v4, v7, v5

    .line 612
    invoke-virtual {v2, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v4, :cond_1

    .line 614
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 615
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 616
    :try_start_3
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 618
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 619
    invoke-virtual {v5, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 620
    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v3, v5

    .line 625
    :cond_1
    :try_start_4
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v4, :cond_2

    .line 633
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_2
    if-eqz v2, :cond_3

    .line 637
    :try_start_5
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 640
    :catchall_0
    :cond_3
    sget-object v0, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/f;->b()V

    goto :goto_3

    :catchall_1
    move-object v5, v3

    :catchall_2
    move-object v3, v4

    goto :goto_0

    :catch_0
    move-object v5, v3

    :catch_1
    move-object v3, v4

    goto :goto_2

    :catchall_3
    move-object v5, v3

    goto :goto_0

    :catch_2
    move-object v5, v3

    goto :goto_2

    :catchall_4
    move-object v2, v3

    move-object v5, v2

    :goto_0
    if-eqz v3, :cond_4

    .line 633
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_4
    if-eqz v2, :cond_5

    .line 637
    :goto_1
    :try_start_6
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 640
    :catchall_5
    :cond_5
    sget-object v0, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/f;->b()V

    move-object v3, v5

    goto :goto_3

    :catch_3
    move-object v2, v3

    move-object v5, v2

    .line 629
    :goto_2
    :try_start_7
    sget-object v0, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    if-eqz v3, :cond_6

    .line 633
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_6
    if-eqz v2, :cond_5

    goto :goto_1

    :goto_3
    return-object v3

    :catchall_6
    move-exception v0

    if-eqz v3, :cond_7

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_7
    if-eqz v2, :cond_8

    .line 637
    :try_start_8
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    .line 640
    :catchall_7
    :cond_8
    sget-object v1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/f;->b()V

    throw v0
.end method

.method public g()Lorg/json/JSONObject;
    .locals 8

    const-string v0, "__vc"

    const-string v1, "__av"

    .line 862
    iget-object v2, p0, Lcom/umeng/analytics/pro/h;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return-object v3

    .line 866
    :cond_0
    :try_start_0
    sget-object v2, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/analytics/pro/f;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 867
    :try_start_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 868
    iget-object v4, p0, Lcom/umeng/analytics/pro/h;->i:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, "select *  from __sd where __ii=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    aput-object v4, v7, v5

    .line 872
    invoke-virtual {v2, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v4, :cond_1

    .line 874
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 875
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 876
    :try_start_3
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 877
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 878
    invoke-virtual {v5, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 879
    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v3, v5

    .line 884
    :cond_1
    :try_start_4
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v4, :cond_2

    .line 892
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_2
    if-eqz v2, :cond_3

    .line 896
    :try_start_5
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 899
    :catchall_0
    :cond_3
    sget-object v0, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/f;->b()V

    goto :goto_3

    :catchall_1
    move-object v5, v3

    :catchall_2
    move-object v3, v4

    goto :goto_0

    :catch_0
    move-object v5, v3

    :catch_1
    move-object v3, v4

    goto :goto_2

    :catchall_3
    move-object v5, v3

    goto :goto_0

    :catch_2
    move-object v5, v3

    goto :goto_2

    :catchall_4
    move-object v2, v3

    move-object v5, v2

    :goto_0
    if-eqz v3, :cond_4

    .line 892
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_4
    if-eqz v2, :cond_5

    .line 896
    :goto_1
    :try_start_6
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 899
    :catchall_5
    :cond_5
    sget-object v0, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/f;->b()V

    move-object v3, v5

    goto :goto_3

    :catch_3
    move-object v2, v3

    move-object v5, v2

    .line 888
    :goto_2
    :try_start_7
    sget-object v0, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    if-eqz v3, :cond_6

    .line 892
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_6
    if-eqz v2, :cond_5

    goto :goto_1

    :goto_3
    return-object v3

    :catchall_6
    move-exception v0

    if-eqz v3, :cond_7

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_7
    if-eqz v2, :cond_8

    .line 896
    :try_start_8
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    .line 899
    :catchall_7
    :cond_8
    sget-object v1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/f;->b()V

    throw v0
.end method

.method public h()V
    .locals 4

    const/4 v0, 0x0

    .line 1262
    :try_start_0
    sget-object v1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/f;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1263
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1265
    iget-object v1, p0, Lcom/umeng/analytics/pro/h;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 1266
    :goto_0
    iget-object v2, p0, Lcom/umeng/analytics/pro/h;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1267
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete from __et where rowid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/umeng/analytics/pro/h;->j:Ljava/util/List;

    .line 1268
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1269
    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1272
    :cond_0
    iget-object v1, p0, Lcom/umeng/analytics/pro/h;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1273
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_1

    :catchall_0
    if-eqz v0, :cond_1

    .line 1281
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1284
    :catchall_1
    :cond_1
    sget-object v0, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/f;->b()V

    goto :goto_2

    .line 1276
    :catch_0
    :try_start_2
    sget-object v1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v0, :cond_1

    goto :goto_1

    :goto_2
    return-void

    :catchall_2
    move-exception v1

    if-eqz v0, :cond_2

    .line 1281
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1284
    :catchall_3
    :cond_2
    sget-object v0, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/f;->b()V

    throw v1
.end method

.method public i()V
    .locals 2

    const/4 v0, 0x0

    .line 1294
    :try_start_0
    sget-object v1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/f;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1295
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v1, "delete from __er"

    .line 1297
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1298
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    :catchall_0
    if-eqz v0, :cond_0

    .line 1306
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1309
    :catchall_1
    :cond_0
    sget-object v0, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/f;->b()V

    goto :goto_1

    .line 1301
    :catch_0
    :try_start_2
    sget-object v1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v0, :cond_0

    goto :goto_0

    :goto_1
    return-void

    :catchall_2
    move-exception v1

    if-eqz v0, :cond_1

    .line 1306
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1309
    :catchall_3
    :cond_1
    sget-object v0, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/f;->b()V

    throw v1
.end method

.method public j()V
    .locals 5

    const-string v0, "\""

    .line 1317
    iget-object v1, p0, Lcom/umeng/analytics/pro/h;->k:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 1320
    :try_start_0
    sget-object v1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/f;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1321
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1322
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete from __er where __i=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/umeng/analytics/pro/h;->k:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1324
    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1325
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete from __et where __i=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/umeng/analytics/pro/h;->k:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1327
    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1329
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    goto :goto_0

    :catchall_0
    move-object v1, v2

    :catchall_1
    if-eqz v1, :cond_0

    .line 1337
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1340
    :catchall_2
    :cond_0
    sget-object v0, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/f;->b()V

    goto :goto_1

    :catch_0
    move-object v1, v2

    .line 1332
    :catch_1
    :try_start_3
    sget-object v0, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v1, :cond_0

    goto :goto_0

    :catchall_3
    move-exception v0

    if-eqz v1, :cond_1

    .line 1337
    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 1340
    :catchall_4
    :cond_1
    sget-object v1, Lcom/umeng/analytics/pro/h;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/f;->b()V

    throw v0

    .line 1343
    :cond_2
    :goto_1
    iput-object v2, p0, Lcom/umeng/analytics/pro/h;->k:Ljava/lang/String;

    return-void
.end method
