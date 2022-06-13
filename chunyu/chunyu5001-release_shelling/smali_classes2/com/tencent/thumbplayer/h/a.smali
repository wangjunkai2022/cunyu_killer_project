.class public final Lcom/tencent/thumbplayer/h/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/tencent/thumbplayer/h/a;

.field private static e:Z

.field private static f:Z


# instance fields
.field private b:Lcom/tencent/thumbplayer/h/f/b;

.field private c:Z

.field private d:Z

.field private final g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/tencent/thumbplayer/h/b;",
            "Lcom/tencent/thumbplayer/h/b/c;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/tencent/thumbplayer/h/e/a;

.field private final i:Lcom/tencent/thumbplayer/h/d/a;

.field private final j:Lcom/tencent/thumbplayer/h/d/a;

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tencent/thumbplayer/h/a;

    invoke-direct {v0}, Lcom/tencent/thumbplayer/h/a;-><init>()V

    sput-object v0, Lcom/tencent/thumbplayer/h/a;->a:Lcom/tencent/thumbplayer/h/a;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/thumbplayer/h/a;->e:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/thumbplayer/h/a;->f:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/tencent/thumbplayer/h/f/b;->e:Lcom/tencent/thumbplayer/h/f/b;

    iput-object v0, p0, Lcom/tencent/thumbplayer/h/a;->b:Lcom/tencent/thumbplayer/h/f/b;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/thumbplayer/h/a;->c:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/tencent/thumbplayer/h/a;->g:Ljava/util/HashMap;

    new-instance v1, Lcom/tencent/thumbplayer/h/e/a;

    invoke-direct {v1}, Lcom/tencent/thumbplayer/h/e/a;-><init>()V

    iput-object v1, p0, Lcom/tencent/thumbplayer/h/a;->h:Lcom/tencent/thumbplayer/h/e/a;

    new-instance v1, Lcom/tencent/thumbplayer/h/d/a;

    invoke-direct {v1}, Lcom/tencent/thumbplayer/h/d/a;-><init>()V

    iput-object v1, p0, Lcom/tencent/thumbplayer/h/a;->i:Lcom/tencent/thumbplayer/h/d/a;

    new-instance v1, Lcom/tencent/thumbplayer/h/d/a;

    invoke-direct {v1}, Lcom/tencent/thumbplayer/h/d/a;-><init>()V

    iput-object v1, p0, Lcom/tencent/thumbplayer/h/a;->j:Lcom/tencent/thumbplayer/h/d/a;

    iput-boolean v0, p0, Lcom/tencent/thumbplayer/h/a;->k:Z

    return-void
.end method

.method public static a()Lcom/tencent/thumbplayer/h/a;
    .locals 1

    sget-object v0, Lcom/tencent/thumbplayer/h/a;->a:Lcom/tencent/thumbplayer/h/a;

    return-object v0
.end method

.method private a(Landroid/media/MediaFormat;Lcom/tencent/thumbplayer/h/b;)Lcom/tencent/thumbplayer/h/b/c;
    .locals 2

    invoke-static {}, Lcom/tencent/thumbplayer/h/h/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createDirectCodecWrapper mediaFormat:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " createBy:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/tencent/thumbplayer/h/b;->a()Lcom/tencent/thumbplayer/h/b$b;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " nameOrType:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/tencent/thumbplayer/h/b;->l()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TCodecManager"

    invoke-static {v0, p1}, Lcom/tencent/thumbplayer/h/h/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p2}, Lcom/tencent/thumbplayer/h/b;->a()Lcom/tencent/thumbplayer/h/b$b;

    move-result-object p1

    sget-object v0, Lcom/tencent/thumbplayer/h/b$b;->a:Lcom/tencent/thumbplayer/h/b$b;

    if-ne p1, v0, :cond_1

    new-instance p1, Lcom/tencent/thumbplayer/h/b/d;

    invoke-virtual {p2}, Lcom/tencent/thumbplayer/h/b;->l()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/tencent/thumbplayer/h/b/d;-><init>(Landroid/media/MediaCodec;)V

    return-object p1

    :cond_1
    new-instance p1, Lcom/tencent/thumbplayer/h/b/d;

    invoke-virtual {p2}, Lcom/tencent/thumbplayer/h/b;->l()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/tencent/thumbplayer/h/b/d;-><init>(Landroid/media/MediaCodec;)V

    return-object p1
