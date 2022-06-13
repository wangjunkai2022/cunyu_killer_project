.class Lcom/netease/nis/basesdk/HttpUtil$f;
.super Ljava/lang/Object;
.source "HttpUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/nis/basesdk/HttpUtil;->doPostRequestByForm(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/basesdk/HttpUtil$f;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/nis/basesdk/HttpUtil$f;->b:Ljava/util/Map;

    iput-object p3, p0, Lcom/netease/nis/basesdk/HttpUtil$f;->c:Ljava/util/Map;

    iput-object p4, p0, Lcom/netease/nis/basesdk/HttpUtil$f;->d:Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const-string v0, "utf-8"

    .line 1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "post request url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/nis/basesdk/HttpUtil$f;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " args:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/nis/basesdk/HttpUtil$f;->b:Ljava/util/Map;

    invoke-static {v2, v0}, Lcom/netease/nis/basesdk/HttpUtil;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/nis/basesdk/Logger;->i(Ljava/lang/String;)V

    .line 2
    iget-object v2, p0, Lcom/netease/nis/basesdk/HttpUtil$f;->a:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/netease/nis/basesdk/HttpUtil$f;->b:Ljava/util/Map;

    invoke-static {v1, v0}, Lcom/netease/nis/basesdk/HttpUtil;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/netease/nis/basesdk/HttpUtil$f;->c:Ljava/util/Map;

    const/4 v7, 0x0

    new-instance v8, Lcom/netease/nis/basesdk/HttpUtil$f$a;

    invoke-direct {v8, p0}, Lcom/netease/nis/basesdk/HttpUtil$f$a;-><init>(Lcom/netease/nis/basesdk/HttpUtil$f;)V

    invoke-static/range {v2 .. v8}, Lcom/netease/nis/basesdk/HttpUtil;->doHttpRequest(Ljava/lang/String;ZZLjava/lang/String;Ljava/util/Map;Landroid/net/Network;Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 25
    iget-object v1, p0, Lcom/netease/nis/basesdk/HttpUtil$f;->d:Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u7f51\u7edc\u8bf7\u6c42\u51fa\u73b0\u5f02\u5e38:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2711

    invoke-interface {v1, v2, v0}, Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;->onError(ILjava/lang/String;)V

    :goto_0
    return-void
.end method
