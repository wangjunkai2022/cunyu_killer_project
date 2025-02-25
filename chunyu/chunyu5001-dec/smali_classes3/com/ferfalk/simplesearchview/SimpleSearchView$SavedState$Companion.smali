.class public final Lcom/ferfalk/simplesearchview/SimpleSearchView$SavedState$Companion;
.super Ljava/lang/Object;
.source "SimpleSearchView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ferfalk/simplesearchview/SimpleSearchView$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0019\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/ferfalk/simplesearchview/SimpleSearchView$SavedState$Companion;",
        "",
        "()V",
        "CREATOR",
        "Landroid/os/Parcelable$Creator;",
        "Lcom/ferfalk/simplesearchview/SimpleSearchView$SavedState;",
        "getCREATOR",
        "()Landroid/os/Parcelable$Creator;",
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
.method private constructor <init>()V
    .locals 0

    .line 649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 649
    invoke-direct {p0}, Lcom/ferfalk/simplesearchview/SimpleSearchView$SavedState$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCREATOR()Landroid/os/Parcelable$Creator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ferfalk/simplesearchview/SimpleSearchView$SavedState;",
            ">;"
        }
    .end annotation

    .line 651
    invoke-static {}, Lcom/ferfalk/simplesearchview/SimpleSearchView$SavedState;->access$getCREATOR$cp()Landroid/os/Parcelable$Creator;

    move-result-object v0

    return-object v0
.end method
