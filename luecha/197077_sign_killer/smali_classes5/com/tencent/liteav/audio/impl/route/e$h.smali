.class abstract Lcom/tencent/liteav/audio/impl/route/e$h;
.super Ljava/lang/Thread;
.source "TXCAudioRouteManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/audio/impl/route/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "h"
.end annotation


# instance fields
.field protected b:Z

.field protected final c:[Z

.field protected d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic e:Lcom/tencent/liteav/audio/impl/route/e;


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/audio/impl/route/e;)V
    .locals 1

    .line 1122
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e$h;->e:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x1

    .line 1118
    iput-boolean p1, p0, Lcom/tencent/liteav/audio/impl/route/e$h;->b:Z

    new-array p1, p1, [Z

    const/4 v0, 0x0

    aput-boolean v0, p1, v0

    .line 1119
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e$h;->c:[Z

    const/4 p1, 0x0

    .line 1120
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e$h;->d:Ljava/util/HashMap;

    .line 1123
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "construct SwitchThread: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/liteav/audio/impl/route/e$h;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TXCAudioRouteManager"

    invoke-static {v0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method a(I)V
    .locals 5

    .line 1136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/liteav/audio/impl/route/e$h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " err:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->LogTraceEntry(Ljava/lang/String;)V

    .line 1138
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e$h;->e:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/route/e;->m(Lcom/tencent/liteav/audio/impl/route/e;)V

    .line 1139
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e$h;->d:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 1140
    iget-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e$h;->e:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-virtual {p1}, Lcom/tencent/liteav/audio/impl/route/e;->b()V

    return-void

    .line 1144
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e$h;->e:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/route/e;->c(Lcom/tencent/liteav/audio/impl/route/e;)Lcom/tencent/liteav/audio/impl/route/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/liteav/audio/impl/route/h;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/audio/impl/route/e;->a(Lcom/tencent/liteav/audio/impl/route/e;Ljava/lang/String;)Ljava/lang/String;

    .line 1145
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e$h;->d:Ljava/util/HashMap;

    const-string v1, "PARAM_SESSIONID"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sessonID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TXCAudioRouteManager"

    invoke-static {v2, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    .line 1147
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v0, v0, v3

    if-nez v0, :cond_1

    goto :goto_0

    .line 1153
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1154
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e$h;->d:Ljava/util/HashMap;

    const-string v2, "PARAM_DEVICE"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "CONNECTDEVICE_RESULT_DEVICENAME"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1155
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e$h;->e:Lcom/tencent/liteav/audio/impl/route/e;

    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/route/e$h;->d:Ljava/util/HashMap;

    invoke-static {v1, v0, v2, p1}, Lcom/tencent/liteav/audio/impl/route/e;->a(Lcom/tencent/liteav/audio/impl/route/e;Landroid/content/Intent;Ljava/util/HashMap;I)I

    move-result p1

    if-nez p1, :cond_2

    .line 1156
    iget-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e$h;->e:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-virtual {p1}, Lcom/tencent/liteav/audio/impl/route/e;->b()V

    .line 1159
    :cond_2
    invoke-static {}, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->LogTraceExit()V

    return-void

    .line 1148
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e$h;->e:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-virtual {p1}, Lcom/tencent/liteav/audio/impl/route/e;->b()V

    const-string p1, "processDeviceConnectRes sid null,don\'t send res"

    .line 1149
    invoke-static {v2, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1127
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/route/e$h;->d:Ljava/util/HashMap;

    return-void
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method d()V
    .locals 2

    .line 1131
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e$h;->e:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/route/e;->c(Lcom/tencent/liteav/audio/impl/route/e;)Lcom/tencent/liteav/audio/impl/route/h;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/liteav/audio/impl/route/e$h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/audio/impl/route/h;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1132
    invoke-virtual {p0, v0}, Lcom/tencent/liteav/audio/impl/route/e$h;->a(I)V

    return-void
.end method

.method public e()V
    .locals 4

    .line 1178
    invoke-virtual {p0}, Lcom/tencent/liteav/audio/impl/route/e$h;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->LogTraceEntry(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1179
    iput-boolean v0, p0, Lcom/tencent/liteav/audio/impl/route/e$h;->b:Z

    .line 1180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "quit:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/liteav/audio/impl/route/e$h;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isRunning:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/tencent/liteav/audio/impl/route/e$h;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TXCAudioRouteManager"

    invoke-static {v2, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    invoke-virtual {p0}, Lcom/tencent/liteav/audio/impl/route/e$h;->interrupt()V

    .line 1182
    invoke-virtual {p0}, Lcom/tencent/liteav/audio/impl/route/e$h;->c()V

    .line 1183
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e$h;->c:[Z

    monitor-enter v1

    .line 1184
    :try_start_0
    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/route/e$h;->c:[Z

    aget-boolean v0, v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1186
    :try_start_1
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e$h;->c:[Z

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1191
    :catch_0
    :cond_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1192
    invoke-static {}, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->LogTraceExit()V

    return-void

    :catchall_0
    move-exception v0

    .line 1191
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 4

    .line 1163
    invoke-virtual {p0}, Lcom/tencent/liteav/audio/impl/route/e$h;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->LogTraceEntry(Ljava/lang/String;)V

    .line 1164
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e$h;->e:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/route/e;->c(Lcom/tencent/liteav/audio/impl/route/e;)Lcom/tencent/liteav/audio/impl/route/h;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/liteav/audio/impl/route/e$h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/audio/impl/route/h;->d(Ljava/lang/String;)V

    .line 1165
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e$h;->e:Lcom/tencent/liteav/audio/impl/route/e;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/route/e;->m(Lcom/tencent/liteav/audio/impl/route/e;)V

    .line 1167
    invoke-virtual {p0}, Lcom/tencent/liteav/audio/impl/route/e$h;->a()V

    .line 1169
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/route/e$h;->c:[Z

    monitor-enter v0

    .line 1170
    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e$h;->c:[Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 1171
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/route/e$h;->c:[Z

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1172
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1174
    invoke-static {}, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->LogTraceExit()V

    return-void

    :catchall_0
    move-exception v1

    .line 1172
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
