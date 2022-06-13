.class public final synthetic Lcom/google/android/exoplayer2/ui/-$$Lambda$StyledPlayerControlView$TrackSelectionAdapter$9z-RzuVk07lzOQ3zOBPYNxuP63k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackSelectionAdapter;

.field private final synthetic f$1:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackSelectionAdapter;Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/-$$Lambda$StyledPlayerControlView$TrackSelectionAdapter$9z-RzuVk07lzOQ3zOBPYNxuP63k;->f$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackSelectionAdapter;

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/-$$Lambda$StyledPlayerControlView$TrackSelectionAdapter$9z-RzuVk07lzOQ3zOBPYNxuP63k;->f$1:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackInfo;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/-$$Lambda$StyledPlayerControlView$TrackSelectionAdapter$9z-RzuVk07lzOQ3zOBPYNxuP63k;->f$0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackSelectionAdapter;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/-$$Lambda$StyledPlayerControlView$TrackSelectionAdapter$9z-RzuVk07lzOQ3zOBPYNxuP63k;->f$1:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackInfo;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackSelectionAdapter;->lambda$onBindViewHolder$0$StyledPlayerControlView$TrackSelectionAdapter(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$TrackInfo;Landroid/view/View;)V

    return-void
.end method
