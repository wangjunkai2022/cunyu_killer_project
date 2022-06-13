.class public Lcom/tencent/rtmp/ui/TXLogView;
.super Landroid/widget/LinearLayout;
.source "TXLogView.java"


# instance fields
.field a:Ljava/lang/StringBuffer;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ScrollView;

.field private e:Landroid/widget/ScrollView;

.field private final f:I

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, v0}, Lcom/tencent/rtmp/ui/TXLogView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    new-instance p2, Ljava/lang/StringBuffer;

    const-string v0, ""

    invoke-direct {p2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/tencent/rtmp/ui/TXLogView;->a:Ljava/lang/StringBuffer;

    const/16 p2, 0xbb8

    .line 30
    iput p2, p0, Lcom/tencent/rtmp/ui/TXLogView;->f:I

    const/4 p2, 0x0

    .line 32
    iput-boolean p2, p0, Lcom/tencent/rtmp/ui/TXLogView;->g:Z

    const/4 v0, 0x1

    .line 41
    invoke-virtual {p0, v0}, Lcom/tencent/rtmp/ui/TXLogView;->setOrientation(I)V

    .line 43
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tencent/rtmp/ui/TXLogView;->b:Landroid/widget/TextView;

    .line 44
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tencent/rtmp/ui/TXLogView;->c:Landroid/widget/TextView;

    .line 45
    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tencent/rtmp/ui/TXLogView;->d:Landroid/widget/ScrollView;

    .line 46
    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tencent/rtmp/ui/TXLogView;->e:Landroid/widget/ScrollView;

    .line 48
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const v3, 0x3e4ccccd    # 0.2f

    .line 49
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 50
    iget-object v3, p0, Lcom/tencent/rtmp/ui/TXLogView;->d:Landroid/widget/ScrollView;

    invoke-virtual {v3, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    iget-object v1, p0, Lcom/tencent/rtmp/ui/TXLogView;->d:Landroid/widget/ScrollView;

    const v3, 0x60ffffff

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    .line 52
    iget-object v1, p0, Lcom/tencent/rtmp/ui/TXLogView;->d:Landroid/widget/ScrollView;

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 53
    iget-object v1, p0, Lcom/tencent/rtmp/ui/TXLogView;->d:Landroid/widget/ScrollView;

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->setScrollbarFadingEnabled(Z)V

    .line 55
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 56
    iget-object v4, p0, Lcom/tencent/rtmp/ui/TXLogView;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    iget-object v1, p0, Lcom/tencent/rtmp/ui/TXLogView;->b:Landroid/widget/TextView;

    const/4 v4, 0x2

    const/high16 v5, 0x41300000    # 11.0f

    invoke-virtual {v1, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 58
    iget-object v1, p0, Lcom/tencent/rtmp/ui/TXLogView;->b:Landroid/widget/TextView;

    const/high16 v5, -0x1000000

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 59
    iget-object v1, p0, Lcom/tencent/rtmp/ui/TXLogView;->b:Landroid/widget/TextView;

    sget-object v6, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v1, v6, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 60
    iget-object v1, p0, Lcom/tencent/rtmp/ui/TXLogView;->b:Landroid/widget/TextView;

    const/high16 v6, 0x40800000    # 4.0f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v1, v6, v7}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 61
    iget-object v1, p0, Lcom/tencent/rtmp/ui/TXLogView;->b:Landroid/widget/TextView;

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {p1, v6}, Lcom/tencent/rtmp/ui/TXLogView;->a(Landroid/content/Context;F)I

    move-result v7

    invoke-static {p1, v6}, Lcom/tencent/rtmp/ui/TXLogView;->a(Landroid/content/Context;F)I

    move-result v8

    invoke-static {p1, v6}, Lcom/tencent/rtmp/ui/TXLogView;->a(Landroid/content/Context;F)I

    move-result v9

    invoke-static {p1, v6}, Lcom/tencent/rtmp/ui/TXLogView;->a(Landroid/content/Context;F)I

    move-result v10

    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 63
    iget-object v1, p0, Lcom/tencent/rtmp/ui/TXLogView;->d:Landroid/widget/ScrollView;

    iget-object v7, p0, Lcom/tencent/rtmp/ui/TXLogView;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 65
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const p2, 0x3f4ccccd    # 0.8f

    .line 66
    iput p2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 67
    invoke-static {p1, v6}, Lcom/tencent/rtmp/ui/TXLogView;->a(Landroid/content/Context;F)I

    move-result p2

    iput p2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 68
    iget-object p2, p0, Lcom/tencent/rtmp/ui/TXLogView;->e:Landroid/widget/ScrollView;

    invoke-virtual {p2, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    iget-object p2, p0, Lcom/tencent/rtmp/ui/TXLogView;->e:Landroid/widget/ScrollView;

    invoke-virtual {p2, v3}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    .line 70
    iget-object p2, p0, Lcom/tencent/rtmp/ui/TXLogView;->e:Landroid/widget/ScrollView;

    invoke-virtual {p2, v0}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 71
    iget-object p2, p0, Lcom/tencent/rtmp/ui/TXLogView;->e:Landroid/widget/ScrollView;

    invoke-virtual {p2, v0}, Landroid/widget/ScrollView;->setScrollbarFadingEnabled(Z)V

    .line 73
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p2, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 74
    iget-object v0, p0, Lcom/tencent/rtmp/ui/TXLogView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    iget-object p2, p0, Lcom/tencent/rtmp/ui/TXLogView;->c:Landroid/widget/TextView;

    const/high16 v0, 0x41500000    # 13.0f

    invoke-virtual {p2, v4, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 76
    iget-object p2, p0, Lcom/tencent/rtmp/ui/TXLogView;->c:Landroid/widget/TextView;

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 77
    iget-object p2, p0, Lcom/tencent/rtmp/ui/TXLogView;->c:Landroid/widget/TextView;

    invoke-static {p1, v6}, Lcom/tencent/rtmp/ui/TXLogView;->a(Landroid/content/Context;F)I

    move-result v0

    invoke-static {p1, v6}, Lcom/tencent/rtmp/ui/TXLogView;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p1, v6}, Lcom/tencent/rtmp/ui/TXLogView;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p1, v6}, Lcom/tencent/rtmp/ui/TXLogView;->a(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {p2, v0, v1, v2, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 79
    iget-object p1, p0, Lcom/tencent/rtmp/ui/TXLogView;->e:Landroid/widget/ScrollView;

    iget-object p2, p0, Lcom/tencent/rtmp/ui/TXLogView;->c:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 81
    iget-object p1, p0, Lcom/tencent/rtmp/ui/TXLogView;->d:Landroid/widget/ScrollView;

    invoke-virtual {p0, p1}, Lcom/tencent/rtmp/ui/TXLogView;->addView(Landroid/view/View;)V

    .line 82
    iget-object p1, p0, Lcom/tencent/rtmp/ui/TXLogView;->e:Landroid/widget/ScrollView;

    invoke-virtual {p0, p1}, Lcom/tencent/rtmp/ui/TXLogView;->addView(Landroid/view/View;)V

    const/16 p1, 0x8

    .line 84
    invoke-virtual {p0, p1}, Lcom/tencent/rtmp/ui/TXLogView;->setVisibility(I)V

    return-void
.end method

.method public static a(Landroid/content/Context;F)I
    .locals 0

    .line 88
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method
