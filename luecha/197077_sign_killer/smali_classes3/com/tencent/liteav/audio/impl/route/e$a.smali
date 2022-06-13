.class final enum Lcom/tencent/liteav/audio/impl/route/e$a;
.super Ljava/lang/Enum;
.source "TXCAudioRouteManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/audio/impl/route/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/liteav/audio/impl/route/e$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tencent/liteav/audio/impl/route/e$a;

.field public static final enum b:Lcom/tencent/liteav/audio/impl/route/e$a;

.field public static final enum c:Lcom/tencent/liteav/audio/impl/route/e$a;

.field public static final enum d:Lcom/tencent/liteav/audio/impl/route/e$a;

.field public static final enum e:Lcom/tencent/liteav/audio/impl/route/e$a;

.field public static final enum f:Lcom/tencent/liteav/audio/impl/route/e$a;

.field public static final enum g:Lcom/tencent/liteav/audio/impl/route/e$a;

.field public static final enum h:Lcom/tencent/liteav/audio/impl/route/e$a;

.field public static final enum i:Lcom/tencent/liteav/audio/impl/route/e$a;

.field public static final enum j:Lcom/tencent/liteav/audio/impl/route/e$a;

.field public static final enum k:Lcom/tencent/liteav/audio/impl/route/e$a;

.field public static final enum l:Lcom/tencent/liteav/audio/impl/route/e$a;

.field public static final enum m:Lcom/tencent/liteav/audio/impl/route/e$a;

.field public static final enum n:Lcom/tencent/liteav/audio/impl/route/e$a;

