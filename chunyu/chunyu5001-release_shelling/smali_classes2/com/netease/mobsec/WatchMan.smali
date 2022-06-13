.class public Lcom/netease/mobsec/WatchMan;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mobsec/WatchMan$b;
    }
.end annotation


# static fields
.field private static a:Lcom/netease/mobsec/e/f;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/mobsec/WatchMan$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mobsec/WatchMan;-><init>()V

    return-void
.end method

.method private static a()Lcom/netease/mobsec/WatchMan;
    .locals 1

    sget-object v0, Lcom/netease/mobsec/WatchMan$b;->a:Lcom/netease/mobsec/WatchMan;

    return-object v0
.end method

.method public static getDeviceId()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/netease/mobsec/WatchMan;->a()Lcom/netease/mobsec/WatchMan;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/mobsec/WatchMan;->a:Lcom/netease/mobsec/e/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/mobsec/e/f;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static getNdInfo()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/netease/mobsec/WatchMan;->a()Lcom/netease/mobsec/WatchMan;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/mobsec/WatchMan;->a:Lcom/netease/mobsec/e/f;

    if-eqz v0, :cond_0

    const/16 v1, 0x2694

    invoke-virtual {v0, v1}, Lcom/netease/mobsec/e/f;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static getNdInfo(I)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/netease/mobsec/WatchMan;->a()Lcom/netease/mobsec/WatchMan;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/mobsec/WatchMan;->a:Lcom/netease/mobsec/e/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/netease/mobsec/e/f;->a(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static getToken(ILcom/netease/mobsec/GetTokenCallback;)V
    .locals 1

    invoke-static {}, Lcom/netease/mobsec/WatchMan;->a()Lcom/netease/mobsec/WatchMan;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/mobsec/WatchMan;->a:Lcom/netease/mobsec/e/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, Lcom/netease/mobsec/e/f;->a(ILcom/netease/mobsec/GetTokenCallback;)V

    :cond_0
    return-void
.end method

.method public static getToken(Lcom/netease/mobsec/GetTokenCallback;)V
    .locals 2

    invoke-static {}, Lcom/netease/mobsec/WatchMan;->a()Lcom/netease/mobsec/WatchMan;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/mobsec/WatchMan;->a:Lcom/netease/mobsec/e/f;

    if-eqz v0, :cond_0

    const/16 v1, 0x2694

    invoke-virtual {v0, v1, p0}, Lcom/netease/mobsec/e/f;->a(ILcom/netease/mobsec/GetTokenCallback;)V

    :cond_0
    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Lcom/netease/mobsec/WatchManConf;Lcom/netease/mobsec/InitCallback;)V
    .locals 1

    invoke-static {}, Lcom/netease/mobsec/WatchMan;->a()Lcom/netease/mobsec/WatchMan;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/netease/mobsec/WatchMan;->a:Lcom/netease/mobsec/e/f;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/netease/mobsec/e/f;->a(Landroid/content/Context;)Lcom/netease/mobsec/e/f;

    move-result-object v0

    sput-object v0, Lcom/netease/mobsec/WatchMan;->a:Lcom/netease/mobsec/e/f;

    :cond_0
    sget-object v0, Lcom/netease/mobsec/WatchMan;->a:Lcom/netease/mobsec/e/f;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/netease/mobsec/e/f;->a(Landroid/content/Context;Ljava/lang/String;Lcom/netease/mobsec/WatchManConf;Lcom/netease/mobsec/InitCallback;)V

    :cond_1
    return-void
.end method

.method public static setCustomTrackId(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/netease/mobsec/WatchMan;->a()Lcom/netease/mobsec/WatchMan;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/mobsec/WatchMan;->a:Lcom/netease/mobsec/e/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/netease/mobsec/e/f;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setSeniorCollectStatus(Z)V
    .locals 1

    invoke-static {}, Lcom/netease/mobsec/WatchMan;->a()Lcom/netease/mobsec/WatchMan;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/mobsec/WatchMan;->a:Lcom/netease/mobsec/e/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/netease/mobsec/e/f;->a(Z)V

    :cond_0
    return-void
.end method
