.class public final Lcom/ferfalk/simplesearchview/SimpleSearchView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SimpleSearchView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ferfalk/simplesearchview/SimpleSearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SavedState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ferfalk/simplesearchview/SimpleSearchView$SavedState$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000 #2\u00020\u0001:\u0001#B\u0011\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004B\u000f\u0008\u0012\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0018\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020\tH\u0016R\u001a\u0010\u0008\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u00020\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0010\"\u0004\u0008\u0015\u0010\u0012R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u0017X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u0019\"\u0004\u0008\u001e\u0010\u001b\u00a8\u0006$"
    }
    d2 = {
        "Lcom/ferfalk/simplesearchview/SimpleSearchView$SavedState;",
        "Landroid/view/View$BaseSavedState;",
        "superState",
        "Landroid/os/Parcelable;",
        "(Landroid/os/Parcelable;)V",
        "in",
        "Landroid/os/Parcel;",
        "(Landroid/os/Parcel;)V",
        "animationDuration",
        "",
        "getAnimationDuration",
        "()I",
        "setAnimationDuration",
        "(I)V",
        "isSearchOpen",
        "",
        "()Z",
        "setSearchOpen",
        "(Z)V",
        "keepQuery",
        "getKeepQuery",
        "setKeepQuery",
        "query",
        "",
        "getQuery",
        "()Ljava/lang/String;",
        "setQuery",
        "(Ljava/lang/String;)V",
        "voiceSearchPrompt",
        "getVoiceSearchPrompt",
        "setVoiceSearchPrompt",
        "writeToParcel",
        "",
        "out",
        "flags",
        "Companion",
        "simplesearchview_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field private static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ferfalk/simplesearchview/SimpleSearchView$SavedState;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/ferfalk/simplesearchview/SimpleSearchView$SavedState$Companion;


# instance fields
.field private animationDuration:I

.field private isSearchOpen:Z

.field private keepQuery:Z

.field private query:Ljava/lang/String;

.field private voiceSearchPrompt:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/ferfalk/simplesearchview/SimpleSearchView$SavedState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ferfalk/simplesearchview/SimpleSearchView$SavedState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ferfalk/simplesearchview/SimpleSearchView$SavedState;->Companion:Lcom/ferfalk/simplesearchview/SimpleSearchView$SavedState$Companion;

    .line 651
    new-instance v0, Lcom/ferfalk/simplesearchview/SimpleSearchView$SavedState$Companion$CREATOR$1;

    invoke-direct {v0}, Lcom/ferfalk/simplesearchview/SimpleSearchView$SavedState$Companion$CREATOR$1;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lcom/ferfalk/simplesearchview/SimpleSearchView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 632
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 633
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView$SavedState;->query:Ljava/lang/String;

    .line 634
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView$SavedState;->isSearchOpen:Z

    .line 635
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView$SavedState;->animationDuration:I

    .line 636
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView$SavedState;->voiceSearchPrompt:Ljava/lang/String;

    .line 637
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-ne p1, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView$SavedState;->keepQuery:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 624
    invoke-direct {p0, p1}, Lcom/ferfalk/simplesearchview/SimpleSearchView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 631
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method

.method public static final synthetic access$getCREATOR$cp()Landroid/os/Parcelable$Creator;
    .locals 1

    .line 624
    sget-object v0, Lcom/ferfalk/simplesearchview/SimpleSearchView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-object v0
.end method


# virtual methods
.method public final getAnimationDuration()I
    .locals 1

    .line 627
    iget v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView$SavedState;->animationDuration:I

    return v0
.end method

.method public final getKeepQuery()Z
    .locals 1

    .line 629
    iget-boolean v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView$SavedState;->keepQuery:Z

    return v0
.end method

.method public final getQuery()Ljava/lang/String;
    .locals 1

    .line 625
    iget-object v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView$SavedState;->query:Ljava/lang/String;

    return-object v0
.end method

.method public final getVoiceSearchPrompt()Ljava/lang/String;
    .locals 1

    .line 628
    iget-object v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView$SavedState;->voiceSearchPrompt:Ljava/lang/String;

    return-object v0
.end method

.method public final isSearchOpen()Z
    .locals 1

    .line 626
    iget-boolean v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView$SavedState;->isSearchOpen:Z

    return v0
.end method

.method public final setAnimationDuration(I)V
    .locals 0

    .line 627
    iput p1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView$SavedState;->animationDuration:I

    return-void
.end method

.method public final setKeepQuery(Z)V
    .locals 0

    .line 629
    iput-boolean p1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView$SavedState;->keepQuery:Z

    return-void
.end method

.method public final setQuery(Ljava/lang/String;)V
    .locals 0

    .line 625
    iput-object p1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView$SavedState;->query:Ljava/lang/String;

    return-void
.end method

.method public final setSearchOpen(Z)V
    .locals 0

    .line 626
    iput-boolean p1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView$SavedState;->isSearchOpen:Z

    return-void
.end method

.method public final setVoiceSearchPrompt(Ljava/lang/String;)V
    .locals 0

    .line 628
    iput-object p1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView$SavedState;->voiceSearchPrompt:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 641
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 642
    iget-object p2, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView$SavedState;->query:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 643
    iget-boolean p2, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView$SavedState;->isSearchOpen:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 644
    iget p2, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView$SavedState;->animationDuration:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 645
    iget-object p2, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView$SavedState;->voiceSearchPrompt:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 646
    iget-boolean p2, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView$SavedState;->keepQuery:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
