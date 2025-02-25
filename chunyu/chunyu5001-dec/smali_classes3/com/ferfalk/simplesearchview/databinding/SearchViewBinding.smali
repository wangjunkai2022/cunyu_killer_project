.class public final Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;
.super Ljava/lang/Object;
.source "SearchViewBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final backButton:Landroid/widget/ImageButton;

.field public final bottomLine:Landroid/view/View;

.field public final clearButton:Landroid/widget/ImageButton;

.field private final rootView:Landroid/widget/FrameLayout;

.field public final searchContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final searchEditText:Landroid/widget/EditText;

.field public final voiceButton:Landroid/widget/ImageButton;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/ImageButton;Landroid/view/View;Landroid/widget/ImageButton;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/EditText;Landroid/widget/ImageButton;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;->rootView:Landroid/widget/FrameLayout;

    .line 46
    iput-object p2, p0, Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;->backButton:Landroid/widget/ImageButton;

    .line 47
    iput-object p3, p0, Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;->bottomLine:Landroid/view/View;

    .line 48
    iput-object p4, p0, Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;->clearButton:Landroid/widget/ImageButton;

    .line 49
    iput-object p5, p0, Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;->searchContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 50
    iput-object p6, p0, Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;->searchEditText:Landroid/widget/EditText;

    .line 51
    iput-object p7, p0, Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;->voiceButton:Landroid/widget/ImageButton;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;
    .locals 10

    .line 81
    sget v0, Lcom/ferfalk/simplesearchview/R$id;->backButton:I

    .line 82
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageButton;

    if-eqz v4, :cond_0

    .line 87
    sget v0, Lcom/ferfalk/simplesearchview/R$id;->bottomLine:I

    .line 88
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 93
    sget v0, Lcom/ferfalk/simplesearchview/R$id;->clearButton:I

    .line 94
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageButton;

    if-eqz v6, :cond_0

    .line 99
    sget v0, Lcom/ferfalk/simplesearchview/R$id;->searchContainer:I

    .line 100
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v7, :cond_0

    .line 105
    sget v0, Lcom/ferfalk/simplesearchview/R$id;->searchEditText:I

    .line 106
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/EditText;

    if-eqz v8, :cond_0

    .line 111
    sget v0, Lcom/ferfalk/simplesearchview/R$id;->voiceButton:I

    .line 112
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/ImageButton;

    if-eqz v9, :cond_0

    .line 117
    new-instance v0, Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/FrameLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/ImageButton;Landroid/view/View;Landroid/widget/ImageButton;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/EditText;Landroid/widget/ImageButton;)V

    return-object v0

    .line 120
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 121
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 62
    invoke-static {p0, v0, v1}, Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;
    .locals 2

    .line 68
    sget v0, Lcom/ferfalk/simplesearchview/R$layout;->search_view:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 70
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 72
    :cond_0
    invoke-static {p0}, Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;->bind(Landroid/view/View;)Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/ferfalk/simplesearchview/databinding/SearchViewBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
