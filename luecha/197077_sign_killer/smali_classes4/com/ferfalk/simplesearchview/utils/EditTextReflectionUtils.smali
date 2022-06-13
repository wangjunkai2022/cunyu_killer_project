.class public final Lcom/ferfalk/simplesearchview/utils/EditTextReflectionUtils;
.super Ljava/lang/Object;
.source "EditTextReflectionUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0001\u0010\r\u001a\u00020\u000eH\u0007J\u0018\u0010\u000f\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u000eH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\n \u0008*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/ferfalk/simplesearchview/utils/EditTextReflectionUtils;",
        "",
        "()V",
        "EDIT_TEXT_FIELD_CURSOR_DRAWABLE",
        "",
        "EDIT_TEXT_FIELD_CURSOR_DRAWABLE_RES",
        "EDIT_TEXT_FIELD_EDITOR",
        "TAG",
        "kotlin.jvm.PlatformType",
        "setCursorColor",
        "",
        "editText",
        "Landroid/widget/EditText;",
        "color",
        "",
        "setCursorDrawable",
        "drawable",
        "simplesearchview_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field private static final EDIT_TEXT_FIELD_CURSOR_DRAWABLE:Ljava/lang/String; = "mCursorDrawable"

.field private static final EDIT_TEXT_FIELD_CURSOR_DRAWABLE_RES:Ljava/lang/String; = "mCursorDrawableRes"

.field private static final EDIT_TEXT_FIELD_EDITOR:Ljava/lang/String; = "mEditor"

.field public static final INSTANCE:Lcom/ferfalk/simplesearchview/utils/EditTextReflectionUtils;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lcom/ferfalk/simplesearchview/utils/EditTextReflectionUtils;

    invoke-direct {v0}, Lcom/ferfalk/simplesearchview/utils/EditTextReflectionUtils;-><init>()V

    sput-object v0, Lcom/ferfalk/simplesearchview/utils/EditTextReflectionUtils;->INSTANCE:Lcom/ferfalk/simplesearchview/utils/EditTextReflectionUtils;

    .line 17
    const-class v0, Lcom/ferfalk/simplesearchview/utils/EditTextReflectionUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ferfalk/simplesearchview/utils/EditTextReflectionUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final setCursorColor(Landroid/widget/EditText;I)V
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "field"

    const-string v1, "editText"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    :try_start_0
    const-class v1, Landroid/widget/TextView;

    const-string v2, "mCursorDrawableRes"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 45
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 46
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 49
    const-class v3, Landroid/widget/TextView;

    const-string v4, "mEditor"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 50
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 51
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 54
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 55
    sget-object v1, Landroidx/core/graphics/BlendModeCompat;->SRC_IN:Landroidx/core/graphics/BlendModeCompat;

    invoke-static {p1, v1}, Landroidx/core/graphics/BlendModeColorFilterCompat;->createBlendModeColorFilterCompat(ILandroidx/core/graphics/BlendModeCompat;)Landroid/graphics/ColorFilter;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    const/4 p1, 0x2

    new-array p1, p1, [Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aput-object p0, p1, v1

    aput-object p0, p1, v2

    .line 59
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v1, "mCursorDrawable"

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 60
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 61
    invoke-virtual {p0, v3, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 63
    sget-object p1, Lcom/ferfalk/simplesearchview/utils/EditTextReflectionUtils;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    check-cast p0, Ljava/lang/Throwable;

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static final setCursorDrawable(Landroid/widget/EditText;I)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "editText"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    :try_start_0
    const-class v0, Landroid/widget/TextView;

    const-string v1, "mCursorDrawableRes"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const-string v1, "f"

    .line 30
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 31
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 33
    sget-object p1, Lcom/ferfalk/simplesearchview/utils/EditTextReflectionUtils;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    check-cast p0, Ljava/lang/Throwable;

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
