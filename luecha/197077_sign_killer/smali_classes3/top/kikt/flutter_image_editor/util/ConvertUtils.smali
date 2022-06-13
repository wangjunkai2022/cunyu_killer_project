.class public final Ltop/kikt/flutter_image_editor/util/ConvertUtils;
.super Ljava/lang/Object;
.source "ConvertUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConvertUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConvertUtils.kt\ntop/kikt/flutter_image_editor/util/ConvertUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,193:1\n1547#2:194\n1618#2,3:195\n*S KotlinDebug\n*F\n+ 1 ConvertUtils.kt\ntop/kikt/flutter_image_editor/util/ConvertUtils\n*L\n131#1:194\n131#1:195,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\"\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u0008J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cJ\u0018\u0010\r\u001a\u00020\u000e2\u000e\u0010\u000f\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0010H\u0002J\u0012\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0001H\u0002J\u0012\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0001H\u0002J\u0012\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0001H\u0002J\u000e\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bJ\u0012\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0001H\u0002J\u0014\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0001H\u0002J\u0014\u0010 \u001a\u0004\u0018\u00010!2\u0008\u0010\"\u001a\u0004\u0018\u00010\u0001H\u0002J\u0015\u0010#\u001a\u0002H$\"\u0004\u0008\u0000\u0010$*\u00020\u0001\u00a2\u0006\u0002\u0010%\u00a8\u0006&"
    }
    d2 = {
        "Ltop/kikt/flutter_image_editor/util/ConvertUtils;",
        "",
        "()V",
        "convertMapOption",
        "",
        "Ltop/kikt/flutter_image_editor/option/Option;",
        "optionList",
        "bitmapWrapper",
        "Ltop/kikt/flutter_image_editor/core/BitmapWrapper;",
        "convertToPorterDuffMode",
        "Landroid/graphics/PorterDuff$Mode;",
        "type",
        "",
        "convertToText",
        "Ltop/kikt/flutter_image_editor/option/Text;",
        "v",
        "",
        "getClipOption",
        "Ltop/kikt/flutter_image_editor/option/ClipOption;",
        "optionMap",
        "getColorOption",
        "Ltop/kikt/flutter_image_editor/option/ColorOption;",
        "getFlipOption",
        "Ltop/kikt/flutter_image_editor/option/FlipOption;",
        "getFormatOption",
        "Ltop/kikt/flutter_image_editor/option/FormatOption;",
        "call",
        "Lio/flutter/plugin/common/MethodCall;",
        "getRotateOption",
        "Ltop/kikt/flutter_image_editor/option/RotateOption;",
        "getScaleOption",
        "Ltop/kikt/flutter_image_editor/option/ScaleOption;",
        "getTextOption",
        "Ltop/kikt/flutter_image_editor/option/AddTextOpt;",
        "valueMap",
        "asValue",
        "T",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
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


# static fields
.field public static final INSTANCE:Ltop/kikt/flutter_image_editor/util/ConvertUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltop/kikt/flutter_image_editor/util/ConvertUtils;

    invoke-direct {v0}, Ltop/kikt/flutter_image_editor/util/ConvertUtils;-><init>()V

    sput-object v0, Ltop/kikt/flutter_image_editor/util/ConvertUtils;->INSTANCE:Ltop/kikt/flutter_image_editor/util/ConvertUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final convertToText(Ljava/util/Map;)Ltop/kikt/flutter_image_editor/option/Text;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)",
            "Ltop/kikt/flutter_image_editor/option/Text;"
        }
    .end annotation

    .line 103
    new-instance v10, Ltop/kikt/flutter_image_editor/option/Text;

    const-string v0, "text"

    .line 104
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ltop/kikt/flutter_image_editor/util/ConvertUtils;->asValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    const-string v0, "x"

    .line 105
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ltop/kikt/flutter_image_editor/util/ConvertUtils;->asValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v2

    const-string v0, "y"

    .line 106
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ltop/kikt/flutter_image_editor/util/ConvertUtils;->asValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v3

    const-string v0, "size"

    .line 107
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ltop/kikt/flutter_image_editor/util/ConvertUtils;->asValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v4

    const-string v0, "r"

    .line 108
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ltop/kikt/flutter_image_editor/util/ConvertUtils;->asValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v5

    const-string v0, "g"

    .line 109
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ltop/kikt/flutter_image_editor/util/ConvertUtils;->asValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v6

    const-string v0, "b"

    .line 110
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ltop/kikt/flutter_image_editor/util/ConvertUtils;->asValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v7

    const-string v0, "a"

    .line 111
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ltop/kikt/flutter_image_editor/util/ConvertUtils;->asValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v8

    const-string v0, "fontName"

    .line 112
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Ltop/kikt/flutter_image_editor/util/ConvertUtils;->asValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v9, p1

    check-cast v9, Ljava/lang/String;

    move-object v0, v10

    .line 103
    invoke-direct/range {v0 .. v9}, Ltop/kikt/flutter_image_editor/option/Text;-><init>(Ljava/lang/String;IIIIIIILjava/lang/String;)V

    return-object v10
