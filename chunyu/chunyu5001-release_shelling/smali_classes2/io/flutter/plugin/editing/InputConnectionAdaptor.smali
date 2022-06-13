.class Lio/flutter/plugin/editing/InputConnectionAdaptor;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "InputConnectionAdaptor.java"

# interfaces
.implements Lio/flutter/plugin/editing/ListenableEditingState$EditingStateWatcher;


# static fields
.field private static final TAG:Ljava/lang/String; = "InputConnectionAdaptor"


# instance fields
.field private batchEditNestDepth:I

.field private flutterTextUtils:Lio/flutter/plugin/editing/FlutterTextUtils;

.field private final keyboardManager:Lio/flutter/embedding/android/KeyboardManager;

.field private final mClient:I

.field private mCursorAnchorInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

.field private final mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

.field private final mEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field private mExtractRequest:Landroid/view/inputmethod/ExtractedTextRequest;

.field private mExtractedText:Landroid/view/inputmethod/ExtractedText;

.field private final mFlutterView:Landroid/view/View;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private final mLayout:Landroid/text/Layout;

.field private mMonitorCursorUpdate:Z

.field private final textInputChannel:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;


# direct methods
.method public constructor <init>(Landroid/view/View;ILio/flutter/embedding/engine/systemchannels/TextInputChannel;Lio/flutter/embedding/android/KeyboardManager;Lio/flutter/plugin/editing/ListenableEditingState;Landroid/view/inputmethod/EditorInfo;)V
    .locals 8

    .line 89
    new-instance v7, Lio/flutter/embedding/engine/FlutterJNI;

    invoke-direct {v7}, Lio/flutter/embedding/engine/FlutterJNI;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lio/flutter/plugin/editing/InputConnectionAdaptor;-><init>(Landroid/view/View;ILio/flutter/embedding/engine/systemchannels/TextInputChannel;Lio/flutter/embedding/android/KeyboardManager;Lio/flutter/plugin/editing/ListenableEditingState;Landroid/view/inputmethod/EditorInfo;Lio/flutter/embedding/engine/FlutterJNI;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;ILio/flutter/embedding/engine/systemchannels/TextInputChannel;Lio/flutter/embedding/android/KeyboardManager;Lio/flutter/plugin/editing/ListenableEditingState;Landroid/view/inputmethod/EditorInfo;Lio/flutter/embedding/engine/FlutterJNI;)V
    .locals 8

    const/4 v0, 0x1

    .line 59
    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mMonitorCursorUpdate:Z

    .line 43
    new-instance v1, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v1}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    iput-object v1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    .line 48
    iput v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->batchEditNestDepth:I

    .line 60
    iput-object p1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mFlutterView:Landroid/view/View;

    .line 61
    iput p2, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mClient:I

    .line 62
    iput-object p3, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->textInputChannel:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    .line 63
    iput-object p5, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 64
    iget-object p2, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-virtual {p2, p0}, Lio/flutter/plugin/editing/ListenableEditingState;->addEditingStateListener(Lio/flutter/plugin/editing/ListenableEditingState$EditingStateWatcher;)V

    .line 65
    iput-object p6, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 66
    iput-object p4, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->keyboardManager:Lio/flutter/embedding/android/KeyboardManager;

    .line 67
    new-instance p2, Lio/flutter/plugin/editing/FlutterTextUtils;

    invoke-direct {p2, p7}, Lio/flutter/plugin/editing/FlutterTextUtils;-><init>(Lio/flutter/embedding/engine/FlutterJNI;)V

    iput-object p2, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->flutterTextUtils:Lio/flutter/plugin/editing/FlutterTextUtils;

    .line 70
    new-instance p2, Landroid/text/DynamicLayout;

    iget-object v1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const v3, 0x7fffffff

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v7}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object p2, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mLayout:Landroid/text/Layout;

    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "input_method"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mImm:Landroid/view/inputmethod/InputMethodManager;

    return-void
.end method

.method private static clampIndexToEditable(ILandroid/text/Editable;)I
    .locals 2

    .line 257
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    if-eq p1, p0, :cond_0

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Text selection index was clamped ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "->"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") to remain in bounds. This may not be your fault, as some keyboards may select outside of bounds."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "flutter"

    invoke-static {v0, p0}, Lio/flutter/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return p1
