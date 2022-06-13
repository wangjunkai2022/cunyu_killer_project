.class abstract Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackSelectionAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "StyledPlayerControlView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "TrackSelectionAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SubSettingViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field protected mappedTrackInfo:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

.field protected rendererIndices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

.field protected tracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V
    .locals 0

    .line 2158
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackSelectionAdapter;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2159
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackSelectionAdapter;->rendererIndices:Ljava/util/List;

    .line 2160
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackSelectionAdapter;->tracks:Ljava/util/List;

    const/4 p1, 0x0

    .line 2161
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackSelectionAdapter;->mappedTrackInfo:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 2232
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackSelectionAdapter;->tracks:Ljava/util/List;

    const/4 v0, 0x0

    .line 2233
    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackSelectionAdapter;->mappedTrackInfo:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 2228
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackSelectionAdapter;->tracks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackSelectionAdapter;->tracks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0
.end method

.method public abstract init(Ljava/util/List;Ljava/util/List;Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackInfo;",
            ">;",
            "Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;",
            ")V"
        }
    .end annotation
.end method

.method public synthetic lambda$onBindViewHolder$0$StyledPlayerControlView$TrackSelectionAdapter(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackInfo;Landroid/view/View;)V
    .locals 8

    .line 2199
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackSelectionAdapter;->mappedTrackInfo:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackSelectionAdapter;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {p2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$4800(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 2200
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackSelectionAdapter;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {p2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$4800(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getParameters()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->buildUpon()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p2

    const/4 v0, 0x0

    move-object v1, p2

    move p2, v0

    .line 2201
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackSelectionAdapter;->rendererIndices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p2, v2, :cond_1

    .line 2202
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackSelectionAdapter;->rendererIndices:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2203
    iget v3, p1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackInfo;->rendererIndex:I

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    .line 2204
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackSelectionAdapter;->mappedTrackInfo:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    .line 2208
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v3

    new-instance v5, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    iget v6, p1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackInfo;->groupIndex:I

    new-array v4, v4, [I

    iget v7, p1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackInfo;->trackIndex:I

    aput v7, v4, v0

    invoke-direct {v5, v6, v4}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;-><init>(I[I)V

    .line 2206
    invoke-virtual {v1, v2, v3, v5}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v1

    .line 2210
    invoke-virtual {v1, v2, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setRendererDisabled(IZ)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v1

    goto :goto_1

    .line 2214
    :cond_0
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->clearSelectionOverrides(I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v1

    .line 2215
    invoke-virtual {v1, v2, v4}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setRendererDisabled(IZ)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v1

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 2218
    :cond_1
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackSelectionAdapter;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {p2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$4800(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-virtual {p2, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->setParameters(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;)V

    .line 2219
    iget-object p1, p1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackInfo;->trackName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackSelectionAdapter;->onTrackSelection(Ljava/lang/String;)V

    .line 2220
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackSelectionAdapter;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$4300(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_2
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 2152
    check-cast p1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SubSettingViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackSelectionAdapter;->onBindViewHolder(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SubSettingViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SubSettingViewHolder;I)V
    .locals 4

    .line 2182
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackSelectionAdapter;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$4800(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackSelectionAdapter;->mappedTrackInfo:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    if-nez p2, :cond_1

    .line 2186
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackSelectionAdapter;->onBindViewHolderAtZeroPosition(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SubSettingViewHolder;)V

    goto :goto_2

    .line 2188
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackSelectionAdapter;->tracks:Ljava/util/List;

    const/4 v1, 0x1

    sub-int/2addr p2, v1

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackInfo;

    .line 2189
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackSelectionAdapter;->mappedTrackInfo:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    iget v2, p2, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackInfo;->rendererIndex:I

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v0

    .line 2190
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackSelectionAdapter;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 2191
    invoke-static {v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->access$4800(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    .line 2192
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getParameters()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v2

    iget v3, p2, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackInfo;->rendererIndex:I

    .line 2193
    invoke-virtual {v2, v3, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->hasSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p2, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackInfo;->selected:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    .line 2195
    :goto_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SubSettingViewHolder;->textView:Landroid/widget/TextView;

    iget-object v3, p2, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackInfo;->trackName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2196
    iget-object v0, p1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SubSettingViewHolder;->checkView:Landroid/view/View;

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x4

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2197
    iget-object p1, p1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SubSettingViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/google/android/exoplayer2/ui/-$$Lambda$StyledPlayerControlView$TrackSelectionAdapter$9z-RzuVk07lzOQ3zOBPYNxuP63k;

    invoke-direct {v0, p0, p2}, Lcom/google/android/exoplayer2/ui/-$$Lambda$StyledPlayerControlView$TrackSelectionAdapter$9z-RzuVk07lzOQ3zOBPYNxuP63k;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackSelectionAdapter;Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackInfo;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public abstract onBindViewHolderAtZeroPosition(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SubSettingViewHolder;)V
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 2152
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackSelectionAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SubSettingViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SubSettingViewHolder;
    .locals 2

    .line 2169
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackSelectionAdapter;->this$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 2170
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/google/android/exoplayer2/ui/R$layout;->exo_styled_sub_settings_list_item:I

    const/4 v1, 0x0

    .line 2171
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2173
    new-instance p2, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SubSettingViewHolder;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$SubSettingViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public abstract onTrackSelection(Ljava/lang/String;)V
.end method
