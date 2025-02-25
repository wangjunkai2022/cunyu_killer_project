.class Lcom/tencent/rtmp/TXLiveBase$a;
.super Ljava/lang/Object;
.source "TXLiveBase.java"

# interfaces
.implements Lcom/tencent/liteav/basic/license/LicenceCheck$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/rtmp/TXLiveBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/rtmp/TXLiveBase$1;)V
    .locals 0

    .line 237
    invoke-direct {p0}, Lcom/tencent/rtmp/TXLiveBase$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 1

    .line 241
    invoke-static {}, Lcom/tencent/rtmp/TXLiveBase;->access$200()Lcom/tencent/rtmp/TXLiveBaseListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {v0, p1, p2}, Lcom/tencent/rtmp/TXLiveBaseListener;->onLicenceLoaded(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