.end method

.method private doPerformContextMenuAction(I)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const v2, 0x102001f

    if-ne p1, v2, :cond_0

    .line 388
    iget-object p1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-virtual {p1}, Lio/flutter/plugin/editing/ListenableEditingState;->length()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->setSelection(II)Z

    return v0

    :cond_0
    const v2, 0x1020020

    const-string v3, "text label?"

    const-string v4, "clipboard"

    if-ne p1, v2, :cond_2

    .line 391
    iget-object p1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result p1

    .line 392
    iget-object v1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    if-eq p1, v1, :cond_1

    .line 394
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 395
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 396
    iget-object v1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-virtual {v1, v2, p1}, Lio/flutter/plugin/editing/ListenableEditingState;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 397
    iget-object v5, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mFlutterView:Landroid/view/View;

    .line 399
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ClipboardManager;

    .line 400
    invoke-static {v3, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    .line 401
    invoke-virtual {v4, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 402
    iget-object v1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-virtual {v1, v2, p1}, Lio/flutter/plugin/editing/ListenableEditingState;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 403
    invoke-virtual {p0, v2, v2}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->setSelection(II)Z

    :cond_1
    return v0

    :cond_2
    const v2, 0x1020021

    if-ne p1, v2, :cond_4

    .line 407
    iget-object p1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result p1

    .line 408
    iget-object v1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    if-eq p1, v1, :cond_3

    .line 410
    iget-object v2, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 411
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v2, v5, p1}, Lio/flutter/plugin/editing/ListenableEditingState;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 412
    iget-object v1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mFlutterView:Landroid/view/View;

    .line 414
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 415
    invoke-static {v3, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    :cond_3
    return v0

    :cond_4
    const v2, 0x1020022

    if-ne p1, v2, :cond_7

    .line 419
    iget-object p1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mFlutterView:Landroid/view/View;

    .line 420
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    .line 421
    invoke-virtual {p1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 423
    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p1

    iget-object v2, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mFlutterView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 424
    iget-object v2, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 425
    iget-object v3, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-static {v3}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 426
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 427
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-eq v3, v1, :cond_5

    .line 428
    iget-object v2, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-virtual {v2, v3, v1}, Lio/flutter/plugin/editing/ListenableEditingState;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 429
    :cond_5
    iget-object v1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-virtual {v1, v3, p1}, Lio/flutter/plugin/editing/ListenableEditingState;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 430
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    add-int/2addr v3, p1

    .line 431
    invoke-virtual {p0, v3, v3}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->setSelection(II)Z

    :cond_6
    return v0

    :cond_7
    return v1
.end method

.method private getCursorAnchorInfo()Landroid/view/inputmethod/CursorAnchorInfo;
    .locals 4

    .line 106
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 109
    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mCursorAnchorInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    if-nez v0, :cond_1

    .line 110
    new-instance v0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-direct {v0}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;-><init>()V

    iput-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mCursorAnchorInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    goto :goto_0

    .line 112
    :cond_1
    invoke-virtual {v0}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->reset()V

    .line 115
    :goto_0
    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mCursorAnchorInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    iget-object v1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 116
    invoke-virtual {v1}, Lio/flutter/plugin/editing/ListenableEditingState;->getSelectionStart()I

    move-result v1

    iget-object v2, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-virtual {v2}, Lio/flutter/plugin/editing/ListenableEditingState;->getSelectionEnd()I

    move-result v2

    .line 115
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setSelectionRange(II)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 117
    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-virtual {v0}, Lio/flutter/plugin/editing/ListenableEditingState;->getComposingStart()I

    move-result v0

    .line 118
    iget-object v1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-virtual {v1}, Lio/flutter/plugin/editing/ListenableEditingState;->getComposingEnd()I

    move-result v1

    if-ltz v0, :cond_2

    if-le v1, v0, :cond_2

    .line 120
    iget-object v2, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mCursorAnchorInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    iget-object v3, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 121
    invoke-virtual {v3}, Lio/flutter/plugin/editing/ListenableEditingState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 120
    invoke-virtual {v2, v0, v1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setComposingText(ILjava/lang/CharSequence;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    goto :goto_1

    .line 123
    :cond_2
    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mCursorAnchorInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    const/4 v1, -0x1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setComposingText(ILjava/lang/CharSequence;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 125
    :goto_1
    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mCursorAnchorInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-virtual {v0}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->build()Landroid/view/inputmethod/CursorAnchorInfo;

    move-result-object v0

    return-object v0
.end method

.method private getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;)Landroid/view/inputmethod/ExtractedText;
    .locals 2

    .line 93
    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    const/4 v1, -0x1

    .line 94
    iput v1, v0, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 95
    iput v1, v0, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 96
    iget-object v1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-virtual {v1}, Lio/flutter/plugin/editing/ListenableEditingState;->getSelectionStart()I

    move-result v1

    iput v1, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 97
    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget-object v1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-virtual {v1}, Lio/flutter/plugin/editing/ListenableEditingState;->getSelectionEnd()I

    move-result v1

    iput v1, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 98
    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    if-eqz p1, :cond_1

    .line 99
    iget p1, p1, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    and-int/lit8 p1, p1, 0x1

    if-nez p1, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    iget-object p1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    goto :goto_1

    .line 100
    :cond_1
    :goto_0
    iget-object p1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-virtual {p1}, Lio/flutter/plugin/editing/ListenableEditingState;->toString()Ljava/lang/String;

    move-result-object p1

    .line 101
    :goto_1
    iput-object p1, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 102
    iget-object p1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    return-object p1
.end method

.method private handleHorizontalMovement(ZZ)Z
    .locals 4

    .line 325
    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 326
    iget-object v1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    const/4 v2, 0x0

    if-ltz v0, :cond_4

    if-gez v1, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p1, :cond_1

    .line 334
    iget-object p1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->flutterTextUtils:Lio/flutter/plugin/editing/FlutterTextUtils;

    iget-object v3, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-virtual {p1, v3, v1}, Lio/flutter/plugin/editing/FlutterTextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result p1

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    .line 335
    :cond_1
    iget-object p1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->flutterTextUtils:Lio/flutter/plugin/editing/FlutterTextUtils;

    iget-object v3, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-virtual {p1, v3, v1}, Lio/flutter/plugin/editing/FlutterTextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result p1

    iget-object v3, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-virtual {v3}, Lio/flutter/plugin/editing/ListenableEditingState;->length()I

    move-result v3

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_0
    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    if-nez p2, :cond_2

    move v2, v3

    :cond_2
    if-eqz v2, :cond_3

    .line 340
    invoke-virtual {p0, p1, p1}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->setSelection(II)Z

    goto :goto_1

    .line 342
    :cond_3
    invoke-virtual {p0, v0, p1}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->setSelection(II)Z

    :goto_1
    return v3

    :cond_4
    :goto_2
    return v2
.end method

.method private handleVerticalMovement(ZZ)Z
    .locals 4

    .line 348
    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 349
    iget-object v1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    const/4 v2, 0x0

    if-ltz v0, :cond_5

    if-gez v1, :cond_0

    goto :goto_3

    :cond_0
    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    if-nez p2, :cond_1

    move v2, v3

    .line 357
    :cond_1
    invoke-virtual {p0}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->beginBatchEdit()Z

    if-eqz v2, :cond_3

    if-eqz p1, :cond_2

    .line 360
    iget-object p1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    iget-object p2, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mLayout:Landroid/text/Layout;

    invoke-static {p1, p2}, Landroid/text/Selection;->moveUp(Landroid/text/Spannable;Landroid/text/Layout;)Z

    goto :goto_0

    .line 362
    :cond_2
    iget-object p1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    iget-object p2, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mLayout:Landroid/text/Layout;

    invoke-static {p1, p2}, Landroid/text/Selection;->moveDown(Landroid/text/Spannable;Landroid/text/Layout;)Z

    .line 364
    :goto_0
    iget-object p1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result p1

    .line 365
    invoke-virtual {p0, p1, p1}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->setSelection(II)Z

    goto :goto_2

    :cond_3
    if-eqz p1, :cond_4

    .line 368
    iget-object p1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    iget-object p2, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mLayout:Landroid/text/Layout;

    invoke-static {p1, p2}, Landroid/text/Selection;->extendUp(Landroid/text/Spannable;Landroid/text/Layout;)Z

    goto :goto_1

    .line 370
    :cond_4
    iget-object p1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    iget-object p2, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mLayout:Landroid/text/Layout;

    invoke-static {p1, p2}, Landroid/text/Selection;->extendDown(Landroid/text/Spannable;Landroid/text/Layout;)Z

    .line 372
    :goto_1
    iget-object p1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result p1

    iget-object p2, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->setSelection(II)Z

    .line 374
    :goto_2
    invoke-virtual {p0}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->endBatchEdit()Z

    return v3

    :cond_5
    :goto_3
    return v2
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 1

    .line 135
    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-virtual {v0}, Lio/flutter/plugin/editing/ListenableEditingState;->beginBatchEdit()V

    .line 136
    iget v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->batchEditNestDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->batchEditNestDepth:I

    .line 137
    invoke-super {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    move-result v0

    return v0
.end method

.method public clearMetaKeyStates(I)Z
    .locals 0

    .line 233
    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->clearMetaKeyStates(I)Z

    move-result p1

    return p1
.end method

.method public closeConnection()V
    .locals 1

    .line 239
    invoke-super {p0}, Landroid/view/inputmethod/BaseInputConnection;->closeConnection()V

    .line 240
    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-virtual {v0, p0}, Lio/flutter/plugin/editing/ListenableEditingState;->removeEditingStateListener(Lio/flutter/plugin/editing/ListenableEditingState$EditingStateWatcher;)V

    .line 241
    :goto_0
    iget v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->batchEditNestDepth:I

    if-lez v0, :cond_0

    .line 242
    invoke-virtual {p0}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->endBatchEdit()Z

    .line 241
    iget v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->batchEditNestDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->batchEditNestDepth:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 0

    .line 150
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result p1

    return p1
.end method

.method public deleteSurroundingText(II)Z
    .locals 2

    .line 156
    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-virtual {v0}, Lio/flutter/plugin/editing/ListenableEditingState;->getSelectionStart()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 160
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->deleteSurroundingText(II)Z

    move-result p1

    return p1
.end method

.method public deleteSurroundingTextInCodePoints(II)Z
    .locals 0

    .line 166
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->deleteSurroundingTextInCodePoints(II)Z

    move-result p1

    return p1
.end method

.method public didChangeEditingState(ZZZ)V
    .locals 6

    .line 488
    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mFlutterView:Landroid/view/View;

    iget-object p1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 490
    invoke-virtual {p1}, Lio/flutter/plugin/editing/ListenableEditingState;->getSelectionStart()I

    move-result v2

    iget-object p1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 491
    invoke-virtual {p1}, Lio/flutter/plugin/editing/ListenableEditingState;->getSelectionEnd()I

    move-result v3

    iget-object p1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 492
    invoke-virtual {p1}, Lio/flutter/plugin/editing/ListenableEditingState;->getComposingStart()I

    move-result v4

    iget-object p1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 493
    invoke-virtual {p1}, Lio/flutter/plugin/editing/ListenableEditingState;->getComposingEnd()I

    move-result v5

    .line 488
    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 495
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x15

    if-ge p1, p2, :cond_0

    return-void

    .line 498
    :cond_0
    iget-object p1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mExtractRequest:Landroid/view/inputmethod/ExtractedTextRequest;

    if-eqz p1, :cond_1

    .line 499
    iget-object p2, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object p3, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mFlutterView:Landroid/view/View;

    iget p1, p1, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mExtractRequest:Landroid/view/inputmethod/ExtractedTextRequest;

    .line 500
    invoke-direct {p0, v0}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    .line 499
    invoke-virtual {p2, p3, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    .line 502
    :cond_1
    iget-boolean p1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mMonitorCursorUpdate:Z

    if-eqz p1, :cond_2

    .line 503
    invoke-direct {p0}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->getCursorAnchorInfo()Landroid/view/inputmethod/CursorAnchorInfo;

    move-result-object p1

    .line 504
    iget-object p2, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object p3, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mFlutterView:Landroid/view/View;

    invoke-virtual {p2, p3, p1}, Landroid/view/inputmethod/InputMethodManager;->updateCursorAnchorInfo(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;)V

    :cond_2
    return-void
.end method

.method public endBatchEdit()Z
    .locals 2

    .line 142
    invoke-super {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    move-result v0

    .line 143
    iget v1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->batchEditNestDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->batchEditNestDepth:I

    .line 144
    iget-object v1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-virtual {v1}, Lio/flutter/plugin/editing/ListenableEditingState;->endBatchEdit()V

    return v0
.end method

.method public finishComposingText()Z
    .locals 1

    .line 191
    invoke-super {p0}, Landroid/view/inputmethod/BaseInputConnection;->finishComposingText()Z

    move-result v0

    return v0
.end method

.method public getEditable()Landroid/text/Editable;
    .locals 1

    .line 130
    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    return-object v0
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 3

    const/4 v0, 0x1

    and-int/2addr p2, v0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    .line 203
    :goto_0
    iget-object v2, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mExtractRequest:Landroid/view/inputmethod/ExtractedTextRequest;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-ne p2, v0, :cond_3

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The input method toggled text monitoring "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_2

    const-string v1, "on"

    goto :goto_2

    :cond_2
    const-string v1, "off"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputConnectionAdaptor"

    invoke-static {v1, v0}, Lio/flutter/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz p2, :cond_4

    move-object p2, p1

    goto :goto_3

    :cond_4
    const/4 p2, 0x0

    .line 208
    :goto_3
    iput-object p2, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mExtractRequest:Landroid/view/inputmethod/ExtractedTextRequest;

    .line 209
    invoke-direct {p0, p1}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;)Landroid/view/inputmethod/ExtractedText;

    move-result-object p1

    return-object p1
.end method

.method public handleKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .line 279
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_9

    .line 280
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x15

    if-ne v0, v3, :cond_0

    .line 281
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p1

    invoke-direct {p0, v2, p1}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->handleHorizontalMovement(ZZ)Z

    move-result p1

    return p1

    .line 282
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x16

    if-ne v0, v3, :cond_1

    .line 283
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p1

    invoke-direct {p0, v1, p1}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->handleHorizontalMovement(ZZ)Z

    move-result p1

    return p1

    .line 284
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x13

    if-ne v0, v3, :cond_2

    .line 285
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p1

    invoke-direct {p0, v2, p1}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->handleVerticalMovement(ZZ)Z

    move-result p1

    return p1

    .line 286
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x14

    if-ne v0, v3, :cond_3

    .line 287
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p1

    invoke-direct {p0, v1, p1}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->handleVerticalMovement(ZZ)Z

    move-result p1

    return p1

    .line 290
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x42

    if-eq v0, v3, :cond_4

    .line 291
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0xa0

    if-ne v0, v3, :cond_5

    :cond_4
    const/high16 v0, 0x20000

    iget-object v3, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v3, v3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/2addr v0, v3

    if-nez v0, :cond_5

    .line 293
    iget-object p1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget p1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p0, p1}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->performEditorAction(I)Z

    return v2

    .line 297
    :cond_5
    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 298
    iget-object v3, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-static {v3}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 299
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result p1

    if-ltz v0, :cond_8

    if-ltz v3, :cond_8

    if-nez p1, :cond_6

    goto :goto_0

    .line 304
    :cond_6
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 305
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 306
    invoke-virtual {p0}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->beginBatchEdit()Z

    if-eq v1, v0, :cond_7

    .line 307
    iget-object v3, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-virtual {v3, v1, v0}, Lio/flutter/plugin/editing/ListenableEditingState;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 308
    :cond_7
    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    int-to-char p1, p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lio/flutter/plugin/editing/ListenableEditingState;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/2addr v1, v2

    .line 309
    invoke-virtual {p0, v1, v1}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->setSelection(II)Z

    .line 310
    invoke-virtual {p0}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->endBatchEdit()Z

    return v2

    :cond_8
    :goto_0
    return v1

    .line 314
    :cond_9
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_b

    .line 315
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x3b

    if-eq v0, v3, :cond_a

    .line 316
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 v0, 0x3c

    if-ne p1, v0, :cond_b

    .line 317
    :cond_a
    iget-object p1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result p1

    .line 318
    invoke-virtual {p0, p1, p1}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->setSelection(II)Z

    return v2

    :cond_b
    return v1
.end method

.method public performContextMenuAction(I)Z
    .locals 0

    .line 380
    invoke-virtual {p0}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->beginBatchEdit()Z

    .line 381
    invoke-direct {p0, p1}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->doPerformContextMenuAction(I)Z

    move-result p1

    .line 382
    invoke-virtual {p0}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->endBatchEdit()Z

    return p1
.end method

.method public performEditorAction(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_6

    if-eq p1, v0, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1

    const/4 v1, 0x7

    if-eq p1, v1, :cond_0

    .line 470
    iget-object p1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->textInputChannel:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    iget v1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mClient:I

    invoke-virtual {p1, v1}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->done(I)V

    goto :goto_0

    .line 466
    :cond_0
    iget-object p1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->textInputChannel:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    iget v1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mClient:I

    invoke-virtual {p1, v1}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->previous(I)V

    goto :goto_0

    .line 463
    :cond_1
    iget-object p1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->textInputChannel:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    iget v1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mClient:I

    invoke-virtual {p1, v1}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->next(I)V

    goto :goto_0

    .line 460
    :cond_2
    iget-object p1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->textInputChannel:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    iget v1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mClient:I

    invoke-virtual {p1, v1}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->send(I)V

    goto :goto_0

    .line 457
    :cond_3
    iget-object p1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->textInputChannel:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    iget v1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mClient:I

    invoke-virtual {p1, v1}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->search(I)V

    goto :goto_0

    .line 454
    :cond_4
    iget-object p1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->textInputChannel:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    iget v1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mClient:I

    invoke-virtual {p1, v1}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->go(I)V

    goto :goto_0

    .line 448
    :cond_5
    iget-object p1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->textInputChannel:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    iget v1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mClient:I

    invoke-virtual {p1, v1}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->newline(I)V

    goto :goto_0

    .line 451
    :cond_6
    iget-object p1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->textInputChannel:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    iget v1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mClient:I

    invoke-virtual {p1, v1}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->unspecifiedAction(I)V

    :goto_0
    return v0
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 2

    .line 440
    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->textInputChannel:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    iget v1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mClient:I

    invoke-virtual {v0, v1, p1, p2}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->performPrivateCommand(ILjava/lang/String;Landroid/os/Bundle;)V

    const/4 p1, 0x1

    return p1
.end method

.method public requestCursorUpdates(I)Z
    .locals 4

    .line 214
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mFlutterView:Landroid/view/View;

    invoke-direct {p0}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->getCursorAnchorInfo()Landroid/view/inputmethod/CursorAnchorInfo;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->updateCursorAnchorInfo(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;)V

    :cond_1
    and-int/lit8 p1, p1, 0x2

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    move v1, v0

    .line 222
    :cond_2
    iget-boolean p1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mMonitorCursorUpdate:Z

    if-eq v1, p1, :cond_4

    .line 223
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The input method toggled cursor monitoring "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_3

    const-string v2, "on"

    goto :goto_0

    :cond_3
    const-string v2, "off"

    :goto_0
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "InputConnectionAdaptor"

    invoke-static {v2, p1}, Lio/flutter/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :cond_4
    iput-boolean v1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mMonitorCursorUpdate:Z

    return v0
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 275
    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->keyboardManager:Lio/flutter/embedding/android/KeyboardManager;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/android/KeyboardManager;->handleEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public setComposingRegion(II)Z
    .locals 0

    .line 172
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->setComposingRegion(II)Z

    move-result p1

    return p1
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 1

    .line 179
    invoke-virtual {p0}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->beginBatchEdit()Z

    .line 180
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 181
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result p1

    goto :goto_0

    .line 183
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    move-result p1

    .line 185
    :goto_0
    invoke-virtual {p0}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->endBatchEdit()Z

    return p1
.end method

.method public setSelection(II)Z
    .locals 0

    .line 248
    invoke-virtual {p0}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->beginBatchEdit()Z

    .line 249
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->setSelection(II)Z

    move-result p1

    .line 250
    invoke-virtual {p0}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->endBatchEdit()Z

    return p1
.end method
