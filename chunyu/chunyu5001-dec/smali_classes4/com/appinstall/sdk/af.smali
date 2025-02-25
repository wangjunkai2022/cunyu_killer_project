.class Lcom/appinstall/sdk/af;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appinstall/sdk/ak;


# instance fields
.field final synthetic a:Lcom/appinstall/api/listener/AppWakeUpListener;

.field final synthetic b:Landroid/net/Uri;

.field final synthetic c:Lcom/appinstall/sdk/m;


# direct methods
.method constructor <init>(Lcom/appinstall/sdk/m;Lcom/appinstall/api/listener/AppWakeUpListener;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/appinstall/sdk/af;->c:Lcom/appinstall/sdk/m;

    iput-object p2, p0, Lcom/appinstall/sdk/af;->a:Lcom/appinstall/api/listener/AppWakeUpListener;

    iput-object p3, p0, Lcom/appinstall/sdk/af;->b:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/appinstall/sdk/by;)V
    .locals 5

    invoke-virtual {p1}, Lcom/appinstall/sdk/by;->a()Lcom/appinstall/sdk/by$a;

    move-result-object v0

    sget-object v1, Lcom/appinstall/sdk/by$a;->a:Lcom/appinstall/sdk/by$a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v1, :cond_5

    sget-boolean v0, Lcom/appinstall/sdk/cf;->a:Z

    if-eqz v0, :cond_0

    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/appinstall/sdk/by;->d()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "decodeWakeUp success : %s"

    invoke-static {v1, v0}, Lcom/appinstall/sdk/cf;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Lcom/appinstall/sdk/by;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/appinstall/sdk/cf;->a:Z

    if-eqz v0, :cond_1

    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/appinstall/sdk/by;->c()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "decodeWakeUp warning : %s"

    invoke-static {v1, v0}, Lcom/appinstall/sdk/cf;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :try_start_0
    new-instance v0, Lcom/appinstall/api/model/AppData;

    invoke-direct {v0}, Lcom/appinstall/api/model/AppData;-><init>()V

    invoke-virtual {p1}, Lcom/appinstall/sdk/by;->b()I

    move-result v1

    if-ne v1, v4, :cond_2

    iget-object v0, p0, Lcom/appinstall/sdk/af;->c:Lcom/appinstall/sdk/m;

    invoke-virtual {p1}, Lcom/appinstall/sdk/by;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/appinstall/sdk/m;->a(Lcom/appinstall/sdk/m;Ljava/lang/String;)Lcom/appinstall/api/model/AppData;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/appinstall/sdk/by;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/appinstall/sdk/bv;->d(Ljava/lang/String;)Lcom/appinstall/sdk/bv;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appinstall/sdk/bv;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appinstall/api/model/AppData;->setChannel(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/appinstall/sdk/bv;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/appinstall/api/model/AppData;->setData(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/appinstall/sdk/af;->a:Lcom/appinstall/api/listener/AppWakeUpListener;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/appinstall/sdk/af;->a:Lcom/appinstall/api/listener/AppWakeUpListener;

    invoke-interface {p1, v0, v2}, Lcom/appinstall/api/listener/AppWakeUpListener;->onWakeUpFinish(Lcom/appinstall/api/model/AppData;Lcom/appinstall/api/model/Error;)V

    :cond_3
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/appinstall/api/model/AppData;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/appinstall/sdk/af;->c:Lcom/appinstall/sdk/m;

    iget-object v0, p0, Lcom/appinstall/sdk/af;->b:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Lcom/appinstall/sdk/m;->a(Landroid/net/Uri;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    sget-boolean v0, Lcom/appinstall/sdk/cf;->a:Z

    if-eqz v0, :cond_4

    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    const-string p1, "decodeWakeUp error : %s"

    invoke-static {p1, v0}, Lcom/appinstall/sdk/cf;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    iget-object p1, p0, Lcom/appinstall/sdk/af;->a:Lcom/appinstall/api/listener/AppWakeUpListener;

    if-eqz p1, :cond_7

    invoke-interface {p1, v2, v2}, Lcom/appinstall/api/listener/AppWakeUpListener;->onWakeUpFinish(Lcom/appinstall/api/model/AppData;Lcom/appinstall/api/model/Error;)V

    goto :goto_1

    :cond_5
    sget-boolean v0, Lcom/appinstall/sdk/cf;->a:Z

    if-eqz v0, :cond_6

    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/appinstall/sdk/by;->c()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "decodeWakeUp fail : %s"

    invoke-static {v1, v0}, Lcom/appinstall/sdk/cf;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    iget-object v0, p0, Lcom/appinstall/sdk/af;->a:Lcom/appinstall/api/listener/AppWakeUpListener;

    if-eqz v0, :cond_7

    new-instance v1, Lcom/appinstall/api/model/Error;

    invoke-virtual {p1}, Lcom/appinstall/sdk/by;->b()I

    move-result v3

    invoke-virtual {p1}, Lcom/appinstall/sdk/by;->c()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v3, p1}, Lcom/appinstall/api/model/Error;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v2, v1}, Lcom/appinstall/api/listener/AppWakeUpListener;->onWakeUpFinish(Lcom/appinstall/api/model/AppData;Lcom/appinstall/api/model/Error;)V

    :cond_7
    :goto_1
    return-void
.end method
