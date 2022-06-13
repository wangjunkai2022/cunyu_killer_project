.class public Lio/flutter/embedding/android/KeyChannelResponder;
.super Ljava/lang/Object;
.source "KeyChannelResponder.java"

# interfaces
.implements Lio/flutter/embedding/android/KeyboardManager$Responder;


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyChannelResponder"


# instance fields
.field private combiningCharacter:I

.field private final keyEventChannel:Lio/flutter/embedding/engine/systemchannels/KeyEventChannel;


# direct methods
.method public constructor <init>(Lio/flutter/embedding/engine/systemchannels/KeyEventChannel;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lio/flutter/embedding/android/KeyChannelResponder;->keyEventChannel:Lio/flutter/embedding/engine/systemchannels/KeyEventChannel;

    return-void
.end method

.method static synthetic lambda$handleEvent$0(Lio/flutter/embedding/android/KeyboardManager$Responder$OnKeyEventHandledCallback;Z)V
    .locals 0

    .line 103
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/flutter/embedding/android/KeyboardManager$Responder$OnKeyEventHandledCallback;->onKeyEventHandled(Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method applyCombiningCharacterToBaseCharacter(I)Ljava/lang/Character;
    .locals 3

    int-to-char v0, p1

    const/high16 v1, -0x80000000

    and-int/2addr v1, p1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_2

    const v1, 0x7fffffff

    and-int/2addr p1, v1

    .line 62
    iget v1, p0, Lio/flutter/embedding/android/KeyChannelResponder;->combiningCharacter:I

    if-eqz v1, :cond_1

    .line 63
    invoke-static {v1, p1}, Landroid/view/KeyCharacterMap;->getDeadChar(II)I

    move-result p1

    iput p1, p0, Lio/flutter/embedding/android/KeyChannelResponder;->combiningCharacter:I

    goto :goto_1

    .line 65
    :cond_1
    iput p1, p0, Lio/flutter/embedding/android/KeyChannelResponder;->combiningCharacter:I

    goto :goto_1

    .line 70
    :cond_2
    iget v1, p0, Lio/flutter/embedding/android/KeyChannelResponder;->combiningCharacter:I

    if-eqz v1, :cond_4

    .line 71
    invoke-static {v1, p1}, Landroid/view/KeyCharacterMap;->getDeadChar(II)I

    move-result p1

    if-lez p1, :cond_3

    int-to-char v0, p1

    .line 75
    :cond_3
    iput v2, p0, Lio/flutter/embedding/android/KeyChannelResponder;->combiningCharacter:I

    .line 79
    :cond_4
    :goto_1
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    return-object p1
.end method

.method public handleEvent(Landroid/view/KeyEvent;Lio/flutter/embedding/android/KeyboardManager$Responder$OnKeyEventHandledCallback;)V
    .locals 5

    .line 85
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    if-eq v0, v2, :cond_0

    .line 90
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/embedding/android/KeyboardManager$Responder$OnKeyEventHandledCallback;->onKeyEventHandled(Ljava/lang/Boolean;)V

    return-void

    .line 95
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v3

    invoke-virtual {p0, v3}, Lio/flutter/embedding/android/KeyChannelResponder;->applyCombiningCharacterToBaseCharacter(I)Ljava/lang/Character;

    move-result-object v3

    .line 96
    new-instance v4, Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$FlutterKeyEvent;

    invoke-direct {v4, p1, v3}, Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$FlutterKeyEvent;-><init>(Landroid/view/KeyEvent;Ljava/lang/Character;)V

    if-eqz v0, :cond_1

    move v1, v2

    .line 100
    :cond_1
    iget-object p1, p0, Lio/flutter/embedding/android/KeyChannelResponder;->keyEventChannel:Lio/flutter/embedding/engine/systemchannels/KeyEventChannel;

    new-instance v0, Lio/flutter/embedding/android/-$$Lambda$KeyChannelResponder$JpfmDdKZzCsQFem066be6lLfZqM;

    invoke-direct {v0, p2}, Lio/flutter/embedding/android/-$$Lambda$KeyChannelResponder$JpfmDdKZzCsQFem066be6lLfZqM;-><init>(Lio/flutter/embedding/android/KeyboardManager$Responder$OnKeyEventHandledCallback;)V

    invoke-virtual {p1, v4, v1, v0}, Lio/flutter/embedding/engine/systemchannels/KeyEventChannel;->sendFlutterKeyEvent(Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$FlutterKeyEvent;ZLio/flutter/embedding/engine/systemchannels/KeyEventChannel$EventResponseHandler;)V

    return-void
.end method
