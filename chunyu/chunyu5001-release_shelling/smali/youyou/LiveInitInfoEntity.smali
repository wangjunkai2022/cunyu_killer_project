.class Lyouyou/LiveInitInfoEntity;
.super Ljava/lang/Object;
.source "Youyou_Demo.java"


# instance fields
.field public liveStatus:Ljava/lang/String;

.field public straa:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLiveStatus()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lyouyou/LiveInitInfoEntity;->liveStatus:Ljava/lang/String;

    return-object v0
.end method

.method public isLiving()Z
    .locals 2

    .line 10
    iget-object v0, p0, Lyouyou/LiveInitInfoEntity;->liveStatus:Ljava/lang/String;

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
