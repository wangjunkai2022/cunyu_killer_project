.class public final Lcom/tencent/live2/V2TXLiveDef$V2TXLiveLogConfig;
.super Ljava/lang/Object;
.source "V2TXLiveDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/live2/V2TXLiveDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "V2TXLiveLogConfig"
.end annotation


# instance fields
.field public enableConsole:Z

.field public enableLogFile:Z

.field public enableObserver:Z

.field public logLevel:I

.field public logPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 608
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 611
    iput v0, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveLogConfig;->logLevel:I

    .line 616
    iput-boolean v0, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveLogConfig;->enableObserver:Z

    const/4 v0, 0x1

    .line 620
    iput-boolean v0, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveLogConfig;->enableConsole:Z

    const/4 v0, 0x1

    .line 625
    iput-boolean v0, p0, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveLogConfig;->enableLogFile:Z

    return-void
.end method
