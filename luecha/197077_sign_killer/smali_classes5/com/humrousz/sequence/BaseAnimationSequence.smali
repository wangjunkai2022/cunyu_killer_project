.class public abstract Lcom/humrousz/sequence/BaseAnimationSequence;
.super Ljava/lang/Object;
.source "BaseAnimationSequence.java"


# instance fields
.field private final mDefaultLoopCount:I

.field private final mFrameCount:I

.field private final mHeight:I

.field private final mWidth:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lcom/humrousz/sequence/BaseAnimationSequence;->mWidth:I

    .line 34
    iput p2, p0, Lcom/humrousz/sequence/BaseAnimationSequence;->mHeight:I

    .line 35
    iput p3, p0, Lcom/humrousz/sequence/BaseAnimationSequence;->mFrameCount:I

    .line 36
    iput p4, p0, Lcom/humrousz/sequence/BaseAnimationSequence;->mDefaultLoopCount:I

    return-void
.end method


# virtual methods
.method public getDefaultLoopCount()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/humrousz/sequence/BaseAnimationSequence;->mDefaultLoopCount:I

    return v0
.end method

.method public abstract getFrame(ILandroid/graphics/Bitmap;I)J
.end method

.method public getFrameCount()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/humrousz/sequence/BaseAnimationSequence;->mFrameCount:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/humrousz/sequence/BaseAnimationSequence;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/humrousz/sequence/BaseAnimationSequence;->mWidth:I

    return v0
.end method

.method public abstract isOpaque()Z
.end method