.field private static final synthetic o:[Lcom/tencent/liteav/audio/impl/route/e$a;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 116
    new-instance v0, Lcom/tencent/liteav/audio/impl/route/e$a;

    const/4 v1, 0x0

    const-string v2, "MESSAGE_ENABLE"

    invoke-direct {v0, v2, v1}, Lcom/tencent/liteav/audio/impl/route/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/liteav/audio/impl/route/e$a;->a:Lcom/tencent/liteav/audio/impl/route/e$a;

    .line 117
    new-instance v0, Lcom/tencent/liteav/audio/impl/route/e$a;

    const/4 v2, 0x1

    const-string v3, "MESSAGE_DISABLE"

    invoke-direct {v0, v3, v2}, Lcom/tencent/liteav/audio/impl/route/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/liteav/audio/impl/route/e$a;->b:Lcom/tencent/liteav/audio/impl/route/e$a;

    .line 118
    new-instance v0, Lcom/tencent/liteav/audio/impl/route/e$a;

    const/4 v3, 0x2

    const-string v4, "MESSAGE_GETDEVICELIST"

    invoke-direct {v0, v4, v3}, Lcom/tencent/liteav/audio/impl/route/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/liteav/audio/impl/route/e$a;->c:Lcom/tencent/liteav/audio/impl/route/e$a;

    .line 119
    new-instance v0, Lcom/tencent/liteav/audio/impl/route/e$a;

    const/4 v4, 0x3

    const-string v5, "MESSAGE_CONNECTDEVICE"

    invoke-direct {v0, v5, v4}, Lcom/tencent/liteav/audio/impl/route/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/liteav/audio/impl/route/e$a;->d:Lcom/tencent/liteav/audio/impl/route/e$a;

    .line 120
    new-instance v0, Lcom/tencent/liteav/audio/impl/route/e$a;

    const/4 v5, 0x4

    const-string v6, "MESSAGE_ISDEVICECHANGABLED"

    invoke-direct {v0, v6, v5}, Lcom/tencent/liteav/audio/impl/route/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/liteav/audio/impl/route/e$a;->e:Lcom/tencent/liteav/audio/impl/route/e$a;

    .line 121
    new-instance v0, Lcom/tencent/liteav/audio/impl/route/e$a;

    const/4 v6, 0x5

    const-string v7, "MESSAGE_GETCONNECTEDDEVICE"

    invoke-direct {v0, v7, v6}, Lcom/tencent/liteav/audio/impl/route/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/liteav/audio/impl/route/e$a;->f:Lcom/tencent/liteav/audio/impl/route/e$a;

    .line 122
    new-instance v0, Lcom/tencent/liteav/audio/impl/route/e$a;

    const/4 v7, 0x6

    const-string v8, "MESSAGE_GETCONNECTINGDEVICE"

    invoke-direct {v0, v8, v7}, Lcom/tencent/liteav/audio/impl/route/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/liteav/audio/impl/route/e$a;->g:Lcom/tencent/liteav/audio/impl/route/e$a;

    .line 123
    new-instance v0, Lcom/tencent/liteav/audio/impl/route/e$a;

    const/4 v8, 0x7

    const-string v9, "MESSAGE_VOICECALLPREPROCESS"

    invoke-direct {v0, v9, v8}, Lcom/tencent/liteav/audio/impl/route/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/liteav/audio/impl/route/e$a;->h:Lcom/tencent/liteav/audio/impl/route/e$a;

    .line 124
    new-instance v0, Lcom/tencent/liteav/audio/impl/route/e$a;

    const/16 v9, 0x8

    const-string v10, "MESSAGE_VOICECALLPOSTPROCESS"

    invoke-direct {v0, v10, v9}, Lcom/tencent/liteav/audio/impl/route/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/liteav/audio/impl/route/e$a;->i:Lcom/tencent/liteav/audio/impl/route/e$a;

    .line 125
    new-instance v0, Lcom/tencent/liteav/audio/impl/route/e$a;

    const/16 v10, 0x9

    const-string v11, "MESSAGE_AUTO_DEVICELIST_UPDATE"

    invoke-direct {v0, v11, v10}, Lcom/tencent/liteav/audio/impl/route/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/liteav/audio/impl/route/e$a;->j:Lcom/tencent/liteav/audio/impl/route/e$a;

    .line 126
    new-instance v0, Lcom/tencent/liteav/audio/impl/route/e$a;

    const/16 v11, 0xa

    const-string v12, "MESSAGE_AUTO_DEVICELIST_PLUGIN_UPDATE"

    invoke-direct {v0, v12, v11}, Lcom/tencent/liteav/audio/impl/route/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/liteav/audio/impl/route/e$a;->k:Lcom/tencent/liteav/audio/impl/route/e$a;

    .line 127
    new-instance v0, Lcom/tencent/liteav/audio/impl/route/e$a;

    const/16 v12, 0xb

    const-string v13, "MESSAGE_AUTO_DEVICELIST_PLUGOUT_UPDATE"

    invoke-direct {v0, v13, v12}, Lcom/tencent/liteav/audio/impl/route/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/liteav/audio/impl/route/e$a;->l:Lcom/tencent/liteav/audio/impl/route/e$a;

    .line 128
    new-instance v0, Lcom/tencent/liteav/audio/impl/route/e$a;

    const/16 v13, 0xc

    const-string v14, "MESSAGE_CONNECT_HIGHEST_PRIORITY_DEVICE"

    invoke-direct {v0, v14, v13}, Lcom/tencent/liteav/audio/impl/route/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/liteav/audio/impl/route/e$a;->m:Lcom/tencent/liteav/audio/impl/route/e$a;

    .line 129
    new-instance v0, Lcom/tencent/liteav/audio/impl/route/e$a;

    const/16 v14, 0xd

    const-string v15, "MESSAGE_NOTIFY_DEVICELIST_UPDATE"

    invoke-direct {v0, v15, v14}, Lcom/tencent/liteav/audio/impl/route/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/liteav/audio/impl/route/e$a;->n:Lcom/tencent/liteav/audio/impl/route/e$a;

    const/16 v0, 0xe

    new-array v0, v0, [Lcom/tencent/liteav/audio/impl/route/e$a;

    .line 115
    sget-object v15, Lcom/tencent/liteav/audio/impl/route/e$a;->a:Lcom/tencent/liteav/audio/impl/route/e$a;

    aput-object v15, v0, v1

    sget-object v1, Lcom/tencent/liteav/audio/impl/route/e$a;->b:Lcom/tencent/liteav/audio/impl/route/e$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/liteav/audio/impl/route/e$a;->c:Lcom/tencent/liteav/audio/impl/route/e$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/liteav/audio/impl/route/e$a;->d:Lcom/tencent/liteav/audio/impl/route/e$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/liteav/audio/impl/route/e$a;->e:Lcom/tencent/liteav/audio/impl/route/e$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tencent/liteav/audio/impl/route/e$a;->f:Lcom/tencent/liteav/audio/impl/route/e$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/tencent/liteav/audio/impl/route/e$a;->g:Lcom/tencent/liteav/audio/impl/route/e$a;

    aput-object v1, v0, v7

    sget-object v1, Lcom/tencent/liteav/audio/impl/route/e$a;->h:Lcom/tencent/liteav/audio/impl/route/e$a;

    aput-object v1, v0, v8

    sget-object v1, Lcom/tencent/liteav/audio/impl/route/e$a;->i:Lcom/tencent/liteav/audio/impl/route/e$a;

    aput-object v1, v0, v9

    sget-object v1, Lcom/tencent/liteav/audio/impl/route/e$a;->j:Lcom/tencent/liteav/audio/impl/route/e$a;

    aput-object v1, v0, v10

    sget-object v1, Lcom/tencent/liteav/audio/impl/route/e$a;->k:Lcom/tencent/liteav/audio/impl/route/e$a;

    aput-object v1, v0, v11

    sget-object v1, Lcom/tencent/liteav/audio/impl/route/e$a;->l:Lcom/tencent/liteav/audio/impl/route/e$a;

    aput-object v1, v0, v12

    sget-object v1, Lcom/tencent/liteav/audio/impl/route/e$a;->m:Lcom/tencent/liteav/audio/impl/route/e$a;

    aput-object v1, v0, v13

    sget-object v1, Lcom/tencent/liteav/audio/impl/route/e$a;->n:Lcom/tencent/liteav/audio/impl/route/e$a;

    aput-object v1, v0, v14

    sput-object v0, Lcom/tencent/liteav/audio/impl/route/e$a;->o:[Lcom/tencent/liteav/audio/impl/route/e$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 115
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/liteav/audio/impl/route/e$a;
    .locals 1

    .line 115
    const-class v0, Lcom/tencent/liteav/audio/impl/route/e$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/liteav/audio/impl/route/e$a;

    return-object p0
.end method

.method public static values()[Lcom/tencent/liteav/audio/impl/route/e$a;
    .locals 1

    .line 115
    sget-object v0, Lcom/tencent/liteav/audio/impl/route/e$a;->o:[Lcom/tencent/liteav/audio/impl/route/e$a;

    invoke-virtual {v0}, [Lcom/tencent/liteav/audio/impl/route/e$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/liteav/audio/impl/route/e$a;

    return-object v0
.end method
