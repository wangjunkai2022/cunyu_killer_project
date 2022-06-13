.class Lcom/tencent/liteav/basic/license/LicenceCheck$b;
.super Ljava/lang/Object;
.source "LicenceCheck.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/basic/license/LicenceCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Z

.field g:Z

.field h:I

.field i:Ljava/lang/String;

.field final synthetic j:Lcom/tencent/liteav/basic/license/LicenceCheck;


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/basic/license/LicenceCheck;Ljava/lang/String;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/tencent/liteav/basic/license/LicenceCheck$b;->j:Lcom/tencent/liteav/basic/license/LicenceCheck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p2, p0, Lcom/tencent/liteav/basic/license/LicenceCheck$b;->a:Ljava/lang/String;

    .line 118
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".tmp"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/basic/license/LicenceCheck$b;->b:Ljava/lang/String;

    const-string p1, ""

    .line 119
    iput-object p1, p0, Lcom/tencent/liteav/basic/license/LicenceCheck$b;->c:Ljava/lang/String;

    .line 120
    iput-object p1, p0, Lcom/tencent/liteav/basic/license/LicenceCheck$b;->d:Ljava/lang/String;

    .line 121
    iput-object p1, p0, Lcom/tencent/liteav/basic/license/LicenceCheck$b;->e:Ljava/lang/String;

    const/4 p2, 0x0

    .line 122
    iput-boolean p2, p0, Lcom/tencent/liteav/basic/license/LicenceCheck$b;->f:Z

    .line 123
    iput-boolean p2, p0, Lcom/tencent/liteav/basic/license/LicenceCheck$b;->g:Z

    const/4 p2, -0x1

    .line 124
    iput p2, p0, Lcom/tencent/liteav/basic/license/LicenceCheck$b;->h:I

    .line 125
    iput-object p1, p0, Lcom/tencent/liteav/basic/license/LicenceCheck$b;->i:Ljava/lang/String;

    return-void
.end method
