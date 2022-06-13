.class Lcom/netease/nis/basesdk/HttpUtil$a;
.super Ljava/lang/Object;
.source "HttpUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/nis/basesdk/HttpUtil;->doGetRequestByForm(Ljava/lang/String;Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/basesdk/HttpUtil$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/nis/basesdk/HttpUtil$a;->b:Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/netease/nis/basesdk/HttpUtil$a;->a:Ljava/lang/String;

    new-instance v6, Lcom/netease/nis/basesdk/HttpUtil$a$a;

    invoke-direct {v6, p0}, Lcom/netease/nis/basesdk/HttpUtil$a$a;-><init>(Lcom/netease/nis/basesdk/HttpUtil$a;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v6}, Lcom/netease/nis/basesdk/HttpUtil;->doHttpRequest(Ljava/lang/String;ZZLjava/lang/String;Ljava/util/Map;Landroid/net/Network;Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;)V

    return-void
.end method
