.class public final Lcom/ferfalk/simplesearchview/SimpleSearchView;
.super Landroid/widget/FrameLayout;
.source "SimpleSearchView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ferfalk/simplesearchview/SimpleSearchView$Style;,
        Lcom/ferfalk/simplesearchview/SimpleSearchView$SavedState;,
        Lcom/ferfalk/simplesearchview/SimpleSearchView$OnQueryTextListener;,
        Lcom/ferfalk/simplesearchview/SimpleSearchView$SearchViewListener;,
        Lcom/ferfalk/simplesearchview/SimpleSearchView$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u009a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0015\u0018\u0000 |2\u00020\u0001:\u0006|}~\u007f\u0080\u0001B%\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u00108\u001a\u000209H\u0016J\u000f\u0010:\u001a\u0004\u0018\u00010\nH\u0002\u00a2\u0006\u0002\u0010;J\u0019\u0010<\u001a\u0004\u0018\u0001092\u0008\u0008\u0002\u0010=\u001a\u00020\nH\u0007\u00a2\u0006\u0002\u0010>J\u000e\u0010?\u001a\u0002092\u0006\u0010@\u001a\u00020\nJ\u0012\u0010A\u001a\u0002092\u0008\u0008\u0002\u0010=\u001a\u00020\nH\u0007J\u0008\u0010B\u001a\u000209H\u0002J\u0008\u0010C\u001a\u000209H\u0002J\u001a\u0010D\u001a\u0002092\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0002J*\u0010E\u001a\u00020\n2\u0006\u0010F\u001a\u00020\u00072\u0006\u0010G\u001a\u00020\u00072\u0006\u0010H\u001a\u00020I2\u0008\u0008\u0002\u0010J\u001a\u00020\nH\u0007J\u0006\u0010K\u001a\u00020\nJ\u0010\u0010L\u001a\u0002092\u0006\u0010M\u001a\u00020NH\u0016J\u0008\u0010O\u001a\u00020NH\u0016J\u0008\u0010P\u001a\u000209H\u0002J\u0010\u0010Q\u001a\u0002092\u0006\u0010R\u001a\u00020!H\u0002J\u001a\u0010S\u001a\u00020\n2\u0006\u0010T\u001a\u00020\u00072\u0008\u0010U\u001a\u0004\u0018\u00010VH\u0016J\u000e\u0010W\u001a\u0002092\u0006\u0010X\u001a\u00020YJ\u0010\u0010Z\u001a\u0002092\u0008\u0008\u0001\u0010[\u001a\u00020\u0007J\u0010\u0010\\\u001a\u0002092\u0008\u0010]\u001a\u0004\u0018\u00010^J\u0010\u0010_\u001a\u0002092\u0008\u0010]\u001a\u0004\u0018\u00010^J\u0010\u0010`\u001a\u0002092\u0008\u0008\u0001\u0010[\u001a\u00020\u0007J\u0010\u0010a\u001a\u0002092\u0008\u0008\u0001\u0010]\u001a\u00020\u0007J\u0010\u0010b\u001a\u0002092\u0008\u0010c\u001a\u0004\u0018\u00010!J\u0010\u0010d\u001a\u0002092\u0008\u0008\u0001\u0010[\u001a\u00020\u0007J\u000e\u0010e\u001a\u0002092\u0006\u0010X\u001a\u00020YJ\u0010\u0010f\u001a\u0002092\u0008\u0008\u0001\u0010[\u001a\u00020\u0007J\u000e\u0010g\u001a\u0002092\u0006\u0010h\u001a\u00020\u0007J\u000e\u0010i\u001a\u0002092\u0006\u0010\u001f\u001a\u00020\nJ\u000e\u0010j\u001a\u0002092\u0006\u0010k\u001a\u00020lJ\u0010\u0010m\u001a\u0002092\u0008\u0010n\u001a\u0004\u0018\u00010#J\u0010\u0010o\u001a\u0002092\u0008\u0010n\u001a\u0004\u0018\u00010-J\u0018\u0010p\u001a\u0002092\u0008\u0010q\u001a\u0004\u0018\u00010!2\u0006\u0010J\u001a\u00020\nJ\u0010\u0010r\u001a\u0002092\u0008\u0010s\u001a\u0004\u0018\u00010^J\u000e\u0010t\u001a\u0002092\u0006\u00102\u001a\u000201J\u0010\u0010u\u001a\u0002092\u0008\u0008\u0001\u0010[\u001a\u00020\u0007J\u0010\u0010v\u001a\u0002092\u0008\u0010]\u001a\u0004\u0018\u00010^J\u0010\u0010w\u001a\u0002092\u0008\u00106\u001a\u0004\u0018\u000107J\u0019\u0010x\u001a\u0004\u0018\u0001092\u0008\u0008\u0002\u0010=\u001a\u00020\nH\u0007\u00a2\u0006\u0002\u0010>J\u0012\u0010y\u001a\u0002092\u0008\u0008\u0002\u0010=\u001a\u00020\nH\u0007J\u000e\u0010z\u001a\u0002092\u0006\u0010{\u001a\u00020\nJ\u0008\u0010@\u001a\u000209H\u0002R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u00078F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0014\u0010\r\"\u0004\u0008\u0015\u0010\u000fR\u0014\u0010\u0016\u001a\u00020\u00178BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019R\u000e\u0010\u001a\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u001c\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\n@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u0014\u0010\u001e\u001a\u00020\n8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u001dR\u000e\u0010\u001f\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010 \u001a\u0004\u0018\u00010!X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\"\u001a\u0004\u0018\u00010#X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010$\u001a\u0004\u0018\u00010!X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010%\u001a\u0004\u0018\u00010&8FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*R\u000e\u0010+\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010,\u001a\u0004\u0018\u00010-X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010.\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008/\u00100R\"\u00102\u001a\u0004\u0018\u0001012\u0008\u0010\u001b\u001a\u0004\u0018\u000101@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00083\u00104R\u000e\u00105\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00106\u001a\u0004\u0018\u000107X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0081\u0001"
    }
    d2 = {
        "Lcom/ferfalk/simplesearchview/SimpleSearchView;",
        "Landroid/widget/FrameLayout;",
        "creationContext",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "allowVoiceSearch",
        "",
        "animationDuration",
        "getAnimationDuration",
        "()I",
        "setAnimationDuration",
        "(I)V",
        "binding",
        "Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;",
        "value",
        "cardStyle",
        "getCardStyle",
        "setCardStyle",
        "cardStyleBackground",
        "Landroid/graphics/drawable/GradientDrawable;",
        "getCardStyleBackground",
        "()Landroid/graphics/drawable/GradientDrawable;",
        "isClearingFocus",
        "<set-?>",
        "isSearchOpen",
        "()Z",
        "isVoiceAvailable",
        "keepQuery",
        "oldQuery",
        "",
        "onQueryChangeListener",
        "Lcom/ferfalk/simplesearchview/SimpleSearchView$OnQueryTextListener;",
        "query",
        "revealAnimationCenter",
        "Landroid/graphics/Point;",
        "getRevealAnimationCenter",
        "()Landroid/graphics/Point;",
        "setRevealAnimationCenter",
        "(Landroid/graphics/Point;)V",
        "searchIsClosing",
        "searchViewListener",
        "Lcom/ferfalk/simplesearchview/SimpleSearchView$SearchViewListener;",
        "style",
        "getStyle$annotations",
        "()V",
        "Lcom/google/android/material/tabs/TabLayout;",
        "tabLayout",
        "getTabLayout",
        "()Lcom/google/android/material/tabs/TabLayout;",
        "tabLayoutInitialHeight",
        "voiceSearchPrompt",
        "",
        "clearFocus",
        "",
        "clearSearch",
        "()Ljava/lang/Boolean;",
        "closeSearch",
        "animate",
        "(Z)Lkotlin/Unit;",
        "enableVoiceSearch",
        "voiceSearch",
        "hideTabLayout",
        "initClickListeners",
        "initSearchEditText",
        "initStyle",
        "onActivityResult",
        "requestCode",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "submit",
        "onBackPressed",
        "onRestoreInstanceState",
        "state",
        "Landroid/os/Parcelable;",
        "onSaveInstanceState",
        "onSubmitQuery",
        "onTextChanged",
        "newText",
        "requestFocus",
        "direction",
        "previouslyFocusedRect",
        "Landroid/graphics/Rect;",
        "setBackIconAlpha",
        "alpha",
        "",
        "setBackIconColor",
        "color",
        "setBackIconDrawable",
        "drawable",
        "Landroid/graphics/drawable/Drawable;",
        "setClearIconDrawable",
        "setCursorColor",
        "setCursorDrawable",
        "setHint",
        "hint",
        "setHintTextColor",
        "setIconsAlpha",
        "setIconsColor",
        "setInputType",
        "inputType",
        "setKeepQuery",
        "setMenuItem",
        "menuItem",
        "Landroid/view/MenuItem;",
        "setOnQueryTextListener",
        "listener",
        "setOnSearchViewListener",
        "setQuery",
        "sequence",
        "setSearchBackground",
        "background",
        "setTabLayout",
        "setTextColor",
        "setVoiceIconDrawable",
        "setVoiceSearchPrompt",
        "showSearch",
        "showTabLayout",
        "showVoice",
        "show",
        "Companion",
        "OnQueryTextListener",
        "SavedState",
        "SearchViewListener",
        "Style",
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
.field public static final ANIMATION_CENTER_PADDING:I = 0x1a

.field private static final BACK_ICON_ALPHA_DEFAULT:F = 0.87f

.field public static final CARD_CORNER_RADIUS:I = 0x4

.field private static final CARD_ELEVATION:I = 0x2

.field private static final CARD_PADDING:I = 0x6

.field public static final Companion:Lcom/ferfalk/simplesearchview/SimpleSearchView$Companion;

.field private static final ICONS_ALPHA_DEFAULT:F = 0.54f

.field public static final REQUEST_VOICE_SEARCH:I = 0x2df

.field public static final STYLE_BAR:I = 0x0

.field public static final STYLE_CARD:I = 0x1


# instance fields
.field private allowVoiceSearch:Z

.field private animationDuration:I

.field private final binding:Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;

.field private isClearingFocus:Z

.field private isSearchOpen:Z

.field private keepQuery:Z

.field private oldQuery:Ljava/lang/CharSequence;

.field private onQueryChangeListener:Lcom/ferfalk/simplesearchview/SimpleSearchView$OnQueryTextListener;

.field private query:Ljava/lang/CharSequence;

.field private revealAnimationCenter:Landroid/graphics/Point;

.field private searchIsClosing:Z

.field private searchViewListener:Lcom/ferfalk/simplesearchview/SimpleSearchView$SearchViewListener;

.field private style:I

.field private tabLayout:Lcom/google/android/material/tabs/TabLayout;

.field private tabLayoutInitialHeight:I

.field private voiceSearchPrompt:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/ferfalk/simplesearchview/SimpleSearchView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ferfalk/simplesearchview/SimpleSearchView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->Companion:Lcom/ferfalk/simplesearchview/SimpleSearchView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/ferfalk/simplesearchview/SimpleSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/ferfalk/simplesearchview/SimpleSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const-string v0, "creationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0xfa

    .line 57
    iput p1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->animationDuration:I

    const-string p1, ""

    .line 81
    iput-object p1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->voiceSearchPrompt:Ljava/lang/String;

    .line 97
    invoke-virtual {p0}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;

    move-result-object p1

    const-string v0, "SearchViewBinding.inflat\u2026rom(context), this, true)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->binding:Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;

    .line 719
    invoke-direct {p0, p2, p3}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->initStyle(Landroid/util/AttributeSet;I)V

    .line 720
    invoke-direct {p0}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->initSearchEditText()V

    .line 721
    invoke-direct {p0}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->initClickListeners()V

    .line 722
    invoke-virtual {p0, v1}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->showVoice(Z)V

    .line 723
    invoke-virtual {p0}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x4

    .line 724
    invoke-virtual {p0, p1}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 48
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/ferfalk/simplesearchview/SimpleSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$clearSearch(Lcom/ferfalk/simplesearchview/SimpleSearchView;)Ljava/lang/Boolean;
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->clearSearch()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSearchIsClosing$p(Lcom/ferfalk/simplesearchview/SimpleSearchView;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->searchIsClosing:Z

    return p0
.end method

.method public static final synthetic access$getSearchViewListener$p(Lcom/ferfalk/simplesearchview/SimpleSearchView;)Lcom/ferfalk/simplesearchview/SimpleSearchView$SearchViewListener;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->searchViewListener:Lcom/ferfalk/simplesearchview/SimpleSearchView$SearchViewListener;

    return-object p0
.end method

.method public static final synthetic access$getTabLayoutInitialHeight$p(Lcom/ferfalk/simplesearchview/SimpleSearchView;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->tabLayoutInitialHeight:I

    return p0
.end method

.method public static final synthetic access$onSubmitQuery(Lcom/ferfalk/simplesearchview/SimpleSearchView;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->onSubmitQuery()V

    return-void
.end method

.method public static final synthetic access$onTextChanged(Lcom/ferfalk/simplesearchview/SimpleSearchView;Ljava/lang/CharSequence;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->onTextChanged(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static final synthetic access$setSearchIsClosing$p(Lcom/ferfalk/simplesearchview/SimpleSearchView;Z)V
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->searchIsClosing:Z

    return-void
.end method

.method public static final synthetic access$setSearchViewListener$p(Lcom/ferfalk/simplesearchview/SimpleSearchView;Lcom/ferfalk/simplesearchview/SimpleSearchView$SearchViewListener;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->searchViewListener:Lcom/ferfalk/simplesearchview/SimpleSearchView$SearchViewListener;

    return-void
.end method

.method public static final synthetic access$setTabLayoutInitialHeight$p(Lcom/ferfalk/simplesearchview/SimpleSearchView;I)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->tabLayoutInitialHeight:I

    return-void
.end method

.method public static final synthetic access$voiceSearch(Lcom/ferfalk/simplesearchview/SimpleSearchView;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->voiceSearch()V

    return-void
.end method

.method private final clearSearch()Ljava/lang/Boolean;
    .locals 3

    .line 231
    iget-object v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->binding:Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;

    .line 232
    iget-object v0, v0, Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;->searchEditText:Landroid/widget/EditText;

    const-string v1, "searchEditText"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget-object v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->onQueryChangeListener:Lcom/ferfalk/simplesearchview/SimpleSearchView$OnQueryTextListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ferfalk/simplesearchview/SimpleSearchView$OnQueryTextListener;->onQueryTextCleared()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public static synthetic closeSearch$default(Lcom/ferfalk/simplesearchview/SimpleSearchView;ZILjava/lang/Object;)Lkotlin/Unit;
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 316
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->closeSearch(Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final getCardStyleBackground()Landroid/graphics/drawable/GradientDrawable;
    .locals 3

    .line 469
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, -0x1

    .line 470
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 471
    invoke-virtual {p0}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/ferfalk/simplesearchview/utils/DimensUtils;->convertDpToPx(ILandroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-object v0
.end method

.method private static synthetic getStyle$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic hideTabLayout$default(Lcom/ferfalk/simplesearchview/SimpleSearchView;ZILjava/lang/Object;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 381
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->hideTabLayout(Z)V

    return-void
.end method

.method private final initClickListeners()V
    .locals 3

    .line 171
    iget-object v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->binding:Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;

    .line 172
    iget-object v1, v0, Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;->backButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/ferfalk/simplesearchview/SimpleSearchView$initClickListeners$$inlined$with$lambda$1;

    invoke-direct {v2, p0}, Lcom/ferfalk/simplesearchview/SimpleSearchView$initClickListeners$$inlined$with$lambda$1;-><init>(Lcom/ferfalk/simplesearchview/SimpleSearchView;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v1, v0, Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;->clearButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/ferfalk/simplesearchview/SimpleSearchView$initClickListeners$$inlined$with$lambda$2;

    invoke-direct {v2, p0}, Lcom/ferfalk/simplesearchview/SimpleSearchView$initClickListeners$$inlined$with$lambda$2;-><init>(Lcom/ferfalk/simplesearchview/SimpleSearchView;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v0, v0, Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;->voiceButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/ferfalk/simplesearchview/SimpleSearchView$initClickListeners$$inlined$with$lambda$3;

    invoke-direct {v1, p0}, Lcom/ferfalk/simplesearchview/SimpleSearchView$initClickListeners$$inlined$with$lambda$3;-><init>(Lcom/ferfalk/simplesearchview/SimpleSearchView;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final initSearchEditText()V
    .locals 3

    .line 152
    iget-object v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->binding:Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;

    .line 153
    iget-object v1, v0, Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;->searchEditText:Landroid/widget/EditText;

    new-instance v2, Lcom/ferfalk/simplesearchview/SimpleSearchView$initSearchEditText$$inlined$with$lambda$1;

    invoke-direct {v2, p0}, Lcom/ferfalk/simplesearchview/SimpleSearchView$initSearchEditText$$inlined$with$lambda$1;-><init>(Lcom/ferfalk/simplesearchview/SimpleSearchView;)V

    check-cast v2, Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 157
    iget-object v1, v0, Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;->searchEditText:Landroid/widget/EditText;

    new-instance v2, Lcom/ferfalk/simplesearchview/SimpleSearchView$initSearchEditText$$inlined$with$lambda$2;

    invoke-direct {v2, p0}, Lcom/ferfalk/simplesearchview/SimpleSearchView$initSearchEditText$$inlined$with$lambda$2;-><init>(Lcom/ferfalk/simplesearchview/SimpleSearchView;)V

    check-cast v2, Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 164
    iget-object v1, v0, Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;->searchEditText:Landroid/widget/EditText;

    const-string v2, "searchEditText"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/ferfalk/simplesearchview/SimpleSearchView$initSearchEditText$1$3;

    invoke-direct {v2, v0}, Lcom/ferfalk/simplesearchview/SimpleSearchView$initSearchEditText$1$3;-><init>(Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;)V

    check-cast v2, Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method private final initStyle(Landroid/util/AttributeSet;I)V
    .locals 3

    .line 100
    invoke-virtual {p0}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/ferfalk/simplesearchview/R$styleable;->SimpleSearchView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "context.obtainStyledAttr\u2026rchView, defStyleAttr, 0)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    sget p2, Lcom/ferfalk/simplesearchview/R$styleable;->SimpleSearchView_type:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 102
    sget p2, Lcom/ferfalk/simplesearchview/R$styleable;->SimpleSearchView_type:I

    iget v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->style:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->setCardStyle(I)V

    .line 104
    :cond_0
    sget p2, Lcom/ferfalk/simplesearchview/R$styleable;->SimpleSearchView_backIconAlpha:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 105
    sget p2, Lcom/ferfalk/simplesearchview/R$styleable;->SimpleSearchView_backIconAlpha:I

    const v0, 0x3f5eb852    # 0.87f

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->setBackIconAlpha(F)V

    .line 107
    :cond_1
    sget p2, Lcom/ferfalk/simplesearchview/R$styleable;->SimpleSearchView_iconsAlpha:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 108
    sget p2, Lcom/ferfalk/simplesearchview/R$styleable;->SimpleSearchView_iconsAlpha:I

    const v0, 0x3f0a3d71    # 0.54f

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->setIconsAlpha(F)V

    .line 110
    :cond_2
    sget p2, Lcom/ferfalk/simplesearchview/R$styleable;->SimpleSearchView_backIconTint:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    const-string v0, "context"

    if-eqz p2, :cond_3

    .line 111
    sget p2, Lcom/ferfalk/simplesearchview/R$styleable;->SimpleSearchView_backIconTint:I

    invoke-virtual {p0}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/ferfalk/simplesearchview/utils/ContextUtils;->getPrimaryColor(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->setBackIconColor(I)V

    .line 113
    :cond_3
    sget p2, Lcom/ferfalk/simplesearchview/R$styleable;->SimpleSearchView_iconsTint:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 114
    sget p2, Lcom/ferfalk/simplesearchview/R$styleable;->SimpleSearchView_iconsTint:I

    const/high16 v1, -0x1000000

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->setIconsColor(I)V

    .line 116
    :cond_4
    sget p2, Lcom/ferfalk/simplesearchview/R$styleable;->SimpleSearchView_cursorColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 117
    sget p2, Lcom/ferfalk/simplesearchview/R$styleable;->SimpleSearchView_cursorColor:I

    invoke-virtual {p0}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/ferfalk/simplesearchview/utils/ContextUtils;->getAccentColor(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->setCursorColor(I)V

    .line 119
    :cond_5
    sget p2, Lcom/ferfalk/simplesearchview/R$styleable;->SimpleSearchView_hintColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 120
    sget p2, Lcom/ferfalk/simplesearchview/R$styleable;->SimpleSearchView_hintColor:I

    invoke-virtual {p0}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/ferfalk/simplesearchview/R$color;->default_textColorHint:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->setHintTextColor(I)V

    .line 122
    :cond_6
    sget p2, Lcom/ferfalk/simplesearchview/R$styleable;->SimpleSearchView_searchBackground:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 123
    sget p2, Lcom/ferfalk/simplesearchview/R$styleable;->SimpleSearchView_searchBackground:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->setSearchBackground(Landroid/graphics/drawable/Drawable;)V

    .line 125
    :cond_7
    sget p2, Lcom/ferfalk/simplesearchview/R$styleable;->SimpleSearchView_searchBackIcon:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 126
    sget p2, Lcom/ferfalk/simplesearchview/R$styleable;->SimpleSearchView_searchBackIcon:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->setBackIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 128
    :cond_8
    sget p2, Lcom/ferfalk/simplesearchview/R$styleable;->SimpleSearchView_searchClearIcon:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 129
    sget p2, Lcom/ferfalk/simplesearchview/R$styleable;->SimpleSearchView_searchClearIcon:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->setClearIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 131
    :cond_9
    sget p2, Lcom/ferfalk/simplesearchview/R$styleable;->SimpleSearchView_searchVoiceIcon:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 132
    sget p2, Lcom/ferfalk/simplesearchview/R$styleable;->SimpleSearchView_searchVoiceIcon:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->setVoiceIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 134
    :cond_a
    sget p2, Lcom/ferfalk/simplesearchview/R$styleable;->SimpleSearchView_voiceSearch:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 135
    sget p2, Lcom/ferfalk/simplesearchview/R$styleable;->SimpleSearchView_voiceSearch:I

    iget-boolean v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->allowVoiceSearch:Z

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->enableVoiceSearch(Z)V

    .line 137
    :cond_b
    sget p2, Lcom/ferfalk/simplesearchview/R$styleable;->SimpleSearchView_voiceSearchPrompt:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 138
    sget p2, Lcom/ferfalk/simplesearchview/R$styleable;->SimpleSearchView_voiceSearchPrompt:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->setVoiceSearchPrompt(Ljava/lang/String;)V

    .line 140
    :cond_c
    sget p2, Lcom/ferfalk/simplesearchview/R$styleable;->SimpleSearchView_android_hint:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 141
    sget p2, Lcom/ferfalk/simplesearchview/R$styleable;->SimpleSearchView_android_hint:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p0, p2}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->setHint(Ljava/lang/CharSequence;)V

    .line 143
    :cond_d
    sget p2, Lcom/ferfalk/simplesearchview/R$styleable;->SimpleSearchView_android_inputType:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 144
    sget p2, Lcom/ferfalk/simplesearchview/R$styleable;->SimpleSearchView_android_inputType:I

    const/high16 v0, 0x80000

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->setInputType(I)V

    .line 146
    :cond_e
    sget p2, Lcom/ferfalk/simplesearchview/R$styleable;->SimpleSearchView_android_textColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 147
    sget p2, Lcom/ferfalk/simplesearchview/R$styleable;->SimpleSearchView_android_textColor:I

    invoke-virtual {p0}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/ferfalk/simplesearchview/R$color;->default_textColor:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->setTextColor(I)V

    .line 149
    :cond_f
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private final isVoiceAvailable()Z
    .locals 4

    .line 266
    invoke-virtual {p0}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->isInEditMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 269
    :cond_0
    invoke-virtual {p0}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "context"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 270
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    const-string v2, "pm.queryIntentActivities\u2026ION_RECOGNIZE_SPEECH), 0)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method

.method public static synthetic onActivityResult$default(Lcom/ferfalk/simplesearchview/SimpleSearchView;IILandroid/content/Intent;ZILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x1

    .line 419
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->onActivityResult(IILandroid/content/Intent;Z)Z

    move-result p0

    return p0
.end method

.method private final onSubmitQuery()V
    .locals 5

    .line 252
    iget-object v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->binding:Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;

    .line 253
    iget-object v1, v0, Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;->searchEditText:Landroid/widget/EditText;

    const-string v2, "searchEditText"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 254
    invoke-static {v1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v3

    if-lez v3, :cond_1

    .line 255
    iget-object v3, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->onQueryChangeListener:Lcom/ferfalk/simplesearchview/SimpleSearchView$OnQueryTextListener;

    if-eqz v3, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/ferfalk/simplesearchview/SimpleSearchView$OnQueryTextListener;->onQueryTextSubmit(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 256
    invoke-static {p0, v1, v3, v4}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->closeSearch$default(Lcom/ferfalk/simplesearchview/SimpleSearchView;ZILjava/lang/Object;)Lkotlin/Unit;

    .line 257
    iput-boolean v3, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->searchIsClosing:Z

    .line 258
    iget-object v0, v0, Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;->searchEditText:Landroid/widget/EditText;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iput-boolean v1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->searchIsClosing:Z

    :cond_1
    return-void
.end method

.method private final onTextChanged(Ljava/lang/CharSequence;)V
    .locals 4

    .line 236
    iget-object v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->binding:Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;

    .line 237
    iput-object p1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->query:Ljava/lang/CharSequence;

    .line 238
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const-string v3, "clearButton"

    if-eqz v1, :cond_0

    .line 240
    iget-object v0, v0, Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;->clearButton:Landroid/widget/ImageButton;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 241
    invoke-virtual {p0, v1}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->showVoice(Z)V

    goto :goto_0

    .line 243
    :cond_0
    iget-object v0, v0, Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;->clearButton:Landroid/widget/ImageButton;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 244
    invoke-virtual {p0, v2}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->showVoice(Z)V

    .line 246
    :goto_0
    iget-object v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->oldQuery:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->onQueryChangeListener:Lcom/ferfalk/simplesearchview/SimpleSearchView$OnQueryTextListener;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ferfalk/simplesearchview/SimpleSearchView$OnQueryTextListener;->onQueryTextChange(Ljava/lang/String;)Z

    .line 249
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->oldQuery:Ljava/lang/CharSequence;

    return-void
.end method

.method public static synthetic showSearch$default(Lcom/ferfalk/simplesearchview/SimpleSearchView;ZILjava/lang/Object;)Lkotlin/Unit;
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 288
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->showSearch(Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic showTabLayout$default(Lcom/ferfalk/simplesearchview/SimpleSearchView;ZILjava/lang/Object;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 364
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->showTabLayout(Z)V

    return-void
.end method

.method private final voiceSearch()V
    .locals 5

    .line 221
    invoke-virtual {p0}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ferfalk/simplesearchview/utils/ContextUtils;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 222
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 223
    iget-object v2, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->voiceSearchPrompt:Ljava/lang/String;

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_2

    .line 224
    iget-object v2, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->voiceSearchPrompt:Ljava/lang/String;

    const-string v4, "android.speech.extra.PROMPT"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const-string v2, "android.speech.extra.LANGUAGE_MODEL"

    const-string v4, "web_search"

    .line 226
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.speech.extra.MAX_RESULTS"

    .line 227
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v2, 0x2df

    .line 228
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_3
    return-void
.end method


# virtual methods
.method public clearFocus()V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->binding:Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;

    const/4 v1, 0x1

    .line 178
    iput-boolean v1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->isClearingFocus:Z

    .line 179
    move-object v1, p0

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lcom/ferfalk/simplesearchview/utils/ContextUtils;->hideKeyboard(Landroid/view/View;)V

    .line 180
    invoke-super {p0}, Landroid/widget/FrameLayout;->clearFocus()V

    .line 181
    iget-object v0, v0, Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;->searchEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    const/4 v0, 0x0

    .line 182
    iput-boolean v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->isClearingFocus:Z

    return-void
.end method

.method public final closeSearch()Lkotlin/Unit;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->closeSearch$default(Lcom/ferfalk/simplesearchview/SimpleSearchView;ZILjava/lang/Object;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public final closeSearch(Z)Lkotlin/Unit;
    .locals 6

    .line 316
    iget-object v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->binding:Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;

    .line 317
    iget-boolean v1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->isSearchOpen:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    const/4 v1, 0x1

    .line 320
    iput-boolean v1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->searchIsClosing:Z

    .line 321
    iget-object v0, v0, Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;->searchEditText:Landroid/widget/EditText;

    const-string v1, "searchEditText"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v2

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 322
    iput-boolean v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->searchIsClosing:Z

    .line 323
    invoke-virtual {p0}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->clearFocus()V

    if-eqz p1, :cond_1

    .line 325
    new-instance v1, Lcom/ferfalk/simplesearchview/SimpleSearchView$closeSearch$$inlined$with$lambda$1;

    invoke-direct {v1, p0, p1}, Lcom/ferfalk/simplesearchview/SimpleSearchView$closeSearch$$inlined$with$lambda$1;-><init>(Lcom/ferfalk/simplesearchview/SimpleSearchView;Z)V

    check-cast v1, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;

    .line 331
    move-object v3, p0

    check-cast v3, Landroid/view/View;

    iget v4, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->animationDuration:I

    invoke-virtual {p0}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->getRevealAnimationCenter()Landroid/graphics/Point;

    move-result-object v5

    invoke-static {v3, v4, v1, v5}, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils;->hideOrFadeOut(Landroid/view/View;ILcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;Landroid/graphics/Point;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    .line 333
    invoke-virtual {p0, v1}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->setVisibility(I)V

    .line 335
    :goto_0
    invoke-virtual {p0, p1}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->showTabLayout(Z)V

    .line 336
    iput-boolean v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->isSearchOpen:Z

    .line 337
    iget-object p1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->searchViewListener:Lcom/ferfalk/simplesearchview/SimpleSearchView$SearchViewListener;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/ferfalk/simplesearchview/SimpleSearchView$SearchViewListener;->onSearchViewClosed()V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_2
    return-object v2
.end method

.method public final enableVoiceSearch(Z)V
    .locals 0

    .line 561
    iput-boolean p1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->allowVoiceSearch:Z

    return-void
.end method

.method public final getAnimationDuration()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->animationDuration:I

    return v0
.end method

.method public final getCardStyle()I
    .locals 1

    .line 440
    iget v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->style:I

    return v0
.end method

.method public final getRevealAnimationCenter()Landroid/graphics/Point;
    .locals 4

    .line 65
    iget-object v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->revealAnimationCenter:Landroid/graphics/Point;

    if-eqz v0, :cond_0

    return-object v0

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->getWidth()I

    move-result v0

    const/16 v1, 0x1a

    invoke-virtual {p0}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/ferfalk/simplesearchview/utils/DimensUtils;->convertDpToPx(ILandroid/content/Context;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 70
    invoke-virtual {p0}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 72
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v2, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->revealAnimationCenter:Landroid/graphics/Point;

    return-object v2
.end method

.method public final getTabLayout()Lcom/google/android/material/tabs/TabLayout;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    return-object v0
.end method

.method public final hideTabLayout()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->hideTabLayout$default(Lcom/ferfalk/simplesearchview/SimpleSearchView;ZILjava/lang/Object;)V

    return-void
.end method

.method public final hideTabLayout(Z)V
    .locals 8

    .line 382
    iget-object v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 387
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    iget-object p1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    iget v4, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->animationDuration:I

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils;->verticalSlideView$default(Landroid/view/View;IIILcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;ILjava/lang/Object;)Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 389
    :cond_1
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public final isSearchOpen()Z
    .locals 1

    .line 78
    iget-boolean v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->isSearchOpen:Z

    return v0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)Z
    .locals 7

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v6}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->onActivityResult$default(Lcom/ferfalk/simplesearchview/SimpleSearchView;IILandroid/content/Intent;ZILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final onActivityResult(IILandroid/content/Intent;Z)Z
    .locals 2

    const-string v0, "data"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/16 v1, 0x2df

    if-ne p1, v1, :cond_3

    const/4 p1, -0x1

    if-ne p2, p1, :cond_3

    const-string p1, "android.speech.extra.RESULTS"

    .line 421
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 422
    move-object p2, p1

    check-cast p2, Ljava/util/Collection;

    const/4 p3, 0x1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    :goto_1
    if-nez p2, :cond_2

    .line 423
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 424
    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 425
    invoke-virtual {p0, p1, p4}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    :cond_2
    return p3

    :cond_3
    return v0
.end method

.method public final onBackPressed()Z
    .locals 3

    .line 401
    iget-boolean v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->isSearchOpen:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 402
    invoke-static {p0, v1, v2, v0}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->closeSearch$default(Lcom/ferfalk/simplesearchview/SimpleSearchView;ZILjava/lang/Object;)Lkotlin/Unit;

    return v2

    :cond_0
    return v1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    instance-of v0, p1, Lcom/ferfalk/simplesearchview/SimpleSearchView$SavedState;

    if-nez v0, :cond_0

    .line 206
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 209
    :cond_0
    check-cast p1, Lcom/ferfalk/simplesearchview/SimpleSearchView$SavedState;

    invoke-virtual {p1}, Lcom/ferfalk/simplesearchview/SimpleSearchView$SavedState;->getQuery()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->query:Ljava/lang/CharSequence;

    .line 210
    invoke-virtual {p1}, Lcom/ferfalk/simplesearchview/SimpleSearchView$SavedState;->getAnimationDuration()I

    move-result v0

    iput v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->animationDuration:I

    .line 211
    invoke-virtual {p1}, Lcom/ferfalk/simplesearchview/SimpleSearchView$SavedState;->getVoiceSearchPrompt()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->voiceSearchPrompt:Ljava/lang/String;

    .line 212
    invoke-virtual {p1}, Lcom/ferfalk/simplesearchview/SimpleSearchView$SavedState;->getKeepQuery()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->keepQuery:Z

    .line 213
    invoke-virtual {p1}, Lcom/ferfalk/simplesearchview/SimpleSearchView$SavedState;->isSearchOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 214
    invoke-virtual {p0, v0}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->showSearch(Z)Lkotlin/Unit;

    .line 215
    invoke-virtual {p1}, Lcom/ferfalk/simplesearchview/SimpleSearchView$SavedState;->getQuery()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p0, v1, v0}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 217
    :cond_1
    invoke-virtual {p1}, Lcom/ferfalk/simplesearchview/SimpleSearchView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 195
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 196
    new-instance v1, Lcom/ferfalk/simplesearchview/SimpleSearchView$SavedState;

    invoke-direct {v1, v0}, Lcom/ferfalk/simplesearchview/SimpleSearchView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 197
    iget-object v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->query:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/ferfalk/simplesearchview/SimpleSearchView$SavedState;->setQuery(Ljava/lang/String;)V

    .line 198
    iget-boolean v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->isSearchOpen:Z

    invoke-virtual {v1, v0}, Lcom/ferfalk/simplesearchview/SimpleSearchView$SavedState;->setSearchOpen(Z)V

    .line 199
    iget v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->animationDuration:I

    invoke-virtual {v1, v0}, Lcom/ferfalk/simplesearchview/SimpleSearchView$SavedState;->setAnimationDuration(I)V

    .line 200
    iget-boolean v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->keepQuery:Z

    invoke-virtual {v1, v0}, Lcom/ferfalk/simplesearchview/SimpleSearchView$SavedState;->setKeepQuery(Z)V

    .line 201
    check-cast v1, Landroid/os/Parcelable;

    return-object v1
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 3

    .line 185
    iget-object v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->binding:Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;

    .line 186
    iget-boolean v1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->isClearingFocus:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 189
    :cond_0
    invoke-virtual {p0}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->isFocusable()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 191
    :cond_1
    iget-object v0, v0, Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;->searchEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v2

    :goto_0
    return v2
.end method

.method public final setAnimationDuration(I)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->animationDuration:I

    return-void
.end method

.method public final setBackIconAlpha(F)V
    .locals 2

    .line 494
    iget-object v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->binding:Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;

    .line 495
    iget-object v0, v0, Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;->backButton:Landroid/widget/ImageButton;

    const-string v1, "backButton"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setAlpha(F)V

    return-void
.end method

.method public final setBackIconColor(I)V
    .locals 1

    .line 501
    iget-object v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->binding:Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;

    .line 502
    iget-object v0, v0, Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;->backButton:Landroid/widget/ImageButton;

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/core/widget/ImageViewCompat;->setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setBackIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 508
    iget-object v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->binding:Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;

    .line 509
    iget-object v0, v0, Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;->backButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setCardStyle(I)V
    .locals 7

    .line 441
    iget-object v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->binding:Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;

    .line 442
    iput p1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->style:I

    .line 443
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x0

    const-string v4, "searchContainer"

    const-string v5, "bottomLine"

    if-eqz p1, :cond_1

    const/4 v6, 0x1

    if-eq p1, v6, :cond_0

    .line 458
    iget-object p1, v0, Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;->searchContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackgroundColor(I)V

    .line 459
    iget-object p1, v0, Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;->bottomLine:Landroid/view/View;

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 447
    :cond_0
    iget-object p1, v0, Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;->searchContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->getCardStyleBackground()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 448
    iget-object p1, v0, Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;->bottomLine:Landroid/view/View;

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x6

    .line 449
    invoke-virtual {p0}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v2}, Lcom/ferfalk/simplesearchview/utils/DimensUtils;->convertDpToPx(ILandroid/content/Context;)I

    move-result p1

    .line 450
    invoke-virtual {v1, p1, p1, p1, p1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    const/4 p1, 0x2

    .line 451
    invoke-virtual {p0}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v2}, Lcom/ferfalk/simplesearchview/utils/DimensUtils;->convertDpToPx(ILandroid/content/Context;)I

    move-result p1

    int-to-float p1, p1

    goto :goto_1

    .line 454
    :cond_1
    iget-object p1, v0, Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;->searchContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackgroundColor(I)V

    .line 455
    iget-object p1, v0, Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;->bottomLine:Landroid/view/View;

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const/4 p1, 0x0

    .line 462
    :goto_1
    iget-object v2, v0, Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;->searchContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v2, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 463
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_2

    .line 464
    iget-object v0, v0, Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;->searchContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setElevation(F)V

    :cond_2
    return-void
.end method

.method public final setClearIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 522
    iget-object v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->binding:Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;

    .line 523
    iget-object v0, v0, Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;->clearButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setCursorColor(I)V
    .locals 2

    .line 556
    iget-object v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->binding:Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;

    .line 557
    iget-object v0, v0, Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;->searchEditText:Landroid/widget/EditText;

    const-string v1, "searchEditText"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/ferfalk/simplesearchview/utils/EditTextReflectionUtils;->setCursorColor(Landroid/widget/EditText;I)V

    return-void
.end method

.method public final setCursorDrawable(I)V
    .locals 2

    .line 549
    iget-object v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->binding:Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;

    .line 550
    iget-object v0, v0, Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;->searchEditText:Landroid/widget/EditText;

    const-string v1, "searchEditText"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/ferfalk/simplesearchview/utils/EditTextReflectionUtils;->setCursorDrawable(Landroid/widget/EditText;I)V

    return-void
.end method

.method public final setHint(Ljava/lang/CharSequence;)V
    .locals 2

    .line 538
    iget-object v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->binding:Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;

    .line 539
    iget-object v0, v0, Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;->searchEditText:Landroid/widget/EditText;

    const-string v1, "searchEditText"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setHintTextColor(I)V
    .locals 1

    .line 534
    iget-object v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->binding:Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;

    .line 535
    iget-object v0, v0, Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;->searchEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHintTextColor(I)V

    return-void
.end method

.method public final setIconsAlpha(F)V
    .locals 3

    .line 478
    iget-object v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->binding:Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;

    .line 479
    iget-object v1, v0, Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;->clearButton:Landroid/widget/ImageButton;

    const-string v2, "clearButton"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 480
    iget-object v0, v0, Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;->voiceButton:Landroid/widget/ImageButton;

    const-string v1, "voiceButton"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setAlpha(F)V

    return-void
.end method

.method public final setIconsColor(I)V
    .locals 3

    .line 486
    iget-object v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->binding:Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;

    .line 487
    iget-object v1, v0, Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;->clearButton:Landroid/widget/ImageButton;

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/core/widget/ImageViewCompat;->setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    .line 488
    iget-object v0, v0, Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;->voiceButton:Landroid/widget/ImageButton;

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/core/widget/ImageViewCompat;->setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setInputType(I)V
    .locals 2

    .line 542
    iget-object v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->binding:Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;

    .line 543
    iget-object v0, v0, Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;->searchEditText:Landroid/widget/EditText;

    const-string v1, "searchEditText"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setInputType(I)V

    return-void
.end method

.method public final setKeepQuery(Z)V
    .locals 0

    .line 280
    iput-boolean p1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->keepQuery:Z

    return-void
.end method

.method public final setMenuItem(Landroid/view/MenuItem;)V
    .locals 1

    const-string v0, "menuItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 598
    new-instance v0, Lcom/ferfalk/simplesearchview/SimpleSearchView$setMenuItem$1;

    invoke-direct {v0, p0}, Lcom/ferfalk/simplesearchview/SimpleSearchView$setMenuItem$1;-><init>(Lcom/ferfalk/simplesearchview/SimpleSearchView;)V

    check-cast v0, Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void
.end method

.method public final setOnQueryTextListener(Lcom/ferfalk/simplesearchview/SimpleSearchView$OnQueryTextListener;)V
    .locals 0

    .line 608
    iput-object p1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->onQueryChangeListener:Lcom/ferfalk/simplesearchview/SimpleSearchView$OnQueryTextListener;

    return-void
.end method

.method public final setOnSearchViewListener(Lcom/ferfalk/simplesearchview/SimpleSearchView$SearchViewListener;)V
    .locals 0

    .line 617
    iput-object p1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->searchViewListener:Lcom/ferfalk/simplesearchview/SimpleSearchView$SearchViewListener;

    return-void
.end method

.method public final setQuery(Ljava/lang/CharSequence;Z)V
    .locals 2

    .line 568
    iget-object v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->binding:Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;

    .line 569
    iget-object v1, v0, Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;->searchEditText:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_0

    .line 571
    iget-object v1, v0, Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;->searchEditText:Landroid/widget/EditText;

    iget-object v0, v0, Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;->searchEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 572
    iput-object p1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->query:Ljava/lang/CharSequence;

    :cond_0
    if-eqz p2, :cond_1

    .line 574
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 575
    invoke-direct {p0}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->onSubmitQuery()V

    :cond_1
    return-void
.end method

.method public final setRevealAnimationCenter(Landroid/graphics/Point;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->revealAnimationCenter:Landroid/graphics/Point;

    return-void
.end method

.method public final setSearchBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 526
    iget-object v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->binding:Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;

    .line 527
    iget-object v0, v0, Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;->searchContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v1, "searchContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setTabLayout(Lcom/google/android/material/tabs/TabLayout;)V
    .locals 2

    const-string v0, "tabLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    iput-object p1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 345
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/ferfalk/simplesearchview/SimpleSearchView$setTabLayout$1;

    invoke-direct {v1, p0, p1}, Lcom/ferfalk/simplesearchview/SimpleSearchView$setTabLayout$1;-><init>(Lcom/ferfalk/simplesearchview/SimpleSearchView;Lcom/google/android/material/tabs/TabLayout;)V

    check-cast v1, Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 352
    iget-object p1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v0, Lcom/ferfalk/simplesearchview/SimpleSearchView$setTabLayout$2;

    invoke-direct {v0, p0}, Lcom/ferfalk/simplesearchview/SimpleSearchView$setTabLayout$2;-><init>(Lcom/ferfalk/simplesearchview/SimpleSearchView;)V

    check-cast v0, Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    return-void
.end method

.method public final setTextColor(I)V
    .locals 1

    .line 530
    iget-object v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->binding:Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;

    .line 531
    iget-object v0, v0, Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;->searchEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextColor(I)V

    return-void
.end method

.method public final setVoiceIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 515
    iget-object v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->binding:Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;

    .line 516
    iget-object v0, v0, Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;->voiceButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setVoiceSearchPrompt(Ljava/lang/String;)V
    .locals 0

    .line 621
    iput-object p1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->voiceSearchPrompt:Ljava/lang/String;

    return-void
.end method

.method public final showSearch()Lkotlin/Unit;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->showSearch$default(Lcom/ferfalk/simplesearchview/SimpleSearchView;ZILjava/lang/Object;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public final showSearch(Z)Lkotlin/Unit;
    .locals 5

    .line 288
    iget-object v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->binding:Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;

    .line 289
    iget-boolean v1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->isSearchOpen:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 292
    :cond_0
    iget-object v1, v0, Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;->searchEditText:Landroid/widget/EditText;

    iget-boolean v3, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->keepQuery:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->query:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_0
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v0, v0, Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;->searchEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    if-eqz p1, :cond_2

    .line 295
    new-instance v0, Lcom/ferfalk/simplesearchview/SimpleSearchView$showSearch$$inlined$with$lambda$1;

    invoke-direct {v0, p0, p1}, Lcom/ferfalk/simplesearchview/SimpleSearchView$showSearch$$inlined$with$lambda$1;-><init>(Lcom/ferfalk/simplesearchview/SimpleSearchView;Z)V

    check-cast v0, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;

    .line 301
    move-object v1, p0

    check-cast v1, Landroid/view/View;

    iget v3, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->animationDuration:I

    invoke-virtual {p0}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->getRevealAnimationCenter()Landroid/graphics/Point;

    move-result-object v4

    invoke-static {v1, v3, v0, v4}, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils;->revealOrFadeIn(Landroid/view/View;ILcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;Landroid/graphics/Point;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 303
    invoke-virtual {p0, v0}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->setVisibility(I)V

    .line 305
    :goto_1
    invoke-virtual {p0, p1}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->hideTabLayout(Z)V

    const/4 p1, 0x1

    .line 306
    iput-boolean p1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->isSearchOpen:Z

    .line 307
    iget-object p1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->searchViewListener:Lcom/ferfalk/simplesearchview/SimpleSearchView$SearchViewListener;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/ferfalk/simplesearchview/SimpleSearchView$SearchViewListener;->onSearchViewShown()V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_3
    return-object v2
.end method

.method public final showTabLayout()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->showTabLayout$default(Lcom/ferfalk/simplesearchview/SimpleSearchView;ZILjava/lang/Object;)V

    return-void
.end method

.method public final showTabLayout(Z)V
    .locals 8

    .line 365
    iget-object v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 370
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x0

    iget v3, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->tabLayoutInitialHeight:I

    iget v4, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->animationDuration:I

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils;->verticalSlideView$default(Landroid/view/View;IIILcom/ferfalk/simplesearchview/utils/SimpleAnimationUtils$AnimationListener;ILjava/lang/Object;)Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    const/4 p1, 0x0

    .line 372
    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final showVoice(Z)V
    .locals 2

    .line 584
    iget-object v0, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->binding:Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;

    const-string v1, "voiceButton"

    if-eqz p1, :cond_0

    .line 585
    invoke-direct {p0}, Lcom/ferfalk/simplesearchview/SimpleSearchView;->isVoiceAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/ferfalk/simplesearchview/SimpleSearchView;->allowVoiceSearch:Z

    if-eqz p1, :cond_0

    .line 586
    iget-object p1, v0, Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;->voiceButton:Landroid/widget/ImageButton;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 588
    :cond_0
    iget-object p1, v0, Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;->voiceButton:Landroid/widget/ImageButton;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_0
    return-void
.end method
