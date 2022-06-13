.class Lcom/tencent/liteav/audio/impl/a$1;
.super Ljava/lang/Object;
.source "TXCTelephonyMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/audio/impl/a;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/audio/impl/a;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/audio/impl/a;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/a$1;->a:Lcom/tencent/liteav/audio/impl/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$1;->a:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/a;->a(Lcom/tencent/liteav/audio/impl/a;)Landroid/telephony/PhoneStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$1;->a:Lcom/tencent/liteav/audio/impl/a;

    new-instance v1, Lcom/tencent/liteav/audio/impl/a$1$1;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/audio/impl/a$1$1;-><init>(Lcom/tencent/liteav/audio/impl/a$1;)V

    invoke-static {v0, v1}, Lcom/tencent/liteav/audio/impl/a;->a(Lcom/tencent/liteav/audio/impl/a;Landroid/telephony/PhoneStateListener;)Landroid/telephony/PhoneStateListener;

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/a$1;->a:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/a;->b(Lcom/tencent/liteav/audio/impl/a;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 86
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/a$1;->a:Lcom/tencent/liteav/audio/impl/a;

    invoke-static {v1}, Lcom/tencent/liteav/audio/impl/a;->a(Lcom/tencent/liteav/audio/impl/a;)Landroid/telephony/PhoneStateListener;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AudioCenter:TXCTelephonyMgr"

    const-string v2, "TelephonyManager listen error "

    .line 88
    invoke-static {v1, v2, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
