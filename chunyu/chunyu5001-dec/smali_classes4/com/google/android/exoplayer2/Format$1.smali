.class Lcom/google/android/exoplayer2/Format$1;
.super Ljava/lang/Object;
.source "Format.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/Format;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/exoplayer2/Format;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/exoplayer2/Format;
    .locals 1

    .line 1431
    new-instance v0, Lcom/google/android/exoplayer2/Format;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/Format;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1427
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/Format$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/google/android/exoplayer2/Format;
    .locals 0

    .line 1436
    new-array p1, p1, [Lcom/google/android/exoplayer2/Format;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1427
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/Format$1;->newArray(I)[Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    return-object p1
.end method
