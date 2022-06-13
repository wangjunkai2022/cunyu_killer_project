.class public Lcn/pedant/SweetAlert/SweetAlertDialog;
.super Landroid/app/Dialog;
.source "SweetAlertDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;
    }
.end annotation


# static fields
.field public static final BUTTON_CANCEL:I = -0x2

.field public static final BUTTON_CONFIRM:I = -0x1

.field public static final CUSTOM_IMAGE_TYPE:I = 0x4

.field public static DARK_STYLE:Z = false

.field public static final ERROR_TYPE:I = 0x1

.field public static final NORMAL_TYPE:I = 0x0

.field public static final PROGRESS_TYPE:I = 0x5

.field public static final SUCCESS_TYPE:I = 0x2

.field public static final WARNING_TYPE:I = 0x3


# instance fields
.field private mAlertType:I

.field private mCancelButton:Landroid/widget/Button;

.field private mCancelClickListener:Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;

.field private mCancelText:Ljava/lang/String;

.field private mCloseFromCancel:Z

.field private mConfirmButton:Landroid/widget/Button;

.field private mConfirmClickListener:Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;

.field private mConfirmText:Ljava/lang/String;

.field private mContentText:Ljava/lang/String;

.field private mContentTextView:Landroid/widget/TextView;

.field private mCustomImage:Landroid/widget/ImageView;

.field private mCustomImgDrawable:Landroid/graphics/drawable/Drawable;

.field private mCustomView:Landroid/view/View;

.field private mCustomViewContainer:Landroid/widget/FrameLayout;

.field private mDialogView:Landroid/view/View;

.field private mErrorFrame:Landroid/widget/FrameLayout;

.field private mErrorInAnim:Landroid/view/animation/Animation;

.field private mErrorX:Landroid/widget/ImageView;

.field private mErrorXInAnim:Landroid/view/animation/AnimationSet;

.field private mModalInAnim:Landroid/view/animation/AnimationSet;

.field private mModalOutAnim:Landroid/view/animation/AnimationSet;

.field private mNeutralButton:Landroid/widget/Button;

.field private mNeutralClickListener:Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;

.field private mNeutralText:Ljava/lang/String;

.field private mOverlayOutAnim:Landroid/view/animation/Animation;

.field private mProgressFrame:Landroid/widget/FrameLayout;

.field private mProgressHelper:Lcn/pedant/SweetAlert/ProgressHelper;

.field private mShowCancel:Z

.field private mShowContent:Z

.field private mSuccessBowAnim:Landroid/view/animation/Animation;

.field private mSuccessFrame:Landroid/widget/FrameLayout;

.field private mSuccessLayoutAnimSet:Landroid/view/animation/AnimationSet;

.field private mSuccessLeftMask:Landroid/view/View;

.field private mSuccessRightMask:Landroid/view/View;

.field private mSuccessTick:Lcn/pedant/SweetAlert/SuccessTickView;

.field private mTitleText:Ljava/lang/String;

.field private mTitleTextView:Landroid/widget/TextView;

