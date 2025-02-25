.class public Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;
.super Ljava/lang/Object;
.source "TXVodDownloadDataSource.java"


# static fields
.field public static final QUALITY_2K:I = 0x5

.field public static final QUALITY_4K:I = 0x6

.field public static final QUALITY_FHD:I = 0x4

.field public static final QUALITY_FLU:I = 0x1

.field public static final QUALITY_HD:I = 0x3

.field public static final QUALITY_OD:I = 0x0

.field public static final QUALITY_SD:I = 0x2

.field public static final QUALITY_UNK:I = 0x3e8


# instance fields
.field protected appId:I

.field protected authBuilder:Lcom/tencent/rtmp/TXPlayerAuthBuilder;

.field protected fileId:Ljava/lang/String;

.field protected overlayIv:Ljava/lang/String;

.field protected overlayKey:Ljava/lang/String;

.field protected pSign:Ljava/lang/String;

.field protected quality:I

.field protected templateName:Ljava/lang/String;

.field protected token:Ljava/lang/String;

.field protected userName:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->appId:I

    const-string v0, ""

    .line 23
    iput-object v0, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->fileId:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->pSign:Ljava/lang/String;

    const/16 v1, 0x3e8

    .line 25
    iput v1, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->quality:I

    const-string v1, "default"

    .line 26
    iput-object v1, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->userName:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->overlayKey:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->overlayIv:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->appId:I

    const-string v0, ""

    .line 23
    iput-object v0, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->fileId:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->pSign:Ljava/lang/String;

    const/16 v1, 0x3e8

    .line 25
    iput v1, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->quality:I

    const-string v1, "default"

    .line 26
    iput-object v1, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->userName:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->overlayKey:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->overlayIv:Ljava/lang/String;

    .line 42
    iput p1, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->appId:I

    .line 43
    iput-object p2, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->fileId:Ljava/lang/String;

    .line 44
    iput p3, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->quality:I

    .line 45
    iput-object p4, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->pSign:Ljava/lang/String;

    .line 46
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 47
    iput-object p5, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->userName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/tencent/rtmp/TXPlayerAuthBuilder;I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->appId:I

    const-string v0, ""

    .line 23
    iput-object v0, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->fileId:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->pSign:Ljava/lang/String;

    const/16 v1, 0x3e8

    .line 25
    iput v1, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->quality:I

    const-string v1, "default"

    .line 26
    iput-object v1, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->userName:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->overlayKey:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->overlayIv:Ljava/lang/String;

    .line 59
    iput-object p1, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->authBuilder:Lcom/tencent/rtmp/TXPlayerAuthBuilder;

    .line 60
    iput p2, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->quality:I

    return-void
.end method

.method public constructor <init>(Lcom/tencent/rtmp/TXPlayerAuthBuilder;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->appId:I

    const-string v0, ""

    .line 23
    iput-object v0, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->fileId:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->pSign:Ljava/lang/String;

    const/16 v1, 0x3e8

    .line 25
    iput v1, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->quality:I

    const-string v1, "default"

    .line 26
    iput-object v1, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->userName:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->overlayKey:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->overlayIv:Ljava/lang/String;

    .line 71
    iput-object p1, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->authBuilder:Lcom/tencent/rtmp/TXPlayerAuthBuilder;

    .line 72
    iput-object p2, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->templateName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAppId()I
    .locals 1

    .line 150
    iget v0, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->appId:I

    return v0
.end method

.method public getAuthBuilder()Lcom/tencent/rtmp/TXPlayerAuthBuilder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->authBuilder:Lcom/tencent/rtmp/TXPlayerAuthBuilder;

    return-object v0
.end method

.method public getFileId()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->fileId:Ljava/lang/String;

    return-object v0
.end method

.method public getOverlayIv()Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->overlayIv:Ljava/lang/String;

    return-object v0
.end method

.method public getOverlayKey()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->overlayKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPSign()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->pSign:Ljava/lang/String;

    return-object v0
.end method

.method public getQuality()I
    .locals 1

    .line 127
    iget v0, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->quality:I

    return v0
.end method

.method public getTemplateName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->templateName:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public setQuality(I)V
    .locals 0

    .line 99
    iput p1, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->quality:I

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;->token:Ljava/lang/String;

    return-void
.end method
