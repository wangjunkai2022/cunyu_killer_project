.class Lcom/netease/nis/captcha/e$a$a$a;
.super Ljava/lang/Object;
.source "HttpUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/nis/captcha/e$a$a;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/netease/nis/captcha/e$a$a;


# direct methods
.method constructor <init>(Lcom/netease/nis/captcha/e$a$a;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/captcha/e$a$a$a;->b:Lcom/netease/nis/captcha/e$a$a;

    iput-object p2, p0, Lcom/netease/nis/captcha/e$a$a$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/nis/captcha/e$a$a$a;->b:Lcom/netease/nis/captcha/e$a$a;

    iget-object v0, v0, Lcom/netease/nis/captcha/e$a$a;->a:Lcom/netease/nis/captcha/e$a;

    iget-object v0, v0, Lcom/netease/nis/captcha/e$a;->b:Lcom/netease/nis/captcha/e$b;

    iget-object v1, p0, Lcom/netease/nis/captcha/e$a$a$a;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/netease/nis/captcha/e$b;->a(Ljava/lang/String;)V

    return-void
.end method
