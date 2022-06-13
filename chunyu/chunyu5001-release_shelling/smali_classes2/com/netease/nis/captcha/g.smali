.class public Lcom/netease/nis/captcha/g;
.super Ljava/lang/Object;
.source "StatisticsUploader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/nis/captcha/g$b;
    }
.end annotation


# static fields
.field private static volatile b:Lcom/netease/nis/captcha/g;


# instance fields
.field private final a:Lcom/netease/nis/captcha/g$b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/netease/nis/captcha/g$b;

    invoke-direct {v0}, Lcom/netease/nis/captcha/g$b;-><init>()V

    iput-object v0, p0, Lcom/netease/nis/captcha/g;->a:Lcom/netease/nis/captcha/g$b;

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 4

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pid="

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/nis/captcha/g;->a:Lcom/netease/nis/captcha/g$b;

    iget-object v1, v1, Lcom/netease/nis/captcha/g$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&bid="

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/nis/captcha/g;->a:Lcom/netease/nis/captcha/g$b;

    iget-object v1, v1, Lcom/netease/nis/captcha/g$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&nts="

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/nis/captcha/g;->a:Lcom/netease/nis/captcha/g$b;

    iget-object v1, v1, Lcom/netease/nis/captcha/g$b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&tt="

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/nis/captcha/g;->a:Lcom/netease/nis/captcha/g$b;

    iget-object v1, v1, Lcom/netease/nis/captcha/g$b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&ip="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/nis/captcha/g;->a:Lcom/netease/nis/captcha/g$b;

    iget-object v1, v1, Lcom/netease/nis/captcha/g$b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&dns="

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/nis/captcha/g;->a:Lcom/netease/nis/captcha/g$b;

    iget-object v1, v1, Lcom/netease/nis/captcha/g$b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 17
    iget-object v2, p0, Lcom/netease/nis/captcha/g;->a:Lcom/netease/nis/captcha/g$b;

    iget-object v2, v2, Lcom/netease/nis/captcha/g$b;->g:Lcom/netease/nis/captcha/g$b$a;

    iget-object v2, v2, Lcom/netease/nis/captcha/g$b$a;->a:Ljava/lang/String;

    const-string v3, "tc"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    iget-object v2, p0, Lcom/netease/nis/captcha/g;->a:Lcom/netease/nis/captcha/g$b;

    iget-object v2, v2, Lcom/netease/nis/captcha/g$b;->g:Lcom/netease/nis/captcha/g$b$a;

    iget-object v2, v2, Lcom/netease/nis/captcha/g$b$a;->b:Ljava/lang/String;

    const-string v3, "m"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    iget-object v2, p0, Lcom/netease/nis/captcha/g;->a:Lcom/netease/nis/captcha/g$b;

    iget-object v2, v2, Lcom/netease/nis/captcha/g$b;->g:Lcom/netease/nis/captcha/g$b$a;

    iget-object v2, v2, Lcom/netease/nis/captcha/g$b$a;->c:Ljava/lang/String;

    const-string v3, "v"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    iget-object v2, p0, Lcom/netease/nis/captcha/g;->a:Lcom/netease/nis/captcha/g$b;

    iget-object v2, v2, Lcom/netease/nis/captcha/g$b;->g:Lcom/netease/nis/captcha/g$b$a;

    iget-object v2, v2, Lcom/netease/nis/captcha/g$b$a;->d:Ljava/lang/String;

    const-string v3, "os"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "&value="

    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/netease/nis/captcha/g;->a:Lcom/netease/nis/captcha/g$b;

    invoke-static {p1}, Lcom/netease/nis/captcha/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/nis/captcha/g$b;->e:Ljava/lang/String;

    .line 5
    iget-object v0, p0, Lcom/netease/nis/captcha/g;->a:Lcom/netease/nis/captcha/g$b;

    invoke-static {p1}, Lcom/netease/nis/captcha/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/netease/nis/captcha/g$b;->f:Ljava/lang/String;

    .line 6
    iget-object p1, p0, Lcom/netease/nis/captcha/g;->a:Lcom/netease/nis/captcha/g$b;

    iget-object p1, p1, Lcom/netease/nis/captcha/g$b;->g:Lcom/netease/nis/captcha/g$b$a;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p1, Lcom/netease/nis/captcha/g$b$a;->b:Ljava/lang/String;

    const-string v0, "3.3.6.1"

    .line 7
    iput-object v0, p1, Lcom/netease/nis/captcha/g$b$a;->c:Ljava/lang/String;

    .line 8
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p1, Lcom/netease/nis/captcha/g$b$a;->d:Ljava/lang/String;

    return-void
.end method

.method public static b()Lcom/netease/nis/captcha/g;
    .locals 2

    .line 1
    sget-object v0, Lcom/netease/nis/captcha/g;->b:Lcom/netease/nis/captcha/g;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/netease/nis/captcha/g;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/netease/nis/captcha/g;->b:Lcom/netease/nis/captcha/g;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/netease/nis/captcha/g;

    invoke-direct {v1}, Lcom/netease/nis/captcha/g;-><init>()V

    sput-object v1, Lcom/netease/nis/captcha/g;->b:Lcom/netease/nis/captcha/g;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lcom/netease/nis/captcha/g;->b:Lcom/netease/nis/captcha/g;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;JJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/captcha/g;->a:Lcom/netease/nis/captcha/g$b;

    iput-object p1, v0, Lcom/netease/nis/captcha/g$b;->b:Ljava/lang/String;

    .line 2
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/netease/nis/captcha/g$b;->c:Ljava/lang/String;

    .line 3
    iget-object p1, p0, Lcom/netease/nis/captcha/g;->a:Lcom/netease/nis/captcha/g$b;

    iget-object p1, p1, Lcom/netease/nis/captcha/g$b;->g:Lcom/netease/nis/captcha/g$b$a;

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/netease/nis/captcha/g$b$a;->a:Ljava/lang/String;

    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 2

    .line 9
    invoke-direct {p0, p1}, Lcom/netease/nis/captcha/g;->a(Landroid/content/Context;)V

    .line 11
    :try_start_0
    invoke-direct {p0}, Lcom/netease/nis/captcha/g;->a()Ljava/lang/String;

    move-result-object p1

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://da.dun.163.com/sn.gif?d="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "utf-8"

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/netease/nis/captcha/g$a;

    invoke-direct {v0, p0}, Lcom/netease/nis/captcha/g$a;-><init>(Lcom/netease/nis/captcha/g;)V

    invoke-static {p1, v0}, Lcom/netease/nis/captcha/e;->a(Ljava/lang/String;Lcom/netease/nis/captcha/e$b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
