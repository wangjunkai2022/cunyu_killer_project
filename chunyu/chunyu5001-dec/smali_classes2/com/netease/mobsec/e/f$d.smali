.class public Lcom/netease/mobsec/e/f$d;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mobsec/e/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mobsec/e/f;


# direct methods
.method public constructor <init>(Lcom/netease/mobsec/e/f;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/mobsec/e/f$d;->a:Lcom/netease/mobsec/e/f;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/netease/mobsec/e/f$d;->a:Lcom/netease/mobsec/e/f;

    invoke-static {v0}, Lcom/netease/mobsec/e/f;->e(Lcom/netease/mobsec/e/f;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
