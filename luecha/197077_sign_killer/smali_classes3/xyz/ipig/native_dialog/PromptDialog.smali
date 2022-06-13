.class public Lxyz/ipig/native_dialog/PromptDialog;
.super Ljava/lang/Object;
.source "PromptDialog.java"


# static fields
.field public static viewAnimDuration:J = 0x12cL


# instance fields
.field private final TAG:Ljava/lang/String;

.field private adListener:Lxyz/ipig/native_dialog/OnAdClickListener;

.field private decorView:Landroid/view/ViewGroup;

.field private dissmissAnim:Landroid/animation/ValueAnimator;

.field private dissmissAnimCancle:Z

.field private handler:Landroid/os/Handler;

.field private inAnim:Landroid/view/animation/Animation;

.field private inDefaultAnim:Landroid/view/animation/AnimationSet;

.field private inSheetAnim:Landroid/view/animation/AnimationSet;

.field private inputmanger:Landroid/view/inputmethod/InputMethodManager;

.field private isShowing:Z

.field private outAnim:Landroid/view/animation/Animation;

.field private outAnimRunning:Z

.field private outDefaultAnim:Landroid/view/animation/AnimationSet;

.field private outSheetAnim:Landroid/view/animation/AlphaAnimation;

.field private promptView:Lxyz/ipig/native_dialog/PromptView;

.field private runnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 65
    invoke-static {}, Lxyz/ipig/native_dialog/Builder;->getDefaultBuilder()Lxyz/ipig/native_dialog/Builder;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lxyz/ipig/native_dialog/PromptDialog;-><init>(Lxyz/ipig/native_dialog/Builder;Landroid/app/Activity;)V

    return-void
.end method

