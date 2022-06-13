.class public final Ltop/kikt/flutter_image_editor/option/ClipOption;
.super Ljava/lang/Object;
.source "ClipOption.kt"

# interfaces
.implements Ltop/kikt/flutter_image_editor/option/Option;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J1\u0010\u0011\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u00d6\u0003J\t\u0010\u0016\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001R\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\t\u00a8\u0006\u0019"
    }
    d2 = {
        "Ltop/kikt/flutter_image_editor/option/ClipOption;",
        "Ltop/kikt/flutter_image_editor/option/Option;",
        "x",
        "",
        "y",
        "width",
        "height",
        "(IIII)V",
        "getHeight",
        "()I",
        "getWidth",
        "getX",
        "getY",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "",
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
.field private final height:I

.field private final width:I

.field private final x:I

.field private final y:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ltop/kikt/flutter_image_editor/option/ClipOption;->x:I

    iput p2, p0, Ltop/kikt/flutter_image_editor/option/ClipOption;->y:I

    iput p3, p0, Ltop/kikt/flutter_image_editor/option/ClipOption;->width:I

    iput p4, p0, Ltop/kikt/flutter_image_editor/option/ClipOption;->height:I

    return-void
.end method

.method public static synthetic copy$default(Ltop/kikt/flutter_image_editor/option/ClipOption;IIIIILjava/lang/Object;)Ltop/kikt/flutter_image_editor/option/ClipOption;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Ltop/kikt/flutter_image_editor/option/ClipOption;->x:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Ltop/kikt/flutter_image_editor/option/ClipOption;->y:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Ltop/kikt/flutter_image_editor/option/ClipOption;->width:I

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Ltop/kikt/flutter_image_editor/option/ClipOption;->height:I

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Ltop/kikt/flutter_image_editor/option/ClipOption;->copy(IIII)Ltop/kikt/flutter_image_editor/option/ClipOption;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public canIgnore()Z
    .locals 1

    .line 3
    move-object v0, p0

    check-cast v0, Ltop/kikt/flutter_image_editor/option/Option;

    invoke-static {v0}, Ltop/kikt/flutter_image_editor/option/Option$DefaultImpls;->canIgnore(Ltop/kikt/flutter_image_editor/option/Option;)Z

    move-result v0

    return v0
.end method

.method public final component1()I
    .locals 1

    iget v0, p0, Ltop/kikt/flutter_image_editor/option/ClipOption;->x:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Ltop/kikt/flutter_image_editor/option/ClipOption;->y:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Ltop/kikt/flutter_image_editor/option/ClipOption;->width:I

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Ltop/kikt/flutter_image_editor/option/ClipOption;->height:I

    return v0
.end method

.method public final copy(IIII)Ltop/kikt/flutter_image_editor/option/ClipOption;
    .locals 1

    new-instance v0, Ltop/kikt/flutter_image_editor/option/ClipOption;

    invoke-direct {v0, p1, p2, p3, p4}, Ltop/kikt/flutter_image_editor/option/ClipOption;-><init>(IIII)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ltop/kikt/flutter_image_editor/option/ClipOption;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ltop/kikt/flutter_image_editor/option/ClipOption;

    iget v1, p0, Ltop/kikt/flutter_image_editor/option/ClipOption;->x:I

    iget v3, p1, Ltop/kikt/flutter_image_editor/option/ClipOption;->x:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Ltop/kikt/flutter_image_editor/option/ClipOption;->y:I

    iget v3, p1, Ltop/kikt/flutter_image_editor/option/ClipOption;->y:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Ltop/kikt/flutter_image_editor/option/ClipOption;->width:I

    iget v3, p1, Ltop/kikt/flutter_image_editor/option/ClipOption;->width:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Ltop/kikt/flutter_image_editor/option/ClipOption;->height:I

    iget p1, p1, Ltop/kikt/flutter_image_editor/option/ClipOption;->height:I

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getHeight()I
    .locals 1

    .line 3
    iget v0, p0, Ltop/kikt/flutter_image_editor/option/ClipOption;->height:I

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .line 3
    iget v0, p0, Ltop/kikt/flutter_image_editor/option/ClipOption;->width:I

    return v0
.end method

.method public final getX()I
    .locals 1

    .line 3
    iget v0, p0, Ltop/kikt/flutter_image_editor/option/ClipOption;->x:I

    return v0
.end method

.method public final getY()I
    .locals 1

    .line 3
    iget v0, p0, Ltop/kikt/flutter_image_editor/option/ClipOption;->y:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Ltop/kikt/flutter_image_editor/option/ClipOption;->x:I

    invoke-static {v0}, L$r8$java8methods$utility$Integer$hashCode$II;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Ltop/kikt/flutter_image_editor/option/ClipOption;->y:I

    invoke-static {v1}, L$r8$java8methods$utility$Integer$hashCode$II;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Ltop/kikt/flutter_image_editor/option/ClipOption;->width:I

    invoke-static {v1}, L$r8$java8methods$utility$Integer$hashCode$II;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Ltop/kikt/flutter_image_editor/option/ClipOption;->height:I

    invoke-static {v1}, L$r8$java8methods$utility$Integer$hashCode$II;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClipOption(x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ltop/kikt/flutter_image_editor/option/ClipOption;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ltop/kikt/flutter_image_editor/option/ClipOption;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ltop/kikt/flutter_image_editor/option/ClipOption;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ltop/kikt/flutter_image_editor/option/ClipOption;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
