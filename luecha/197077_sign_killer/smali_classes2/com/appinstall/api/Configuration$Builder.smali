.class public Lcom/appinstall/api/Configuration$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appinstall/api/Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adEnabled(Z)Lcom/appinstall/api/Configuration$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/appinstall/api/Configuration$Builder;->a:Z

    return-object p0
.end method

.method public build()Lcom/appinstall/api/Configuration;
    .locals 8

    new-instance v7, Lcom/appinstall/api/Configuration;

    iget-boolean v1, p0, Lcom/appinstall/api/Configuration$Builder;->a:Z

    iget-object v2, p0, Lcom/appinstall/api/Configuration$Builder;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/appinstall/api/Configuration$Builder;->c:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/appinstall/api/Configuration$Builder;->d:Z

    iget-boolean v5, p0, Lcom/appinstall/api/Configuration$Builder;->e:Z

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/appinstall/api/Configuration;-><init>(ZLjava/lang/String;Ljava/lang/String;ZZLcom/appinstall/api/Configuration$1;)V

    return-object v7
.end method

.method public gaid(Ljava/lang/String;)Lcom/appinstall/api/Configuration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/appinstall/api/Configuration$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method public imeiDisabled()Lcom/appinstall/api/Configuration$Builder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appinstall/api/Configuration$Builder;->d:Z

    return-object p0
.end method

.method public macDisabled()Lcom/appinstall/api/Configuration$Builder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appinstall/api/Configuration$Builder;->e:Z

    return-object p0
.end method

.method public oaid(Ljava/lang/String;)Lcom/appinstall/api/Configuration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/appinstall/api/Configuration$Builder;->b:Ljava/lang/String;

    return-object p0
.end method
