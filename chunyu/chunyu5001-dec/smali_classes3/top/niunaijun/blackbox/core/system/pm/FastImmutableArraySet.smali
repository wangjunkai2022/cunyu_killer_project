.class public final Ltop/niunaijun/blackbox/core/system/pm/FastImmutableArraySet;
.super Ljava/util/AbstractSet;
.source "FastImmutableArraySet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackbox/core/system/pm/FastImmutableArraySet$FastIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet<",
        "TT;>;"
    }
.end annotation


# instance fields
.field mContents:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field mIterator:Ltop/niunaijun/blackbox/core/system/pm/FastImmutableArraySet$FastIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltop/niunaijun/blackbox/core/system/pm/FastImmutableArraySet$FastIterator<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contents"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 35
    iput-object p1, p0, Ltop/niunaijun/blackbox/core/system/pm/FastImmutableArraySet;->mContents:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/FastImmutableArraySet;->mIterator:Ltop/niunaijun/blackbox/core/system/pm/FastImmutableArraySet$FastIterator;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Ltop/niunaijun/blackbox/core/system/pm/FastImmutableArraySet$FastIterator;

    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/FastImmutableArraySet;->mContents:[Ljava/lang/Object;

    invoke-direct {v0, v1}, Ltop/niunaijun/blackbox/core/system/pm/FastImmutableArraySet$FastIterator;-><init>([Ljava/lang/Object;)V

    .line 43
    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/FastImmutableArraySet;->mIterator:Ltop/niunaijun/blackbox/core/system/pm/FastImmutableArraySet$FastIterator;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 45
    iput v1, v0, Ltop/niunaijun/blackbox/core/system/pm/FastImmutableArraySet$FastIterator;->mIndex:I

    :goto_0
    return-object v0
.end method

.method public size()I
    .locals 1

    .line 52
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/FastImmutableArraySet;->mContents:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method
