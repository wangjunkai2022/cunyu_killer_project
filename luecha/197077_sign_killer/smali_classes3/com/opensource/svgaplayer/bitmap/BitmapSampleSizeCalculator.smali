.class public final Lcom/opensource/svgaplayer/bitmap/BitmapSampleSizeCalculator;
.super Ljava/lang/Object;
.source "BitmapSampleSizeCalculator.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBitmapSampleSizeCalculator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BitmapSampleSizeCalculator.kt\ncom/opensource/svgaplayer/bitmap/BitmapSampleSizeCalculator\n*L\n1#1,33:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0004\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/opensource/svgaplayer/bitmap/BitmapSampleSizeCalculator;",
        "",
        "()V",
        "calculate",
        "",
        "options",
        "Landroid/graphics/BitmapFactory$Options;",
        "reqWidth",
        "reqHeight",
        "com.opensource.svgaplayer"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/opensource/svgaplayer/bitmap/BitmapSampleSizeCalculator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lcom/opensource/svgaplayer/bitmap/BitmapSampleSizeCalculator;

    invoke-direct {v0}, Lcom/opensource/svgaplayer/bitmap/BitmapSampleSizeCalculator;-><init>()V

    sput-object v0, Lcom/opensource/svgaplayer/bitmap/BitmapSampleSizeCalculator;->INSTANCE:Lcom/opensource/svgaplayer/bitmap/BitmapSampleSizeCalculator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final calculate(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget p1, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    const/4 v1, 0x1

    if-lez p3, :cond_2

    if-gtz p2, :cond_0

    goto :goto_1

    :cond_0
    if-gt v0, p3, :cond_1

    if-le p1, p2, :cond_2

    .line 21
    :cond_1
    div-int/lit8 v0, v0, 0x2

    .line 22
    div-int/lit8 p1, p1, 0x2

    .line 26
    :goto_0
    div-int v2, v0, v1

    if-lt v2, p3, :cond_2

    div-int v2, p1, v1

    if-lt v2, p2, :cond_2

    mul-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method
