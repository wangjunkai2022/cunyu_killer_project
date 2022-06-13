.class public Lio/flutter/plugin/editing/TextInputPlugin;
.super Ljava/lang/Object;
.source "TextInputPlugin.java"

# interfaces
.implements Lio/flutter/plugin/editing/ListenableEditingState$EditingStateWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;,
        Lio/flutter/plugin/editing/TextInputPlugin$MinMax;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TextInputPlugin"


# instance fields
.field private final afm:Landroid/view/autofill/AutofillManager;

.field private configuration:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;

.field private imeSyncCallback:Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;

.field private inputTarget:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;

.field private isInputConnectionLocked:Z

.field private lastClientRect:Landroid/graphics/Rect;

.field private lastInputConnection:Landroid/view/inputmethod/InputConnection;

.field private mAutofillConfigurations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;",
            ">;"
        }
    .end annotation
.end field

.field private mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

.field private final mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mLastKnownFrameworkTextEditingState:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;

.field private mRestartInputPending:Z

.field private final mView:Landroid/view/View;

.field private platformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

.field private final textInputChannel:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;


# direct methods
.method public constructor <init>(Landroid/view/View;Lio/flutter/embedding/engine/systemchannels/TextInputChannel;Lio/flutter/plugin/platform/PlatformViewsController;)V
    .locals 4

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;

    sget-object v1, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;->NO_TARGET:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;-><init>(Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;I)V

    iput-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->inputTarget:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;

    .line 68
    iput-object p1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mView:Landroid/view/View;

    .line 70
    new-instance v0, Lio/flutter/plugin/editing/ListenableEditingState;

    iget-object v1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1}, Lio/flutter/plugin/editing/ListenableEditingState;-><init>(Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;Landroid/view/View;)V

    iput-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 72
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/autofill/AutofillManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    iput-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->afm:Landroid/view/autofill/AutofillManager;

    goto :goto_0

    .line 75
    :cond_0
    iput-object v3, p0, Lio/flutter/plugin/editing/TextInputPlugin;->afm:Landroid/view/autofill/AutofillManager;

    .line 81
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_3

    .line 83
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 84
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v0

    or-int/2addr v2, v0

    .line 86
    :cond_1
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_2

    .line 87
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v0

    or-int/2addr v2, v0

    .line 89
    :cond_2
    new-instance v0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;

    .line 93
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    invoke-direct {v0, p1, v2, v1}, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->imeSyncCallback:Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;

    .line 95
    iget-object p1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->imeSyncCallback:Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;

    invoke-virtual {p1}, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->install()V

    .line 98
    :cond_3
    iput-object p2, p0, Lio/flutter/plugin/editing/TextInputPlugin;->textInputChannel:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    .line 99
    new-instance p1, Lio/flutter/plugin/editing/TextInputPlugin$1;

    invoke-direct {p1, p0}, Lio/flutter/plugin/editing/TextInputPlugin$1;-><init>(Lio/flutter/plugin/editing/TextInputPlugin;)V

    invoke-virtual {p2, p1}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->setTextInputMethodHandler(Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;)V

    .line 164
    invoke-virtual {p2}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->requestExistingInputState()V

    .line 166
    iput-object p3, p0, Lio/flutter/plugin/editing/TextInputPlugin;->platformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

    .line 167
    iget-object p1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->platformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

    invoke-virtual {p1, p0}, Lio/flutter/plugin/platform/PlatformViewsController;->attachTextInputPlugin(Lio/flutter/plugin/editing/TextInputPlugin;)V

    return-void
.end method

.method static synthetic access$000(Lio/flutter/plugin/editing/TextInputPlugin;)Landroid/view/View;
    .locals 0

    .line 37
    iget-object p0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lio/flutter/plugin/editing/TextInputPlugin;)Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;
    .locals 0

    .line 37
    iget-object p0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->inputTarget:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;

    return-object p0
.end method

