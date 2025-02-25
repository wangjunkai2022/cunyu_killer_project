.class Lcom/tencent/liteav/basic/f/c$a;
.super Ljava/lang/Object;
.source "TXCConfigCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/basic/f/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Z

.field private e:I

.field private f:I

.field private g:[I

.field private h:I

.field private i:Ljava/lang/String;

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:Lorg/json/JSONObject;

.field private q:I

.field private r:I

.field private s:Z


# direct methods
.method private constructor <init>()V
    .locals 4

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 149
    iput v0, p0, Lcom/tencent/liteav/basic/f/c$a;->a:I

    const-string v0, ""

    .line 150
    iput-object v0, p0, Lcom/tencent/liteav/basic/f/c$a;->b:Ljava/lang/String;

    const/4 v1, 0x0

    .line 151
    iput v1, p0, Lcom/tencent/liteav/basic/f/c$a;->c:I

    const/4 v2, 0x1

    .line 153
    iput-boolean v2, p0, Lcom/tencent/liteav/basic/f/c$a;->d:Z

    .line 154
    iput v1, p0, Lcom/tencent/liteav/basic/f/c$a;->e:I

    .line 155
    iput v1, p0, Lcom/tencent/liteav/basic/f/c$a;->f:I

    const/4 v3, 0x0

    .line 156
    iput-object v3, p0, Lcom/tencent/liteav/basic/f/c$a;->g:[I

    .line 157
    iput v1, p0, Lcom/tencent/liteav/basic/f/c$a;->h:I

    .line 158
    iput-object v0, p0, Lcom/tencent/liteav/basic/f/c$a;->i:Ljava/lang/String;

    const/16 v0, 0x3c

    .line 159
    iput v0, p0, Lcom/tencent/liteav/basic/f/c$a;->j:I

    const/16 v0, 0x46

    .line 160
    iput v0, p0, Lcom/tencent/liteav/basic/f/c$a;->k:I

    const/16 v0, 0x50

    .line 161
    iput v0, p0, Lcom/tencent/liteav/basic/f/c$a;->l:I

    const/16 v0, 0x32

    .line 162
    iput v0, p0, Lcom/tencent/liteav/basic/f/c$a;->m:I

    const/16 v0, 0xa

    .line 163
    iput v0, p0, Lcom/tencent/liteav/basic/f/c$a;->n:I

    .line 164
    iput v1, p0, Lcom/tencent/liteav/basic/f/c$a;->o:I

    .line 165
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/basic/f/c$a;->p:Lorg/json/JSONObject;

    const/4 v0, -0x1

    .line 166
    iput v0, p0, Lcom/tencent/liteav/basic/f/c$a;->q:I

    .line 167
    iput v1, p0, Lcom/tencent/liteav/basic/f/c$a;->r:I

    .line 168
    iput-boolean v2, p0, Lcom/tencent/liteav/basic/f/c$a;->s:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/liteav/basic/f/c$1;)V
    .locals 0

    .line 148
    invoke-direct {p0}, Lcom/tencent/liteav/basic/f/c$a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/liteav/basic/f/c$a;I)I
    .locals 0

    .line 148
    iput p1, p0, Lcom/tencent/liteav/basic/f/c$a;->e:I

    return p1
.end method

.method static synthetic a(Lcom/tencent/liteav/basic/f/c$a;)Ljava/lang/String;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/tencent/liteav/basic/f/c$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/tencent/liteav/basic/f/c$a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/tencent/liteav/basic/f/c$a;->i:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/liteav/basic/f/c$a;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/tencent/liteav/basic/f/c$a;->p:Lorg/json/JSONObject;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/liteav/basic/f/c$a;Z)Z
    .locals 0

    .line 148
    iput-boolean p1, p0, Lcom/tencent/liteav/basic/f/c$a;->s:Z

    return p1
.end method

