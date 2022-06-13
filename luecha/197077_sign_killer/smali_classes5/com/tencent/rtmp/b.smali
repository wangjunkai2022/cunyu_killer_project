.class public Lcom/tencent/rtmp/b;
.super Ljava/lang/Object;
.source "TXPlayInfoParams.java"


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/tencent/rtmp/b;->a:I

    .line 19
    iput-object p2, p0, Lcom/tencent/rtmp/b;->b:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/tencent/rtmp/b;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/tencent/rtmp/b;->a:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/tencent/rtmp/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/tencent/rtmp/b;->c:Ljava/lang/String;

    return-object v0
.end method
