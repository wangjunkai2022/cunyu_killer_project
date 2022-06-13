.class public final Lokhttp3/internal/ws/WebSocketExtensions$Companion;
.super Ljava/lang/Object;
.source "WebSocketExtensions.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/ws/WebSocketExtensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lokhttp3/internal/ws/WebSocketExtensions$Companion;",
        "",
        "()V",
        "HEADER_WEB_SOCKET_EXTENSION",
        "",
        "parse",
        "Lokhttp3/internal/ws/WebSocketExtensions;",
        "responseHeaders",
        "Lokhttp3/Headers;",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Lokhttp3/internal/ws/WebSocketExtensions$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final parse(Lokhttp3/Headers;)Lokhttp3/internal/ws/WebSocketExtensions;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "responseHeaders"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 99
    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    .line 106
    invoke-virtual/range {p1 .. p1}, Lokhttp3/Headers;->size()I

    move-result v3

    const/4 v4, 0x0

    move-object v7, v2

    move-object v9, v7

    move v2, v4

    move v6, v2

    move v8, v6

    move v10, v8

    move v11, v10

    :goto_0
    if-ge v2, v3, :cond_12

    .line 107
    invoke-virtual {v0, v2}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x1

    const-string v13, "Sec-WebSocket-Extensions"

    invoke-static {v5, v13, v12}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_8

    .line 110
    :cond_0
    invoke-virtual {v0, v2}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    move/from16 v19, v11

    move v11, v10

    move v10, v8

    move v8, v6

    move v6, v4

    .line 114
    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v6, v13, :cond_11

    const/16 v14, 0x2c

    const/16 v16, 0x0

    const/16 v17, 0x4

    const/16 v18, 0x0

    move-object v13, v5

    move v15, v6

    .line 115
    invoke-static/range {v13 .. v18}, Lokhttp3/internal/Util;->delimiterOffset$default(Ljava/lang/String;CIIILjava/lang/Object;)I

    move-result v13

    const/16 v14, 0x3b

    .line 116
    invoke-static {v5, v14, v6, v13}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;CII)I

    move-result v15

    .line 117
    invoke-static {v5, v6, v15}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    add-int/2addr v15, v12

    const-string v1, "permessage-deflate"

    .line 121
    invoke-static {v6, v1, v12}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_10

    if-eqz v8, :cond_2

    :cond_1
    :goto_2
    move/from16 v19, v12

    :cond_2
    :goto_3
    if-ge v15, v13, :cond_f

    .line 127
    invoke-static {v5, v14, v15, v13}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;CII)I

    move-result v1

    const/16 v6, 0x3d

    .line 128
    invoke-static {v5, v6, v15, v1}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;CII)I

    move-result v6

    .line 129
    invoke-static {v5, v15, v6}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v8

    if-ge v6, v1, :cond_3

    add-int/lit8 v6, v6, 0x1

    .line 131
    invoke-static {v5, v6, v1}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    const-string v15, "\""

    check-cast v15, Ljava/lang/CharSequence;

    invoke-static {v6, v15}, Lkotlin/text/StringsKt;->removeSurrounding(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_3
    const/4 v6, 0x0

    :goto_4
    add-int/lit8 v15, v1, 0x1

    const-string v1, "client_max_window_bits"

    .line 137
    invoke-static {v8, v1, v12}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz v7, :cond_4

    move/from16 v19, v12

    :cond_4
    if-eqz v6, :cond_5

    .line 139
    invoke-static {v6}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    move-object v7, v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_6
    const-string v1, "client_no_context_takeover"

    .line 142
    invoke-static {v8, v1, v12}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_9

    if-eqz v10, :cond_7

    move/from16 v19, v12

    :cond_7
    if-eqz v6, :cond_8

    move/from16 v19, v12

    :cond_8
    move v10, v12

    goto :goto_3

    :cond_9
    const-string v1, "server_max_window_bits"

    .line 147
    invoke-static {v8, v1, v12}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_c

    if-eqz v9, :cond_a

    move/from16 v19, v12

    :cond_a
    if-eqz v6, :cond_b

    .line 149
    invoke-static {v6}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_6

    :cond_b
    const/4 v1, 0x0

    :goto_6
    move-object v9, v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_c
    const-string v1, "server_no_context_takeover"

    .line 152
    invoke-static {v8, v1, v12}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v11, :cond_d

    move/from16 v19, v12

    :cond_d
    if-eqz v6, :cond_e

    move/from16 v19, v12

    :cond_e
    move v11, v12

    goto :goto_3

    :cond_f
    move v8, v12

    goto :goto_7

    :cond_10
    move/from16 v19, v12

    :goto_7
    move v6, v15

    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_11
    move v6, v8

    move v8, v10

    move v10, v11

    move/from16 v11, v19

    :goto_8
    add-int/lit8 v2, v2, 0x1

    const/4 v1, 0x0

    goto/16 :goto_0

    .line 171
    :cond_12
    new-instance v0, Lokhttp3/internal/ws/WebSocketExtensions;

    move-object v5, v0

    invoke-direct/range {v5 .. v11}, Lokhttp3/internal/ws/WebSocketExtensions;-><init>(ZLjava/lang/Integer;ZLjava/lang/Integer;ZZ)V

    return-object v0
.end method
