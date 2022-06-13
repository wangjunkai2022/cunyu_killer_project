.class public Lcom/tencent/rtmp/downloader/a/a;
.super Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;
.source "TXVodDownloadDataSourceEx.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tencent/rtmp/downloader/a/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    new-instance v0, Lcom/tencent/rtmp/downloader/a/a$1;

    invoke-direct {v0}, Lcom/tencent/rtmp/downloader/a/a$1;-><init>()V

    sput-object v0, Lcom/tencent/rtmp/downloader/a/a;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct/range {p0 .. p5}, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;-><init>()V

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/rtmp/downloader/a/a;->appId:I

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/rtmp/downloader/a/a;->fileId:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/rtmp/downloader/a/a;->pSign:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/rtmp/downloader/a/a;->quality:I

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/rtmp/downloader/a/a;->userName:Ljava/lang/String;

    .line 34
    iget-object v0, p0, Lcom/tencent/rtmp/downloader/a/a;->pSign:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/rtmp/downloader/a/a;->overlayKey:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/rtmp/downloader/a/a;->overlayIv:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method constructor <init>(Lcom/tencent/rtmp/TXPlayerAuthBuilder;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;-><init>(Lcom/tencent/rtmp/TXPlayerAuthBuilder;I)V

    return-void
.end method

.method constructor <init>(Lcom/tencent/rtmp/TXPlayerAuthBuilder;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/tencent/rtmp/downloader/TXVodDownloadDataSource;-><init>(Lcom/tencent/rtmp/TXPlayerAuthBuilder;Ljava/lang/String;)V

    return-void
.end method

.method static a(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "FLU"

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string p0, "SD"

    return-object p0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    const-string p0, "HD"

    return-object p0

    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    const-string p0, "FHD"

    return-object p0

    :cond_3
    const/4 v0, 0x5

    if-ne p0, v0, :cond_4

    const-string p0, "2K"

    return-object p0

    :cond_4
    const/4 v0, 0x6

    if-ne p0, v0, :cond_5

    const-string p0, "4K"

    return-object p0

    :cond_5
    const-string p0, ""

    return-object p0
.end method

.method static a(ILjava/lang/String;)Z
    .locals 0

    .line 80
    invoke-static {p1}, Lcom/tencent/rtmp/downloader/a/a;->c(Ljava/lang/String;)I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static c(Ljava/lang/String;)I
    .locals 9

    .line 105
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "\u5168\u9ad8\u6e05"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x7

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "\u9ad8\u6e05"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v3

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "\u6d41\u7545"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v7

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "\u6807\u6e05"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v5

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "\u539f\u753b"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xb

    goto :goto_1

    :sswitch_5
    const-string v0, "UNK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xc

    goto :goto_1

    :sswitch_6
    const-string v0, "FLU"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_1

    :sswitch_7
    const-string v0, "FHD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v2

    goto :goto_1

    :sswitch_8
    const-string v0, "SD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v6

    goto :goto_1

    :sswitch_9
    const-string v0, "OD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xa

    goto :goto_1

    :sswitch_a
    const-string v0, "HD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v4

    goto :goto_1

    :sswitch_b
    const-string v0, "4K"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x9

    goto :goto_1

    :sswitch_c
    const-string v0, "2K"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x8

    goto :goto_1

    :cond_0
    :goto_0
    move p0, v8

    :goto_1
    packed-switch p0, :pswitch_data_0

    move v1, v8

    goto :goto_2

    :pswitch_0
    const/16 v1, 0x3e8

    goto :goto_2

    :pswitch_1
    move v1, v2

    goto :goto_2

    :pswitch_2
    move v1, v3

    goto :goto_2

    :pswitch_3
    move v1, v4

    goto :goto_2

    :pswitch_4
    move v1, v5

    goto :goto_2

    :pswitch_5
    move v1, v6

    goto :goto_2

    :pswitch_6
    move v1, v7

    :goto_2
    :pswitch_7
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x659 -> :sswitch_c
        0x697 -> :sswitch_b
        0x8fc -> :sswitch_a
        0x9d5 -> :sswitch_9
        0xa51 -> :sswitch_8
        0x10fc2 -> :sswitch_7
        0x1104f -> :sswitch_6
        0x148d2 -> :sswitch_5
        0xa957c -> :sswitch_4
        0xd06de -> :sswitch_3
        0xdb024 -> :sswitch_2
        0x132e2d -> :sswitch_1
        0x144c595 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_7
        :pswitch_7
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method a(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/tencent/rtmp/downloader/a/a;->overlayKey:Ljava/lang/String;

    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/tencent/rtmp/downloader/a/a;->overlayIv:Ljava/lang/String;

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 50
    iget p2, p0, Lcom/tencent/rtmp/downloader/a/a;->appId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget-object p2, p0, Lcom/tencent/rtmp/downloader/a/a;->fileId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    iget-object p2, p0, Lcom/tencent/rtmp/downloader/a/a;->pSign:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget p2, p0, Lcom/tencent/rtmp/downloader/a/a;->quality:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget-object p2, p0, Lcom/tencent/rtmp/downloader/a/a;->userName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    iget-object p2, p0, Lcom/tencent/rtmp/downloader/a/a;->pSign:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 56
    iget-object p2, p0, Lcom/tencent/rtmp/downloader/a/a;->overlayKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget-object p2, p0, Lcom/tencent/rtmp/downloader/a/a;->overlayIv:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