.method public constructor <init>(Lxyz/ipig/native_dialog/Builder;Landroid/app/Activity;)V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "PromptDialog"

    .line 26
    iput-object v0, p0, Lxyz/ipig/native_dialog/PromptDialog;->TAG:Ljava/lang/String;

    .line 69
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lxyz/ipig/native_dialog/PromptDialog;->decorView:Landroid/view/ViewGroup;

    .line 71
    new-instance v0, Lxyz/ipig/native_dialog/PromptView;

    invoke-direct {v0, p2, p1, p0}, Lxyz/ipig/native_dialog/PromptView;-><init>(Landroid/app/Activity;Lxyz/ipig/native_dialog/Builder;Lxyz/ipig/native_dialog/PromptDialog;)V

    iput-object v0, p0, Lxyz/ipig/native_dialog/PromptDialog;->promptView:Lxyz/ipig/native_dialog/PromptView;

    .line 72
    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 73
    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 72
    invoke-direct {p0, p1, v0}, Lxyz/ipig/native_dialog/PromptDialog;->initAnim(II)V

    const-string p1, "input_method"

    .line 74
    invoke-virtual {p2, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Lxyz/ipig/native_dialog/PromptDialog;->inputmanger:Landroid/view/inputmethod/InputMethodManager;

    .line 75
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lxyz/ipig/native_dialog/PromptDialog;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lxyz/ipig/native_dialog/PromptDialog;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lxyz/ipig/native_dialog/PromptDialog;->outAnimRunning:Z

    return p1
.end method

.method static synthetic access$100(Lxyz/ipig/native_dialog/PromptDialog;)Lxyz/ipig/native_dialog/PromptView;
    .locals 0

    .line 25
    iget-object p0, p0, Lxyz/ipig/native_dialog/PromptDialog;->promptView:Lxyz/ipig/native_dialog/PromptView;

    return-object p0
.end method

.method static synthetic access$200(Lxyz/ipig/native_dialog/PromptDialog;)Landroid/view/ViewGroup;
    .locals 0

    .line 25
    iget-object p0, p0, Lxyz/ipig/native_dialog/PromptDialog;->decorView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$302(Lxyz/ipig/native_dialog/PromptDialog;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lxyz/ipig/native_dialog/PromptDialog;->isShowing:Z

    return p1
.end method

.method private checkLoadView(Z)V
    .locals 2

    .line 375
    iget-boolean v0, p0, Lxyz/ipig/native_dialog/PromptDialog;->isShowing:Z

    if-nez v0, :cond_0

    .line 376
    iget-object v0, p0, Lxyz/ipig/native_dialog/PromptDialog;->decorView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lxyz/ipig/native_dialog/PromptDialog;->promptView:Lxyz/ipig/native_dialog/PromptView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 377
    iput-boolean v0, p0, Lxyz/ipig/native_dialog/PromptDialog;->isShowing:Z

    .line 378
    iget-object v0, p0, Lxyz/ipig/native_dialog/PromptDialog;->promptView:Lxyz/ipig/native_dialog/PromptView;

    invoke-virtual {v0}, Lxyz/ipig/native_dialog/PromptView;->getBuilder()Lxyz/ipig/native_dialog/Builder;

    move-result-object v0

    iget-boolean v0, v0, Lxyz/ipig/native_dialog/Builder;->withAnim:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lxyz/ipig/native_dialog/PromptDialog;->inAnim:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 379
    iget-object p1, p0, Lxyz/ipig/native_dialog/PromptDialog;->promptView:Lxyz/ipig/native_dialog/PromptView;

    invoke-virtual {p1, v0}, Lxyz/ipig/native_dialog/PromptView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method private initAnim(II)V
    .locals 19

    move-object/from16 v0, p0

    .line 81
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v1, v0, Lxyz/ipig/native_dialog/PromptDialog;->inDefaultAnim:Landroid/view/animation/AnimationSet;

    .line 82
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    move/from16 v3, p1

    int-to-float v3, v3

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float v18, v3, v10

    move/from16 v3, p2

    int-to-float v15, v3

    const v3, 0x3ee66666    # 0.45f

    mul-float v17, v15, v3

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v3, v1

    move/from16 v8, v18

    move/from16 v9, v17

    invoke-direct/range {v3 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 84
    iget-object v3, v0, Lxyz/ipig/native_dialog/PromptDialog;->inDefaultAnim:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 86
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct {v1, v4, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 87
    iget-object v5, v0, Lxyz/ipig/native_dialog/PromptDialog;->inDefaultAnim:Landroid/view/animation/AnimationSet;

    invoke-virtual {v5, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 88
    iget-object v1, v0, Lxyz/ipig/native_dialog/PromptDialog;->inDefaultAnim:Landroid/view/animation/AnimationSet;

    sget-wide v5, Lxyz/ipig/native_dialog/PromptDialog;->viewAnimDuration:J

    invoke-virtual {v1, v5, v6}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 89
    iget-object v1, v0, Lxyz/ipig/native_dialog/PromptDialog;->inDefaultAnim:Landroid/view/animation/AnimationSet;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 90
    iget-object v1, v0, Lxyz/ipig/native_dialog/PromptDialog;->inDefaultAnim:Landroid/view/animation/AnimationSet;

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v6}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 92
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v1, v0, Lxyz/ipig/native_dialog/PromptDialog;->outDefaultAnim:Landroid/view/animation/AnimationSet;

    .line 93
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x40000000    # 2.0f

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v6, 0x40000000    # 2.0f

    move-object v11, v1

    move v7, v15

    move v15, v6

    move/from16 v16, v18

    invoke-direct/range {v11 .. v17}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 95
    new-instance v6, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v6, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v8, 0xc8

    .line 96
    invoke-virtual {v6, v8, v9}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 97
    iget-object v8, v0, Lxyz/ipig/native_dialog/PromptDialog;->outDefaultAnim:Landroid/view/animation/AnimationSet;

    invoke-virtual {v8, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 98
    iget-object v1, v0, Lxyz/ipig/native_dialog/PromptDialog;->outDefaultAnim:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 99
    iget-object v1, v0, Lxyz/ipig/native_dialog/PromptDialog;->outDefaultAnim:Landroid/view/animation/AnimationSet;

    sget-wide v8, Lxyz/ipig/native_dialog/PromptDialog;->viewAnimDuration:J

    invoke-virtual {v1, v8, v9}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 100
    iget-object v1, v0, Lxyz/ipig/native_dialog/PromptDialog;->outDefaultAnim:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v5}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 101
    iget-object v1, v0, Lxyz/ipig/native_dialog/PromptDialog;->outDefaultAnim:Landroid/view/animation/AnimationSet;

    new-instance v6, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v6}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 103
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v4, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 104
    new-instance v6, Landroid/view/animation/ScaleAnimation;

    mul-float v17, v7, v10

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    move-object v11, v6

    invoke-direct/range {v11 .. v17}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 106
    new-instance v7, Landroid/view/animation/AnimationSet;

    invoke-direct {v7, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v7, v0, Lxyz/ipig/native_dialog/PromptDialog;->inSheetAnim:Landroid/view/animation/AnimationSet;

    .line 107
    iget-object v2, v0, Lxyz/ipig/native_dialog/PromptDialog;->inSheetAnim:Landroid/view/animation/AnimationSet;

    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 108
    iget-object v1, v0, Lxyz/ipig/native_dialog/PromptDialog;->inSheetAnim:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 109
    iget-object v1, v0, Lxyz/ipig/native_dialog/PromptDialog;->inSheetAnim:Landroid/view/animation/AnimationSet;

    sget-wide v6, Lxyz/ipig/native_dialog/PromptDialog;->viewAnimDuration:J

    invoke-virtual {v1, v6, v7}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 110
    iget-object v1, v0, Lxyz/ipig/native_dialog/PromptDialog;->inSheetAnim:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v5}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 113
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v1, v0, Lxyz/ipig/native_dialog/PromptDialog;->outSheetAnim:Landroid/view/animation/AlphaAnimation;

    .line 114
    iget-object v1, v0, Lxyz/ipig/native_dialog/PromptDialog;->outSheetAnim:Landroid/view/animation/AlphaAnimation;

    sget-wide v2, Lxyz/ipig/native_dialog/PromptDialog;->viewAnimDuration:J

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 115
    iget-object v1, v0, Lxyz/ipig/native_dialog/PromptDialog;->outSheetAnim:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    return-void
.end method

.method private varargs showAlert(Ljava/lang/String;Z[Lxyz/ipig/native_dialog/PromptButton;)V
    .locals 2

    .line 286
    array-length v0, p3

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showAlert: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lxyz/ipig/native_dialog/PromptDialog;->promptView:Lxyz/ipig/native_dialog/PromptView;

    invoke-virtual {v1}, Lxyz/ipig/native_dialog/PromptView;->getScrollY()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PromptDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v0, p0, Lxyz/ipig/native_dialog/PromptDialog;->inSheetAnim:Landroid/view/animation/AnimationSet;

    iput-object v0, p0, Lxyz/ipig/native_dialog/PromptDialog;->inAnim:Landroid/view/animation/Animation;

    .line 290
    iget-object v0, p0, Lxyz/ipig/native_dialog/PromptDialog;->outSheetAnim:Landroid/view/animation/AlphaAnimation;

    iput-object v0, p0, Lxyz/ipig/native_dialog/PromptDialog;->outAnim:Landroid/view/animation/Animation;

    goto :goto_0

    .line 292
    :cond_0
    iget-object v0, p0, Lxyz/ipig/native_dialog/PromptDialog;->inDefaultAnim:Landroid/view/animation/AnimationSet;

    iput-object v0, p0, Lxyz/ipig/native_dialog/PromptDialog;->inAnim:Landroid/view/animation/Animation;

    .line 293
    iget-object v0, p0, Lxyz/ipig/native_dialog/PromptDialog;->outDefaultAnim:Landroid/view/animation/AnimationSet;

    iput-object v0, p0, Lxyz/ipig/native_dialog/PromptDialog;->outAnim:Landroid/view/animation/Animation;

    .line 295
    :goto_0
    invoke-static {}, Lxyz/ipig/native_dialog/Builder;->getAlertDefaultBuilder()Lxyz/ipig/native_dialog/Builder;

    move-result-object v0

    .line 296
    invoke-virtual {v0, p1}, Lxyz/ipig/native_dialog/Builder;->text(Ljava/lang/String;)Lxyz/ipig/native_dialog/Builder;

    .line 298
    invoke-virtual {p0}, Lxyz/ipig/native_dialog/PromptDialog;->closeInput()V

    .line 299
    iget-object p1, p0, Lxyz/ipig/native_dialog/PromptDialog;->promptView:Lxyz/ipig/native_dialog/PromptView;

    invoke-virtual {p1, v0}, Lxyz/ipig/native_dialog/PromptView;->setBuilder(Lxyz/ipig/native_dialog/Builder;)V

    .line 300
    invoke-direct {p0, p2}, Lxyz/ipig/native_dialog/PromptDialog;->checkLoadView(Z)V

    .line 301
    iget-object p1, p0, Lxyz/ipig/native_dialog/PromptDialog;->promptView:Lxyz/ipig/native_dialog/PromptView;

    invoke-virtual {p1, p3}, Lxyz/ipig/native_dialog/PromptView;->showSomthingAlert([Lxyz/ipig/native_dialog/PromptButton;)V

    return-void
.end method

.method private showSomthing(IILjava/lang/String;Z)V
    .locals 1

    .line 243
    iget-object v0, p0, Lxyz/ipig/native_dialog/PromptDialog;->inDefaultAnim:Landroid/view/animation/AnimationSet;

    iput-object v0, p0, Lxyz/ipig/native_dialog/PromptDialog;->inAnim:Landroid/view/animation/Animation;

    .line 244
    iget-object v0, p0, Lxyz/ipig/native_dialog/PromptDialog;->outDefaultAnim:Landroid/view/animation/AnimationSet;

    iput-object v0, p0, Lxyz/ipig/native_dialog/PromptDialog;->outAnim:Landroid/view/animation/Animation;

    .line 245
    invoke-static {}, Lxyz/ipig/native_dialog/Builder;->getDefaultBuilder()Lxyz/ipig/native_dialog/Builder;

    move-result-object v0

    .line 246
    invoke-virtual {v0, p3}, Lxyz/ipig/native_dialog/Builder;->text(Ljava/lang/String;)Lxyz/ipig/native_dialog/Builder;

    .line 247
    invoke-virtual {v0, p1}, Lxyz/ipig/native_dialog/Builder;->icon(I)Lxyz/ipig/native_dialog/Builder;

    .line 248
    invoke-virtual {p0}, Lxyz/ipig/native_dialog/PromptDialog;->closeInput()V

    .line 249
    invoke-direct {p0, p4}, Lxyz/ipig/native_dialog/PromptDialog;->checkLoadView(Z)V

    .line 250
    iget-boolean p1, p0, Lxyz/ipig/native_dialog/PromptDialog;->isShowing:Z

    if-eqz p1, :cond_0

    .line 251
    iget-object p1, p0, Lxyz/ipig/native_dialog/PromptDialog;->promptView:Lxyz/ipig/native_dialog/PromptView;

    invoke-virtual {p1, v0}, Lxyz/ipig/native_dialog/PromptView;->setBuilder(Lxyz/ipig/native_dialog/Builder;)V

    .line 252
    iget-object p1, p0, Lxyz/ipig/native_dialog/PromptDialog;->promptView:Lxyz/ipig/native_dialog/PromptView;

    invoke-virtual {p1, p2}, Lxyz/ipig/native_dialog/PromptView;->showSomthing(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected closeInput()V
    .locals 3

    .line 385
    iget-object v0, p0, Lxyz/ipig/native_dialog/PromptDialog;->decorView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 386
    iget-object v1, p0, Lxyz/ipig/native_dialog/PromptDialog;->inputmanger:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 3

    .line 144
    iget-boolean v0, p0, Lxyz/ipig/native_dialog/PromptDialog;->isShowing:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lxyz/ipig/native_dialog/PromptDialog;->outAnimRunning:Z

    if-nez v0, :cond_3

    .line 145
    iget-object v0, p0, Lxyz/ipig/native_dialog/PromptDialog;->promptView:Lxyz/ipig/native_dialog/PromptView;

    invoke-virtual {v0}, Lxyz/ipig/native_dialog/PromptView;->getBuilder()Lxyz/ipig/native_dialog/Builder;

    move-result-object v0

    iget-boolean v0, v0, Lxyz/ipig/native_dialog/Builder;->withAnim:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lxyz/ipig/native_dialog/PromptDialog;->outAnim:Landroid/view/animation/Animation;

    if-eqz v0, :cond_2

    .line 147
    iget-object v0, p0, Lxyz/ipig/native_dialog/PromptDialog;->promptView:Lxyz/ipig/native_dialog/PromptView;

    invoke-virtual {v0}, Lxyz/ipig/native_dialog/PromptView;->getCurrentType()I

    move-result v0

    const/16 v1, 0x66

    if-ne v0, v1, :cond_0

    .line 148
    iget-object v0, p0, Lxyz/ipig/native_dialog/PromptDialog;->outAnim:Landroid/view/animation/Animation;

    iget-object v1, p0, Lxyz/ipig/native_dialog/PromptDialog;->promptView:Lxyz/ipig/native_dialog/PromptView;

    invoke-virtual {v1}, Lxyz/ipig/native_dialog/PromptView;->getBuilder()Lxyz/ipig/native_dialog/Builder;

    move-result-object v1

    iget-wide v1, v1, Lxyz/ipig/native_dialog/Builder;->loadingDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    goto :goto_0

    .line 150
    :cond_0
    iget-object v0, p0, Lxyz/ipig/native_dialog/PromptDialog;->outAnim:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 152
    :goto_0
    iget-object v0, p0, Lxyz/ipig/native_dialog/PromptDialog;->promptView:Lxyz/ipig/native_dialog/PromptView;

    invoke-virtual {v0}, Lxyz/ipig/native_dialog/PromptView;->getCurrentType()I

    move-result v0

    const/16 v1, 0x6e

    if-ne v0, v1, :cond_1

    .line 153
    iget-object v0, p0, Lxyz/ipig/native_dialog/PromptDialog;->promptView:Lxyz/ipig/native_dialog/PromptView;

    invoke-virtual {v0}, Lxyz/ipig/native_dialog/PromptView;->stopCustomerLoading()V

    .line 156
    :cond_1
    iget-object v0, p0, Lxyz/ipig/native_dialog/PromptDialog;->promptView:Lxyz/ipig/native_dialog/PromptView;

    invoke-virtual {v0}, Lxyz/ipig/native_dialog/PromptView;->dismiss()V

    .line 157
    iget-object v0, p0, Lxyz/ipig/native_dialog/PromptDialog;->promptView:Lxyz/ipig/native_dialog/PromptView;

    iget-object v1, p0, Lxyz/ipig/native_dialog/PromptDialog;->outAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lxyz/ipig/native_dialog/PromptView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 158
    iget-object v0, p0, Lxyz/ipig/native_dialog/PromptDialog;->outAnim:Landroid/view/animation/Animation;

    new-instance v1, Lxyz/ipig/native_dialog/PromptDialog$1;

    invoke-direct {v1, p0}, Lxyz/ipig/native_dialog/PromptDialog$1;-><init>(Lxyz/ipig/native_dialog/PromptDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_1

    .line 177
    :cond_2
    invoke-virtual {p0}, Lxyz/ipig/native_dialog/PromptDialog;->dismissImmediately()V

    :cond_3
    :goto_1
    return-void
.end method

.method public dismissImmediately()V
    .locals 2

    .line 132
    iget-boolean v0, p0, Lxyz/ipig/native_dialog/PromptDialog;->isShowing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lxyz/ipig/native_dialog/PromptDialog;->outAnimRunning:Z

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lxyz/ipig/native_dialog/PromptDialog;->decorView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lxyz/ipig/native_dialog/PromptDialog;->promptView:Lxyz/ipig/native_dialog/PromptView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 135
    iput-boolean v0, p0, Lxyz/ipig/native_dialog/PromptDialog;->isShowing:Z

    :cond_0
    return-void
.end method

.method public getAlertDefaultBuilder()Lxyz/ipig/native_dialog/Builder;
    .locals 1

    .line 407
    invoke-static {}, Lxyz/ipig/native_dialog/Builder;->getAlertDefaultBuilder()Lxyz/ipig/native_dialog/Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultBuilder()Lxyz/ipig/native_dialog/Builder;
    .locals 1

    .line 398
    invoke-static {}, Lxyz/ipig/native_dialog/Builder;->getDefaultBuilder()Lxyz/ipig/native_dialog/Builder;

    move-result-object v0

    return-object v0
.end method

.method public getViewAnimDuration()J
    .locals 2

    .line 56
    sget-wide v0, Lxyz/ipig/native_dialog/PromptDialog;->viewAnimDuration:J

    return-wide v0
.end method

.method public onAdClick()V
    .locals 1

    .line 430
    iget-object v0, p0, Lxyz/ipig/native_dialog/PromptDialog;->adListener:Lxyz/ipig/native_dialog/OnAdClickListener;

    if-eqz v0, :cond_0

    .line 431
    invoke-interface {v0}, Lxyz/ipig/native_dialog/OnAdClickListener;->onAdClick()V

    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 3

    .line 416
    iget-boolean v0, p0, Lxyz/ipig/native_dialog/PromptDialog;->isShowing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lxyz/ipig/native_dialog/PromptDialog;->promptView:Lxyz/ipig/native_dialog/PromptView;

    invoke-virtual {v0}, Lxyz/ipig/native_dialog/PromptView;->getCurrentType()I

    move-result v0

    const/16 v2, 0x66

    if-ne v0, v2, :cond_0

    return v1

    .line 419
    :cond_0
    iget-boolean v0, p0, Lxyz/ipig/native_dialog/PromptDialog;->isShowing:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lxyz/ipig/native_dialog/PromptDialog;->promptView:Lxyz/ipig/native_dialog/PromptView;

    invoke-virtual {v0}, Lxyz/ipig/native_dialog/PromptView;->getCurrentType()I

    move-result v0

    const/16 v2, 0x6b

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lxyz/ipig/native_dialog/PromptDialog;->promptView:Lxyz/ipig/native_dialog/PromptView;

    .line 420
    invoke-virtual {v0}, Lxyz/ipig/native_dialog/PromptView;->getCurrentType()I

    move-result v0

    const/16 v2, 0x6d

    if-ne v0, v2, :cond_2

    .line 421
    :cond_1
    invoke-virtual {p0}, Lxyz/ipig/native_dialog/PromptDialog;->dismiss()V

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public onDetach()V
    .locals 1

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lxyz/ipig/native_dialog/PromptDialog;->isShowing:Z

    return-void
.end method

.method public setInAnim(Landroid/view/animation/Animation;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lxyz/ipig/native_dialog/PromptDialog;->inAnim:Landroid/view/animation/Animation;

    return-void
.end method

.method public setOutAnim(Landroid/view/animation/Animation;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lxyz/ipig/native_dialog/PromptDialog;->outAnim:Landroid/view/animation/Animation;

    return-void
.end method

.method public setViewAnimDuration(J)V
    .locals 0

    .line 52
    sput-wide p1, Lxyz/ipig/native_dialog/PromptDialog;->viewAnimDuration:J

    return-void
.end method

.method public showAd(ZLxyz/ipig/native_dialog/OnAdClickListener;)Landroid/widget/ImageView;
    .locals 1

    .line 307
    iput-object p2, p0, Lxyz/ipig/native_dialog/PromptDialog;->adListener:Lxyz/ipig/native_dialog/OnAdClickListener;

    .line 308
    iget-object p2, p0, Lxyz/ipig/native_dialog/PromptDialog;->inSheetAnim:Landroid/view/animation/AnimationSet;

    iput-object p2, p0, Lxyz/ipig/native_dialog/PromptDialog;->inAnim:Landroid/view/animation/Animation;

    .line 309
    iget-object p2, p0, Lxyz/ipig/native_dialog/PromptDialog;->outSheetAnim:Landroid/view/animation/AlphaAnimation;

    iput-object p2, p0, Lxyz/ipig/native_dialog/PromptDialog;->outAnim:Landroid/view/animation/Animation;

    .line 310
    invoke-static {}, Lxyz/ipig/native_dialog/Builder;->getDefaultBuilder()Lxyz/ipig/native_dialog/Builder;

    move-result-object p2

    const/4 v0, 0x0

    .line 311
    invoke-virtual {p2, v0}, Lxyz/ipig/native_dialog/Builder;->touchAble(Z)Lxyz/ipig/native_dialog/Builder;

    .line 315
    invoke-virtual {p0}, Lxyz/ipig/native_dialog/PromptDialog;->closeInput()V

    .line 316
    invoke-direct {p0, p1}, Lxyz/ipig/native_dialog/PromptDialog;->checkLoadView(Z)V

    .line 317
    iget-object p1, p0, Lxyz/ipig/native_dialog/PromptDialog;->promptView:Lxyz/ipig/native_dialog/PromptView;

    invoke-virtual {p1, p2}, Lxyz/ipig/native_dialog/PromptView;->setBuilder(Lxyz/ipig/native_dialog/Builder;)V

    .line 318
    iget-object p1, p0, Lxyz/ipig/native_dialog/PromptDialog;->promptView:Lxyz/ipig/native_dialog/PromptView;

    invoke-virtual {p1}, Lxyz/ipig/native_dialog/PromptView;->showAd()V

    .line 319
    iget-object p1, p0, Lxyz/ipig/native_dialog/PromptDialog;->promptView:Lxyz/ipig/native_dialog/PromptView;

    return-object p1
.end method

.method public varargs showAlertSheet(Ljava/lang/String;Z[Lxyz/ipig/native_dialog/PromptButton;)V
    .locals 0

    .line 282
    invoke-direct {p0, p1, p2, p3}, Lxyz/ipig/native_dialog/PromptDialog;->showAlert(Ljava/lang/String;Z[Lxyz/ipig/native_dialog/PromptButton;)V

    return-void
.end method

.method public showCustom(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 235
    invoke-virtual {p0, p1, p2, v0}, Lxyz/ipig/native_dialog/PromptDialog;->showCustom(ILjava/lang/String;Z)V

    return-void
.end method

.method public showCustom(ILjava/lang/String;Z)V
    .locals 1

    const/16 v0, 0x6c

    .line 239
    invoke-direct {p0, p1, v0, p2, p3}, Lxyz/ipig/native_dialog/PromptDialog;->showSomthing(IILjava/lang/String;Z)V

    return-void
.end method

.method public showCustomLoading(ILjava/lang/String;)V
    .locals 2

    .line 443
    iget-object v0, p0, Lxyz/ipig/native_dialog/PromptDialog;->inDefaultAnim:Landroid/view/animation/AnimationSet;

    iput-object v0, p0, Lxyz/ipig/native_dialog/PromptDialog;->inAnim:Landroid/view/animation/Animation;

    .line 444
    iget-object v0, p0, Lxyz/ipig/native_dialog/PromptDialog;->outDefaultAnim:Landroid/view/animation/AnimationSet;

    iput-object v0, p0, Lxyz/ipig/native_dialog/PromptDialog;->outAnim:Landroid/view/animation/Animation;

    .line 445
    iget-object v0, p0, Lxyz/ipig/native_dialog/PromptDialog;->promptView:Lxyz/ipig/native_dialog/PromptView;

    invoke-virtual {v0}, Lxyz/ipig/native_dialog/PromptView;->getCurrentType()I

    move-result v0

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_0

    .line 446
    invoke-static {}, Lxyz/ipig/native_dialog/Builder;->getDefaultBuilder()Lxyz/ipig/native_dialog/Builder;

    move-result-object v0

    .line 447
    invoke-virtual {v0, p1}, Lxyz/ipig/native_dialog/Builder;->icon(I)Lxyz/ipig/native_dialog/Builder;

    .line 448
    invoke-virtual {v0, p2}, Lxyz/ipig/native_dialog/Builder;->text(Ljava/lang/String;)Lxyz/ipig/native_dialog/Builder;

    .line 449
    iget-object p1, p0, Lxyz/ipig/native_dialog/PromptDialog;->promptView:Lxyz/ipig/native_dialog/PromptView;

    invoke-virtual {p1, v0}, Lxyz/ipig/native_dialog/PromptView;->setBuilder(Lxyz/ipig/native_dialog/Builder;)V

    .line 450
    invoke-virtual {p0}, Lxyz/ipig/native_dialog/PromptDialog;->closeInput()V

    const/4 p1, 0x1

    .line 451
    invoke-direct {p0, p1}, Lxyz/ipig/native_dialog/PromptDialog;->checkLoadView(Z)V

    .line 452
    iget-object p1, p0, Lxyz/ipig/native_dialog/PromptDialog;->promptView:Lxyz/ipig/native_dialog/PromptView;

    invoke-virtual {p1}, Lxyz/ipig/native_dialog/PromptView;->showCustomLoading()V

    goto :goto_0

    .line 455
    :cond_0
    iget-object p1, p0, Lxyz/ipig/native_dialog/PromptDialog;->promptView:Lxyz/ipig/native_dialog/PromptView;

    invoke-virtual {p1, p2}, Lxyz/ipig/native_dialog/PromptView;->setText(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public showCustomerLoadingWithDelay(ILjava/lang/String;J)V
    .locals 1

    .line 468
    new-instance v0, Lxyz/ipig/native_dialog/PromptDialog$4;

    invoke-direct {v0, p0, p1, p2}, Lxyz/ipig/native_dialog/PromptDialog$4;-><init>(Lxyz/ipig/native_dialog/PromptDialog;ILjava/lang/String;)V

    iput-object v0, p0, Lxyz/ipig/native_dialog/PromptDialog;->runnable:Ljava/lang/Runnable;

    .line 474
    iget-object p1, p0, Lxyz/ipig/native_dialog/PromptDialog;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lxyz/ipig/native_dialog/PromptDialog;->runnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public showError(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 185
    invoke-virtual {p0, p1, v0}, Lxyz/ipig/native_dialog/PromptDialog;->showError(Ljava/lang/String;Z)V

    return-void
.end method

.method public showError(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public showInfo(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 195
    invoke-virtual {p0, p1, v0}, Lxyz/ipig/native_dialog/PromptDialog;->showInfo(Ljava/lang/String;Z)V

    return-void
.end method

.method public showInfo(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public showLoading(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 350
    invoke-virtual {p0, p1, v0}, Lxyz/ipig/native_dialog/PromptDialog;->showLoading(Ljava/lang/String;Z)V

    return-void
.end method

.method public showLoading(Ljava/lang/String;Z)V
    .locals 2

    .line 329
    iget-object v0, p0, Lxyz/ipig/native_dialog/PromptDialog;->inDefaultAnim:Landroid/view/animation/AnimationSet;

    iput-object v0, p0, Lxyz/ipig/native_dialog/PromptDialog;->inAnim:Landroid/view/animation/Animation;

    .line 330
    iget-object v0, p0, Lxyz/ipig/native_dialog/PromptDialog;->outDefaultAnim:Landroid/view/animation/AnimationSet;

    iput-object v0, p0, Lxyz/ipig/native_dialog/PromptDialog;->outAnim:Landroid/view/animation/Animation;

    .line 331
    iget-object v0, p0, Lxyz/ipig/native_dialog/PromptDialog;->promptView:Lxyz/ipig/native_dialog/PromptView;

    invoke-virtual {v0}, Lxyz/ipig/native_dialog/PromptView;->getCurrentType()I

    move-result v0

    const/16 v1, 0x66

    if-eq v0, v1, :cond_0

    .line 332
    invoke-static {}, Lxyz/ipig/native_dialog/Builder;->getDefaultBuilder()Lxyz/ipig/native_dialog/Builder;

    move-result-object v0

    .line 333
    sget v1, Lxyz/ipig/native_dialog/R$drawable;->ic_prompt_loading:I

    invoke-virtual {v0, v1}, Lxyz/ipig/native_dialog/Builder;->icon(I)Lxyz/ipig/native_dialog/Builder;

    .line 334
    invoke-virtual {v0, p1}, Lxyz/ipig/native_dialog/Builder;->text(Ljava/lang/String;)Lxyz/ipig/native_dialog/Builder;

    .line 335
    iget-object p1, p0, Lxyz/ipig/native_dialog/PromptDialog;->promptView:Lxyz/ipig/native_dialog/PromptView;

    invoke-virtual {p1, v0}, Lxyz/ipig/native_dialog/PromptView;->setBuilder(Lxyz/ipig/native_dialog/Builder;)V

    .line 336
    invoke-virtual {p0}, Lxyz/ipig/native_dialog/PromptDialog;->closeInput()V

    .line 337
    invoke-direct {p0, p2}, Lxyz/ipig/native_dialog/PromptDialog;->checkLoadView(Z)V

    .line 338
    iget-object p1, p0, Lxyz/ipig/native_dialog/PromptDialog;->promptView:Lxyz/ipig/native_dialog/PromptView;

    invoke-virtual {p1}, Lxyz/ipig/native_dialog/PromptView;->showLoading()V

    goto :goto_0

    .line 340
    :cond_0
    iget-object p2, p0, Lxyz/ipig/native_dialog/PromptDialog;->promptView:Lxyz/ipig/native_dialog/PromptView;

    invoke-virtual {p2, p1}, Lxyz/ipig/native_dialog/PromptView;->setText(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public showLoadingWithDelay(Ljava/lang/String;J)V
    .locals 2

    .line 358
    iget-object v0, p0, Lxyz/ipig/native_dialog/PromptDialog;->runnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lxyz/ipig/native_dialog/PromptDialog;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 359
    :cond_0
    new-instance v0, Lxyz/ipig/native_dialog/PromptDialog$3;

    invoke-direct {v0, p0, p1}, Lxyz/ipig/native_dialog/PromptDialog$3;-><init>(Lxyz/ipig/native_dialog/PromptDialog;Ljava/lang/String;)V

    iput-object v0, p0, Lxyz/ipig/native_dialog/PromptDialog;->runnable:Ljava/lang/Runnable;

    .line 365
    iget-object p1, p0, Lxyz/ipig/native_dialog/PromptDialog;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lxyz/ipig/native_dialog/PromptDialog;->runnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public showSuccess(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 211
    invoke-virtual {p0, p1, v0}, Lxyz/ipig/native_dialog/PromptDialog;->showSuccess(Ljava/lang/String;Z)V

    return-void
.end method

.method public showSuccess(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public showSuccessDelay(Ljava/lang/String;J)V
    .locals 2

    .line 219
    iget-object v0, p0, Lxyz/ipig/native_dialog/PromptDialog;->decorView:Landroid/view/ViewGroup;

    new-instance v1, Lxyz/ipig/native_dialog/PromptDialog$2;

    invoke-direct {v1, p0, p1}, Lxyz/ipig/native_dialog/PromptDialog$2;-><init>(Lxyz/ipig/native_dialog/PromptDialog;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public showWarn(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 203
    invoke-virtual {p0, p1, v0}, Lxyz/ipig/native_dialog/PromptDialog;->showWarn(Ljava/lang/String;Z)V

    return-void
.end method

.method public showWarn(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public showWarnAlert(Ljava/lang/String;Lxyz/ipig/native_dialog/PromptButton;)V
    .locals 1

    const/4 v0, 0x0

    .line 258
    invoke-virtual {p0, p1, p2, v0}, Lxyz/ipig/native_dialog/PromptDialog;->showWarnAlert(Ljava/lang/String;Lxyz/ipig/native_dialog/PromptButton;Z)V

    return-void
.end method

.method public showWarnAlert(Ljava/lang/String;Lxyz/ipig/native_dialog/PromptButton;Lxyz/ipig/native_dialog/PromptButton;)V
    .locals 1

    const/4 v0, 0x1

    .line 278
    invoke-virtual {p0, p1, p2, p3, v0}, Lxyz/ipig/native_dialog/PromptDialog;->showWarnAlert(Ljava/lang/String;Lxyz/ipig/native_dialog/PromptButton;Lxyz/ipig/native_dialog/PromptButton;Z)V

    return-void
.end method

.method public showWarnAlert(Ljava/lang/String;Lxyz/ipig/native_dialog/PromptButton;Lxyz/ipig/native_dialog/PromptButton;Z)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Lxyz/ipig/native_dialog/PromptButton;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    .line 274
    invoke-direct {p0, p1, p4, v0}, Lxyz/ipig/native_dialog/PromptDialog;->showAlert(Ljava/lang/String;Z[Lxyz/ipig/native_dialog/PromptButton;)V

    return-void
.end method

.method public showWarnAlert(Ljava/lang/String;Lxyz/ipig/native_dialog/PromptButton;Z)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lxyz/ipig/native_dialog/PromptButton;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 262
    invoke-direct {p0, p1, p3, v0}, Lxyz/ipig/native_dialog/PromptDialog;->showAlert(Ljava/lang/String;Z[Lxyz/ipig/native_dialog/PromptButton;)V

    return-void
.end method
