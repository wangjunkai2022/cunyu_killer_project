.class Lcom/netease/nis/basesdk/crash/a$a;
.super Ljava/lang/Object;
.source "CrashReportRunnable.java"

# interfaces
.implements Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/nis/basesdk/crash/a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/nis/basesdk/crash/a;


# direct methods
.method constructor <init>(Lcom/netease/nis/basesdk/crash/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/basesdk/crash/a$a;->a:Lcom/netease/nis/basesdk/crash/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/basesdk/crash/a$a;->a:Lcom/netease/nis/basesdk/crash/a;

    invoke-static {v0}, Lcom/netease/nis/basesdk/crash/a;->a(Lcom/netease/nis/basesdk/crash/a;)Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;->onError(ILjava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/basesdk/crash/a$a;->a:Lcom/netease/nis/basesdk/crash/a;

    invoke-static {v0}, Lcom/netease/nis/basesdk/crash/a;->a(Lcom/netease/nis/basesdk/crash/a;)Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;->onSuccess(Ljava/lang/String;)V

    return-void
.end method
