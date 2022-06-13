.class Lcom/tencent/liteav/h$a;
.super Ljava/lang/Object;
.source "TXCVodPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/Class;

.field private b:Ljava/lang/Class;

.field private c:Ljava/lang/Class;

.field private d:Ljava/lang/reflect/Field;

.field private e:Ljava/lang/reflect/Field;

.field private f:Ljava/lang/reflect/Field;

.field private g:Ljava/lang/reflect/Field;

.field private h:Ljava/lang/reflect/Field;

.field private i:Ljava/lang/reflect/Field;

.field private j:Ljava/lang/reflect/Field;

.field private k:Ljava/lang/reflect/Field;

.field private l:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2

    .line 817
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 819
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/h$a;->a:Ljava/lang/Class;

    const-string p1, "com.tencent.trtc.TRTCCloudDef$TRTCTexture"

    .line 820
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/h$a;->b:Ljava/lang/Class;

    const-string p1, "com.tencent.trtc.TRTCCloudDef$TRTCVideoFrame"

    .line 821
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/h$a;->c:Ljava/lang/Class;

    .line 823
    iget-object p1, p0, Lcom/tencent/liteav/h$a;->b:Ljava/lang/Class;

    const-string v0, "textureId"

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/h$a;->d:Ljava/lang/reflect/Field;

    .line 824
    iget-object p1, p0, Lcom/tencent/liteav/h$a;->b:Ljava/lang/Class;

    const-string v0, "eglContext10"

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/h$a;->e:Ljava/lang/reflect/Field;

    .line 825
    iget-object p1, p0, Lcom/tencent/liteav/h$a;->c:Ljava/lang/Class;

    const-string v0, "texture"

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/h$a;->g:Ljava/lang/reflect/Field;

    .line 826
    iget-object p1, p0, Lcom/tencent/liteav/h$a;->c:Ljava/lang/Class;

    const-string v0, "width"

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/h$a;->h:Ljava/lang/reflect/Field;

    .line 827
    iget-object p1, p0, Lcom/tencent/liteav/h$a;->c:Ljava/lang/Class;

    const-string v0, "height"

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/h$a;->i:Ljava/lang/reflect/Field;

    .line 828
    iget-object p1, p0, Lcom/tencent/liteav/h$a;->c:Ljava/lang/Class;

    const-string v0, "pixelFormat"

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/h$a;->j:Ljava/lang/reflect/Field;

    .line 829
    iget-object p1, p0, Lcom/tencent/liteav/h$a;->c:Ljava/lang/Class;

    const-string v0, "bufferType"

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/h$a;->k:Ljava/lang/reflect/Field;

    .line 830
    iget-object p1, p0, Lcom/tencent/liteav/h$a;->c:Ljava/lang/Class;

    const-string v0, "timestamp"

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/h$a;->l:Ljava/lang/reflect/Field;

    .line 832
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCBuild;->VersionInt()I

    move-result p1

    const/16 v0, 0x11

    if-lt p1, v0, :cond_0

    .line 833
    iget-object p1, p0, Lcom/tencent/liteav/h$a;->b:Ljava/lang/Class;

    const-string v0, "eglContext14"

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/h$a;->f:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "TXVodPlayer"

    const-string v1, "init TRTCCloudClassInvokeWrapper error "

    .line 836
    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lcom/tencent/liteav/renderer/a;III)V
    .locals 4

    .line 842
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/h$a;->b:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 843
    iget-object v1, p0, Lcom/tencent/liteav/h$a;->d:Ljava/lang/reflect/Field;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v1, v0, p3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 844
    invoke-virtual {p2}, Lcom/tencent/liteav/renderer/a;->b()Ljava/lang/Object;

    move-result-object p3

    instance-of p3, p3, Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz p3, :cond_0

    .line 845
    iget-object p3, p0, Lcom/tencent/liteav/h$a;->e:Ljava/lang/reflect/Field;

    invoke-virtual {p2}, Lcom/tencent/liteav/renderer/a;->b()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p3, v0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 847
    :cond_0
    iget-object p3, p0, Lcom/tencent/liteav/h$a;->f:Ljava/lang/reflect/Field;

    invoke-virtual {p2}, Lcom/tencent/liteav/renderer/a;->b()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p3, v0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 850
    :goto_0
    iget-object p2, p0, Lcom/tencent/liteav/h$a;->c:Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p2

    .line 851
    iget-object p3, p0, Lcom/tencent/liteav/h$a;->g:Ljava/lang/reflect/Field;

    invoke-virtual {p3, p2, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 852
    iget-object p3, p0, Lcom/tencent/liteav/h$a;->h:Ljava/lang/reflect/Field;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p3, p2, p4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 853
    iget-object p3, p0, Lcom/tencent/liteav/h$a;->i:Ljava/lang/reflect/Field;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p3, p2, p4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 854
    iget-object p3, p0, Lcom/tencent/liteav/h$a;->j:Ljava/lang/reflect/Field;

    const/4 p4, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p3, p2, p5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 855
    iget-object p3, p0, Lcom/tencent/liteav/h$a;->k:Ljava/lang/reflect/Field;

    const/4 p5, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p3, p2, p5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 856
    iget-object p3, p0, Lcom/tencent/liteav/h$a;->l:Ljava/lang/reflect/Field;

    const/4 p5, 0x0

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, p2, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 858
    iget-object p3, p0, Lcom/tencent/liteav/h$a;->a:Ljava/lang/Class;

    const-string v0, "sendCustomVideoData"

    new-array v1, p4, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, p5

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p3, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    new-array v0, p4, [Ljava/lang/Object;

    .line 859
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, v0, p5

    aput-object p2, v0, v3

    invoke-virtual {p3, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "TXVodPlayer"

    const-string p3, "sendCustomVideoData method error "

    .line 862
    invoke-static {p2, p3, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