.field private mWarningFrame:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1, v0}, Lcn/pedant/SweetAlert/SweetAlertDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 88
    sget-boolean v0, Lcn/pedant/SweetAlert/SweetAlertDialog;->DARK_STYLE:Z

    if-eqz v0, :cond_0

    sget v0, Lcn/pedant/SweetAlert/R$style;->alert_dialog_dark:I

    goto :goto_0

    :cond_0
    sget v0, Lcn/pedant/SweetAlert/R$style;->alert_dialog_light:I

    :goto_0
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x1

    .line 89
    invoke-virtual {p0, v0}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setCancelable(Z)V

    .line 90
    invoke-virtual {p0, v0}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 91
    new-instance v0, Lcn/pedant/SweetAlert/ProgressHelper;

    invoke-direct {v0, p1}, Lcn/pedant/SweetAlert/ProgressHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mProgressHelper:Lcn/pedant/SweetAlert/ProgressHelper;

    .line 92
    iput p2, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mAlertType:I

    .line 93
    invoke-virtual {p0}, Lcn/pedant/SweetAlert/SweetAlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcn/pedant/SweetAlert/R$anim;->error_frame_in:I

    invoke-static {p1, p2}, Lcn/pedant/SweetAlert/OptAnimationLoader;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mErrorInAnim:Landroid/view/animation/Animation;

    .line 94
    invoke-virtual {p0}, Lcn/pedant/SweetAlert/SweetAlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcn/pedant/SweetAlert/R$anim;->error_x_in:I

    invoke-static {p1, p2}, Lcn/pedant/SweetAlert/OptAnimationLoader;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    check-cast p1, Landroid/view/animation/AnimationSet;

    iput-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mErrorXInAnim:Landroid/view/animation/AnimationSet;

    .line 97
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0xa

    if-gt p1, p2, :cond_3

    .line 98
    iget-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mErrorXInAnim:Landroid/view/animation/AnimationSet;

    invoke-virtual {p1}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    .line 100
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_2

    .line 101
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/view/animation/AlphaAnimation;

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 105
    :cond_2
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_3

    .line 106
    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 109
    :cond_3
    invoke-virtual {p0}, Lcn/pedant/SweetAlert/SweetAlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcn/pedant/SweetAlert/R$anim;->success_bow_roate:I

    invoke-static {p1, p2}, Lcn/pedant/SweetAlert/OptAnimationLoader;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mSuccessBowAnim:Landroid/view/animation/Animation;

    .line 110
    invoke-virtual {p0}, Lcn/pedant/SweetAlert/SweetAlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcn/pedant/SweetAlert/R$anim;->success_mask_layout:I

    invoke-static {p1, p2}, Lcn/pedant/SweetAlert/OptAnimationLoader;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    check-cast p1, Landroid/view/animation/AnimationSet;

    iput-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mSuccessLayoutAnimSet:Landroid/view/animation/AnimationSet;

    .line 111
    invoke-virtual {p0}, Lcn/pedant/SweetAlert/SweetAlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcn/pedant/SweetAlert/R$anim;->modal_in:I

    invoke-static {p1, p2}, Lcn/pedant/SweetAlert/OptAnimationLoader;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    check-cast p1, Landroid/view/animation/AnimationSet;

    iput-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mModalInAnim:Landroid/view/animation/AnimationSet;

    .line 112
    invoke-virtual {p0}, Lcn/pedant/SweetAlert/SweetAlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcn/pedant/SweetAlert/R$anim;->modal_out:I

    invoke-static {p1, p2}, Lcn/pedant/SweetAlert/OptAnimationLoader;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    check-cast p1, Landroid/view/animation/AnimationSet;

    iput-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mModalOutAnim:Landroid/view/animation/AnimationSet;

    .line 113
    iget-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mModalOutAnim:Landroid/view/animation/AnimationSet;

    new-instance p2, Lcn/pedant/SweetAlert/SweetAlertDialog$1;

    invoke-direct {p2, p0}, Lcn/pedant/SweetAlert/SweetAlertDialog$1;-><init>(Lcn/pedant/SweetAlert/SweetAlertDialog;)V

    invoke-virtual {p1, p2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 140
    new-instance p1, Lcn/pedant/SweetAlert/SweetAlertDialog$2;

    invoke-direct {p1, p0}, Lcn/pedant/SweetAlert/SweetAlertDialog$2;-><init>(Lcn/pedant/SweetAlert/SweetAlertDialog;)V

    iput-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mOverlayOutAnim:Landroid/view/animation/Animation;

    .line 148
    iget-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mOverlayOutAnim:Landroid/view/animation/Animation;

    const-wide/16 v0, 0x78

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    return-void
.end method

.method static synthetic access$000(Lcn/pedant/SweetAlert/SweetAlertDialog;)Landroid/view/View;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mDialogView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcn/pedant/SweetAlert/SweetAlertDialog;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mCloseFromCancel:Z

    return p0
.end method

.method static synthetic access$201(Lcn/pedant/SweetAlert/SweetAlertDialog;)V
    .locals 0

    .line 25
    invoke-super {p0}, Landroid/app/Dialog;->cancel()V

    return-void
.end method

.method static synthetic access$301(Lcn/pedant/SweetAlert/SweetAlertDialog;)V
    .locals 0

    .line 25
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private changeAlertType(IZ)V
    .locals 3

    .line 216
    iput p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mAlertType:I

    .line 218
    iget-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mDialogView:Landroid/view/View;

    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    .line 221
    invoke-direct {p0}, Lcn/pedant/SweetAlert/SweetAlertDialog;->restore()V

    .line 223
    :cond_0
    iget p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mAlertType:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 241
    :cond_1
    iget-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mProgressFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 242
    iget-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mConfirmButton:Landroid/widget/Button;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 238
    :cond_2
    iget-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mCustomImgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setCustomImage(Landroid/graphics/drawable/Drawable;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    goto :goto_0

    .line 235
    :cond_3
    iget-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mWarningFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 228
    :cond_4
    iget-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mSuccessFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 230
    iget-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mSuccessLeftMask:Landroid/view/View;

    iget-object v2, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mSuccessLayoutAnimSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v2}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/animation/Animation;

    invoke-virtual {p1, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 231
    iget-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mSuccessRightMask:Landroid/view/View;

    iget-object v1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mSuccessLayoutAnimSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 225
    :cond_5
    iget-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mErrorFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    if-nez p2, :cond_6

    .line 246
    invoke-direct {p0}, Lcn/pedant/SweetAlert/SweetAlertDialog;->playAnimation()V

    :cond_6
    return-void
.end method

.method private dismissWithAnimation(Z)V
    .locals 1

    .line 473
    iput-boolean p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mCloseFromCancel:Z

    .line 474
    iget-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mConfirmButton:Landroid/widget/Button;

    iget-object v0, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mOverlayOutAnim:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 475
    iget-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mDialogView:Landroid/view/View;

    iget-object v0, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mModalOutAnim:Landroid/view/animation/AnimationSet;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private playAnimation()V
    .locals 2

    .line 206
    iget v0, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mAlertType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 207
    iget-object v0, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mErrorFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mErrorInAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 208
    iget-object v0, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mErrorX:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mErrorXInAnim:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 210
    iget-object v0, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mSuccessTick:Lcn/pedant/SweetAlert/SuccessTickView;

    invoke-virtual {v0}, Lcn/pedant/SweetAlert/SuccessTickView;->startTickAnim()V

    .line 211
    iget-object v0, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mSuccessRightMask:Landroid/view/View;

    iget-object v1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mSuccessBowAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private restore()V
    .locals 2

    .line 190
    iget-object v0, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mCustomImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mErrorFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mSuccessFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mWarningFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mProgressFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mConfirmButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mConfirmButton:Landroid/widget/Button;

    sget v1, Lcn/pedant/SweetAlert/R$drawable;->green_button_background:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 198
    iget-object v0, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mErrorFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearAnimation()V

    .line 199
    iget-object v0, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mErrorX:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 200
    iget-object v0, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mSuccessTick:Lcn/pedant/SweetAlert/SuccessTickView;

    invoke-virtual {v0}, Lcn/pedant/SweetAlert/SuccessTickView;->clearAnimation()V

    .line 201
    iget-object v0, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mSuccessLeftMask:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 202
    iget-object v0, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mSuccessRightMask:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 462
    invoke-direct {p0, v0}, Lcn/pedant/SweetAlert/SweetAlertDialog;->dismissWithAnimation(Z)V

    return-void
.end method

.method public changeAlertType(I)V
    .locals 1

    const/4 v0, 0x0

    .line 256
    invoke-direct {p0, p1, v0}, Lcn/pedant/SweetAlert/SweetAlertDialog;->changeAlertType(IZ)V

    return-void
.end method

.method public dismissWithAnimation()V
    .locals 1

    const/4 v0, 0x0

    .line 469
    invoke-direct {p0, v0}, Lcn/pedant/SweetAlert/SweetAlertDialog;->dismissWithAnimation(Z)V

    return-void
.end method

.method public getAlerType()I
    .locals 1

    .line 252
    iget v0, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mAlertType:I

    return v0
.end method

.method public getButton(I)Landroid/widget/Button;
    .locals 1

    const/4 v0, -0x3

    if-eq p1, v0, :cond_1

    const/4 v0, -0x2

    if-eq p1, v0, :cond_0

    .line 392
    iget-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mConfirmButton:Landroid/widget/Button;

    return-object p1

    .line 394
    :cond_0
    iget-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mCancelButton:Landroid/widget/Button;

    return-object p1

    .line 396
    :cond_1
    iget-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mNeutralButton:Landroid/widget/Button;

    return-object p1
.end method

.method public getCancelText()Ljava/lang/String;
    .locals 1

    .line 330
    iget-object v0, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mCancelText:Ljava/lang/String;

    return-object v0
.end method

.method public getConfirmText()Ljava/lang/String;
    .locals 1

    .line 343
    iget-object v0, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mConfirmText:Ljava/lang/String;

    return-object v0
.end method

.method public getContentText()Ljava/lang/String;
    .locals 1

    .line 291
    iget-object v0, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mContentText:Ljava/lang/String;

    return-object v0
.end method

.method public getProgressHelper()Lcn/pedant/SweetAlert/ProgressHelper;
    .locals 1

    .line 502
    iget-object v0, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mProgressHelper:Lcn/pedant/SweetAlert/ProgressHelper;

    return-object v0
.end method

.method public getTitleText()Ljava/lang/String;
    .locals 1

    .line 261
    iget-object v0, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mTitleText:Ljava/lang/String;

    return-object v0
.end method

.method public isShowCancelButton()Z
    .locals 1

    .line 306
    iget-boolean v0, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mShowCancel:Z

    return v0
.end method

.method public isShowContentText()Z
    .locals 1

    .line 318
    iget-boolean v0, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mShowContent:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 480
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcn/pedant/SweetAlert/R$id;->cancel_button:I

    if-ne v0, v1, :cond_1

    .line 481
    iget-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mCancelClickListener:Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;

    if-eqz p1, :cond_0

    .line 482
    invoke-interface {p1, p0}, Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;->onClick(Lcn/pedant/SweetAlert/SweetAlertDialog;)V

    goto :goto_0

    .line 484
    :cond_0
    invoke-virtual {p0}, Lcn/pedant/SweetAlert/SweetAlertDialog;->dismissWithAnimation()V

    goto :goto_0

    .line 486
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcn/pedant/SweetAlert/R$id;->confirm_button:I

    if-ne v0, v1, :cond_3

    .line 487
    iget-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mConfirmClickListener:Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;

    if-eqz p1, :cond_2

    .line 488
    invoke-interface {p1, p0}, Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;->onClick(Lcn/pedant/SweetAlert/SweetAlertDialog;)V

    goto :goto_0

    .line 490
    :cond_2
    invoke-virtual {p0}, Lcn/pedant/SweetAlert/SweetAlertDialog;->dismissWithAnimation()V

    goto :goto_0

    .line 492
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcn/pedant/SweetAlert/R$id;->neutral_button:I

    if-ne p1, v0, :cond_5

    .line 493
    iget-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mNeutralClickListener:Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;

    if-eqz p1, :cond_4

    .line 494
    invoke-interface {p1, p0}, Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;->onClick(Lcn/pedant/SweetAlert/SweetAlertDialog;)V

    goto :goto_0

    .line 496
    :cond_4
    invoke-virtual {p0}, Lcn/pedant/SweetAlert/SweetAlertDialog;->dismissWithAnimation()V

    :cond_5
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 152
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 153
    sget p1, Lcn/pedant/SweetAlert/R$layout;->alert_dialog:I

    invoke-virtual {p0, p1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setContentView(I)V

    .line 155
    invoke-virtual {p0}, Lcn/pedant/SweetAlert/SweetAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mDialogView:Landroid/view/View;

    .line 156
    sget p1, Lcn/pedant/SweetAlert/R$id;->title_text:I

    invoke-virtual {p0, p1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mTitleTextView:Landroid/widget/TextView;

    .line 157
    sget p1, Lcn/pedant/SweetAlert/R$id;->content_text:I

    invoke-virtual {p0, p1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mContentTextView:Landroid/widget/TextView;

    .line 158
    sget p1, Lcn/pedant/SweetAlert/R$id;->custom_view_container:I

    invoke-virtual {p0, p1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mCustomViewContainer:Landroid/widget/FrameLayout;

    .line 159
    sget p1, Lcn/pedant/SweetAlert/R$id;->error_frame:I

    invoke-virtual {p0, p1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mErrorFrame:Landroid/widget/FrameLayout;

    .line 160
    iget-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mErrorFrame:Landroid/widget/FrameLayout;

    sget v0, Lcn/pedant/SweetAlert/R$id;->error_x:I

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mErrorX:Landroid/widget/ImageView;

    .line 161
    sget p1, Lcn/pedant/SweetAlert/R$id;->success_frame:I

    invoke-virtual {p0, p1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mSuccessFrame:Landroid/widget/FrameLayout;

    .line 162
    sget p1, Lcn/pedant/SweetAlert/R$id;->progress_dialog:I

    invoke-virtual {p0, p1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mProgressFrame:Landroid/widget/FrameLayout;

    .line 163
    iget-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mSuccessFrame:Landroid/widget/FrameLayout;

    sget v0, Lcn/pedant/SweetAlert/R$id;->success_tick:I

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/pedant/SweetAlert/SuccessTickView;

    iput-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mSuccessTick:Lcn/pedant/SweetAlert/SuccessTickView;

    .line 164
    iget-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mSuccessFrame:Landroid/widget/FrameLayout;

    sget v0, Lcn/pedant/SweetAlert/R$id;->mask_left:I

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mSuccessLeftMask:Landroid/view/View;

    .line 165
    iget-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mSuccessFrame:Landroid/widget/FrameLayout;

    sget v0, Lcn/pedant/SweetAlert/R$id;->mask_right:I

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mSuccessRightMask:Landroid/view/View;

    .line 166
    sget p1, Lcn/pedant/SweetAlert/R$id;->custom_image:I

    invoke-virtual {p0, p1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mCustomImage:Landroid/widget/ImageView;

    .line 167
    sget p1, Lcn/pedant/SweetAlert/R$id;->warning_frame:I

    invoke-virtual {p0, p1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mWarningFrame:Landroid/widget/FrameLayout;

    .line 168
    sget p1, Lcn/pedant/SweetAlert/R$id;->confirm_button:I

    invoke-virtual {p0, p1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mConfirmButton:Landroid/widget/Button;

    .line 169
    iget-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mConfirmButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mConfirmButton:Landroid/widget/Button;

    sget-object v0, Lcn/pedant/SweetAlert/Constants;->FOCUS_TOUCH_LISTENER:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 171
    sget p1, Lcn/pedant/SweetAlert/R$id;->cancel_button:I

    invoke-virtual {p0, p1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mCancelButton:Landroid/widget/Button;

    .line 172
    iget-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mCancelButton:Landroid/widget/Button;

    sget-object v0, Lcn/pedant/SweetAlert/Constants;->FOCUS_TOUCH_LISTENER:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 174
    sget p1, Lcn/pedant/SweetAlert/R$id;->neutral_button:I

    invoke-virtual {p0, p1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mNeutralButton:Landroid/widget/Button;

    .line 175
    iget-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mNeutralButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mNeutralButton:Landroid/widget/Button;

    sget-object v0, Lcn/pedant/SweetAlert/Constants;->FOCUS_TOUCH_LISTENER:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 177
    iget-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mProgressHelper:Lcn/pedant/SweetAlert/ProgressHelper;

    sget v0, Lcn/pedant/SweetAlert/R$id;->progressWheel:I

    invoke-virtual {p0, v0}, Lcn/pedant/SweetAlert/SweetAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pnikosis/materialishprogress/ProgressWheel;

    invoke-virtual {p1, v0}, Lcn/pedant/SweetAlert/ProgressHelper;->setProgressWheel(Lcom/pnikosis/materialishprogress/ProgressWheel;)V

    .line 179
    iget-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mTitleText:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setTitleText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    .line 180
    iget-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mContentText:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setContentText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    .line 181
    iget-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mCustomView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setCustomView(Landroid/view/View;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    .line 182
    iget-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mCancelText:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setCancelText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    .line 183
    iget-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mConfirmText:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setConfirmText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    .line 184
    iget-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mNeutralText:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setNeutralText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    .line 185
    iget p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mAlertType:I

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcn/pedant/SweetAlert/SweetAlertDialog;->changeAlertType(IZ)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 438
    iget-object v0, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mDialogView:Landroid/view/View;

    iget-object v1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mModalInAnim:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 439
    invoke-direct {p0}, Lcn/pedant/SweetAlert/SweetAlertDialog;->playAnimation()V

    return-void
.end method

.method public setCancelButton(ILcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcn/pedant/SweetAlert/SweetAlertDialog;
    .locals 1

    .line 420
    invoke-virtual {p0}, Lcn/pedant/SweetAlert/SweetAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 421
    invoke-virtual {p0, p1, p2}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setCancelButton(Ljava/lang/String;Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    return-object p0
.end method

.method public setCancelButton(Ljava/lang/String;Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcn/pedant/SweetAlert/SweetAlertDialog;
    .locals 0

    .line 414
    invoke-virtual {p0, p1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setCancelText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    .line 415
    invoke-virtual {p0, p2}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setCancelClickListener(Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    return-object p0
.end method

.method public setCancelClickListener(Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcn/pedant/SweetAlert/SweetAlertDialog;
    .locals 0

    .line 355
    iput-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mCancelClickListener:Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;

    return-object p0
.end method

.method public setCancelText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;
    .locals 1

    .line 334
    iput-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mCancelText:Ljava/lang/String;

    .line 335
    iget-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mCancelButton:Landroid/widget/Button;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mCancelText:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 336
    invoke-virtual {p0, p1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->showCancelButton(Z)Lcn/pedant/SweetAlert/SweetAlertDialog;

    .line 337
    iget-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mCancelButton:Landroid/widget/Button;

    iget-object v0, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mCancelText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p0
.end method

.method public setConfirmButton(ILcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcn/pedant/SweetAlert/SweetAlertDialog;
    .locals 1

    .line 407
    invoke-virtual {p0}, Lcn/pedant/SweetAlert/SweetAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 408
    invoke-virtual {p0, p1, p2}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setConfirmButton(Ljava/lang/String;Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    return-object p0
.end method

.method public setConfirmButton(Ljava/lang/String;Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcn/pedant/SweetAlert/SweetAlertDialog;
    .locals 0

    .line 401
    invoke-virtual {p0, p1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setConfirmText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    .line 402
    invoke-virtual {p0, p2}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setConfirmClickListener(Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    return-object p0
.end method

.method public setConfirmClickListener(Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcn/pedant/SweetAlert/SweetAlertDialog;
    .locals 0

    .line 360
    iput-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mConfirmClickListener:Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;

    return-object p0
.end method

.method public setConfirmText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;
    .locals 1

    .line 347
    iput-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mConfirmText:Ljava/lang/String;

    .line 348
    iget-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mConfirmButton:Landroid/widget/Button;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mConfirmText:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 349
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p0
.end method

.method public setContentText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;
    .locals 1

    .line 295
    iput-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mContentText:Ljava/lang/String;

    .line 296
    iget-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mContentTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mContentText:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 297
    invoke-virtual {p0, p1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->showContentText(Z)Lcn/pedant/SweetAlert/SweetAlertDialog;

    .line 298
    iget-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mContentTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mContentText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    iget-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mContentTextView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 300
    iget-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mCustomViewContainer:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-object p0
.end method

.method public setCustomImage(I)Lcn/pedant/SweetAlert/SweetAlertDialog;
    .locals 1

    .line 287
    invoke-virtual {p0}, Lcn/pedant/SweetAlert/SweetAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setCustomImage(Landroid/graphics/drawable/Drawable;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public setCustomImage(Landroid/graphics/drawable/Drawable;)Lcn/pedant/SweetAlert/SweetAlertDialog;
    .locals 1

    .line 278
    iput-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mCustomImgDrawable:Landroid/graphics/drawable/Drawable;

    .line 279
    iget-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mCustomImage:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mCustomImgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 280
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 281
    iget-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mCustomImage:Landroid/widget/ImageView;

    iget-object v0, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mCustomImgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-object p0
.end method

.method public setCustomView(Landroid/view/View;)Lcn/pedant/SweetAlert/SweetAlertDialog;
    .locals 1

    .line 448
    iput-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mCustomView:Landroid/view/View;

    .line 449
    iget-object v0, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mCustomViewContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 450
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 451
    iget-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mCustomViewContainer:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 452
    iget-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mContentTextView:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-object p0
.end method

.method public setNeutralButton(ILcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcn/pedant/SweetAlert/SweetAlertDialog;
    .locals 1

    .line 432
    invoke-virtual {p0}, Lcn/pedant/SweetAlert/SweetAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 433
    invoke-virtual {p0, p1, p2}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setNeutralButton(Ljava/lang/String;Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/String;Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcn/pedant/SweetAlert/SweetAlertDialog;
    .locals 0

    .line 426
    invoke-virtual {p0, p1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setNeutralText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    .line 427
    invoke-virtual {p0, p2}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setNeutralClickListener(Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    return-object p0
.end method

.method public setNeutralClickListener(Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcn/pedant/SweetAlert/SweetAlertDialog;
    .locals 0

    .line 374
    iput-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mNeutralClickListener:Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;

    return-object p0
.end method

.method public setNeutralText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;
    .locals 1

    .line 365
    iput-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mNeutralText:Ljava/lang/String;

    .line 366
    iget-object v0, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mNeutralButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mNeutralText:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 367
    iget-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mNeutralButton:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 368
    iget-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mNeutralButton:Landroid/widget/Button;

    iget-object v0, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mNeutralText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p0
.end method

.method public setTitle(I)V
    .locals 1

    .line 385
    invoke-virtual {p0}, Lcn/pedant/SweetAlert/SweetAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setTitleText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 380
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setTitleText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    return-void
.end method

.method public setTitleText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;
    .locals 1

    .line 265
    iput-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mTitleText:Ljava/lang/String;

    .line 266
    iget-object v0, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mTitleText:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 267
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 268
    iget-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mTitleTextView:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 270
    :cond_0
    iget-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mTitleTextView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 271
    iget-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mTitleTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mTitleText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public showCancelButton(Z)Lcn/pedant/SweetAlert/SweetAlertDialog;
    .locals 1

    .line 310
    iput-boolean p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mShowCancel:Z

    .line 311
    iget-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mCancelButton:Landroid/widget/Button;

    if-eqz p1, :cond_1

    .line 312
    iget-boolean v0, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mShowCancel:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1
    return-object p0
.end method

.method public showContentText(Z)Lcn/pedant/SweetAlert/SweetAlertDialog;
    .locals 1

    .line 322
    iput-boolean p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mShowContent:Z

    .line 323
    iget-object p1, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mContentTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 324
    iget-boolean v0, p0, Lcn/pedant/SweetAlert/SweetAlertDialog;->mShowContent:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-object p0
.end method
