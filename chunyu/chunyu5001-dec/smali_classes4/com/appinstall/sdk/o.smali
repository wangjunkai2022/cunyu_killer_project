.class Lcom/appinstall/sdk/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appinstall/sdk/ak;


# instance fields
.field final synthetic a:Lcom/appinstall/api/listener/AppInstallListener;

.field final synthetic b:Lcom/appinstall/sdk/m;


# direct methods
.method constructor <init>(Lcom/appinstall/sdk/m;Lcom/appinstall/api/listener/AppInstallListener;)V
    .locals 0

    iput-object p1, p0, Lcom/appinstall/sdk/o;->b:Lcom/appinstall/sdk/m;

    iput-object p2, p0, Lcom/appinstall/sdk/o;->a:Lcom/appinstall/api/listener/AppInstallListener;

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

    if-ne v0, v1, :cond_3

    sget-boolean v0, Lcom/appinstall/sdk/cf;->a:Z

    if-eqz v0, :cond_0

    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/appinstall/sdk/by;->d()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "decodeInstall success : %s"

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

    const-string v1, "decodeInstall warning : %s"

    invoke-static {v1, v0}, Lcom/appinstall/sdk/cf;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/appinstall/sdk/by;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/appinstall/sdk/bv;->d(Ljava/lang/String;)Lcom/appinstall/sdk/bv;

    move-result-object p1

    new-instance v0, Lcom/appinstall/api/model/AppData;

    invoke-direct {v0}, Lcom/appinstall/api/model/AppData;-><init>()V

    invoke-virtual {p1}, Lcom/appinstall/sdk/bv;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appinstall/api/model/AppData;->setChannel(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/appinstall/sdk/bv;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/appinstall/api/model/AppData;->setData(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/appinstall/sdk/o;->a:Lcom/appinstall/api/listener/AppInstallListener;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/appinstall/sdk/o;->a:Lcom/appinstall/api/listener/AppInstallListener;

    invoke-interface {p1, v0, v2}, Lcom/appinstall/api/listener/AppInstallListener;->onInstallFinish(Lcom/appinstall/api/model/AppData;Lcom/appinstall/api/model/Error;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-boolean v0, Lcom/appinstall/sdk/cf;->a:Z

    if-eqz v0, :cond_2

    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    const-string p1, "decodeInstall error : %s"

    invoke-static {p1, v0}, Lcom/appinstall/sdk/cf;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-object p1, p0, Lcom/appinstall/sdk/o;->a:Lcom/appinstall/api/listener/AppInstallListener;

    if-eqz p1, :cond_5

    invoke-interface {p1, v2, v2}, Lcom/appinstall/api/listener/AppInstallListener;->onInstallFinish(Lcom/appinstall/api/model/AppData;Lcom/appinstall/api/model/Error;)V

    goto :goto_0

    :cond_3
    sget-boolean v0, Lcom/appinstall/sdk/cf;->a:Z

    if-eqz v0, :cond_4

    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/appinstall/sdk/by;->c()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "decodeInstall fail : %s"

    invoke-static {v1, v0}, Lcom/appinstall/sdk/cf;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    iget-object v0, p0, Lcom/appinstall/sdk/o;->a:Lcom/appinstall/api/listener/AppInstallListener;

    if-eqz v0, :cond_5

    new-instance v1, Lcom/appinstall/api/model/Error;

    invoke-virtual {p1}, Lcom/appinstall/sdk/by;->b()I

    move-result v3

    invoke-virtual {p1}, Lcom/appinstall/sdk/by;->c()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v3, p1}, Lcom/appinstall/api/model/Error;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v2, v1}, Lcom/appinstall/api/listener/AppInstallListener;->onInstallFinish(Lcom/appinstall/api/model/AppData;Lcom/appinstall/api/model/Error;)V

    :cond_5
    :goto_0
    return-void
.end method
