.class public Lcom/facebook/common/internal/Ints;
.super Ljava/lang/Object;
.source "Ints.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs max([I)I
    .locals 3

    .line 40
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Z)V

    .line 41
    aget v0, p0, v1

    .line 42
    :goto_1
    array-length v1, p0

    if-ge v2, v1, :cond_2

    .line 43
    aget v1, p0, v2

    if-le v1, v0, :cond_1

    .line 44
    aget v0, p0, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return v0
.end method
