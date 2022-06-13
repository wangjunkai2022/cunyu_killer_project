.class public Lcom/tencent/liteav/audio/impl/route/f;
.super Landroid/content/BroadcastReceiver;
.source "TXCAudioSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/audio/impl/route/f$a;
    }
.end annotation


# static fields
.field private static a:I


# instance fields
.field private final b:J

.field private final c:Landroid/content/Context;

.field private final d:Lcom/tencent/liteav/audio/impl/route/e;

.field private e:Lcom/tencent/liteav/audio/impl/route/f$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tencent/liteav/audio/impl/route/e;Lcom/tencent/liteav/audio/impl/route/f$a;)V
    .locals 4

    .line 69
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/tencent/liteav/audio/impl/route/f;->e:Lcom/tencent/liteav/audio/impl/route/f$a;

    .line 70
    invoke-static {}, Lcom/tencent/liteav/audio/impl/route/f;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/liteav/audio/impl/route/f;->b:J

    .line 71
    iput-object p3, p0, Lcom/tencent/liteav/audio/impl/route/f;->e:Lcom/tencent/liteav/audio/impl/route/f$a;

    .line 72
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/route/f;->c:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lcom/tencent/liteav/audio/impl/route/f;->d:Lcom/tencent/liteav/audio/impl/route/e;

    const-string p2, "TXCAudioSession"

    if-nez p1, :cond_2

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioSession | Invalid parameters: ctx = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "null"

    const-string v2, "{object}"

    if-nez p1, :cond_0

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; cb = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_2
    new-instance p3, Landroid/content/IntentFilter;

    invoke-direct {p3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.tencent.sharp.ACTION_TXCAUDIOMANAGER_RES"

    .line 82
    invoke-virtual {p3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.tencent.sharp.ACTION_TXCAUDIOMANAGER_NOTIFY"

    .line 83
    invoke-virtual {p3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    if-eqz p1, :cond_3

    .line 87
    :try_start_0
    invoke-static {p1}, Lcom/tencent/liteav/basic/a/a;->a(Landroid/content/Context;)Lcom/tencent/liteav/basic/a/a;

    move-result-object p1

    invoke-virtual {p1, p0, p3}, Lcom/tencent/liteav/basic/a/a;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 90
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "registerReceiver Exception: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    const/4 p1, 0x1

    .line 93
    invoke-direct {p0, p0, p1}, Lcom/tencent/liteav/audio/impl/route/f;->a(Lcom/tencent/liteav/audio/impl/route/f;Z)V

    .line 94
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "TraeAudioSession create, mSessionId: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/tencent/liteav/audio/impl/route/f;->b:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a()J
    .locals 4

    .line 60
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    sget v2, Lcom/tencent/liteav/audio/impl/route/f;->a:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/tencent/liteav/audio/impl/route/f;->a:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private a(Lcom/tencent/liteav/audio/impl/route/f;Z)V
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/f;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/f;->d:Lcom/tencent/liteav/audio/impl/route/e;

    iget-wide v1, p0, Lcom/tencent/liteav/audio/impl/route/f;->b:J

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/tencent/liteav/audio/impl/route/e;->a(Lcom/tencent/liteav/audio/impl/route/f;ZJ)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 4

    if-eqz p1, :cond_0

    .line 123
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const-string p1, "internal_disable_dev_switch"

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/f;->d:Lcom/tencent/liteav/audio/impl/route/e;

    iget-wide v1, p0, Lcom/tencent/liteav/audio/impl/route/f;->b:J

    const-string v3, "OPERATION_STARTSERVICE"

    invoke-virtual {v0, v3, v1, v2, p1}, Lcom/tencent/liteav/audio/impl/route/e;->a(Ljava/lang/String;JLjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public a(I)V
    .locals 4

    .line 154
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/f;->d:Lcom/tencent/liteav/audio/impl/route/e;

    iget-wide v1, p0, Lcom/tencent/liteav/audio/impl/route/f;->b:J

    const-string v3, "OPERATION_VOICECALL_PREPROCESS"

    invoke-virtual {v0, v3, v1, v2, p1}, Lcom/tencent/liteav/audio/impl/route/e;->a(Ljava/lang/String;JI)V

    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 7

    const-string v0, "TXCAudioSession"

    if-nez p1, :cond_0

    :try_start_0
    const-string v1, "[ERROR] intent = null!!"

    .line 165
    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "PARAM_SESSIONID"

    const-wide/high16 v2, -0x8000000000000000L

    .line 169
    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    const-string v3, "PARAM_OPERATION"

    .line 170
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "PARAM_RES_ERRCODE"

    const/4 v5, 0x0

    .line 171
    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "com.tencent.sharp.ACTION_TXCAUDIOMANAGER_RES"

    .line 173
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 174
    iget-wide v5, p0, Lcom/tencent/liteav/audio/impl/route/f;->b:J

    cmp-long v1, v5, v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const-string v1, "OPERATION_VOICECALL_PREPROCESS"

    .line 178
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onReceiveCallback onVoicecallPreprocess] err:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/f;->e:Lcom/tencent/liteav/audio/impl/route/f$a;

    if-eqz v1, :cond_2

    .line 181
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/f;->e:Lcom/tencent/liteav/audio/impl/route/f$a;

    invoke-virtual {v1, v4}, Lcom/tencent/liteav/audio/impl/route/f$a;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " nSessinId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/tencent/liteav/audio/impl/route/f;->b:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " onReceive::intent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " intent.getAction():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Exception:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 186
    invoke-static {v0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public b()V
    .locals 3

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TraeAudioSession release, mSessionId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/liteav/audio/impl/route/f;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TXCAudioSession"

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/f;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 101
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :catch_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/f;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/liteav/basic/a/a;->a(Landroid/content/Context;)Lcom/tencent/liteav/basic/a/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/liteav/basic/a/a;->a(Landroid/content/BroadcastReceiver;)V

    :cond_0
    const/4 v0, 0x0

    .line 107
    invoke-direct {p0, p0, v0}, Lcom/tencent/liteav/audio/impl/route/f;->a(Lcom/tencent/liteav/audio/impl/route/f;Z)V

    const/4 v0, 0x0

    .line 108
    iput-object v0, p0, Lcom/tencent/liteav/audio/impl/route/f;->e:Lcom/tencent/liteav/audio/impl/route/f$a;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 4

    .line 138
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/f;->d:Lcom/tencent/liteav/audio/impl/route/e;

    iget-wide v1, p0, Lcom/tencent/liteav/audio/impl/route/f;->b:J

    const-string v3, "OPERATION_CONNECTDEVICE"

    invoke-virtual {v0, v3, v1, v2, p1}, Lcom/tencent/liteav/audio/impl/route/e;->b(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public c()I
    .locals 4

    .line 131
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/f;->d:Lcom/tencent/liteav/audio/impl/route/e;

    iget-wide v1, p0, Lcom/tencent/liteav/audio/impl/route/f;->b:J

    const-string v3, "OPERATION_STOPSERVICE"

    invoke-virtual {v0, v3, v1, v2}, Lcom/tencent/liteav/audio/impl/route/e;->a(Ljava/lang/String;J)I

    move-result v0

    return v0
.end method

.method public d()V
    .locals 4

    .line 150
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/f;->d:Lcom/tencent/liteav/audio/impl/route/e;

    iget-wide v1, p0, Lcom/tencent/liteav/audio/impl/route/f;->b:J

    const-string v3, "OPERATION_GETCONNECTEDDEVICE"

    invoke-virtual {v0, v3, v1, v2}, Lcom/tencent/liteav/audio/impl/route/e;->c(Ljava/lang/String;J)V

    return-void
.end method

.method public e()V
    .locals 4

    .line 159
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/f;->d:Lcom/tencent/liteav/audio/impl/route/e;

    iget-wide v1, p0, Lcom/tencent/liteav/audio/impl/route/f;->b:J

    const-string v3, "OPERATION_VOICECALL_POSTROCESS"

    invoke-virtual {v0, v3, v1, v2}, Lcom/tencent/liteav/audio/impl/route/e;->d(Ljava/lang/String;J)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v3, "TXCAudioSession"

    if-nez v2, :cond_0

    :try_start_0
    const-string v0, "[ERROR] intent = null!!"

    .line 198
    invoke-static {v3, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "PARAM_SESSIONID"

    const-wide/high16 v4, -0x8000000000000000L

    .line 202
    invoke-virtual {v2, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v0, "PARAM_OPERATION"

    .line 203
    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "PARAM_RES_ERRCODE"

    const/4 v7, 0x0

    .line 204
    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const-string v6, "com.tencent.sharp.ACTION_TXCAUDIOMANAGER_NOTIFY"

    .line 206
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v8, " Num:"

    const-string v10, " bt:"

    const-string v11, " prevConnected:"

    const-string v12, " "

    const-string v13, "    "

    const-string v14, "EXTRA_DATA_IF_HAS_BLUETOOTH_THIS_IS_NAME"

    const-string v15, "EXTRA_DATA_PREV_CONNECTEDDEVICE"

    const-string v7, "EXTRA_DATA_CONNECTEDDEVICE"

    move/from16 v16, v9

    const-string v9, "EXTRA_DATA_AVAILABLEDEVICE_LIST"

    move-wide/from16 v17, v4

    const/4 v4, 0x1

    const-string v5, "\n"

    if-eqz v6, :cond_7

    :try_start_1
    const-string v6, "NOTIFY_SERVICE_STATE"

    .line 207
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v0, "NOTIFY_SERVICE_STATE_DATE"

    const/4 v4, 0x0

    .line 208
    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 210
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onServiceStateUpdate]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    const-string v5, "on"

    goto :goto_0

    :cond_1
    const-string v5, "off"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v4, v1, Lcom/tencent/liteav/audio/impl/route/f;->e:Lcom/tencent/liteav/audio/impl/route/f$a;

    if-eqz v4, :cond_10

    .line 212
    iget-object v4, v1, Lcom/tencent/liteav/audio/impl/route/f;->e:Lcom/tencent/liteav/audio/impl/route/f$a;

    invoke-virtual {v4, v0}, Lcom/tencent/liteav/audio/impl/route/f$a;->a(Z)V

    goto/16 :goto_5

    :cond_2
    const-string v6, "NOTIFY_DEVICELISTUPDATE"

    .line 214
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 215
    invoke-virtual {v2, v9}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 216
    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 217
    invoke-virtual {v2, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 218
    invoke-virtual {v2, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 220
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v14, 0x0

    .line 221
    :goto_1
    array-length v15, v0

    if-ge v14, v15, :cond_3

    .line 222
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v15, v0, v14

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 224
    :cond_3
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[onDeviceListUpdate]  connected:"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v8, v0

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v5, v1, Lcom/tencent/liteav/audio/impl/route/f;->e:Lcom/tencent/liteav/audio/impl/route/f$a;

    if-eqz v5, :cond_10

    .line 230
    iget-object v5, v1, Lcom/tencent/liteav/audio/impl/route/f;->e:Lcom/tencent/liteav/audio/impl/route/f$a;

    invoke-virtual {v5, v0, v4, v6, v7}, Lcom/tencent/liteav/audio/impl/route/f$a;->a([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_4
    const-string v5, "NOTIFY_DEVICECHANGABLE_UPDATE"

    .line 232
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v0, "NOTIFY_DEVICECHANGABLE_UPDATE_DATE"

    .line 233
    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 234
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onDeviceChangabledUpdate]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v4, v1, Lcom/tencent/liteav/audio/impl/route/f;->e:Lcom/tencent/liteav/audio/impl/route/f$a;

    if-eqz v4, :cond_10

    .line 236
    iget-object v4, v1, Lcom/tencent/liteav/audio/impl/route/f;->e:Lcom/tencent/liteav/audio/impl/route/f$a;

    invoke-virtual {v4, v0}, Lcom/tencent/liteav/audio/impl/route/f$a;->b(Z)V

    goto/16 :goto_5

    :cond_5
    const-string v4, "NOTIFY_ROUTESWITCHSTART"

    .line 238
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v0, "EXTRA_DATA_ROUTESWITCHSTART_FROM"

    .line 242
    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "EXTRA_DATA_ROUTESWITCHSTART_TO"

    .line 243
    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 244
    iget-object v5, v1, Lcom/tencent/liteav/audio/impl/route/f;->e:Lcom/tencent/liteav/audio/impl/route/f$a;

    if-eqz v5, :cond_10

    if-eqz v0, :cond_10

    if-eqz v4, :cond_10

    .line 245
    iget-object v5, v1, Lcom/tencent/liteav/audio/impl/route/f;->e:Lcom/tencent/liteav/audio/impl/route/f$a;

    invoke-virtual {v5, v0, v4}, Lcom/tencent/liteav/audio/impl/route/f$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_6
    const-string v4, "NOTIFY_ROUTESWITCHEND"

    .line 247
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "EXTRA_DATA_ROUTESWITCHEND_DEV"

    .line 250
    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "EXTRA_DATA_ROUTESWITCHEND_TIME"

    const-wide/16 v5, -0x1

    .line 251
    invoke-virtual {v2, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    .line 252
    iget-object v4, v1, Lcom/tencent/liteav/audio/impl/route/f;->e:Lcom/tencent/liteav/audio/impl/route/f$a;

    if-eqz v4, :cond_10

    if-eqz v0, :cond_10

    cmp-long v4, v7, v5

    if-eqz v4, :cond_10

    .line 253
    iget-object v4, v1, Lcom/tencent/liteav/audio/impl/route/f;->e:Lcom/tencent/liteav/audio/impl/route/f$a;

    invoke-virtual {v4, v0, v7, v8}, Lcom/tencent/liteav/audio/impl/route/f$a;->a(Ljava/lang/String;J)V

    goto/16 :goto_5

    :cond_7
    const-string v6, "com.tencent.sharp.ACTION_TXCAUDIOMANAGER_RES"

    .line 256
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v4, :cond_10

    move-object v6, v3

    .line 257
    :try_start_2
    iget-wide v3, v1, Lcom/tencent/liteav/audio/impl/route/f;->b:J

    cmp-long v3, v3, v17

    if-eqz v3, :cond_8

    return-void

    :cond_8
    const-string v3, "OPERATION_GETDEVICELIST"

    .line 260
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 261
    invoke-virtual {v2, v9}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 262
    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 263
    invoke-virtual {v2, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 264
    invoke-virtual {v2, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 266
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v14, 0x0

    .line 267
    :goto_2
    array-length v15, v0

    if-ge v14, v15, :cond_9

    .line 268
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v15, v0, v14

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 270
    :cond_9
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[onGetDeviceListRes] err:"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, v16

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " connected:"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v8, v0

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object v5, v1, Lcom/tencent/liteav/audio/impl/route/f;->e:Lcom/tencent/liteav/audio/impl/route/f$a;

    if-eqz v5, :cond_10

    .line 277
    iget-object v8, v1, Lcom/tencent/liteav/audio/impl/route/f;->e:Lcom/tencent/liteav/audio/impl/route/f$a;

    move v9, v12

    move-object v10, v0

    move-object v11, v3

    move-object v12, v4

    move-object v13, v7

    invoke-virtual/range {v8 .. v13}, Lcom/tencent/liteav/audio/impl/route/f$a;->a(I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_a
    move/from16 v12, v16

    const-string v3, "OPERATION_CONNECTDEVICE"

    .line 279
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v4, " dev:"

    if-eqz v3, :cond_c

    :try_start_3
    const-string v0, "CONNECTDEVICE_RESULT_DEVICENAME"

    .line 280
    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 281
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onConnectDeviceRes] err:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iget-object v3, v1, Lcom/tencent/liteav/audio/impl/route/f;->e:Lcom/tencent/liteav/audio/impl/route/f$a;

    if-eqz v3, :cond_10

    .line 283
    iget-object v3, v1, Lcom/tencent/liteav/audio/impl/route/f;->e:Lcom/tencent/liteav/audio/impl/route/f$a;

    if-nez v12, :cond_b

    const/4 v4, 0x1

    goto :goto_3

    :cond_b
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v3, v12, v0, v4}, Lcom/tencent/liteav/audio/impl/route/f$a;->a(ILjava/lang/String;Z)V

    goto/16 :goto_5

    :cond_c
    const-string v3, "OPERATION_ISDEVICECHANGABLED"

    .line 285
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v0, "ISDEVICECHANGABLED_REULT_ISCHANGABLED"

    const/4 v3, 0x0

    .line 286
    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 287
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onIsDeviceChangabledRes] err:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Changabled:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object v3, v1, Lcom/tencent/liteav/audio/impl/route/f;->e:Lcom/tencent/liteav/audio/impl/route/f$a;

    if-eqz v3, :cond_10

    .line 289
    iget-object v3, v1, Lcom/tencent/liteav/audio/impl/route/f;->e:Lcom/tencent/liteav/audio/impl/route/f$a;

    invoke-virtual {v3, v12, v0}, Lcom/tencent/liteav/audio/impl/route/f$a;->a(IZ)V

    goto/16 :goto_5

    :cond_d
    const-string v3, "OPERATION_GETCONNECTEDDEVICE"

    .line 291
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const-string v0, "GETCONNECTEDDEVICE_REULT_LIST"

    .line 292
    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 293
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onGetConnectedDeviceRes] err:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-object v3, v1, Lcom/tencent/liteav/audio/impl/route/f;->e:Lcom/tencent/liteav/audio/impl/route/f$a;

    if-eqz v3, :cond_10

    .line 295
    iget-object v3, v1, Lcom/tencent/liteav/audio/impl/route/f;->e:Lcom/tencent/liteav/audio/impl/route/f$a;

    invoke-virtual {v3, v12, v0}, Lcom/tencent/liteav/audio/impl/route/f$a;->a(ILjava/lang/String;)V

    goto/16 :goto_5

    :cond_e
    const-string v3, "OPERATION_GETCONNECTINGDEVICE"

    .line 297
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    const-string v0, "GETCONNECTINGDEVICE_REULT_LIST"

    .line 298
    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 299
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onGetConnectingDeviceRes] err:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v3, v1, Lcom/tencent/liteav/audio/impl/route/f;->e:Lcom/tencent/liteav/audio/impl/route/f$a;

    if-eqz v3, :cond_10

    .line 301
    iget-object v3, v1, Lcom/tencent/liteav/audio/impl/route/f;->e:Lcom/tencent/liteav/audio/impl/route/f$a;

    invoke-virtual {v3, v12, v0}, Lcom/tencent/liteav/audio/impl/route/f$a;->b(ILjava/lang/String;)V

    goto :goto_5

    :cond_f
    const-string v3, "OPERATION_VOICECALL_PREPROCESS"

    .line 303
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onVoicecallPreprocess] err:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object v0, v1, Lcom/tencent/liteav/audio/impl/route/f;->e:Lcom/tencent/liteav/audio/impl/route/f$a;

    if-eqz v0, :cond_10

    .line 306
    iget-object v0, v1, Lcom/tencent/liteav/audio/impl/route/f;->e:Lcom/tencent/liteav/audio/impl/route/f$a;

    invoke-virtual {v0, v12}, Lcom/tencent/liteav/audio/impl/route/f$a;->a(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v6, v3

    .line 311
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " nSessinId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v1, Lcom/tencent/liteav/audio/impl/route/f;->b:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " onReceive::intent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " intent.getAction():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Exception:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 311
    invoke-static {v6, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    :goto_5
    return-void
.end method
