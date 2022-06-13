.class public final Lcom/appinstall/api/Configuration;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appinstall/api/Configuration$Builder;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(ZLjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/appinstall/api/Configuration;->a:Z

    iput-object p2, p0, Lcom/appinstall/api/Configuration;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/appinstall/api/Configuration;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/appinstall/api/Configuration;->d:Z

    iput-boolean p5, p0, Lcom/appinstall/api/Configuration;->e:Z

    return-void
.end method

.method synthetic constructor <init>(ZLjava/lang/String;Ljava/lang/String;ZZLcom/appinstall/api/Configuration$1;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/appinstall/api/Configuration;-><init>(ZLjava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public static getDefault()Lcom/appinstall/api/Configuration;
    .locals 1

    new-instance v0, Lcom/appinstall/api/Configuration;

    invoke-direct {v0}, Lcom/appinstall/api/Configuration;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getGaid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appinstall/api/Configuration;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getOaid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appinstall/api/Configuration;->b:Ljava/lang/String;

    return-object v0
.end method

.method public isAdEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appinstall/api/Configuration;->a:Z

    return v0
.end method

.method public isImeiDisabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appinstall/api/Configuration;->d:Z

    return v0
.end method

.method public isMacDisabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appinstall/api/Configuration;->e:Z

    return v0
.end method
