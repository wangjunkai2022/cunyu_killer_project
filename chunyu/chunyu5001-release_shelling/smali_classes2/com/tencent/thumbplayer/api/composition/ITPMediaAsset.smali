.class public interface abstract Lcom/tencent/thumbplayer/api/composition/ITPMediaAsset;
.super Ljava/lang/Object;


# static fields
.field public static final INVALID_ID:I = -0x1

.field public static final MEDIA_TYPE_AUDIO:I = 0x3

.field public static final MEDIA_TYPE_AV_MIX:I = 0x1

.field public static final MEDIA_TYPE_MUTABLE:I = 0x4

.field public static final MEDIA_TYPE_VIDEO:I = 0x2


# virtual methods
.method public abstract getExtraParam()Lcom/tencent/thumbplayer/api/composition/ITPMediaAssetExtraParam;
.end method

.method public abstract getMediaType()I
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public abstract setExtraParam(Lcom/tencent/thumbplayer/api/composition/ITPMediaAssetExtraParam;)V
.end method
