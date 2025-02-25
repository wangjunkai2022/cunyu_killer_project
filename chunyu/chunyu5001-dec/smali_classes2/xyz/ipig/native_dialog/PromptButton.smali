.class public Lxyz/ipig/native_dialog/PromptButton;
.super Ljava/lang/Object;
.source "PromptButton.java"


# instance fields
.field private dismissAfterClick:Z

.field private focus:Z

.field private focusBacColor:I

.field private isDelyClick:Z

.field private listener:Lxyz/ipig/native_dialog/PromptButtonListener;

.field private rect:Landroid/graphics/RectF;

.field private text:Ljava/lang/String;

.field private textColor:I

.field private textSize:F


# direct methods
.method public constructor <init>(Ljava/lang/String;Lxyz/ipig/native_dialog/PromptButtonListener;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "confirm"

    .line 13
    iput-object v0, p0, Lxyz/ipig/native_dialog/PromptButton;->text:Ljava/lang/String;

    const/high16 v0, -0x1000000

    .line 15
    iput v0, p0, Lxyz/ipig/native_dialog/PromptButton;->textColor:I

    const/high16 v0, 0x41900000    # 18.0f

    .line 16
    iput v0, p0, Lxyz/ipig/native_dialog/PromptButton;->textSize:F

    const-string v0, "#DCDCDC"

    .line 19
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lxyz/ipig/native_dialog/PromptButton;->focusBacColor:I

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lxyz/ipig/native_dialog/PromptButton;->dismissAfterClick:Z

    .line 24
    iput-object p1, p0, Lxyz/ipig/native_dialog/PromptButton;->text:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lxyz/ipig/native_dialog/PromptButton;->listener:Lxyz/ipig/native_dialog/PromptButtonListener;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lxyz/ipig/native_dialog/PromptButtonListener;Z)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "confirm"

    .line 13
    iput-object v0, p0, Lxyz/ipig/native_dialog/PromptButton;->text:Ljava/lang/String;

    const/high16 v0, -0x1000000

    .line 15
    iput v0, p0, Lxyz/ipig/native_dialog/PromptButton;->textColor:I

    const/high16 v0, 0x41900000    # 18.0f

    .line 16
    iput v0, p0, Lxyz/ipig/native_dialog/PromptButton;->textSize:F

    const-string v0, "#DCDCDC"

    .line 19
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lxyz/ipig/native_dialog/PromptButton;->focusBacColor:I

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lxyz/ipig/native_dialog/PromptButton;->dismissAfterClick:Z

    .line 28
    iput-object p1, p0, Lxyz/ipig/native_dialog/PromptButton;->text:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lxyz/ipig/native_dialog/PromptButton;->listener:Lxyz/ipig/native_dialog/PromptButtonListener;

    .line 30
    iput-boolean p3, p0, Lxyz/ipig/native_dialog/PromptButton;->isDelyClick:Z

    return-void
.end method


# virtual methods
.method public getFocusBacColor()I
    .locals 1

    .line 86
    iget v0, p0, Lxyz/ipig/native_dialog/PromptButton;->focusBacColor:I

    return v0
.end method

.method public getListener()Lxyz/ipig/native_dialog/PromptButtonListener;
    .locals 1

    .line 78
    iget-object v0, p0, Lxyz/ipig/native_dialog/PromptButton;->listener:Lxyz/ipig/native_dialog/PromptButtonListener;

    return-object v0
.end method

.method public getRect()Landroid/graphics/RectF;
    .locals 1

    .line 70
    iget-object v0, p0, Lxyz/ipig/native_dialog/PromptButton;->rect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lxyz/ipig/native_dialog/PromptButton;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    .line 50
    iget v0, p0, Lxyz/ipig/native_dialog/PromptButton;->textColor:I

    return v0
.end method

.method public getTextSize()F
    .locals 1

    .line 54
    iget v0, p0, Lxyz/ipig/native_dialog/PromptButton;->textSize:F

    return v0
.end method

.method public isDelyClick()Z
    .locals 1

    .line 102
    iget-boolean v0, p0, Lxyz/ipig/native_dialog/PromptButton;->isDelyClick:Z

    return v0
.end method

.method public isDismissAfterClick()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Lxyz/ipig/native_dialog/PromptButton;->dismissAfterClick:Z

    return v0
.end method

.method public isFocus()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lxyz/ipig/native_dialog/PromptButton;->focus:Z

    return v0
.end method

.method public setDelyClick(Z)V
    .locals 0

    .line 106
    iput-boolean p1, p0, Lxyz/ipig/native_dialog/PromptButton;->isDelyClick:Z

    return-void
.end method

.method public setDismissAfterClick(Z)V
    .locals 0

    .line 98
    iput-boolean p1, p0, Lxyz/ipig/native_dialog/PromptButton;->dismissAfterClick:Z

    return-void
.end method

.method public setFocus(Z)V
    .locals 0

    .line 38
    iput-boolean p1, p0, Lxyz/ipig/native_dialog/PromptButton;->focus:Z

    return-void
.end method

.method public setFocusBacColor(I)V
    .locals 0

    .line 90
    iput p1, p0, Lxyz/ipig/native_dialog/PromptButton;->focusBacColor:I

    return-void
.end method

.method public setListener(Lxyz/ipig/native_dialog/PromptButtonListener;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lxyz/ipig/native_dialog/PromptButton;->listener:Lxyz/ipig/native_dialog/PromptButtonListener;

    return-void
.end method

.method public setRect(Landroid/graphics/RectF;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lxyz/ipig/native_dialog/PromptButton;->rect:Landroid/graphics/RectF;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lxyz/ipig/native_dialog/PromptButton;->text:Ljava/lang/String;

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 62
    iput p1, p0, Lxyz/ipig/native_dialog/PromptButton;->textColor:I

    return-void
.end method

.method public setTextSize(F)V
    .locals 0

    .line 66
    iput p1, p0, Lxyz/ipig/native_dialog/PromptButton;->textSize:F

    return-void
.end method

.method public setTouchRect(Landroid/graphics/RectF;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lxyz/ipig/native_dialog/PromptButton;->rect:Landroid/graphics/RectF;

    return-void
.end method
