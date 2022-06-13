.class Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface$1;
.super Lcom/tencent/liteav/audio/impl/route/f$a;
.source "TXCAudioNativeInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->initAudioRouteManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface$1;->a:Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;

    invoke-direct {p0}, Lcom/tencent/liteav/audio/impl/route/f$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    .line 65
    iget-object p1, p0, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface$1;->a:Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;

    invoke-static {p1, p2}, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->access$100(Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 59
    iget-object p1, p0, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface$1;->a:Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;

    invoke-static {p1, p2}, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->access$002(Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;[Ljava/lang/String;)[Ljava/lang/String;

    return-void
.end method

.method public a([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 50
    iget-object p3, p0, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface$1;->a:Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;

    invoke-static {p3, p1}, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->access$002(Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;[Ljava/lang/String;)[Ljava/lang/String;

    .line 52
    iget-object p1, p0, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface$1;->a:Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;

    invoke-static {p1, p2}, Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;->access$100(Lcom/tencent/liteav/audio/impl/route/TXCAudioNativeInterface;Ljava/lang/String;)V

    return-void
.end method
