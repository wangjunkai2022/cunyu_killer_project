.class public Lcom/netease/mobsec/c/e/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/netease/mobsec/c/e/b;


# instance fields
.field a:Lcom/netease/mobsec/factory/a;

.field b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/mobsec/c/e/a;->b:Landroid/content/Context;

    new-instance v0, Lcom/netease/mobsec/factory/a;

    invoke-direct {v0, p1}, Lcom/netease/mobsec/factory/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/mobsec/c/e/a;->a:Lcom/netease/mobsec/factory/a;

    return-void
.end method


# virtual methods
.method public final a([Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/mobsec/c/e/a;->a:Lcom/netease/mobsec/factory/a;

    invoke-virtual {v0, p1}, Lcom/netease/mobsec/factory/a;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b([Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netease/mobsec/c/e/a;->a:Lcom/netease/mobsec/factory/a;

    invoke-virtual {v0, p1}, Lcom/netease/mobsec/factory/a;->b([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
