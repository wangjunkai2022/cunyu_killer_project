.class public final Lcom/ferfalk/simplesearchview/SimpleSearchView$SavedState$Companion$CREATOR$1;
.super Ljava/lang/Object;
.source "SimpleSearchView.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ferfalk/simplesearchview/SimpleSearchView$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/ferfalk/simplesearchview/SimpleSearchView$SavedState;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u001d\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00a2\u0006\u0002\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "com/ferfalk/simplesearchview/SimpleSearchView$SavedState$Companion$CREATOR$1",
        "Landroid/os/Parcelable$Creator;",
        "Lcom/ferfalk/simplesearchview/SimpleSearchView$SavedState;",
        "createFromParcel",
        "in",
        "Landroid/os/Parcel;",
        "newArray",
        "",
        "size",
        "",
        "(I)[Lcom/ferfalk/simplesearchview/SimpleSearchView$SavedState;",
        "simplesearchview_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 651
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ferfalk/simplesearchview/SimpleSearchView$SavedState;
    .locals 2

    const-string v0, "in"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 653
    new-instance v0, Lcom/ferfalk/simplesearchview/SimpleSearchView$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/ferfalk/simplesearchview/SimpleSearchView$SavedState;-><init>(Landroid/os/Parcel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 651
    invoke-virtual {p0, p1}, Lcom/ferfalk/simplesearchview/SimpleSearchView$SavedState$Companion$CREATOR$1;->createFromParcel(Landroid/os/Parcel;)Lcom/ferfalk/simplesearchview/SimpleSearchView$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/ferfalk/simplesearchview/SimpleSearchView$SavedState;
    .locals 0

    .line 657
    new-array p1, p1, [Lcom/ferfalk/simplesearchview/SimpleSearchView$SavedState;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 651
    invoke-virtual {p0, p1}, Lcom/ferfalk/simplesearchview/SimpleSearchView$SavedState$Companion$CREATOR$1;->newArray(I)[Lcom/ferfalk/simplesearchview/SimpleSearchView$SavedState;

    move-result-object p1

    return-object p1
.end method
