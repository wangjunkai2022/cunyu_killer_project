.class final Ltop/niunaijun/blackbox/core/system/pm/FastImmutableArraySet$FastIterator;
.super Ljava/lang/Object;
.source "FastImmutableArraySet.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/core/system/pm/FastImmutableArraySet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FastIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mContents:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field mIndex:I


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

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Ltop/niunaijun/blackbox/core/system/pm/FastImmutableArraySet$FastIterator;->mContents:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 65
    iget v0, p0, Ltop/niunaijun/blackbox/core/system/pm/FastImmutableArraySet$FastIterator;->mIndex:I

    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/pm/FastImmutableArraySet$FastIterator;->mContents:[Ljava/lang/Object;

    array-length v1, v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/pm/FastImmutableArraySet$FastIterator;->mContents:[Ljava/lang/Object;

    iget v1, p0, Ltop/niunaijun/blackbox/core/system/pm/FastImmutableArraySet$FastIterator;->mIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ltop/niunaijun/blackbox/core/system/pm/FastImmutableArraySet$FastIterator;->mIndex:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 75
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
