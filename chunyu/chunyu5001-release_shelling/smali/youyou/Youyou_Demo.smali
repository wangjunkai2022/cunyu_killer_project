.class public Lyouyou/Youyou_Demo;
.super Ljava/lang/Object;
.source "Youyou_Demo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method debug()V
    .locals 3

    .line 19
    const-string v0, "youyou test stringDebugLogData"

    invoke-static {v0}, Lyouyou/Youyou_Tool;->debugLogData(Ljava/lang/String;)V

    .line 20
    const/16 v0, 0x2710

    invoke-static {v0}, Lyouyou/Youyou_Tool;->debugLogData(I)V

    .line 21
    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v0}, Lyouyou/Youyou_Tool;->debugLogData(F)V

    .line 22
    const/4 v0, 0x1

    invoke-static {v0}, Lyouyou/Youyou_Tool;->debugLogData(Z)V

    .line 23
    const-wide/16 v0, 0x3e8

    .line 24
    .local v0, "_long":J
    invoke-static {v0, v1}, Lyouyou/Youyou_Tool;->debugLogData(J)V

    .line 25
    const/16 v2, 0x6b

    invoke-static {v2}, Lyouyou/Youyou_Tool;->debugLogData(C)V

    .line 29
    return-void
.end method

.method testNewClass()V
    .locals 2

    .line 32
    new-instance v0, Lyouyou/LiveInitInfoEntity;

    invoke-direct {v0}, Lyouyou/LiveInitInfoEntity;-><init>()V

    .line 33
    .local v0, "liveInitInfoEntity":Lyouyou/LiveInitInfoEntity;
    const-string v1, "1urlllll"

    iput-object v1, v0, Lyouyou/LiveInitInfoEntity;->straa:Ljava/lang/String;

    .line 34
    const-string v1, "1"

    iput-object v1, v0, Lyouyou/LiveInitInfoEntity;->liveStatus:Ljava/lang/String;

    .line 35
    return-void
.end method
