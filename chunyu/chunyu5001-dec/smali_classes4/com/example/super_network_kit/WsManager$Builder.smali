.class public final Lcom/example/super_network_kit/WsManager$Builder;
.super Ljava/lang/Object;
.source "WsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/super_network_kit/WsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEnableZip:Z

.field private mOkHttpClient:Lokhttp3/OkHttpClient;

.field private mSalt:Ljava/lang/String;

.field private needReconnect:Z

.field private wsUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 374
    iput-boolean v0, p0, Lcom/example/super_network_kit/WsManager$Builder;->needReconnect:Z

    .line 383
    iput-object p1, p0, Lcom/example/super_network_kit/WsManager$Builder;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$1000(Lcom/example/super_network_kit/WsManager$Builder;)Lokhttp3/OkHttpClient;
    .locals 0

    .line 370
    iget-object p0, p0, Lcom/example/super_network_kit/WsManager$Builder;->mOkHttpClient:Lokhttp3/OkHttpClient;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/example/super_network_kit/WsManager$Builder;)Z
    .locals 0

    .line 370
    iget-boolean p0, p0, Lcom/example/super_network_kit/WsManager$Builder;->mEnableZip:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/example/super_network_kit/WsManager$Builder;)Ljava/lang/String;
    .locals 0

    .line 370
    iget-object p0, p0, Lcom/example/super_network_kit/WsManager$Builder;->mSalt:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/example/super_network_kit/WsManager$Builder;)Landroid/content/Context;
    .locals 0

    .line 370
    iget-object p0, p0, Lcom/example/super_network_kit/WsManager$Builder;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$800(Lcom/example/super_network_kit/WsManager$Builder;)Ljava/lang/String;
    .locals 0

    .line 370
    iget-object p0, p0, Lcom/example/super_network_kit/WsManager$Builder;->wsUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/example/super_network_kit/WsManager$Builder;)Z
    .locals 0

    .line 370
    iget-boolean p0, p0, Lcom/example/super_network_kit/WsManager$Builder;->needReconnect:Z

    return p0
.end method


# virtual methods
.method public build()Lcom/example/super_network_kit/WsManager;
    .locals 1

    .line 412
    new-instance v0, Lcom/example/super_network_kit/WsManager;

    invoke-direct {v0, p0}, Lcom/example/super_network_kit/WsManager;-><init>(Lcom/example/super_network_kit/WsManager$Builder;)V

    return-object v0
.end method

.method public client(Lokhttp3/OkHttpClient;)Lcom/example/super_network_kit/WsManager$Builder;
    .locals 0

    .line 392
    iput-object p1, p0, Lcom/example/super_network_kit/WsManager$Builder;->mOkHttpClient:Lokhttp3/OkHttpClient;

    return-object p0
.end method

.method public enableZip(Z)Lcom/example/super_network_kit/WsManager$Builder;
    .locals 0

    .line 402
    iput-boolean p1, p0, Lcom/example/super_network_kit/WsManager$Builder;->mEnableZip:Z

    return-object p0
.end method

.method public needReconnect(Z)Lcom/example/super_network_kit/WsManager$Builder;
    .locals 0

    .line 397
    iput-boolean p1, p0, Lcom/example/super_network_kit/WsManager$Builder;->needReconnect:Z

    return-object p0
.end method

.method public salt(Ljava/lang/String;)Lcom/example/super_network_kit/WsManager$Builder;
    .locals 0

    .line 407
    iput-object p1, p0, Lcom/example/super_network_kit/WsManager$Builder;->mSalt:Ljava/lang/String;

    return-object p0
.end method

.method public wsUrl(Ljava/lang/String;)Lcom/example/super_network_kit/WsManager$Builder;
    .locals 0

    .line 387
    iput-object p1, p0, Lcom/example/super_network_kit/WsManager$Builder;->wsUrl:Ljava/lang/String;

    return-object p0
.end method
