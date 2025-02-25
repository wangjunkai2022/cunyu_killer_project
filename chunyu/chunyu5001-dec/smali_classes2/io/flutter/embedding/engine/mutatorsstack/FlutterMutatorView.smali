.class public Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;
.super Landroid/widget/FrameLayout;
.source "FlutterMutatorView.java"


# instance fields
.field activeFocusListener:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

.field private final androidTouchProcessor:Lio/flutter/embedding/android/AndroidTouchProcessor;

.field private left:I

.field private mutatorsStack:Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack;

.field private prevLeft:I

.field private prevTop:I

.field private screenDensity:F

.field private top:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, p1, v0, v1}, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;-><init>(Landroid/content/Context;FLio/flutter/embedding/android/AndroidTouchProcessor;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;FLio/flutter/embedding/android/AndroidTouchProcessor;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    iput p2, p0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->screenDensity:F

    .line 44
    iput-object p3, p0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->androidTouchProcessor:Lio/flutter/embedding/android/AndroidTouchProcessor;

    return-void
.end method

.method public static childHasFocus(Landroid/view/View;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 63
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 66
    :cond_1
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    .line 67
    check-cast p0, Landroid/view/ViewGroup;

    move v1, v0

    .line 68
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 69
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->childHasFocus(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method private getPlatformViewMatrix()Landroid/graphics/Matrix;
    .locals 4

    .line 160
    new-instance v0, Landroid/graphics/Matrix;

    iget-object v1, p0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->mutatorsStack:Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack;

    invoke-virtual {v1}, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack;->getFinalMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 169
    iget v1, p0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->screenDensity:F

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v3, v2, v1

    div-float/2addr v2, v1

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 177
    iget v1, p0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->left:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->top:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-object v0
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 152
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 154
    invoke-direct {p0}, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->getPlatformViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 155
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 156
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 133
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 134
    iget-object v0, p0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->mutatorsStack:Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack;->getFinalClippingPaths()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Path;

    .line 141
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    .line 142
    iget v1, p0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->left:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v3, p0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->top:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->offset(FF)V

    .line 143
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    goto :goto_0

    .line 145
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 146
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 191
    iget-object v0, p0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->androidTouchProcessor:Lio/flutter/embedding/android/AndroidTouchProcessor;

    if-nez v0, :cond_0

    .line 192
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 195
    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 197
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 212
    iget v1, p0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->left:I

    int-to-float v1, v1

    iget v2, p0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 206
    :cond_1
    iget v1, p0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->prevLeft:I

    int-to-float v1, v1

    iget v2, p0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->prevTop:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 207
    iget v1, p0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->left:I

    iput v1, p0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->prevLeft:I

    .line 208
    iget v1, p0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->top:I

    iput v1, p0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->prevTop:I

    goto :goto_0

    .line 199
    :cond_2
    iget v1, p0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->left:I

    iput v1, p0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->prevLeft:I

    .line 200
    iget v2, p0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->top:I

    iput v2, p0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->prevTop:I

    int-to-float v1, v1

    int-to-float v2, v2

    .line 201
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 215
    :goto_0
    iget-object v1, p0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->androidTouchProcessor:Lio/flutter/embedding/android/AndroidTouchProcessor;

    invoke-virtual {v1, p1, v0}, Lio/flutter/embedding/android/AndroidTouchProcessor;->onTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/Matrix;)Z

    move-result p1

    return p1
.end method

.method public readyToDisplay(Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack;IIII)V
    .locals 0

    .line 120
    iput-object p1, p0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->mutatorsStack:Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack;

    .line 121
    iput p2, p0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->left:I

    .line 122
    iput p3, p0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->top:I

    .line 123
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, p4, p5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 124
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 125
    iput p3, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 126
    invoke-virtual {p0, p1}, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    .line 127
    invoke-virtual {p0, p1}, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->setWillNotDraw(Z)V

    return-void
.end method

.method public setOnDescendantFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 2

    .line 89
    invoke-virtual {p0}, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->unsetOnDescendantFocusChangeListener()V

    .line 92
    invoke-virtual {p0}, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->activeFocusListener:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    if-nez v1, :cond_0

    .line 94
    new-instance v1, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView$1;

    invoke-direct {v1, p0, p1, p0}, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView$1;-><init>(Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;Landroid/view/View$OnFocusChangeListener;Landroid/view/View;)V

    iput-object v1, p0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->activeFocusListener:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    .line 101
    iget-object p1, p0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->activeFocusListener:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver;->addOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    :cond_0
    return-void
.end method

.method public unsetOnDescendantFocusChangeListener()V
    .locals 3

    .line 107
    invoke-virtual {p0}, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->activeFocusListener:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 110
    iput-object v2, p0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->activeFocusListener:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    .line 111
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    :cond_0
    return-void
.end method