.method static synthetic a(Lcom/tencent/liteav/basic/f/c$a;[I)[I
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/tencent/liteav/basic/f/c$a;->g:[I

    return-object p1
.end method

.method static synthetic b(Lcom/tencent/liteav/basic/f/c$a;)I
    .locals 0

    .line 148
    iget p0, p0, Lcom/tencent/liteav/basic/f/c$a;->a:I

    return p0
.end method

.method static synthetic b(Lcom/tencent/liteav/basic/f/c$a;I)I
    .locals 0

    .line 148
    iput p1, p0, Lcom/tencent/liteav/basic/f/c$a;->f:I

    return p1
.end method

.method static synthetic b(Lcom/tencent/liteav/basic/f/c$a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/tencent/liteav/basic/f/c$a;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/tencent/liteav/basic/f/c$a;Z)Z
    .locals 0

    .line 148
    iput-boolean p1, p0, Lcom/tencent/liteav/basic/f/c$a;->d:Z

    return p1
.end method

.method static synthetic c(Lcom/tencent/liteav/basic/f/c$a;)I
    .locals 0

    .line 148
    iget p0, p0, Lcom/tencent/liteav/basic/f/c$a;->c:I

    return p0
.end method

.method static synthetic c(Lcom/tencent/liteav/basic/f/c$a;I)I
    .locals 0

    .line 148
    iput p1, p0, Lcom/tencent/liteav/basic/f/c$a;->h:I

    return p1
.end method

.method static synthetic d(Lcom/tencent/liteav/basic/f/c$a;)I
    .locals 0

    .line 148
    iget p0, p0, Lcom/tencent/liteav/basic/f/c$a;->o:I

    return p0
.end method

.method static synthetic d(Lcom/tencent/liteav/basic/f/c$a;I)I
    .locals 0

    .line 148
    iput p1, p0, Lcom/tencent/liteav/basic/f/c$a;->q:I

    return p1
.end method

.method static synthetic e(Lcom/tencent/liteav/basic/f/c$a;)I
    .locals 0

    .line 148
    iget p0, p0, Lcom/tencent/liteav/basic/f/c$a;->r:I

    return p0
.end method

.method static synthetic e(Lcom/tencent/liteav/basic/f/c$a;I)I
    .locals 0

    .line 148
    iput p1, p0, Lcom/tencent/liteav/basic/f/c$a;->j:I

    return p1
.end method

.method static synthetic f(Lcom/tencent/liteav/basic/f/c$a;I)I
    .locals 0

    .line 148
    iput p1, p0, Lcom/tencent/liteav/basic/f/c$a;->k:I

    return p1
.end method

.method static synthetic f(Lcom/tencent/liteav/basic/f/c$a;)Z
    .locals 0

    .line 148
    iget-boolean p0, p0, Lcom/tencent/liteav/basic/f/c$a;->d:Z

    return p0
.end method

.method static synthetic g(Lcom/tencent/liteav/basic/f/c$a;)I
    .locals 0

    .line 148
    iget p0, p0, Lcom/tencent/liteav/basic/f/c$a;->n:I

    return p0
.end method

.method static synthetic g(Lcom/tencent/liteav/basic/f/c$a;I)I
    .locals 0

    .line 148
    iput p1, p0, Lcom/tencent/liteav/basic/f/c$a;->l:I

    return p1
.end method

.method static synthetic h(Lcom/tencent/liteav/basic/f/c$a;)I
    .locals 0

    .line 148
    iget p0, p0, Lcom/tencent/liteav/basic/f/c$a;->l:I

    return p0
.end method

.method static synthetic h(Lcom/tencent/liteav/basic/f/c$a;I)I
    .locals 0

    .line 148
    iput p1, p0, Lcom/tencent/liteav/basic/f/c$a;->m:I

    return p1
.end method

.method static synthetic i(Lcom/tencent/liteav/basic/f/c$a;)I
    .locals 0

    .line 148
    iget p0, p0, Lcom/tencent/liteav/basic/f/c$a;->m:I

    return p0
.end method

.method static synthetic i(Lcom/tencent/liteav/basic/f/c$a;I)I
    .locals 0

    .line 148
    iput p1, p0, Lcom/tencent/liteav/basic/f/c$a;->n:I

    return p1
.end method

.method static synthetic j(Lcom/tencent/liteav/basic/f/c$a;)I
    .locals 0

    .line 148
    iget p0, p0, Lcom/tencent/liteav/basic/f/c$a;->j:I

    return p0
.end method

.method static synthetic j(Lcom/tencent/liteav/basic/f/c$a;I)I
    .locals 0

    .line 148
    iput p1, p0, Lcom/tencent/liteav/basic/f/c$a;->c:I

    return p1
.end method

.method static synthetic k(Lcom/tencent/liteav/basic/f/c$a;)I
    .locals 0

    .line 148
    iget p0, p0, Lcom/tencent/liteav/basic/f/c$a;->k:I

    return p0
.end method

.method static synthetic k(Lcom/tencent/liteav/basic/f/c$a;I)I
    .locals 0

    .line 148
    iput p1, p0, Lcom/tencent/liteav/basic/f/c$a;->a:I

    return p1
.end method

.method static synthetic l(Lcom/tencent/liteav/basic/f/c$a;I)I
    .locals 0

    .line 148
    iput p1, p0, Lcom/tencent/liteav/basic/f/c$a;->o:I

    return p1
.end method

.method static synthetic l(Lcom/tencent/liteav/basic/f/c$a;)Ljava/lang/String;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/tencent/liteav/basic/f/c$a;->i:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic m(Lcom/tencent/liteav/basic/f/c$a;)I
    .locals 0

    .line 148
    iget p0, p0, Lcom/tencent/liteav/basic/f/c$a;->e:I

    return p0
.end method

.method static synthetic m(Lcom/tencent/liteav/basic/f/c$a;I)I
    .locals 0

    .line 148
    iput p1, p0, Lcom/tencent/liteav/basic/f/c$a;->r:I

    return p1
.end method

.method static synthetic n(Lcom/tencent/liteav/basic/f/c$a;)I
    .locals 0

    .line 148
    iget p0, p0, Lcom/tencent/liteav/basic/f/c$a;->f:I

    return p0
.end method

.method static synthetic o(Lcom/tencent/liteav/basic/f/c$a;)[I
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/tencent/liteav/basic/f/c$a;->g:[I

    return-object p0
.end method

.method static synthetic p(Lcom/tencent/liteav/basic/f/c$a;)I
    .locals 0

    .line 148
    iget p0, p0, Lcom/tencent/liteav/basic/f/c$a;->q:I

    return p0
.end method

.method static synthetic q(Lcom/tencent/liteav/basic/f/c$a;)I
    .locals 0

    .line 148
    iget p0, p0, Lcom/tencent/liteav/basic/f/c$a;->h:I

    return p0
.end method

.method static synthetic r(Lcom/tencent/liteav/basic/f/c$a;)Z
    .locals 0

    .line 148
    iget-boolean p0, p0, Lcom/tencent/liteav/basic/f/c$a;->s:Z

    return p0
.end method

.method static synthetic s(Lcom/tencent/liteav/basic/f/c$a;)Lorg/json/JSONObject;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/tencent/liteav/basic/f/c$a;->p:Lorg/json/JSONObject;

    return-object p0
.end method
