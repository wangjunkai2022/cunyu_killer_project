.class public Lcom/netease/mobsec/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:Lcom/netease/mobsec/c/b; = null

.field public static d:I = 0x2

.field public static e:I


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netease/mobsec/c/e/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/mobsec/c/b;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/netease/mobsec/c/b;->a()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/netease/mobsec/c/b;
    .locals 1

    sget-object v0, Lcom/netease/mobsec/c/b;->c:Lcom/netease/mobsec/c/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/mobsec/c/b;

    invoke-direct {v0, p0}, Lcom/netease/mobsec/c/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/netease/mobsec/c/b;->c:Lcom/netease/mobsec/c/b;

    :cond_0
    sget-object p0, Lcom/netease/mobsec/c/b;->c:Lcom/netease/mobsec/c/b;

    return-object p0
.end method

.method private a()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/netease/mobsec/c/b;->b:Ljava/util/List;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/netease/mobsec/c/b;->b:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/netease/mobsec/c/b;->b:Ljava/util/List;

    new-instance v1, Lcom/netease/mobsec/c/e/a;

    iget-object v2, p0, Lcom/netease/mobsec/c/b;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/netease/mobsec/c/e/a;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x5

    invoke-interface {v0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/netease/mobsec/c/a;
    .locals 1

    iget-object v0, p0, Lcom/netease/mobsec/c/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/mobsec/c/a;

    return-object p1
.end method
