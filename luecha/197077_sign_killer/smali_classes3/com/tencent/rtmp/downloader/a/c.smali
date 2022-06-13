.class public Lcom/tencent/rtmp/downloader/a/c;
.super Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;
.source "TXVodDownloadMediaInfoEx.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tencent/rtmp/downloader/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-class v0, Lcom/tencent/rtmp/downloader/a/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/rtmp/downloader/a/c;->a:Ljava/lang/String;

    .line 54
    new-instance v0, Lcom/tencent/rtmp/downloader/a/c$1;

    invoke-direct {v0}, Lcom/tencent/rtmp/downloader/a/c$1;-><init>()V

    sput-object v0, Lcom/tencent/rtmp/downloader/a/c;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/tencent/rtmp/downloader/TXVodDownloadMediaInfo;-><init>()V

    .line 19
    const-class v0, Lcom/tencent/rtmp/downloader/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tencent/rtmp/downloader/a/a;

    iput-object v0, p0, Lcom/tencent/rtmp/downloader/a/c;->dataSource:Lcom/tencent/rtmp/downloader/a/a;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/rtmp/downloader/a/c;->duration:I

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/rtmp/downloader/a/c;->size:I

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/rtmp/downloader/a/c;->downloadSize:I

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/rtmp/downloader/a/c;->segments:I

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/rtmp/downloader/a/c;->downloadSegments:I

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/rtmp/downloader/a/c;->playPath:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/rtmp/downloader/a/c;->url:Ljava/lang/String;

    .line 27
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/c;->dataSource:Lcom/tencent/rtmp/downloader/a/a;

    if-nez v0, :cond_0

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/rtmp/downloader/a/c;->userName:Ljava/lang/String;

    .line 30
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/tencent/rtmp/downloader/a/c;->downloadState:I

    return-void
.end method


# virtual methods
.method a(I)V
    .locals 0

    .line 79
    iput p1, p0, Lcom/tencent/rtmp/downloader/a/c;->duration:I

    return-void
.end method

.method a(Lcom/tencent/liteav/network/i;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/tencent/rtmp/downloader/a/c;->netApi:Lcom/tencent/liteav/network/i;

    return-void
.end method

.method a(Lcom/tencent/rtmp/downloader/a/a;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/tencent/rtmp/downloader/a/c;->dataSource:Lcom/tencent/rtmp/downloader/a/a;

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/tencent/rtmp/downloader/a/c;->playPath:Ljava/lang/String;

    return-void
.end method

.method b(I)V
    .locals 0

    .line 87
    iput p1, p0, Lcom/tencent/rtmp/downloader/a/c;->playableDuration:I

    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/tencent/rtmp/downloader/a/c;->url:Ljava/lang/String;

    return-void
.end method

.method c(I)V
    .locals 0

    .line 95
    iput p1, p0, Lcom/tencent/rtmp/downloader/a/c;->size:I

    return-void
.end method

.method c(Ljava/lang/String;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/tencent/rtmp/downloader/a/c;->userName:Ljava/lang/String;

    return-void
.end method

.method d(I)V
    .locals 0

    .line 103
    iput p1, p0, Lcom/tencent/rtmp/downloader/a/c;->downloadSize:I

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method e(I)V
    .locals 0

    .line 111
    iput p1, p0, Lcom/tencent/rtmp/downloader/a/c;->segments:I

    return-void
.end method

.method f(I)V
    .locals 0

    .line 119
    iput p1, p0, Lcom/tencent/rtmp/downloader/a/c;->downloadSegments:I

    return-void
.end method

.method g(I)V
    .locals 0

    .line 134
    iput p1, p0, Lcom/tencent/rtmp/downloader/a/c;->tid:I

    return-void
.end method

.method h(I)V
    .locals 0

    .line 158
    iput p1, p0, Lcom/tencent/rtmp/downloader/a/c;->downloadState:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 35
    iget-object p2, p0, Lcom/tencent/rtmp/downloader/a/c;->dataSource:Lcom/tencent/rtmp/downloader/a/a;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 36
    iget p2, p0, Lcom/tencent/rtmp/downloader/a/c;->duration:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    iget p2, p0, Lcom/tencent/rtmp/downloader/a/c;->size:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    iget p2, p0, Lcom/tencent/rtmp/downloader/a/c;->downloadSize:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    iget p2, p0, Lcom/tencent/rtmp/downloader/a/c;->segments:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    iget p2, p0, Lcom/tencent/rtmp/downloader/a/c;->downloadSegments:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget-object p2, p0, Lcom/tencent/rtmp/downloader/a/c;->playPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    iget-object p2, p0, Lcom/tencent/rtmp/downloader/a/c;->url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    iget-object p2, p0, Lcom/tencent/rtmp/downloader/a/c;->dataSource:Lcom/tencent/rtmp/downloader/a/a;

    if-nez p2, :cond_0

    .line 44
    iget-object p2, p0, Lcom/tencent/rtmp/downloader/a/c;->userName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    :cond_0
    iget p2, p0, Lcom/tencent/rtmp/downloader/a/c;->downloadState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