.method static synthetic access$200(Lio/flutter/plugin/editing/TextInputPlugin;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lio/flutter/plugin/editing/TextInputPlugin;->notifyViewExited()V

    return-void
.end method

.method static synthetic access$300(Lio/flutter/plugin/editing/TextInputPlugin;Landroid/view/View;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lio/flutter/plugin/editing/TextInputPlugin;->hideTextInput(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$400(Lio/flutter/plugin/editing/TextInputPlugin;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lio/flutter/plugin/editing/TextInputPlugin;->notifyViewEntered()V

    return-void
.end method

.method static synthetic access$500(Lio/flutter/plugin/editing/TextInputPlugin;)Landroid/view/autofill/AutofillManager;
    .locals 0

    .line 37
    iget-object p0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->afm:Landroid/view/autofill/AutofillManager;

    return-object p0
.end method

.method static synthetic access$600(Lio/flutter/plugin/editing/TextInputPlugin;IZ)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lio/flutter/plugin/editing/TextInputPlugin;->setPlatformViewTextInputClient(IZ)V

    return-void
.end method

.method static synthetic access$700(Lio/flutter/plugin/editing/TextInputPlugin;DD[D)V
    .locals 0

    .line 37
    invoke-direct/range {p0 .. p5}, Lio/flutter/plugin/editing/TextInputPlugin;->saveEditableSizeAndTransform(DD[D)V

    return-void
.end method

.method private canShowTextInput()Z
    .locals 3

    .line 380
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->configuration:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, v0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->inputType:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$InputType;

    if-nez v0, :cond_0

    goto :goto_0

    .line 383
    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->configuration:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;

    iget-object v0, v0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->inputType:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$InputType;

    iget-object v0, v0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$InputType;->type:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;

    sget-object v2, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;->NONE:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method private static composingChanged(Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;)Z
    .locals 7

    .line 450
    iget v0, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;->composingEnd:I

    iget v1, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;->composingStart:I

    sub-int/2addr v0, v1

    .line 451
    iget v1, p1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;->composingEnd:I

    iget v2, p1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;->composingStart:I

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_2

    .line 455
    iget-object v4, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;->text:Ljava/lang/String;

    iget v5, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;->composingStart:I

    add-int/2addr v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iget-object v5, p1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;->text:Ljava/lang/String;

    iget v6, p1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;->composingStart:I

    add-int/2addr v6, v3

    .line 456
    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private hideTextInput(Landroid/view/View;)V
    .locals 2

    .line 397
    invoke-direct {p0}, Lio/flutter/plugin/editing/TextInputPlugin;->notifyViewExited()V

    .line 404
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method private static inputTypeFromTextInputType(Lio/flutter/embedding/engine/systemchannels/TextInputChannel$InputType;ZZZZLio/flutter/embedding/engine/systemchannels/TextInputChannel$TextCapitalization;)I
    .locals 2

    .line 236
    iget-object p4, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$InputType;->type:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;

    sget-object v0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;->DATETIME:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;

    if-ne p4, v0, :cond_0

    const/4 p0, 0x4

    return p0

    .line 238
    :cond_0
    iget-object p4, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$InputType;->type:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;

    sget-object v0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;->NUMBER:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;

    if-ne p4, v0, :cond_3

    const/4 p1, 0x2

    .line 240
    iget-boolean p2, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$InputType;->isSigned:Z

    if-eqz p2, :cond_1

    const/16 p1, 0x1002

    .line 243
    :cond_1
    iget-boolean p0, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$InputType;->isDecimal:Z

    if-eqz p0, :cond_2

    or-int/lit16 p1, p1, 0x2000

    :cond_2
    return p1

    .line 247
    :cond_3
    iget-object p4, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$InputType;->type:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;

    sget-object v0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;->PHONE:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;

    if-ne p4, v0, :cond_4

    const/4 p0, 0x3

    return p0

    .line 249
    :cond_4
    iget-object p4, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$InputType;->type:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;

    sget-object v0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;->NONE:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;

    if-ne p4, v0, :cond_5

    const/4 p0, 0x0

    return p0

    :cond_5
    const/4 p4, 0x1

    .line 254
    iget-object v0, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$InputType;->type:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;

    sget-object v1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;->MULTILINE:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;

    if-ne v0, v1, :cond_6

    const p4, 0x20001

    goto :goto_0

    .line 256
    :cond_6
    iget-object v0, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$InputType;->type:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;

    sget-object v1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;->EMAIL_ADDRESS:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;

    if-ne v0, v1, :cond_7

    const/16 p4, 0x21

    goto :goto_0

    .line 258
    :cond_7
    iget-object v0, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$InputType;->type:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;

    sget-object v1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;->URL:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;

    if-ne v0, v1, :cond_8

    const/16 p4, 0x11

    goto :goto_0

    .line 260
    :cond_8
    iget-object v0, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$InputType;->type:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;

    sget-object v1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;->VISIBLE_PASSWORD:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;

    if-ne v0, v1, :cond_9

    const/16 p4, 0x91

    goto :goto_0

    .line 262
    :cond_9
    iget-object v0, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$InputType;->type:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;

    sget-object v1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;->NAME:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;

    if-ne v0, v1, :cond_a

    const/16 p4, 0x61

    goto :goto_0

    .line 264
    :cond_a
    iget-object p0, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$InputType;->type:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;

    sget-object v0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;->POSTAL_ADDRESS:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;

    if-ne p0, v0, :cond_b

    const/16 p4, 0x71

    :cond_b
    :goto_0
    const/high16 p0, 0x80000

    if-eqz p1, :cond_c

    or-int/2addr p0, p4

    or-int/lit16 p0, p0, 0x80

    goto :goto_1

    :cond_c
    if-eqz p2, :cond_d

    const p1, 0x8000

    or-int/2addr p4, p1

    :cond_d
    if-nez p3, :cond_e

    or-int/2addr p0, p4

    goto :goto_1

    :cond_e
    move p0, p4

    .line 277
    :goto_1
    sget-object p1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextCapitalization;->CHARACTERS:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextCapitalization;

    if-ne p5, p1, :cond_f

    or-int/lit16 p0, p0, 0x1000

    goto :goto_2

    .line 279
    :cond_f
    sget-object p1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextCapitalization;->WORDS:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextCapitalization;

    if-ne p5, p1, :cond_10

    or-int/lit16 p0, p0, 0x2000

    goto :goto_2

    .line 281
    :cond_10
    sget-object p1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextCapitalization;->SENTENCES:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextCapitalization;

    if-ne p5, p1, :cond_11

    or-int/lit16 p0, p0, 0x4000

    :cond_11
    :goto_2
    return p0
.end method

.method private needsAutofill()Z
    .locals 1

    .line 685
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mAutofillConfigurations:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private notifyValueChanged(Ljava/lang/String;)V
    .locals 3

    .line 715
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->afm:Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lio/flutter/plugin/editing/TextInputPlugin;->needsAutofill()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 719
    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->configuration:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;

    iget-object v0, v0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->autofill:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;

    iget-object v0, v0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;->uniqueIdentifier:Ljava/lang/String;

    .line 720
    iget-object v1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->afm:Landroid/view/autofill/AutofillManager;

    iget-object v2, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mView:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {p1}, Landroid/view/autofill/AutofillValue;->forText(Ljava/lang/CharSequence;)Landroid/view/autofill/AutofillValue;

    move-result-object p1

    invoke-virtual {v1, v2, v0, p1}, Landroid/view/autofill/AutofillManager;->notifyValueChanged(Landroid/view/View;ILandroid/view/autofill/AutofillValue;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private notifyViewEntered()V
    .locals 5

    .line 689
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->afm:Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lio/flutter/plugin/editing/TextInputPlugin;->needsAutofill()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 693
    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->configuration:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;

    iget-object v0, v0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->autofill:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;

    iget-object v0, v0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;->uniqueIdentifier:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 695
    iget-object v2, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 696
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lio/flutter/plugin/editing/TextInputPlugin;->lastClientRect:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v3, 0x0

    .line 697
    aget v3, v1, v3

    const/4 v4, 0x1

    aget v1, v1, v4

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 698
    iget-object v1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->afm:Landroid/view/autofill/AutofillManager;

    iget-object v3, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mView:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {v1, v3, v0, v2}, Landroid/view/autofill/AutofillManager;->notifyViewEntered(Landroid/view/View;ILandroid/graphics/Rect;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private notifyViewExited()V
    .locals 3

    .line 702
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->afm:Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->configuration:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->autofill:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;

    if-eqz v0, :cond_1

    .line 706
    invoke-direct {p0}, Lio/flutter/plugin/editing/TextInputPlugin;->needsAutofill()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 710
    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->configuration:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;

    iget-object v0, v0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->autofill:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;

    iget-object v0, v0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;->uniqueIdentifier:Ljava/lang/String;

    .line 711
    iget-object v1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->afm:Landroid/view/autofill/AutofillManager;

    iget-object v2, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mView:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/view/autofill/AutofillManager;->notifyViewExited(Landroid/view/View;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private saveEditableSizeAndTransform(DD[D)V
    .locals 18

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    const/4 v6, 0x4

    new-array v6, v6, [D

    const/4 v7, 0x3

    .line 496
    aget-wide v8, v5, v7

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    const/16 v9, 0xf

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-nez v8, :cond_0

    const/4 v8, 0x7

    aget-wide v14, v5, v8

    cmpl-double v8, v14, v10

    if-nez v8, :cond_0

    aget-wide v14, v5, v9

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    cmpl-double v8, v14, v16

    if-nez v8, :cond_0

    move v8, v12

    goto :goto_0

    :cond_0
    move v8, v13

    :goto_0
    const/16 v14, 0xc

    .line 497
    aget-wide v14, v5, v14

    aget-wide v16, v5, v9

    div-double v14, v14, v16

    aput-wide v14, v6, v12

    aput-wide v14, v6, v13

    const/16 v14, 0xd

    .line 498
    aget-wide v14, v5, v14

    aget-wide v16, v5, v9

    div-double v14, v14, v16

    aput-wide v14, v6, v7

    const/4 v9, 0x2

    aput-wide v14, v6, v9

    .line 500
    new-instance v14, Lio/flutter/plugin/editing/TextInputPlugin$2;

    invoke-direct {v14, v0, v8, v5, v6}, Lio/flutter/plugin/editing/TextInputPlugin$2;-><init>(Lio/flutter/plugin/editing/TextInputPlugin;Z[D[D)V

    .line 522
    invoke-interface {v14, v1, v2, v10, v11}, Lio/flutter/plugin/editing/TextInputPlugin$MinMax;->inspect(DD)V

    .line 523
    invoke-interface {v14, v1, v2, v3, v4}, Lio/flutter/plugin/editing/TextInputPlugin$MinMax;->inspect(DD)V

    .line 524
    invoke-interface {v14, v10, v11, v3, v4}, Lio/flutter/plugin/editing/TextInputPlugin$MinMax;->inspect(DD)V

    .line 525
    iget-object v1, v0, Lio/flutter/plugin/editing/TextInputPlugin;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 526
    new-instance v2, Landroid/graphics/Rect;

    aget-wide v3, v6, v13

    .line 528
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v5

    float-to-double v10, v5

    mul-double/2addr v3, v10

    double-to-int v3, v3

    aget-wide v4, v6, v9

    .line 529
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v8

    float-to-double v8, v8

    mul-double/2addr v4, v8

    double-to-int v4, v4

    aget-wide v8, v6, v12

    .line 530
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v5

    float-to-double v10, v5

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v5, v8

    aget-wide v7, v6, v7

    .line 531
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v9, v1

    mul-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v1, v6

    invoke-direct {v2, v3, v4, v5, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, v0, Lio/flutter/plugin/editing/TextInputPlugin;->lastClientRect:Landroid/graphics/Rect;

    return-void
.end method

.method private setPlatformViewTextInputClient(IZ)V
    .locals 1

    if-eqz p2, :cond_0

    .line 438
    iget-object p2, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    .line 439
    new-instance p2, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;

    sget-object v0, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;->VD_PLATFORM_VIEW:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;

    invoke-direct {p2, v0, p1}, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;-><init>(Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;I)V

    iput-object p2, p0, Lio/flutter/plugin/editing/TextInputPlugin;->inputTarget:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;

    .line 440
    iget-object p1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object p2, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 441
    iput-boolean p1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mRestartInputPending:Z

    goto :goto_0

    .line 443
    :cond_0
    new-instance p2, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;

    sget-object v0, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;->HC_PLATFORM_VIEW:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;

    invoke-direct {p2, v0, p1}, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;-><init>(Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;I)V

    iput-object p2, p0, Lio/flutter/plugin/editing/TextInputPlugin;->inputTarget:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;

    const/4 p1, 0x0

    .line 444
    iput-object p1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->lastInputConnection:Landroid/view/inputmethod/InputConnection;

    :goto_0
    return-void
.end method

.method private updateAutofillConfigurationIfNeeded(Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;)V
    .locals 6

    .line 724
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_5

    .line 728
    iget-object v0, p1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->autofill:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;

    if-nez v0, :cond_1

    goto :goto_2

    .line 734
    :cond_1
    iget-object v0, p1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->fields:[Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;

    .line 735
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mAutofillConfigurations:Landroid/util/SparseArray;

    if-nez v0, :cond_2

    .line 738
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mAutofillConfigurations:Landroid/util/SparseArray;

    iget-object v1, p1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->autofill:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;

    iget-object v1, v1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;->uniqueIdentifier:Ljava/lang/String;

    .line 739
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 738
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 741
    :cond_2
    array-length p1, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_4

    aget-object v2, v0, v1

    .line 742
    iget-object v3, v2, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->autofill:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;

    if-eqz v3, :cond_3

    .line 744
    iget-object v4, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mAutofillConfigurations:Landroid/util/SparseArray;

    iget-object v5, v3, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;->uniqueIdentifier:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 745
    iget-object v2, p0, Lio/flutter/plugin/editing/TextInputPlugin;->afm:Landroid/view/autofill/AutofillManager;

    iget-object v4, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mView:Landroid/view/View;

    iget-object v5, v3, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;->uniqueIdentifier:Ljava/lang/String;

    .line 747
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    iget-object v3, v3, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;->editState:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;

    iget-object v3, v3, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;->text:Ljava/lang/String;

    .line 748
    invoke-static {v3}, Landroid/view/autofill/AutofillValue;->forText(Ljava/lang/CharSequence;)Landroid/view/autofill/AutofillValue;

    move-result-object v3

    .line 745
    invoke-virtual {v2, v4, v5, v3}, Landroid/view/autofill/AutofillManager;->notifyValueChanged(Landroid/view/View;ILandroid/view/autofill/AutofillValue;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void

    :cond_5
    :goto_2
    const/4 p1, 0x0

    .line 730
    iput-object p1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mAutofillConfigurations:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public autofill(Landroid/util/SparseArray;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/view/autofill/AutofillValue;",
            ">;)V"
        }
    .end annotation

    .line 799
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    return-void

    .line 803
    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->configuration:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;

    iget-object v0, v0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->autofill:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;

    if-nez v0, :cond_1

    return-void

    .line 808
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    .line 809
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 810
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 812
    iget-object v4, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mAutofillConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;

    if-eqz v3, :cond_4

    .line 813
    iget-object v4, v3, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->autofill:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;

    if-nez v4, :cond_2

    goto :goto_1

    .line 817
    :cond_2
    iget-object v3, v3, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->autofill:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;

    .line 818
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/autofill/AutofillValue;

    invoke-virtual {v4}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 819
    new-instance v4, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;

    .line 820
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, -0x1

    const/4 v10, -0x1

    move-object v5, v4

    invoke-direct/range {v5 .. v10}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;-><init>(Ljava/lang/String;IIII)V

    .line 822
    iget-object v5, v3, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;->uniqueIdentifier:Ljava/lang/String;

    iget-object v6, v0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;->uniqueIdentifier:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 826
    iget-object v3, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-virtual {v3, v4}, Lio/flutter/plugin/editing/ListenableEditingState;->setEditingState(Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;)V

    goto :goto_1

    .line 828
    :cond_3
    iget-object v3, v3, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;->uniqueIdentifier:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 831
    :cond_5
    iget-object p1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->textInputChannel:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->inputTarget:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;

    iget v0, v0, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;->id:I

    invoke-virtual {p1, v0, v1}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->updateEditingStateWithTag(ILjava/util/HashMap;)V

    return-void
.end method

.method public clearPlatformViewClient(I)V
    .locals 2

    .line 364
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->inputTarget:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;

    iget-object v0, v0, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;->type:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;

    sget-object v1, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;->VD_PLATFORM_VIEW:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->inputTarget:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;

    iget-object v0, v0, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;->type:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;

    sget-object v1, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;->HC_PLATFORM_VIEW:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->inputTarget:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;

    iget v0, v0, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;->id:I

    if-ne v0, p1, :cond_1

    .line 367
    new-instance p1, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;

    sget-object v0, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;->NO_TARGET:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;-><init>(Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;I)V

    iput-object p1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->inputTarget:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;

    .line 368
    invoke-direct {p0}, Lio/flutter/plugin/editing/TextInputPlugin;->notifyViewExited()V

    .line 369
    iget-object p1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 370
    iget-object p1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 371
    iput-boolean v1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mRestartInputPending:Z

    :cond_1
    return-void
.end method

.method clearTextInputClient()V
    .locals 4

    .line 536
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->inputTarget:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;

    iget-object v0, v0, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;->type:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;

    sget-object v1, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;->VD_PLATFORM_VIEW:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;

    if-ne v0, v1, :cond_0

    return-void

    .line 560
    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-virtual {v0, p0}, Lio/flutter/plugin/editing/ListenableEditingState;->removeEditingStateListener(Lio/flutter/plugin/editing/ListenableEditingState$EditingStateWatcher;)V

    .line 561
    invoke-direct {p0}, Lio/flutter/plugin/editing/TextInputPlugin;->notifyViewExited()V

    const/4 v0, 0x0

    .line 562
    invoke-direct {p0, v0}, Lio/flutter/plugin/editing/TextInputPlugin;->updateAutofillConfigurationIfNeeded(Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;)V

    .line 563
    new-instance v1, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;

    sget-object v2, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;->NO_TARGET:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;-><init>(Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;I)V

    iput-object v1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->inputTarget:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;

    .line 564
    invoke-virtual {p0}, Lio/flutter/plugin/editing/TextInputPlugin;->unlockPlatformViewInputConnection()V

    .line 565
    iput-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->lastClientRect:Landroid/graphics/Rect;

    return-void
.end method

.method public createInputConnection(Landroid/view/View;Lio/flutter/embedding/android/KeyboardManager;Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 8

    .line 290
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->inputTarget:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;

    iget-object v0, v0, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;->type:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;

    sget-object v1, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;->NO_TARGET:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 291
    iput-object v2, p0, Lio/flutter/plugin/editing/TextInputPlugin;->lastInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object v2

    .line 295
    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->inputTarget:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;

    iget-object v0, v0, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;->type:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;

    sget-object v1, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;->HC_PLATFORM_VIEW:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;

    if-ne v0, v1, :cond_1

    return-object v2

    .line 299
    :cond_1
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->inputTarget:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;

    iget-object v0, v0, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;->type:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;

    sget-object v1, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;->VD_PLATFORM_VIEW:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;

    if-ne v0, v1, :cond_3

    .line 300
    iget-boolean p1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->isInputConnectionLocked:Z

    if-eqz p1, :cond_2

    .line 301
    iget-object p1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->lastInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object p1

    .line 303
    :cond_2
    iget-object p1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->platformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

    iget-object p2, p0, Lio/flutter/plugin/editing/TextInputPlugin;->inputTarget:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;

    iget p2, p2, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;->id:I

    .line 305
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/flutter/plugin/platform/PlatformViewsController;->getPlatformViewById(Ljava/lang/Integer;)Landroid/view/View;

    move-result-object p1

    .line 306
    invoke-virtual {p1, p3}, Landroid/view/View;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    iput-object p1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->lastInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 307
    iget-object p1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->lastInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object p1

    .line 310
    :cond_3
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->configuration:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;

    iget-object v1, v0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->inputType:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$InputType;

    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->configuration:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;

    iget-boolean v2, v0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->obscureText:Z

    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->configuration:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;

    iget-boolean v3, v0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->autocorrect:Z

    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->configuration:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;

    iget-boolean v4, v0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->enableSuggestions:Z

    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->configuration:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;

    iget-boolean v5, v0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->enableIMEPersonalizedLearning:Z

    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->configuration:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;

    iget-object v6, v0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->textCapitalization:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextCapitalization;

    .line 311
    invoke-static/range {v1 .. v6}, Lio/flutter/plugin/editing/TextInputPlugin;->inputTypeFromTextInputType(Lio/flutter/embedding/engine/systemchannels/TextInputChannel$InputType;ZZZZLio/flutter/embedding/engine/systemchannels/TextInputChannel$TextCapitalization;)I

    move-result v0

    iput v0, p3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v0, 0x2000000

    .line 318
    iput v0, p3, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 320
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->configuration:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;

    iget-boolean v0, v0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->enableIMEPersonalizedLearning:Z

    if-nez v0, :cond_4

    .line 322
    iget v0, p3, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    iput v0, p3, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 326
    :cond_4
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->configuration:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;

    iget-object v0, v0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->inputAction:Ljava/lang/Integer;

    if-nez v0, :cond_6

    const/high16 v0, 0x20000

    .line 330
    iget v1, p3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x6

    goto :goto_0

    .line 334
    :cond_6
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->configuration:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;

    iget-object v0, v0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->inputAction:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 336
    :goto_0
    iget-object v1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->configuration:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;

    iget-object v1, v1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->actionLabel:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 337
    iget-object v1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->configuration:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;

    iget-object v1, v1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->actionLabel:Ljava/lang/String;

    iput-object v1, p3, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    .line 338
    iput v0, p3, Landroid/view/inputmethod/EditorInfo;->actionId:I

    .line 340
    :cond_7
    iget v1, p3, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v0, v1

    iput v0, p3, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 342
    new-instance v0, Lio/flutter/plugin/editing/InputConnectionAdaptor;

    iget-object v1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->inputTarget:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;

    iget v3, v1, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;->id:I

    iget-object v4, p0, Lio/flutter/plugin/editing/TextInputPlugin;->textInputChannel:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    iget-object v6, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    move-object v1, v0

    move-object v2, p1

    move-object v5, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lio/flutter/plugin/editing/InputConnectionAdaptor;-><init>(Landroid/view/View;ILio/flutter/embedding/engine/systemchannels/TextInputChannel;Lio/flutter/embedding/android/KeyboardManager;Lio/flutter/plugin/editing/ListenableEditingState;Landroid/view/inputmethod/EditorInfo;)V

    .line 345
    iget-object p1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-virtual {p1}, Lio/flutter/plugin/editing/ListenableEditingState;->getSelectionStart()I

    move-result p1

    iput p1, p3, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 346
    iget-object p1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-virtual {p1}, Lio/flutter/plugin/editing/ListenableEditingState;->getSelectionEnd()I

    move-result p1

    iput p1, p3, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 348
    iput-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->lastInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 349
    iget-object p1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->lastInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object p1
.end method

.method public destroy()V
    .locals 2

    .line 220
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->platformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

    invoke-virtual {v0}, Lio/flutter/plugin/platform/PlatformViewsController;->detachTextInputPlugin()V

    .line 221
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->textInputChannel:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->setTextInputMethodHandler(Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;)V

    .line 222
    invoke-direct {p0}, Lio/flutter/plugin/editing/TextInputPlugin;->notifyViewExited()V

    .line 223
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-virtual {v0, p0}, Lio/flutter/plugin/editing/ListenableEditingState;->removeEditingStateListener(Lio/flutter/plugin/editing/ListenableEditingState$EditingStateWatcher;)V

    .line 224
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->imeSyncCallback:Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {v0}, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->remove()V

    :cond_0
    return-void
.end method

.method public didChangeEditingState(ZZZ)V
    .locals 8

    if-eqz p1, :cond_0

    .line 619
    iget-object p1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-virtual {p1}, Lio/flutter/plugin/editing/ListenableEditingState;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/flutter/plugin/editing/TextInputPlugin;->notifyValueChanged(Ljava/lang/String;)V

    .line 622
    :cond_0
    iget-object p1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-virtual {p1}, Lio/flutter/plugin/editing/ListenableEditingState;->getSelectionStart()I

    move-result p1

    .line 623
    iget-object p2, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-virtual {p2}, Lio/flutter/plugin/editing/ListenableEditingState;->getSelectionEnd()I

    move-result p2

    .line 624
    iget-object p3, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-virtual {p3}, Lio/flutter/plugin/editing/ListenableEditingState;->getComposingStart()I

    move-result p3

    .line 625
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-virtual {v0}, Lio/flutter/plugin/editing/ListenableEditingState;->getComposingEnd()I

    move-result v7

    .line 627
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 628
    invoke-virtual {v0}, Lio/flutter/plugin/editing/ListenableEditingState;->extractBatchTextEditingDeltas()Ljava/util/ArrayList;

    move-result-object v0

    .line 629
    iget-object v1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mLastKnownFrameworkTextEditingState:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 632
    invoke-virtual {v1}, Lio/flutter/plugin/editing/ListenableEditingState;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mLastKnownFrameworkTextEditingState:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;

    iget-object v2, v2, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mLastKnownFrameworkTextEditingState:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;

    iget v1, v1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;->selectionStart:I

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mLastKnownFrameworkTextEditingState:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;

    iget v1, v1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;->selectionEnd:I

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mLastKnownFrameworkTextEditingState:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;

    iget v1, v1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;->composingStart:I

    if-ne p3, v1, :cond_1

    iget-object v1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mLastKnownFrameworkTextEditingState:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;

    iget v1, v1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;->composingEnd:I

    if-ne v7, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_4

    .line 638
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send EditingState to flutter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-virtual {v2}, Lio/flutter/plugin/editing/ListenableEditingState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TextInputPlugin"

    invoke-static {v2, v1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    iget-object v1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->configuration:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;

    iget-boolean v1, v1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->enableDeltaModel:Z

    if-eqz v1, :cond_3

    .line 641
    iget-object v1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->textInputChannel:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    iget-object v2, p0, Lio/flutter/plugin/editing/TextInputPlugin;->inputTarget:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;

    iget v2, v2, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;->id:I

    invoke-virtual {v1, v2, v0}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->updateEditingStateWithDeltas(ILjava/util/ArrayList;)V

    .line 642
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-virtual {v0}, Lio/flutter/plugin/editing/ListenableEditingState;->clearBatchDeltas()V

    goto :goto_2

    .line 644
    :cond_3
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->textInputChannel:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    iget-object v1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->inputTarget:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;

    iget v1, v1, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;->id:I

    iget-object v2, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 646
    invoke-virtual {v2}, Lio/flutter/plugin/editing/ListenableEditingState;->toString()Ljava/lang/String;

    move-result-object v2

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, v7

    .line 644
    invoke-virtual/range {v0 .. v6}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->updateEditingState(ILjava/lang/String;IIII)V

    .line 652
    :goto_2
    new-instance v6, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;

    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 654
    invoke-virtual {v0}, Lio/flutter/plugin/editing/ListenableEditingState;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;-><init>(Ljava/lang/String;IIII)V

    iput-object v6, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mLastKnownFrameworkTextEditingState:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;

    goto :goto_3

    .line 657
    :cond_4
    iget-object p1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-virtual {p1}, Lio/flutter/plugin/editing/ListenableEditingState;->clearBatchDeltas()V

    :goto_3
    return-void
.end method

.method getEditable()Landroid/text/Editable;
    .locals 1

    .line 177
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    return-object v0
.end method

.method getImeSyncCallback()Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;
    .locals 1

    .line 182
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->imeSyncCallback:Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;

    return-object v0
.end method

.method public getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    .line 172
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mImm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method public getLastInputConnection()Landroid/view/inputmethod/InputConnection;
    .locals 1

    .line 354
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->lastInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method public handleKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 597
    invoke-virtual {p0}, Lio/flutter/plugin/editing/TextInputPlugin;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isAcceptingText()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->lastInputConnection:Landroid/view/inputmethod/InputConnection;

    if-nez v0, :cond_0

    goto :goto_1

    .line 606
    :cond_0
    instance-of v1, v0, Lio/flutter/plugin/editing/InputConnectionAdaptor;

    if-eqz v1, :cond_1

    .line 607
    check-cast v0, Lio/flutter/plugin/editing/InputConnectionAdaptor;

    invoke-virtual {v0, p1}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->handleKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    goto :goto_0

    .line 608
    :cond_1
    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    :goto_0
    return p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public lockPlatformViewInputConnection()V
    .locals 2

    .line 199
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->inputTarget:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;

    iget-object v0, v0, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;->type:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;

    sget-object v1, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;->VD_PLATFORM_VIEW:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 200
    iput-boolean v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->isInputConnectionLocked:Z

    :cond_0
    return-void
.end method

.method public onProvideAutofillVirtualStructure(Landroid/view/ViewStructure;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 755
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_4

    invoke-direct/range {p0 .. p0}, Lio/flutter/plugin/editing/TextInputPlugin;->needsAutofill()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_2

    .line 759
    :cond_0
    iget-object v2, v0, Lio/flutter/plugin/editing/TextInputPlugin;->configuration:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;

    iget-object v2, v2, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->autofill:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;

    iget-object v2, v2, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;->uniqueIdentifier:Ljava/lang/String;

    .line 760
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewStructure;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    .line 761
    :goto_0
    iget-object v6, v0, Lio/flutter/plugin/editing/TextInputPlugin;->mAutofillConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 762
    iget-object v6, v0, Lio/flutter/plugin/editing/TextInputPlugin;->mAutofillConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 763
    iget-object v7, v0, Lio/flutter/plugin/editing/TextInputPlugin;->mAutofillConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;

    .line 764
    iget-object v7, v7, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->autofill:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    const/4 v8, 0x1

    .line 769
    invoke-virtual {v1, v8}, Landroid/view/ViewStructure;->addChildCount(I)I

    .line 770
    invoke-virtual {v1, v5}, Landroid/view/ViewStructure;->newChild(I)Landroid/view/ViewStructure;

    move-result-object v15

    .line 771
    invoke-virtual {v15, v3, v6}, Landroid/view/ViewStructure;->setAutofillId(Landroid/view/autofill/AutofillId;I)V

    .line 772
    iget-object v9, v7, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;->hints:[Ljava/lang/String;

    invoke-virtual {v15, v9}, Landroid/view/ViewStructure;->setAutofillHints([Ljava/lang/String;)V

    .line 773
    invoke-virtual {v15, v8}, Landroid/view/ViewStructure;->setAutofillType(I)V

    .line 774
    invoke-virtual {v15, v4}, Landroid/view/ViewStructure;->setVisibility(I)V

    .line 775
    iget-object v8, v7, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;->hintText:Ljava/lang/String;

    if-eqz v8, :cond_2

    .line 776
    iget-object v8, v7, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;->hintText:Ljava/lang/String;

    invoke-virtual {v15, v8}, Landroid/view/ViewStructure;->setHint(Ljava/lang/CharSequence;)V

    .line 782
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v8

    if-ne v8, v6, :cond_3

    iget-object v6, v0, Lio/flutter/plugin/editing/TextInputPlugin;->lastClientRect:Landroid/graphics/Rect;

    if-eqz v6, :cond_3

    .line 783
    iget v10, v6, Landroid/graphics/Rect;->left:I

    iget-object v6, v0, Lio/flutter/plugin/editing/TextInputPlugin;->lastClientRect:Landroid/graphics/Rect;

    iget v11, v6, Landroid/graphics/Rect;->top:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget-object v6, v0, Lio/flutter/plugin/editing/TextInputPlugin;->lastClientRect:Landroid/graphics/Rect;

    .line 788
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v14

    iget-object v6, v0, Lio/flutter/plugin/editing/TextInputPlugin;->lastClientRect:Landroid/graphics/Rect;

    .line 789
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    move-object v9, v15

    move-object v8, v15

    move v15, v6

    .line 783
    invoke-virtual/range {v9 .. v15}, Landroid/view/ViewStructure;->setDimens(IIIIII)V

    .line 790
    iget-object v6, v0, Lio/flutter/plugin/editing/TextInputPlugin;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-static {v6}, Landroid/view/autofill/AutofillValue;->forText(Ljava/lang/CharSequence;)Landroid/view/autofill/AutofillValue;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/view/ViewStructure;->setAutofillValue(Landroid/view/autofill/AutofillValue;)V

    goto :goto_1

    :cond_3
    move-object v8, v15

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x1

    move-object v9, v8

    .line 792
    invoke-virtual/range {v9 .. v15}, Landroid/view/ViewStructure;->setDimens(IIIIII)V

    .line 793
    iget-object v6, v7, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;->editState:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;

    iget-object v6, v6, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;->text:Ljava/lang/String;

    invoke-static {v6}, Landroid/view/autofill/AutofillValue;->forText(Ljava/lang/CharSequence;)Landroid/view/autofill/AutofillValue;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/view/ViewStructure;->setAutofillValue(Landroid/view/autofill/AutofillValue;)V

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method public sendTextInputAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 376
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->sendAppPrivateCommand(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method setTextInputClient(ILio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;)V
    .locals 3

    .line 410
    invoke-direct {p0}, Lio/flutter/plugin/editing/TextInputPlugin;->notifyViewExited()V

    .line 411
    iput-object p2, p0, Lio/flutter/plugin/editing/TextInputPlugin;->configuration:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;

    .line 412
    invoke-direct {p0}, Lio/flutter/plugin/editing/TextInputPlugin;->canShowTextInput()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    new-instance v0, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;

    sget-object v1, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;->FRAMEWORK_CLIENT:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;

    invoke-direct {v0, v1, p1}, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;-><init>(Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;I)V

    iput-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->inputTarget:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;

    goto :goto_0

    .line 415
    :cond_0
    new-instance v0, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;

    sget-object v1, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;->NO_TARGET:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;

    invoke-direct {v0, v1, p1}, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;-><init>(Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;I)V

    iput-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->inputTarget:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;

    .line 418
    :goto_0
    iget-object p1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-virtual {p1, p0}, Lio/flutter/plugin/editing/ListenableEditingState;->removeEditingStateListener(Lio/flutter/plugin/editing/ListenableEditingState$EditingStateWatcher;)V

    .line 419
    new-instance p1, Lio/flutter/plugin/editing/ListenableEditingState;

    .line 421
    iget-object v0, p2, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->autofill:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p2, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->autofill:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;

    iget-object v0, v0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;->editState:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    iget-object v2, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mView:Landroid/view/View;

    invoke-direct {p1, v0, v2}, Lio/flutter/plugin/editing/ListenableEditingState;-><init>(Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;Landroid/view/View;)V

    iput-object p1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 422
    invoke-direct {p0, p2}, Lio/flutter/plugin/editing/TextInputPlugin;->updateAutofillConfigurationIfNeeded(Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;)V

    const/4 p1, 0x1

    .line 426
    iput-boolean p1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mRestartInputPending:Z

    .line 427
    invoke-virtual {p0}, Lio/flutter/plugin/editing/TextInputPlugin;->unlockPlatformViewInputConnection()V

    .line 428
    iput-object v1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->lastClientRect:Landroid/graphics/Rect;

    .line 429
    iget-object p1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-virtual {p1, p0}, Lio/flutter/plugin/editing/ListenableEditingState;->addEditingStateListener(Lio/flutter/plugin/editing/ListenableEditingState$EditingStateWatcher;)V

    return-void
.end method

.method setTextInputEditingState(Landroid/view/View;Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;)V
    .locals 2

    .line 467
    iget-boolean v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mRestartInputPending:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mLastKnownFrameworkTextEditingState:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;

    if-eqz v0, :cond_0

    .line 469
    invoke-virtual {v0}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;->hasComposing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mLastKnownFrameworkTextEditingState:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;

    invoke-static {v0, p2}, Lio/flutter/plugin/editing/TextInputPlugin;->composingChanged(Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;)Z

    move-result v0

    iput-boolean v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mRestartInputPending:Z

    .line 475
    iget-boolean v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mRestartInputPending:Z

    if-eqz v0, :cond_0

    const-string v0, "TextInputPlugin"

    const-string v1, "Composing region changed by the framework. Restarting the input method."

    .line 476
    invoke-static {v0, v1}, Lio/flutter/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    :cond_0
    iput-object p2, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mLastKnownFrameworkTextEditingState:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;

    .line 481
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-virtual {v0, p2}, Lio/flutter/plugin/editing/ListenableEditingState;->setEditingState(Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;)V

    .line 484
    iget-boolean p2, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mRestartInputPending:Z

    if-eqz p2, :cond_1

    .line 485
    iget-object p2, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p2, p1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 486
    iput-boolean p1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mRestartInputPending:Z

    :cond_1
    return-void
.end method

.method showTextInput(Landroid/view/View;)V
    .locals 2

    .line 388
    invoke-direct {p0}, Lio/flutter/plugin/editing/TextInputPlugin;->canShowTextInput()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 390
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mImm:Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    .line 392
    :cond_0
    invoke-direct {p0, p1}, Lio/flutter/plugin/editing/TextInputPlugin;->hideTextInput(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public unlockPlatformViewInputConnection()V
    .locals 1

    const/4 v0, 0x0

    .line 210
    iput-boolean v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->isInputConnectionLocked:Z

    return-void
.end method
