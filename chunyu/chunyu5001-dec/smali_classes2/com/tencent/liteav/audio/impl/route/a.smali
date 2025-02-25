.class public Lcom/tencent/liteav/audio/impl/route/a;
.super Ljava/lang/Object;
.source "AudioConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/audio/impl/route/a$a;
    }
.end annotation


# direct methods
.method public static a(Lcom/tencent/liteav/audio/impl/route/a$a;)I
    .locals 1

    .line 25
    sget-object v0, Lcom/tencent/liteav/audio/impl/route/a$1;->a:[I

    invoke-virtual {p0}, Lcom/tencent/liteav/audio/impl/route/a$a;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x3

    return p0
.end method
