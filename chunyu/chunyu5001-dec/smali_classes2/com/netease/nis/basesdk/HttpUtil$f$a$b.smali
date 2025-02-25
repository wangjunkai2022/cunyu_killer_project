.class Lcom/netease/nis/basesdk/HttpUtil$f$a$b;
.super Ljava/lang/Object;
.source "HttpUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/nis/basesdk/HttpUtil$f$a;->onError(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/netease/nis/basesdk/HttpUtil$f$a;


# direct methods
.method constructor <init>(Lcom/netease/nis/basesdk/HttpUtil$f$a;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/basesdk/HttpUtil$f$a$b;->c:Lcom/netease/nis/basesdk/HttpUtil$f$a;

    iput p2, p0, Lcom/netease/nis/basesdk/HttpUtil$f$a$b;->a:I

    iput-object p3, p0, Lcom/netease/nis/basesdk/HttpUtil$f$a$b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/nis/basesdk/HttpUtil$f$a$b;->c:Lcom/netease/nis/basesdk/HttpUtil$f$a;

    iget-object v0, v0, Lcom/netease/nis/basesdk/HttpUtil$f$a;->a:Lcom/netease/nis/basesdk/HttpUtil$f;

    iget-object v0, v0, Lcom/netease/nis/basesdk/HttpUtil$f;->d:Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;

    iget v1, p0, Lcom/netease/nis/basesdk/HttpUtil$f$a$b;->a:I

    iget-object v2, p0, Lcom/netease/nis/basesdk/HttpUtil$f$a$b;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;->onError(ILjava/lang/String;)V

    return-void
.end method
