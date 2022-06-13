.class Lcom/appinstall/sdk/aw;
.super Lcom/appinstall/sdk/ar;


# instance fields
.field a:J

.field final synthetic b:Lcom/appinstall/sdk/au;


# direct methods
.method constructor <init>(Lcom/appinstall/sdk/au;)V
    .locals 2

    iput-object p1, p0, Lcom/appinstall/sdk/aw;->b:Lcom/appinstall/sdk/au;

    invoke-direct {p0}, Lcom/appinstall/sdk/ar;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/appinstall/sdk/aw;->a:J

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/appinstall/sdk/aw;->a:J

    return-void
.end method

.method public b(J)V
    .locals 2

    iget-wide v0, p0, Lcom/appinstall/sdk/aw;->a:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    iget-object v0, p0, Lcom/appinstall/sdk/aw;->b:Lcom/appinstall/sdk/au;

    invoke-virtual {v0, p1, p2}, Lcom/appinstall/sdk/au;->a(J)V

    return-void
.end method
