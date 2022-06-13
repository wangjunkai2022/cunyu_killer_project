.class Lcom/tencent/liteav/videodecoder/f$4;
.super Ljava/lang/Object;
.source "TXCVideoMediaCodecDecoderWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/videodecoder/f;->a(Lorg/json/JSONArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONArray;

.field final synthetic b:Lcom/tencent/liteav/videodecoder/f;


# direct methods
.method constructor <init>(Lcom/tencent/liteav/videodecoder/f;Lorg/json/JSONArray;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/tencent/liteav/videodecoder/f$4;->b:Lcom/tencent/liteav/videodecoder/f;

    iput-object p2, p0, Lcom/tencent/liteav/videodecoder/f$4;->a:Lorg/json/JSONArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/f$4;->b:Lcom/tencent/liteav/videodecoder/f;

    iget-object v1, p0, Lcom/tencent/liteav/videodecoder/f$4;->a:Lorg/json/JSONArray;

    invoke-static {v0, v1}, Lcom/tencent/liteav/videodecoder/f;->a(Lcom/tencent/liteav/videodecoder/f;Lorg/json/JSONArray;)V

    return-void
.end method