.end method

.method private final getClipOption(Ljava/lang/Object;)Ltop/kikt/flutter_image_editor/option/ClipOption;
    .locals 5

    .line 147
    instance-of v0, p1, Ljava/util/Map;

    if-nez v0, :cond_0

    .line 148
    new-instance p1, Ltop/kikt/flutter_image_editor/option/ClipOption;

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1, v0, v0}, Ltop/kikt/flutter_image_editor/option/ClipOption;-><init>(IIII)V

    return-object p1

    .line 150
    :cond_0
    check-cast p1, Ljava/util/Map;

    const-string v0, "width"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Number"

    if-eqz v0, :cond_4

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    const-string v2, "height"

    .line 151
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    const-string v3, "x"

    .line 152
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    const-string v4, "y"

    .line 153
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 155
    new-instance v1, Ltop/kikt/flutter_image_editor/option/ClipOption;

    invoke-direct {v1, v3, p1, v0, v2}, Ltop/kikt/flutter_image_editor/option/ClipOption;-><init>(IIII)V

    return-object v1

    .line 153
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 152
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 151
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 150
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final getColorOption(Ljava/lang/Object;)Ltop/kikt/flutter_image_editor/option/ColorOption;
    .locals 3

    .line 127
    instance-of v0, p1, Ljava/util/Map;

    if-nez v0, :cond_0

    .line 128
    sget-object p1, Ltop/kikt/flutter_image_editor/option/ColorOption;->Companion:Ltop/kikt/flutter_image_editor/option/ColorOption$Companion;

    invoke-virtual {p1}, Ltop/kikt/flutter_image_editor/option/ColorOption$Companion;->getSrc()Ltop/kikt/flutter_image_editor/option/ColorOption;

    move-result-object p1

    return-object p1

    .line 131
    :cond_0
    check-cast p1, Ljava/util/Map;

    const-string v0, "matrix"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 195
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 132
    instance-of v2, v1, Ljava/lang/Double;

    if-eqz v2, :cond_1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    double-to-float v1, v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 197
    :cond_2
    check-cast v0, Ljava/util/List;

    .line 194
    check-cast v0, Ljava/util/Collection;

    .line 133
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toFloatArray(Ljava/util/Collection;)[F

    move-result-object p1

    .line 135
    new-instance v0, Ltop/kikt/flutter_image_editor/option/ColorOption;

    invoke-direct {v0, p1}, Ltop/kikt/flutter_image_editor/option/ColorOption;-><init>([F)V

    return-object v0

    .line 131
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type kotlin.collections.List<*>"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final getFlipOption(Ljava/lang/Object;)Ltop/kikt/flutter_image_editor/option/FlipOption;
    .locals 4

    .line 159
    instance-of v0, p1, Ljava/util/Map;

    if-nez v0, :cond_0

    .line 160
    new-instance p1, Ltop/kikt/flutter_image_editor/option/FlipOption;

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p1, v2, v2, v0, v1}, Ltop/kikt/flutter_image_editor/option/FlipOption;-><init>(ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1

    .line 163
    :cond_0
    new-instance v0, Ltop/kikt/flutter_image_editor/option/FlipOption;

    check-cast p1, Ljava/util/Map;

    const-string v1, "h"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.Boolean"

    if-eqz v1, :cond_2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v3, "v"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {v0, v1, p1}, Ltop/kikt/flutter_image_editor/option/FlipOption;-><init>(ZZ)V

    return-object v0

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final getRotateOption(Ljava/lang/Object;)Ltop/kikt/flutter_image_editor/option/RotateOption;
    .locals 2

    .line 139
    instance-of v0, p1, Ljava/util/Map;

    if-nez v0, :cond_0

    .line 140
    new-instance p1, Ltop/kikt/flutter_image_editor/option/RotateOption;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ltop/kikt/flutter_image_editor/option/RotateOption;-><init>(I)V

    return-object p1

    .line 143
    :cond_0
    new-instance v0, Ltop/kikt/flutter_image_editor/option/RotateOption;

    check-cast p1, Ljava/util/Map;

    const-string v1, "degree"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {v0, p1}, Ltop/kikt/flutter_image_editor/option/RotateOption;-><init>(I)V

    return-object v0

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final getScaleOption(Ljava/lang/Object;)Ltop/kikt/flutter_image_editor/option/ScaleOption;
    .locals 3

    .line 117
    instance-of v0, p1, Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 121
    :cond_0
    check-cast p1, Ljava/util/Map;

    const-string v0, "width"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Int"

    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v2, "height"

    .line 122
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 123
    new-instance v1, Ltop/kikt/flutter_image_editor/option/ScaleOption;

    invoke-direct {v1, v0, p1}, Ltop/kikt/flutter_image_editor/option/ScaleOption;-><init>(II)V

    return-object v1

    .line 122
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 121
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final getTextOption(Ljava/lang/Object;)Ltop/kikt/flutter_image_editor/option/AddTextOpt;
    .locals 3

    .line 81
    instance-of v0, p1, Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 85
    :cond_0
    check-cast p1, Ljava/util/Map;

    const-string v0, "texts"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Ltop/kikt/flutter_image_editor/util/ConvertUtils;->asValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 87
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 91
    :cond_1
    new-instance v0, Ltop/kikt/flutter_image_editor/option/AddTextOpt;

    invoke-direct {v0}, Ltop/kikt/flutter_image_editor/option/AddTextOpt;-><init>()V

    .line 93
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 94
    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_2

    .line 95
    check-cast v1, Ljava/util/Map;

    invoke-direct {p0, v1}, Ltop/kikt/flutter_image_editor/util/ConvertUtils;->convertToText(Ljava/util/Map;)Ltop/kikt/flutter_image_editor/option/Text;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltop/kikt/flutter_image_editor/option/AddTextOpt;->addText(Ltop/kikt/flutter_image_editor/option/Text;)V

    goto :goto_0

    :cond_3
    return-object v0
.end method


# virtual methods
.method public final asValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final convertMapOption(Ljava/util/List;Ltop/kikt/flutter_image_editor/core/BitmapWrapper;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ltop/kikt/flutter_image_editor/core/BitmapWrapper;",
            ")",
            "Ljava/util/List<",
            "Ltop/kikt/flutter_image_editor/option/Option;",
            ">;"
        }
    .end annotation

    const-string v0, "optionList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmapWrapper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    invoke-virtual {p2}, Ltop/kikt/flutter_image_editor/core/BitmapWrapper;->getDegree()I

    move-result v1

    if-eqz v1, :cond_0

    .line 22
    new-instance v1, Ltop/kikt/flutter_image_editor/option/RotateOption;

    invoke-virtual {p2}, Ltop/kikt/flutter_image_editor/core/BitmapWrapper;->getDegree()I

    move-result v2

    invoke-direct {v1, v2}, Ltop/kikt/flutter_image_editor/option/RotateOption;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    :cond_0
    invoke-virtual {p2}, Ltop/kikt/flutter_image_editor/core/BitmapWrapper;->getFlipOption()Ltop/kikt/flutter_image_editor/option/FlipOption;

    move-result-object v1

    invoke-virtual {v1}, Ltop/kikt/flutter_image_editor/option/FlipOption;->canIgnore()Z

    move-result v1

    if-nez v1, :cond_1

    .line 26
    invoke-virtual {p2}, Ltop/kikt/flutter_image_editor/core/BitmapWrapper;->getFlipOption()Ltop/kikt/flutter_image_editor/option/FlipOption;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 31
    instance-of v1, p2, Ljava/util/Map;

    if-nez v1, :cond_3

    goto :goto_0

    .line 35
    :cond_3
    check-cast p2, Ljava/util/Map;

    const-string v1, "value"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 36
    instance-of v2, v1, Ljava/util/Map;

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    const-string v2, "type"

    .line 39
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const-string v2, "flip"

    .line 40
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 41
    invoke-direct {p0, v1}, Ltop/kikt/flutter_image_editor/util/ConvertUtils;->getFlipOption(Ljava/lang/Object;)Ltop/kikt/flutter_image_editor/option/FlipOption;

    move-result-object p2

    .line 42
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    const-string v2, "clip"

    .line 44
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 45
    invoke-direct {p0, v1}, Ltop/kikt/flutter_image_editor/util/ConvertUtils;->getClipOption(Ljava/lang/Object;)Ltop/kikt/flutter_image_editor/option/ClipOption;

    move-result-object p2

    .line 46
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    const-string v2, "rotate"

    .line 48
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 49
    invoke-direct {p0, v1}, Ltop/kikt/flutter_image_editor/util/ConvertUtils;->getRotateOption(Ljava/lang/Object;)Ltop/kikt/flutter_image_editor/option/RotateOption;

    move-result-object p2

    .line 50
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    const-string v2, "color"

    .line 52
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 53
    invoke-direct {p0, v1}, Ltop/kikt/flutter_image_editor/util/ConvertUtils;->getColorOption(Ljava/lang/Object;)Ltop/kikt/flutter_image_editor/option/ColorOption;

    move-result-object p2

    .line 54
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    const-string v2, "scale"

    .line 56
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 57
    invoke-direct {p0, v1}, Ltop/kikt/flutter_image_editor/util/ConvertUtils;->getScaleOption(Ljava/lang/Object;)Ltop/kikt/flutter_image_editor/option/ScaleOption;

    move-result-object p2

    if-nez p2, :cond_9

    goto :goto_0

    .line 58
    :cond_9
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_a
    const-string v2, "add_text"

    .line 60
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 61
    invoke-direct {p0, v1}, Ltop/kikt/flutter_image_editor/util/ConvertUtils;->getTextOption(Ljava/lang/Object;)Ltop/kikt/flutter_image_editor/option/AddTextOpt;

    move-result-object p2

    if-nez p2, :cond_b

    goto/16 :goto_0

    .line 62
    :cond_b
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_c
    const-string v2, "mix_image"

    .line 64
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 65
    new-instance p2, Ltop/kikt/flutter_image_editor/option/MixImageOpt;

    check-cast v1, Ljava/util/Map;

    invoke-direct {p2, v1}, Ltop/kikt/flutter_image_editor/option/MixImageOpt;-><init>(Ljava/util/Map;)V

    .line 66
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_d
    const-string v2, "draw"

    .line 68
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 69
    new-instance p2, Ltop/kikt/flutter_image_editor/option/draw/DrawOption;

    check-cast v1, Ljava/util/Map;

    invoke-direct {p2, v1}, Ltop/kikt/flutter_image_editor/option/draw/DrawOption;-><init>(Ljava/util/Map;)V

    .line 70
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 77
    :cond_e
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final convertToPorterDuffMode(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "dstOver"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 172
    :cond_0
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "dstATop"

    .line 167
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    .line 178
    :cond_1
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "multiply"

    .line 167
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    .line 182
    :cond_2
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "lighten"

    .line 167
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    .line 181
    :cond_3
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->LIGHTEN:Landroid/graphics/PorterDuff$Mode;

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "srcIn"

    .line 167
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    .line 173
    :cond_4
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "dstIn"

    .line 167
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_0

    .line 174
    :cond_5
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "clear"

    .line 167
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_0

    .line 168
    :cond_6
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "xor"

    .line 167
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_0

    .line 179
    :cond_7
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->XOR:Landroid/graphics/PorterDuff$Mode;

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "src"

    .line 167
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto/16 :goto_0

    .line 169
    :cond_8
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "dst"

    .line 167
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    .line 170
    :cond_9
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->DST:Landroid/graphics/PorterDuff$Mode;

    goto :goto_1

    :sswitch_a
    const-string v0, "srcOut"

    .line 167
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_0

    .line 175
    :cond_a
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    goto :goto_1

    :sswitch_b
    const-string v0, "screen"

    .line 167
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_0

    .line 183
    :cond_b
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_1

    :sswitch_c
    const-string v0, "overlay"

    .line 167
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_0

    .line 184
    :cond_c
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->OVERLAY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_1

    :sswitch_d
    const-string v0, "dstOut"

    .line 167
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_0

    .line 176
    :cond_d
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    goto :goto_1

    :sswitch_e
    const-string v0, "darken"

    .line 167
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_0

    .line 180
    :cond_e
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_1

    :sswitch_f
    const-string v0, "srcOver"

    .line 167
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_0

    .line 171
    :cond_f
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    goto :goto_1

    :sswitch_10
    const-string v0, "srcATop"

    .line 167
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto :goto_0

    .line 177
    :cond_10
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    goto :goto_1

    .line 185
    :goto_0
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    :goto_1
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7478fec8 -> :sswitch_10
        -0x74722328 -> :sswitch_f
        -0x4fcf0961 -> :sswitch_e
        -0x4ed0e0b7 -> :sswitch_d
        -0x410bbbb0 -> :sswitch_c
        -0x361a3f94 -> :sswitch_b
        -0x354e0136 -> :sswitch_a
        0x185c5 -> :sswitch_9
        0x1bde4 -> :sswitch_8
        0x1d05b -> :sswitch_7
        0x5a5b64d -> :sswitch_6
        0x5b731ca -> :sswitch_5
        0x689de29 -> :sswitch_4
        0xa2a543f -> :sswitch_3
        0x26f8a624 -> :sswitch_2
        0x74adf099 -> :sswitch_1
        0x74b4cc39 -> :sswitch_0
    .end sparse-switch
.end method

.method public final getFormatOption(Lio/flutter/plugin/common/MethodCall;)Ltop/kikt/flutter_image_editor/option/FormatOption;
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fmt"

    .line 15
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v0, "call.argument<Map<*, *>>(\"fmt\")!!"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/Map;

    .line 16
    new-instance v0, Ltop/kikt/flutter_image_editor/option/FormatOption;

    invoke-direct {v0, p1}, Ltop/kikt/flutter_image_editor/option/FormatOption;-><init>(Ljava/util/Map;)V

    return-object v0
.end method