.end method

.method private a(Landroid/media/MediaFormat;Lcom/tencent/thumbplayer/h/b;Landroid/view/Surface;)Lcom/tencent/thumbplayer/h/b/c;
    .locals 6

    invoke-virtual {p2}, Lcom/tencent/thumbplayer/h/b;->b()Z

    move-result v0

    invoke-static {}, Lcom/tencent/thumbplayer/h/h/b;->a()Z

    move-result v1

    const-string v2, " codecFinalReuseEnable:"

    const-string v3, "TCodecManager"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCodec isVideo:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p2, Lcom/tencent/thumbplayer/h/b;->a:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/tencent/thumbplayer/h/h/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    const/4 v5, 0x0

    if-lt v1, v4, :cond_7

    iget-boolean v1, p2, Lcom/tencent/thumbplayer/h/b;->a:Z

    if-nez v1, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-static {p1}, Lcom/tencent/thumbplayer/h/b/e;->a(Landroid/media/MediaFormat;)Lcom/tencent/thumbplayer/h/b/e;

    move-result-object p3

    invoke-direct {p0, v0, p3}, Lcom/tencent/thumbplayer/h/a;->a(ZLcom/tencent/thumbplayer/h/b/e;)Lcom/tencent/thumbplayer/h/b/c;

    move-result-object v1

    iget-object v2, p3, Lcom/tencent/thumbplayer/h/b/e;->a:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/tencent/thumbplayer/h/b/e;->a(Ljava/util/ArrayList;)V

    if-eqz v1, :cond_5

    invoke-interface {v1, p3}, Lcom/tencent/thumbplayer/h/b/c;->b(Lcom/tencent/thumbplayer/h/b/e;)Lcom/tencent/thumbplayer/h/f/a$b;

    move-result-object p3

    sget-object v2, Lcom/tencent/thumbplayer/h/f/a$b;->d:Lcom/tencent/thumbplayer/h/f/a$b;

    const-string v4, " reuseType:"

    if-eq p3, v2, :cond_3

    sget-object v2, Lcom/tencent/thumbplayer/h/f/a$b;->c:Lcom/tencent/thumbplayer/h/f/a$b;

    if-ne p3, v2, :cond_2

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/tencent/thumbplayer/h/f/a$b;->a:Lcom/tencent/thumbplayer/h/f/a$b;

    if-ne p3, v1, :cond_5

    invoke-static {}, Lcom/tencent/thumbplayer/h/h/b;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCodec not reuse, isVideo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v3, p3}, Lcom/tencent/thumbplayer/h/h/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    :goto_0
    invoke-static {}, Lcom/tencent/thumbplayer/h/h/b;->a()Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCodec reuse, isVideo:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/tencent/thumbplayer/h/h/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-interface {v1}, Lcom/tencent/thumbplayer/h/b/c;->b()V

    invoke-interface {v1}, Lcom/tencent/thumbplayer/h/b/c;->c()V

    const/4 p1, 0x1

    iput-boolean p1, p2, Lcom/tencent/thumbplayer/h/b;->b:Z

    return-object v1

    :cond_5
    :goto_1
    invoke-static {}, Lcom/tencent/thumbplayer/h/h/b;->a()Z

    move-result p3

    if-eqz p3, :cond_6

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCodec not reuse, for can\'t find reUseAble CodecWrapper. isVideo:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v3, p3}, Lcom/tencent/thumbplayer/h/h/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iput-boolean v5, p2, Lcom/tencent/thumbplayer/h/b;->b:Z

    invoke-direct {p0, p1, p2}, Lcom/tencent/thumbplayer/h/a;->b(Landroid/media/MediaFormat;Lcom/tencent/thumbplayer/h/b;)Lcom/tencent/thumbplayer/h/b/c;

    move-result-object p1

    invoke-interface {p1}, Lcom/tencent/thumbplayer/h/b/c;->b()V

    iget-object p3, p0, Lcom/tencent/thumbplayer/h/a;->g:Ljava/util/HashMap;

    invoke-virtual {p3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :cond_7
    :goto_2
    iput-boolean v5, p2, Lcom/tencent/thumbplayer/h/b;->b:Z

    invoke-static {}, Lcom/tencent/thumbplayer/h/h/b;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCodec return DirectCodecWrapper for mediaFormat:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " surface:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v3, p3}, Lcom/tencent/thumbplayer/h/h/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-direct {p0, p1, p2}, Lcom/tencent/thumbplayer/h/a;->a(Landroid/media/MediaFormat;Lcom/tencent/thumbplayer/h/b;)Lcom/tencent/thumbplayer/h/b/c;

    move-result-object p1

    return-object p1
.end method

.method private a(ZLcom/tencent/thumbplayer/h/b/e;)Lcom/tencent/thumbplayer/h/b/c;
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/thumbplayer/h/a;->i:Lcom/tencent/thumbplayer/h/d/a;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/tencent/thumbplayer/h/a;->j:Lcom/tencent/thumbplayer/h/d/a;

    :goto_0
    invoke-virtual {p1, p2}, Lcom/tencent/thumbplayer/h/d/a;->a(Lcom/tencent/thumbplayer/h/b/e;)Lcom/tencent/thumbplayer/h/b/f;

    move-result-object p1

    return-object p1
.end method

.method private b(Landroid/media/MediaFormat;Lcom/tencent/thumbplayer/h/b;)Lcom/tencent/thumbplayer/h/b/c;
    .locals 3

    invoke-static {}, Lcom/tencent/thumbplayer/h/h/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createNewReuseCodecWrapper mediaFormat:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " createBy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/tencent/thumbplayer/h/b;->a()Lcom/tencent/thumbplayer/h/b$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " nameOrType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/tencent/thumbplayer/h/b;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TCodecManager"

    invoke-static {v1, v0}, Lcom/tencent/thumbplayer/h/h/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "mime"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/tencent/thumbplayer/h/b/e;->a(Landroid/media/MediaFormat;)Lcom/tencent/thumbplayer/h/b/e;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/h/f/a;->a(Lcom/tencent/thumbplayer/h/b/e;Landroid/media/MediaFormat;)V

    invoke-virtual {p2}, Lcom/tencent/thumbplayer/h/b;->a()Lcom/tencent/thumbplayer/h/b$b;

    move-result-object p1

    sget-object v2, Lcom/tencent/thumbplayer/h/b$b;->a:Lcom/tencent/thumbplayer/h/b$b;

    if-ne p1, v2, :cond_1

    invoke-virtual {p2}, Lcom/tencent/thumbplayer/h/b;->l()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p1

    :goto_0
    invoke-static {p1, v0, v1}, Lcom/tencent/thumbplayer/h/b/f;->a(Landroid/media/MediaCodec;Ljava/lang/String;Lcom/tencent/thumbplayer/h/b/e;)Lcom/tencent/thumbplayer/h/b/c;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {v0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p1

    goto :goto_0
.end method

.method public static b()Z
    .locals 1

    sget-boolean v0, Lcom/tencent/thumbplayer/h/a;->f:Z

    return v0
.end method

.method private c(Lcom/tencent/thumbplayer/h/b/c;)V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/h/a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/tencent/thumbplayer/h/b/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/thumbplayer/h/a;->i:Lcom/tencent/thumbplayer/h/d/a;

    :goto_0
    check-cast p1, Lcom/tencent/thumbplayer/h/b/f;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/h/d/a;->a(Lcom/tencent/thumbplayer/h/b/f;)V

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lcom/tencent/thumbplayer/h/b/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/thumbplayer/h/a;->j:Lcom/tencent/thumbplayer/h/d/a;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public final a(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;ILcom/tencent/thumbplayer/h/b;)Lcom/tencent/thumbplayer/h/b/c;
    .locals 4

    invoke-static {}, Lcom/tencent/thumbplayer/h/h/b;->a()Z

    move-result v0

    const-string v1, ", audioPoolInfo:"

    const-string v2, "TCodecManager"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configureStart videoPoolInfo:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tencent/thumbplayer/h/a;->i:Lcom/tencent/thumbplayer/h/d/a;

    invoke-virtual {v3}, Lcom/tencent/thumbplayer/h/d/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tencent/thumbplayer/h/a;->j:Lcom/tencent/thumbplayer/h/d/a;

    invoke-virtual {v3}, Lcom/tencent/thumbplayer/h/d/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/thumbplayer/h/h/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/thumbplayer/h/a;->d:Z

    iput-boolean v0, p0, Lcom/tencent/thumbplayer/h/a;->k:Z

    invoke-direct {p0, p1, p5, p2}, Lcom/tencent/thumbplayer/h/a;->a(Landroid/media/MediaFormat;Lcom/tencent/thumbplayer/h/b;Landroid/view/Surface;)Lcom/tencent/thumbplayer/h/b/c;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/thumbplayer/h/a;->c(Lcom/tencent/thumbplayer/h/b/c;)V

    invoke-virtual {p5}, Lcom/tencent/thumbplayer/h/b;->c()Lcom/tencent/thumbplayer/h/a/a;

    move-result-object p5

    invoke-interface {v0, p5}, Lcom/tencent/thumbplayer/h/b/c;->a(Lcom/tencent/thumbplayer/h/a/a;)V

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/tencent/thumbplayer/h/b/c;->a(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    invoke-static {}, Lcom/tencent/thumbplayer/h/h/b;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "configureEnd   videoPoolInfo:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/tencent/thumbplayer/h/a;->i:Lcom/tencent/thumbplayer/h/d/a;

    invoke-virtual {p2}, Lcom/tencent/thumbplayer/h/d/a;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/tencent/thumbplayer/h/a;->j:Lcom/tencent/thumbplayer/h/d/a;

    invoke-virtual {p2}, Lcom/tencent/thumbplayer/h/d/a;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/tencent/thumbplayer/h/h/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public final a(Lcom/tencent/thumbplayer/h/b/c;)V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/h/a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/tencent/thumbplayer/h/b/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/thumbplayer/h/a;->i:Lcom/tencent/thumbplayer/h/d/a;

    :goto_0
    check-cast p1, Lcom/tencent/thumbplayer/h/b/f;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/h/d/a;->b(Lcom/tencent/thumbplayer/h/b/f;)V

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lcom/tencent/thumbplayer/h/b/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/thumbplayer/h/a;->j:Lcom/tencent/thumbplayer/h/d/a;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public a(Lcom/tencent/thumbplayer/h/b;Landroid/view/Surface;)Z
    .locals 8

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/h/a;->d()Z

    move-result v0

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/h/b;->d()Z

    move-result v1

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/h/b;->b()Z

    move-result p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_1

    invoke-static {}, Lcom/tencent/thumbplayer/h/h/c;->a()Z

    move-result v5

    if-nez v5, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    invoke-static {}, Lcom/tencent/thumbplayer/h/h/b;->a()Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reuseEnable getCodec isVideo:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " reuseEnable:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v7, "globalReuseEnable:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mediaCodecReuseEnable:"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " canUseSetOutputSurfaceAPI:"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " ,surface:"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TCodecManager"

    invoke-static {v1, v0}, Lcom/tencent/thumbplayer/h/h/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz v4, :cond_3

    if-eqz p1, :cond_3

    if-eqz v5, :cond_3

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    return v2
.end method

.method public final b(Lcom/tencent/thumbplayer/h/b/c;)V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/h/a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/tencent/thumbplayer/h/b/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/thumbplayer/h/a;->i:Lcom/tencent/thumbplayer/h/d/a;

    :goto_0
    check-cast p1, Lcom/tencent/thumbplayer/h/b/f;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/h/d/a;->c(Lcom/tencent/thumbplayer/h/b/f;)V

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lcom/tencent/thumbplayer/h/b/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/thumbplayer/h/a;->j:Lcom/tencent/thumbplayer/h/d/a;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final c()Lcom/tencent/thumbplayer/h/f/b;
    .locals 1

    iget-object v0, p0, Lcom/tencent/thumbplayer/h/a;->b:Lcom/tencent/thumbplayer/h/f/b;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/thumbplayer/h/a;->c:Z

    return v0
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/thumbplayer/h/a;->k:Z

    return v0
.end method
