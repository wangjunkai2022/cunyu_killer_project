.class public final Ltop/kikt/flutter_image_editor/core/BitmapWrapper;
.super Ljava/lang/Object;
.source "BitmapWrapper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0007H\u00c6\u0003J\'\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0016\u001a\u00020\u0005H\u00d6\u0001J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0019"
    }
    d2 = {
        "Ltop/kikt/flutter_image_editor/core/BitmapWrapper;",
        "",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "degree",
        "",
        "flipOption",
        "Ltop/kikt/flutter_image_editor/option/FlipOption;",
        "(Landroid/graphics/Bitmap;ILtop/kikt/flutter_image_editor/option/FlipOption;)V",
        "getBitmap",
        "()Landroid/graphics/Bitmap;",
        "getDegree",
        "()I",
        "getFlipOption",
        "()Ltop/kikt/flutter_image_editor/option/FlipOption;",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
        "image_editor_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final bitmap:Landroid/graphics/Bitmap;

.field private final degree:I

.field private final flipOption:Ltop/kikt/flutter_image_editor/option/FlipOption;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;ILtop/kikt/flutter_image_editor/option/FlipOption;)V
    .locals 1

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flipOption"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltop/kikt/flutter_image_editor/core/BitmapWrapper;->bitmap:Landroid/graphics/Bitmap;

    iput p2, p0, Ltop/kikt/flutter_image_editor/core/BitmapWrapper;->degree:I

    iput-object p3, p0, Ltop/kikt/flutter_image_editor/core/BitmapWrapper;->flipOption:Ltop/kikt/flutter_image_editor/option/FlipOption;

    return-void
.end method

.method public static synthetic copy$default(Ltop/kikt/flutter_image_editor/core/BitmapWrapper;Landroid/graphics/Bitmap;ILtop/kikt/flutter_image_editor/option/FlipOption;ILjava/lang/Object;)Ltop/kikt/flutter_image_editor/core/BitmapWrapper;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Ltop/kikt/flutter_image_editor/core/BitmapWrapper;->bitmap:Landroid/graphics/Bitmap;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Ltop/kikt/flutter_image_editor/core/BitmapWrapper;->degree:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Ltop/kikt/flutter_image_editor/core/BitmapWrapper;->flipOption:Ltop/kikt/flutter_image_editor/option/FlipOption;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Ltop/kikt/flutter_image_editor/core/BitmapWrapper;->copy(Landroid/graphics/Bitmap;ILtop/kikt/flutter_image_editor/option/FlipOption;)Ltop/kikt/flutter_image_editor/core/BitmapWrapper;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Ltop/kikt/flutter_image_editor/core/BitmapWrapper;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Ltop/kikt/flutter_image_editor/core/BitmapWrapper;->degree:I

    return v0
.end method

.method public final component3()Ltop/kikt/flutter_image_editor/option/FlipOption;
    .locals 1

    iget-object v0, p0, Ltop/kikt/flutter_image_editor/core/BitmapWrapper;->flipOption:Ltop/kikt/flutter_image_editor/option/FlipOption;

    return-object v0
.end method

.method public final copy(Landroid/graphics/Bitmap;ILtop/kikt/flutter_image_editor/option/FlipOption;)Ltop/kikt/flutter_image_editor/core/BitmapWrapper;
    .locals 1

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flipOption"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ltop/kikt/flutter_image_editor/core/BitmapWrapper;

    invoke-direct {v0, p1, p2, p3}, Ltop/kikt/flutter_image_editor/core/BitmapWrapper;-><init>(Landroid/graphics/Bitmap;ILtop/kikt/flutter_image_editor/option/FlipOption;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ltop/kikt/flutter_image_editor/core/BitmapWrapper;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ltop/kikt/flutter_image_editor/core/BitmapWrapper;

    iget-object v1, p0, Ltop/kikt/flutter_image_editor/core/BitmapWrapper;->bitmap:Landroid/graphics/Bitmap;

    iget-object v3, p1, Ltop/kikt/flutter_image_editor/core/BitmapWrapper;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Ltop/kikt/flutter_image_editor/core/BitmapWrapper;->degree:I

    iget v3, p1, Ltop/kikt/flutter_image_editor/core/BitmapWrapper;->degree:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Ltop/kikt/flutter_image_editor/core/BitmapWrapper;->flipOption:Ltop/kikt/flutter_image_editor/option/FlipOption;

    iget-object p1, p1, Ltop/kikt/flutter_image_editor/core/BitmapWrapper;->flipOption:Ltop/kikt/flutter_image_editor/option/FlipOption;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 6
    iget-object v0, p0, Ltop/kikt/flutter_image_editor/core/BitmapWrapper;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final getDegree()I
    .locals 1

    .line 6
    iget v0, p0, Ltop/kikt/flutter_image_editor/core/BitmapWrapper;->degree:I

    return v0
.end method

.method public final getFlipOption()Ltop/kikt/flutter_image_editor/option/FlipOption;
    .locals 1

    .line 6
    iget-object v0, p0, Ltop/kikt/flutter_image_editor/core/BitmapWrapper;->flipOption:Ltop/kikt/flutter_image_editor/option/FlipOption;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Ltop/kikt/flutter_image_editor/core/BitmapWrapper;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Ltop/kikt/flutter_image_editor/core/BitmapWrapper;->degree:I

    invoke-static {v1}, L$r8$java8methods$utility$Integer$hashCode$II;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ltop/kikt/flutter_image_editor/core/BitmapWrapper;->flipOption:Ltop/kikt/flutter_image_editor/option/FlipOption;

    invoke-virtual {v1}, Ltop/kikt/flutter_image_editor/option/FlipOption;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BitmapWrapper(bitmap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltop/kikt/flutter_image_editor/core/BitmapWrapper;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", degree="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ltop/kikt/flutter_image_editor/core/BitmapWrapper;->degree:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", flipOption="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltop/kikt/flutter_image_editor/core/BitmapWrapper;->flipOption:Ltop/kikt/flutter_image_editor/option/FlipOption;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
