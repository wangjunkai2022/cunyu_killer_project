.class Lcom/tencent/liteav/audio/b$a;
.super Ljava/lang/Object;
.source "TXCopyrightedMediaProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/audio/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field public a:J

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:J


# direct methods
.method constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput-wide p1, p0, Lcom/tencent/liteav/audio/b$a;->a:J

    .line 185
    iput-object p3, p0, Lcom/tencent/liteav/audio/b$a;->b:Ljava/lang/String;

    .line 186
    iput-object p4, p0, Lcom/tencent/liteav/audio/b$a;->c:Ljava/lang/String;

    return-void
.end method
