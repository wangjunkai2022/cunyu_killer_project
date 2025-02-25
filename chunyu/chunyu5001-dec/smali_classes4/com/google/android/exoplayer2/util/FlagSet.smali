.class public final Lcom/google/android/exoplayer2/util/FlagSet;
.super Ljava/lang/Object;
.source "FlagSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/util/FlagSet$Builder;
    }
.end annotation


# instance fields
.field private final flags:Landroid/util/SparseBooleanArray;


# direct methods
.method private constructor <init>(Landroid/util/SparseBooleanArray;)V
    .locals 0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/FlagSet;->flags:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method synthetic constructor <init>(Landroid/util/SparseBooleanArray;Lcom/google/android/exoplayer2/util/FlagSet$1;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/util/FlagSet;-><init>(Landroid/util/SparseBooleanArray;)V

    return-void
.end method


# virtual methods
.method public contains(I)Z
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/FlagSet;->flags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    return p1
.end method

.method public varargs containsAny([I)Z
    .locals 4

    .line 180
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p1, v2

    .line 181
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/FlagSet;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 210
    :cond_0
    instance-of v0, p1, Lcom/google/android/exoplayer2/util/FlagSet;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 213
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/util/FlagSet;

    .line 214
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/FlagSet;->flags:Landroid/util/SparseBooleanArray;

    iget-object p1, p1, Lcom/google/android/exoplayer2/util/FlagSet;->flags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(I)I
    .locals 2

    .line 201
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/FlagSet;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkIndex(III)I

    .line 202
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/FlagSet;->flags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/FlagSet;->flags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->hashCode()I

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/FlagSet;->flags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    return v0
.end method
