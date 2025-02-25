.class final Lcom/google/android/exoplayer2/extractor/jpeg/MotionPhotoDescription;
.super Ljava/lang/Object;
.source "MotionPhotoDescription.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/jpeg/MotionPhotoDescription$ContainerItem;
    }
.end annotation


# instance fields
.field public final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/extractor/jpeg/MotionPhotoDescription$ContainerItem;",
            ">;"
        }
    .end annotation
.end field

.field public final photoPresentationTimestampUs:J


# direct methods
.method public constructor <init>(JLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/extractor/jpeg/MotionPhotoDescription$ContainerItem;",
            ">;)V"
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/MotionPhotoDescription;->photoPresentationTimestampUs:J

    .line 65
    iput-object p3, p0, Lcom/google/android/exoplayer2/extractor/jpeg/MotionPhotoDescription;->items:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getMotionPhotoMetadata(J)Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;
    .locals 19

    move-object/from16 v0, p0

    .line 77
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/jpeg/MotionPhotoDescription;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ge v1, v3, :cond_0

    return-object v2

    .line 91
    :cond_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/jpeg/MotionPhotoDescription;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move-wide/from16 v7, p1

    const/4 v6, 0x0

    const-wide/16 v9, -0x1

    const-wide/16 v11, -0x1

    const-wide/16 v13, -0x1

    const-wide/16 v15, -0x1

    :goto_0
    if-ltz v1, :cond_4

    .line 92
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/jpeg/MotionPhotoDescription;->items:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/extractor/jpeg/MotionPhotoDescription$ContainerItem;

    .line 93
    iget-object v2, v3, Lcom/google/android/exoplayer2/extractor/jpeg/MotionPhotoDescription$ContainerItem;->mime:Ljava/lang/String;

    const-string/jumbo v4, "video/mp4"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v2, v6

    if-nez v1, :cond_1

    .line 98
    iget-wide v4, v3, Lcom/google/android/exoplayer2/extractor/jpeg/MotionPhotoDescription$ContainerItem;->padding:J

    sub-long/2addr v7, v4

    move-wide v3, v7

    const-wide/16 v7, 0x0

    goto :goto_1

    .line 100
    :cond_1
    iget-wide v3, v3, Lcom/google/android/exoplayer2/extractor/jpeg/MotionPhotoDescription$ContainerItem;->length:J

    sub-long v3, v7, v3

    move-wide/from16 v17, v3

    move-wide v3, v7

    move-wide/from16 v7, v17

    :goto_1
    if-eqz v2, :cond_2

    cmp-long v5, v7, v3

    if-eqz v5, :cond_2

    sub-long v5, v3, v7

    move-wide v15, v5

    move-wide v13, v7

    const/4 v6, 0x0

    goto :goto_2

    :cond_2
    move v6, v2

    :goto_2
    if-nez v1, :cond_3

    move-wide v11, v3

    move-wide v9, v7

    :cond_3
    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    const-wide/16 v1, -0x1

    cmp-long v3, v13, v1

    if-eqz v3, :cond_6

    cmp-long v3, v15, v1

    if-eqz v3, :cond_6

    cmp-long v3, v9, v1

    if-eqz v3, :cond_6

    cmp-long v1, v11, v1

    if-nez v1, :cond_5

    goto :goto_3

    .line 119
    :cond_5
    new-instance v1, Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    iget-wide v2, v0, Lcom/google/android/exoplayer2/extractor/jpeg/MotionPhotoDescription;->photoPresentationTimestampUs:J

    move-object v6, v1

    move-wide v7, v9

    move-wide v9, v11

    move-wide v11, v2

    invoke-direct/range {v6 .. v16}, Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;-><init>(JJJJJ)V

    return-object v1

    :cond_6
    :goto_3
    const/4 v1, 0x0

    return-object v1
.end method
