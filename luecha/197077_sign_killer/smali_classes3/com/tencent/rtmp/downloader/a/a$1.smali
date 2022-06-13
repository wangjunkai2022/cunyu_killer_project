.class final Lcom/tencent/rtmp/downloader/a/a$1;
.super Ljava/lang/Object;
.source "TXVodDownloadDataSourceEx.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/rtmp/downloader/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/tencent/rtmp/downloader/a/a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/tencent/rtmp/downloader/a/a;
    .locals 1

    .line 69
    new-instance v0, Lcom/tencent/rtmp/downloader/a/a;

    invoke-direct {v0, p1}, Lcom/tencent/rtmp/downloader/a/a;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/tencent/rtmp/downloader/a/a;
    .locals 0

    .line 74
    new-array p1, p1, [Lcom/tencent/rtmp/downloader/a/a;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Lcom/tencent/rtmp/downloader/a/a$1;->a(Landroid/os/Parcel;)Lcom/tencent/rtmp/downloader/a/a;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Lcom/tencent/rtmp/downloader/a/a$1;->a(I)[Lcom/tencent/rtmp/downloader/a/a;

    move-result-object p1

    return-object p1
.end method
