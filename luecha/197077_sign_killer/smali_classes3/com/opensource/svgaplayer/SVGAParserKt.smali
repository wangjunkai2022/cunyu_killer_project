.class public final Lcom/opensource/svgaplayer/SVGAParserKt;
.super Ljava/lang/Object;
.source "SVGAParser.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0004"
    }
    d2 = {
        "fileLock",
        "",
        "isUnzipping",
        "",
        "com.opensource.svgaplayer"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field private static fileLock:I

.field private static isUnzipping:Z


# direct methods
.method public static final synthetic access$getFileLock$p()I
    .locals 1

    .line 1
    sget v0, Lcom/opensource/svgaplayer/SVGAParserKt;->fileLock:I

    return v0
.end method

.method public static final synthetic access$isUnzipping$p()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/opensource/svgaplayer/SVGAParserKt;->isUnzipping:Z

    return v0
.end method

.method public static final synthetic access$setFileLock$p(I)V
    .locals 0

    .line 1
    sput p0, Lcom/opensource/svgaplayer/SVGAParserKt;->fileLock:I

    return-void
.end method

.method public static final synthetic access$setUnzipping$p(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/opensource/svgaplayer/SVGAParserKt;->isUnzipping:Z

    return-void
.end method
