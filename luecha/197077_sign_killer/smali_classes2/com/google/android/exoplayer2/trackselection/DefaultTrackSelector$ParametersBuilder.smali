.class public final Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
.super Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
.source "DefaultTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ParametersBuilder"
.end annotation


# instance fields
.field private allowAudioMixedChannelCountAdaptiveness:Z

.field private allowAudioMixedMimeTypeAdaptiveness:Z

.field private allowAudioMixedSampleRateAdaptiveness:Z

.field private allowMultipleAdaptiveSelections:Z

.field private allowVideoMixedMimeTypeAdaptiveness:Z

.field private allowVideoNonSeamlessAdaptiveness:Z

.field private disabledTextTrackSelectionFlags:I

.field private exceedAudioConstraintsIfNecessary:Z

.field private exceedRendererCapabilitiesIfNecessary:Z

.field private exceedVideoConstraintsIfNecessary:Z

.field private final rendererDisabledFlags:Landroid/util/SparseBooleanArray;

.field private final selectionOverrides:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lcom/google/android/exoplayer2/source/TrackGroupArray;",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;",
            ">;>;"
        }
    .end annotation
.end field

.field private tunnelingEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 197
    invoke-direct {p0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;-><init>()V

    .line 198
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->selectionOverrides:Landroid/util/SparseArray;

    .line 199
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    .line 200
    invoke-direct {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 209
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;-><init>(Landroid/content/Context;)V

    .line 210
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->selectionOverrides:Landroid/util/SparseArray;

    .line 211
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    .line 212
    invoke-direct {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->init()V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)V
    .locals 1

    .line 220
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;-><init>(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V

    .line 222
    iget v0, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->disabledTextTrackSelectionFlags:I

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->disabledTextTrackSelectionFlags:I

    .line 224
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->exceedVideoConstraintsIfNecessary:Z

    .line 225
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowVideoMixedMimeTypeAdaptiveness:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->allowVideoMixedMimeTypeAdaptiveness:Z

    .line 226
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowVideoNonSeamlessAdaptiveness:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->allowVideoNonSeamlessAdaptiveness:Z

    .line 228
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedAudioConstraintsIfNecessary:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->exceedAudioConstraintsIfNecessary:Z

    .line 229
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedMimeTypeAdaptiveness:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->allowAudioMixedMimeTypeAdaptiveness:Z

    .line 230
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedSampleRateAdaptiveness:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->allowAudioMixedSampleRateAdaptiveness:Z

    .line 231
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedChannelCountAdaptiveness:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->allowAudioMixedChannelCountAdaptiveness:Z

    .line 234
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->exceedRendererCapabilitiesIfNecessary:Z

    .line 235
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->tunnelingEnabled:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->tunnelingEnabled:Z

    .line 236
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowMultipleAdaptiveSelections:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->allowMultipleAdaptiveSelections:Z

    .line 238
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->access$000(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->cloneSelectionOverrides(Landroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->selectionOverrides:Landroid/util/SparseArray;

    .line 239
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->access$100(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Landroid/util/SparseBooleanArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$1;)V
    .locals 0

    .line 168
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;-><init>(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;)I
    .locals 0

    .line 168
    iget p0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->disabledTextTrackSelectionFlags:I

    return p0
.end method

.method static synthetic access$1100(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;)Z
    .locals 0

    .line 168
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->exceedRendererCapabilitiesIfNecessary:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;)Z
    .locals 0

    .line 168
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->tunnelingEnabled:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;)Z
    .locals 0

    .line 168
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->allowMultipleAdaptiveSelections:Z

    return p0
.end method

.method static synthetic access$1400(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;)Landroid/util/SparseArray;
    .locals 0

    .line 168
    iget-object p0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->selectionOverrides:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;)Landroid/util/SparseBooleanArray;
    .locals 0

    .line 168
    iget-object p0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;)Z
    .locals 0

    .line 168
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->exceedVideoConstraintsIfNecessary:Z

    return p0
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;)Z
    .locals 0

    .line 168
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->allowVideoMixedMimeTypeAdaptiveness:Z

    return p0
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;)Z
    .locals 0

    .line 168
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->allowVideoNonSeamlessAdaptiveness:Z

    return p0
.end method

.method static synthetic access$600(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;)Z
    .locals 0

    .line 168
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->exceedAudioConstraintsIfNecessary:Z

    return p0
.end method

.method static synthetic access$700(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;)Z
    .locals 0

    .line 168
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->allowAudioMixedMimeTypeAdaptiveness:Z

    return p0
.end method

.method static synthetic access$800(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;)Z
    .locals 0

    .line 168
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->allowAudioMixedSampleRateAdaptiveness:Z

    return p0
.end method

