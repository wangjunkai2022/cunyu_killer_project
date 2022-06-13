.class Lcom/tencent/live2/V2TXLivePremier$a;
.super Lcom/tencent/rtmp/TXLiveBaseListener;
.source "V2TXLivePremier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/live2/V2TXLivePremier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 113
    invoke-direct {p0}, Lcom/tencent/rtmp/TXLiveBaseListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/live2/V2TXLivePremier$1;)V
    .locals 0

    .line 113
    invoke-direct {p0}, Lcom/tencent/live2/V2TXLivePremier$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onLicenceLoaded(ILjava/lang/String;)V
    .locals 1

    .line 124
    invoke-static {}, Lcom/tencent/live2/V2TXLivePremier;->access$100()Lcom/tencent/live2/V2TXLivePremier$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0, p1, p2}, Lcom/tencent/live2/V2TXLivePremier$b;->b(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onLog(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 116
    invoke-static {}, Lcom/tencent/live2/V2TXLivePremier;->access$100()Lcom/tencent/live2/V2TXLivePremier$b;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 118
    invoke-virtual {p2, p1, p3}, Lcom/tencent/live2/V2TXLivePremier$b;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
