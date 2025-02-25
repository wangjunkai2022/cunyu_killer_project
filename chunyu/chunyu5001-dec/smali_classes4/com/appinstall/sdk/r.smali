.class Lcom/appinstall/sdk/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/appinstall/api/listener/GetUpdateApkListener;

.field final synthetic d:Lcom/appinstall/sdk/m;


# direct methods
.method constructor <init>(Lcom/appinstall/sdk/m;Ljava/lang/String;Ljava/lang/String;Lcom/appinstall/api/listener/GetUpdateApkListener;)V
    .locals 0

    iput-object p1, p0, Lcom/appinstall/sdk/r;->d:Lcom/appinstall/sdk/m;

    iput-object p2, p0, Lcom/appinstall/sdk/r;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/appinstall/sdk/r;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/appinstall/sdk/r;->c:Lcom/appinstall/api/listener/GetUpdateApkListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/appinstall/sdk/r;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/appinstall/sdk/r;->b:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/appinstall/sdk/bp;->a([BLjava/io/File;Ljava/io/File;)V

    iget-object v1, p0, Lcom/appinstall/sdk/r;->c:Lcom/appinstall/api/listener/GetUpdateApkListener;

    invoke-interface {v1, v2}, Lcom/appinstall/api/listener/GetUpdateApkListener;->onGetFinish(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v2, Lcom/appinstall/sdk/cf;->a:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    iget-object v1, p0, Lcom/appinstall/sdk/r;->c:Lcom/appinstall/api/listener/GetUpdateApkListener;

    invoke-interface {v1, v0}, Lcom/appinstall/api/listener/GetUpdateApkListener;->onGetFinish(Ljava/io/File;)V

    return-void
.end method