.method static synthetic access$900(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;)Z
    .locals 0

    .line 168
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->allowAudioMixedChannelCountAdaptiveness:Z

    return p0
.end method

.method private static cloneSelectionOverrides(Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lcom/google/android/exoplayer2/source/TrackGroupArray;",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;",
            ">;>;)",
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lcom/google/android/exoplayer2/source/TrackGroupArray;",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;",
            ">;>;"
        }
    .end annotation

    .line 720
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x0

    .line 722
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 723
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    new-instance v3, Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private init()V
    .locals 2

    const/4 v0, 0x1

    .line 701
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->exceedVideoConstraintsIfNecessary:Z

    const/4 v1, 0x0

    .line 702
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->allowVideoMixedMimeTypeAdaptiveness:Z

    .line 703
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->allowVideoNonSeamlessAdaptiveness:Z

    .line 705
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->exceedAudioConstraintsIfNecessary:Z

    .line 706
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->allowAudioMixedMimeTypeAdaptiveness:Z

    .line 707
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->allowAudioMixedSampleRateAdaptiveness:Z

    .line 708
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->allowAudioMixedChannelCountAdaptiveness:Z

    .line 710
    iput v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->disabledTextTrackSelectionFlags:I

    .line 712
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->exceedRendererCapabilitiesIfNecessary:Z

    .line 713
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->tunnelingEnabled:Z

    .line 714
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->allowMultipleAdaptiveSelections:Z

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .locals 2

    .line 696
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;-><init>(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;
    .locals 1

    .line 168
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->build()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    return-object v0
.end method

.method public final clearSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 2

    .line 649
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->selectionOverrides:Landroid/util/SparseArray;

    .line 650
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 651
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 655
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 657
    iget-object p2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public final clearSelectionOverrides()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    .line 685
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 689
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-object p0
.end method

.method public final clearSelectionOverrides(I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    .line 669
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->selectionOverrides:Landroid/util/SparseArray;

    .line 670
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 671
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 675
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public clearVideoSizeConstraints()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 0

    .line 252
    invoke-super {p0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->clearVideoSizeConstraints()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public bridge synthetic clearVideoSizeConstraints()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 1

    .line 168
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->clearVideoSizeConstraints()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v0

    return-object v0
.end method

.method public clearViewportSizeConstraints()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 0

    .line 348
    invoke-super {p0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->clearViewportSizeConstraints()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public bridge synthetic clearViewportSizeConstraints()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 1

    .line 168
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->clearViewportSizeConstraints()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setAllowAudioMixedChannelCountAdaptiveness(Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 0

    .line 458
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->allowAudioMixedChannelCountAdaptiveness:Z

    return-object p0
.end method

.method public setAllowAudioMixedMimeTypeAdaptiveness(Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 0

    .line 428
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->allowAudioMixedMimeTypeAdaptiveness:Z

    return-object p0
.end method

.method public setAllowAudioMixedSampleRateAdaptiveness(Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 0

    .line 443
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->allowAudioMixedSampleRateAdaptiveness:Z

    return-object p0
.end method

.method public setAllowMultipleAdaptiveSelections(Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 0

    .line 573
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->allowMultipleAdaptiveSelections:Z

    return-object p0
.end method

.method public setAllowVideoMixedMimeTypeAdaptiveness(Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 0

    .line 321
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->allowVideoMixedMimeTypeAdaptiveness:Z

    return-object p0
.end method

.method public setAllowVideoNonSeamlessAdaptiveness(Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 0

    .line 335
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->allowVideoNonSeamlessAdaptiveness:Z

    return-object p0
.end method

.method public setDisabledTextTrackSelectionFlags(I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 0

    .line 517
    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->disabledTextTrackSelectionFlags:I

    return-object p0
.end method

.method public setExceedAudioConstraintsIfNecessary(Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 0

    .line 413
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->exceedAudioConstraintsIfNecessary:Z

    return-object p0
.end method

.method public setExceedRendererCapabilitiesIfNecessary(Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 0

    .line 549
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->exceedRendererCapabilitiesIfNecessary:Z

    return-object p0
.end method

.method public setExceedVideoConstraintsIfNecessary(Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 0

    .line 304
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->exceedVideoConstraintsIfNecessary:Z

    return-object p0
.end method

.method public setForceHighestSupportedBitrate(Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 0

    .line 531
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setForceHighestSupportedBitrate(Z)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setForceHighestSupportedBitrate(Z)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 168
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setForceHighestSupportedBitrate(Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setForceLowestBitrate(Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 0

    .line 525
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setForceLowestBitrate(Z)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setForceLowestBitrate(Z)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 168
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setForceLowestBitrate(Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setMaxAudioBitrate(I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 0

    .line 399
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setMaxAudioBitrate(I)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setMaxAudioBitrate(I)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 168
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setMaxAudioBitrate(I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setMaxAudioChannelCount(I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 0

    .line 393
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setMaxAudioChannelCount(I)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setMaxAudioChannelCount(I)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 168
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setMaxAudioChannelCount(I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setMaxVideoBitrate(I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 0

    .line 271
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setMaxVideoBitrate(I)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setMaxVideoBitrate(I)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 168
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setMaxVideoBitrate(I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setMaxVideoFrameRate(I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 0

    .line 265
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setMaxVideoFrameRate(I)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setMaxVideoFrameRate(I)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 168
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setMaxVideoFrameRate(I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setMaxVideoSize(II)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 0

    .line 259
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setMaxVideoSize(II)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setMaxVideoSize(II)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 168
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setMaxVideoSize(II)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setMaxVideoSizeSd()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 0

    .line 246
    invoke-super {p0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setMaxVideoSizeSd()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setMaxVideoSizeSd()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 1

    .line 168
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setMaxVideoSizeSd()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setMinVideoBitrate(I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 0

    .line 290
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setMinVideoBitrate(I)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setMinVideoBitrate(I)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 168
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setMinVideoBitrate(I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setMinVideoFrameRate(I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 0

    .line 284
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setMinVideoFrameRate(I)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setMinVideoFrameRate(I)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 168
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setMinVideoFrameRate(I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setMinVideoSize(II)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 0

    .line 278
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setMinVideoSize(II)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setMinVideoSize(II)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 168
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setMinVideoSize(II)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setPreferredAudioLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 0

    .line 375
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setPreferredAudioLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setPreferredAudioLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 168
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setPreferredAudioLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs setPreferredAudioLanguages([Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 0

    .line 381
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setPreferredAudioLanguages([Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setPreferredAudioLanguages([Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 168
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setPreferredAudioLanguages([Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setPreferredAudioMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 0

    .line 464
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setPreferredAudioMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setPreferredAudioMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 168
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setPreferredAudioMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs setPreferredAudioMimeTypes([Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 0

    .line 470
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setPreferredAudioMimeTypes([Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setPreferredAudioMimeTypes([Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 168
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setPreferredAudioMimeTypes([Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setPreferredAudioRoleFlags(I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 0

    .line 387
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setPreferredAudioRoleFlags(I)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setPreferredAudioRoleFlags(I)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 168
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setPreferredAudioRoleFlags(I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setPreferredTextLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 0

    .line 485
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setPreferredTextLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setPreferredTextLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 168
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setPreferredTextLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setPreferredTextLanguageAndRoleFlagsToCaptioningManagerSettings(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 0

    .line 479
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setPreferredTextLanguageAndRoleFlagsToCaptioningManagerSettings(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setPreferredTextLanguageAndRoleFlagsToCaptioningManagerSettings(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 168
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setPreferredTextLanguageAndRoleFlagsToCaptioningManagerSettings(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs setPreferredTextLanguages([Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 0

    .line 491
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setPreferredTextLanguages([Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setPreferredTextLanguages([Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 168
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setPreferredTextLanguages([Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setPreferredTextRoleFlags(I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 0

    .line 497
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setPreferredTextRoleFlags(I)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setPreferredTextRoleFlags(I)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 168
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setPreferredTextRoleFlags(I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setPreferredVideoMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 0

    .line 361
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setPreferredVideoMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setPreferredVideoMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 168
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setPreferredVideoMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs setPreferredVideoMimeTypes([Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 0

    .line 367
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setPreferredVideoMimeTypes([Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setPreferredVideoMimeTypes([Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 168
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setPreferredVideoMimeTypes([Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final setRendererDisabled(IZ)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    .line 588
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-ne v0, p2, :cond_0

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    .line 594
    iget-object p2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0

    .line 596
    :cond_1
    iget-object p2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    :goto_0
    return-object p0
.end method

.method public setSelectUndeterminedTextLanguage(Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 0

    .line 504
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setSelectUndeterminedTextLanguage(Z)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setSelectUndeterminedTextLanguage(Z)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 168
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setSelectUndeterminedTextLanguage(Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final setSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 2

    .line 626
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->selectionOverrides:Landroid/util/SparseArray;

    .line 627
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    .line 629
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 630
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->selectionOverrides:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 632
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p0

    .line 636
    :cond_1
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setTunnelingEnabled(Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 0

    .line 561
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->tunnelingEnabled:Z

    return-object p0
.end method

.method public setViewportSize(IIZ)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 0

    .line 355
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setViewportSize(IIZ)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setViewportSize(IIZ)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 168
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setViewportSize(IIZ)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setViewportSizeToPhysicalDisplaySize(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 0

    .line 342
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setViewportSizeToPhysicalDisplaySize(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setViewportSizeToPhysicalDisplaySize(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 168
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setViewportSizeToPhysicalDisplaySize(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    return-object p1
.end method
