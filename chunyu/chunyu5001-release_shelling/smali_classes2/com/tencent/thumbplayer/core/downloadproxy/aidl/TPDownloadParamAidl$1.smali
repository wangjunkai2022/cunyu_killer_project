.class final Lcom/tencent/thumbplayer/core/downloadproxy/aidl/TPDownloadParamAidl$1;
.super Ljava/lang/Object;
.source "TPDownloadParamAidl.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/thumbplayer/core/downloadproxy/aidl/TPDownloadParamAidl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/tencent/thumbplayer/core/downloadproxy/aidl/TPDownloadParamAidl;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tencent/thumbplayer/core/downloadproxy/aidl/TPDownloadParamAidl;
    .locals 1

    .line 72
    new-instance v0, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/TPDownloadParamAidl;

    invoke-direct {v0, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/TPDownloadParamAidl;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/TPDownloadParamAidl$1;->createFromParcel(Landroid/os/Parcel;)Lcom/tencent/thumbplayer/core/downloadproxy/aidl/TPDownloadParamAidl;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/tencent/thumbplayer/core/downloadproxy/aidl/TPDownloadParamAidl;
    .locals 0

    .line 77
    new-array p1, p1, [Lcom/tencent/thumbplayer/core/downloadproxy/aidl/TPDownloadParamAidl;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/aidl/TPDownloadParamAidl$1;->newArray(I)[Lcom/tencent/thumbplayer/core/downloadproxy/aidl/TPDownloadParamAidl;

    move-result-object p1

    return-object p1
.end method
