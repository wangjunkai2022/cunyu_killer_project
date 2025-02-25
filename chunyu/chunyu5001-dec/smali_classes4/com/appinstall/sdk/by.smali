.class public Lcom/appinstall/sdk/by;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appinstall/sdk/by$a;
    }
.end annotation


# instance fields
.field private a:Lcom/appinstall/sdk/by$a;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/appinstall/sdk/by$a;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appinstall/sdk/by;->a:Lcom/appinstall/sdk/by$a;

    iput p2, p0, Lcom/appinstall/sdk/by;->b:I

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/appinstall/sdk/by;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lcom/appinstall/sdk/by;

    invoke-direct {v0}, Lcom/appinstall/sdk/by;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "config"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/appinstall/sdk/by;->d(Ljava/lang/String;)V

    :cond_0
    const/4 p0, -0x2

    const-string v2, "code"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "msg"

    if-nez v2, :cond_2

    sget-object p0, Lcom/appinstall/sdk/by$a;->a:Lcom/appinstall/sdk/by$a;

    invoke-virtual {v0, p0}, Lcom/appinstall/sdk/by;->a(Lcom/appinstall/sdk/by$a;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/appinstall/sdk/by;->a(I)V

    const-string p0, "body"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/appinstall/sdk/by;->c(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    sget-object v4, Lcom/appinstall/sdk/by$a;->c:Lcom/appinstall/sdk/by$a;

    invoke-virtual {v0, v4}, Lcom/appinstall/sdk/by;->a(Lcom/appinstall/sdk/by$a;)V

    invoke-virtual {v0, p0}, Lcom/appinstall/sdk/by;->a(I)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/appinstall/sdk/by;->b(Ljava/lang/String;)V

    :cond_3
    return-object v0
.end method


# virtual methods
.method public a()Lcom/appinstall/sdk/by$a;
    .locals 1

    iget-object v0, p0, Lcom/appinstall/sdk/by;->a:Lcom/appinstall/sdk/by$a;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/appinstall/sdk/by;->b:I

    return-void
.end method

.method public a(Lcom/appinstall/sdk/by$a;)V
    .locals 0

    iput-object p1, p0, Lcom/appinstall/sdk/by;->a:Lcom/appinstall/sdk/by$a;

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/appinstall/sdk/by;->b:I

    return v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appinstall/sdk/by;->d:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appinstall/sdk/by;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appinstall/sdk/by;->c:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appinstall/sdk/by;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appinstall/sdk/by;->e:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appinstall/sdk/by;->e:Ljava/lang/String;

    return-object v0
.end method
