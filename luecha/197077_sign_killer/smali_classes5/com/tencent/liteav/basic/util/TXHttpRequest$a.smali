.class Lcom/tencent/liteav/basic/util/TXHttpRequest$a;
.super Ljava/net/Authenticator;
.source "TXHttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/basic/util/TXHttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/net/Authenticator;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/tencent/liteav/basic/util/TXHttpRequest$a;->a:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lcom/tencent/liteav/basic/util/TXHttpRequest$a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getPasswordAuthentication()Ljava/net/PasswordAuthentication;
    .locals 3

    .line 65
    new-instance v0, Ljava/net/PasswordAuthentication;

    iget-object v1, p0, Lcom/tencent/liteav/basic/util/TXHttpRequest$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/liteav/basic/util/TXHttpRequest$a;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/net/PasswordAuthentication;-><init>(Ljava/lang/String;[C)V

    return-object v0
.end method
