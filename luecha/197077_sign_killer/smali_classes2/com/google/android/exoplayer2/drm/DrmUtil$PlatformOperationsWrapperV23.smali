.class final Lcom/google/android/exoplayer2/drm/DrmUtil$PlatformOperationsWrapperV23;
.super Ljava/lang/Object;
.source "DrmUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/drm/DrmUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PlatformOperationsWrapperV23"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isMediaDrmResetException(Ljava/lang/Throwable;)Z
    .locals 0

    .line 137
    instance-of p0, p0, Landroid/media/MediaDrmResetException;

    return p0
.end method
