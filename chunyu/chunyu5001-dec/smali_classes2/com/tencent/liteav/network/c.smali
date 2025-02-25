.class public Lcom/tencent/liteav/network/c;
.super Ljava/lang/Object;
.source "TXCHttpURLClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/network/c$b;,
        Lcom/tencent/liteav/network/c$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/liteav/network/c$1;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/tencent/liteav/network/c;-><init>()V

    return-void
.end method

.method public static a()Lcom/tencent/liteav/network/c;
    .locals 1

    .line 31
    sget-object v0, Lcom/tencent/liteav/network/c$a;->a:Lcom/tencent/liteav/network/c;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/tencent/liteav/network/c$b;)V
    .locals 1

    .line 44
    new-instance v0, Lcom/tencent/liteav/network/c$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/tencent/liteav/network/c$1;-><init>(Lcom/tencent/liteav/network/c;Ljava/lang/String;Lcom/tencent/liteav/network/c$b;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
