.class public Lcom/humrousz/sequence/FrescoSequence$FrescoGifSequenceFactory;
.super Lcom/humrousz/sequence/BaseSequenceFactory;
.source "FrescoSequence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/humrousz/sequence/FrescoSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrescoGifSequenceFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/humrousz/sequence/BaseSequenceFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createSequence(Ljava/io/InputStream;)Lcom/humrousz/sequence/BaseAnimationSequence;
    .locals 1

    const/4 v0, 0x2

    .line 96
    invoke-static {p1, v0}, Lcom/humrousz/sequence/FrescoSequence;->decodeStream(Ljava/io/InputStream;I)Lcom/humrousz/sequence/FrescoSequence;

    move-result-object p1

    return-object p1
.end method
