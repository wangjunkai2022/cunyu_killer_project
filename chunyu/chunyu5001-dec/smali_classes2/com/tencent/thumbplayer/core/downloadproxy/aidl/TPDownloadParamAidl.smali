.class public Lcom/tencent/thumbplayer/core/downloadproxy/aidl/TPDownloadParamAidl;
.super Ljava/lang/Object;
.source "TPDownloadParamAidl.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tencent/thumbplayer/core/downloadproxy/aidl/TPDownloadParamAidl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private dlType:I

.field private extInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private urlList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    new-instance v0, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/TPDownloadParamAidl$1;

    invoke-direct {v0}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/TPDownloadParamAidl$1;-><init>()V

    sput-object v0, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/TPDownloadParamAidl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/TPDownloadParamAidl;->urlList:Ljava/util/ArrayList;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/TPDownloadParamAidl;->dlType:I

    .line 48
    const-class v0, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/TPDownloadParamAidl;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/TPDownloadParamAidl;->extInfoMap:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 50
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "TPDownloadParamAidl"

    const-string v2, "tpdlnative"

    invoke-static {v1, v0, v2, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/utils/TPDLProxyLog;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 51
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/TPDownloadParamAidl;->urlList:Ljava/util/ArrayList;

    .line 52
    iput v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/TPDownloadParamAidl;->dlType:I

    .line 53
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/TPDownloadParamAidl;->extInfoMap:Ljava/util/Map;

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;ILjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/TPDownloadParamAidl;->urlList:Ljava/util/ArrayList;

    .line 40
    iput p2, p0, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/TPDownloadParamAidl;->dlType:I

    .line 41
    iput-object p3, p0, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/TPDownloadParamAidl;->extInfoMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDlType()I
    .locals 1

    .line 90
    iget v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/TPDownloadParamAidl;->dlType:I

    return v0
.end method

.method public getExtInfoMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/TPDownloadParamAidl;->extInfoMap:Ljava/util/Map;

    return-object v0
.end method

.method public getUrlList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/TPDownloadParamAidl;->urlList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setDlType(I)V
    .locals 0

    .line 94
    iput p1, p0, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/TPDownloadParamAidl;->dlType:I

    return-void
.end method

.method public setExtInfoMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 102
    iput-object p1, p0, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/TPDownloadParamAidl;->extInfoMap:Ljava/util/Map;

    return-void
.end method

.method public setUrlList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 86
    iput-object p1, p0, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/TPDownloadParamAidl;->urlList:Ljava/util/ArrayList;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 59
    iget-object p2, p0, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/TPDownloadParamAidl;->urlList:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 60
    iget p2, p0, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/TPDownloadParamAidl;->dlType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget-object p2, p0, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/TPDownloadParamAidl;->extInfoMap:Ljava/util/Map;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    return-void
.end method
