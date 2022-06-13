.class Lcom/netease/mobsec/WatchMan$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mobsec/WatchMan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field static final a:Lcom/netease/mobsec/WatchMan;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/netease/mobsec/WatchMan;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netease/mobsec/WatchMan;-><init>(Lcom/netease/mobsec/WatchMan$a;)V

    sput-object v0, Lcom/netease/mobsec/WatchMan$b;->a:Lcom/netease/mobsec/WatchMan;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
