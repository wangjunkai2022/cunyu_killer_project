.class public final Lio/flutter/plugin/editing/TextEditingDelta;
.super Ljava/lang/Object;
.source "TextEditingDelta.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TextEditingDelta"


# instance fields
.field private deltaEnd:I

.field private deltaStart:I

.field private deltaText:Ljava/lang/CharSequence;

.field private newComposingEnd:I

.field private newComposingStart:I

.field private newSelectionEnd:I

.field private newSelectionStart:I

.field private oldText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;IIII)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p2, p0, Lio/flutter/plugin/editing/TextEditingDelta;->newSelectionStart:I

    .line 55
    iput p3, p0, Lio/flutter/plugin/editing/TextEditingDelta;->newSelectionEnd:I

    .line 56
    iput p4, p0, Lio/flutter/plugin/editing/TextEditingDelta;->newComposingStart:I

    .line 57
    iput p5, p0, Lio/flutter/plugin/editing/TextEditingDelta;->newComposingEnd:I

    const/4 p2, -0x1

    const-string p3, ""

    .line 59
    invoke-direct {p0, p1, p3, p2, p2}, Lio/flutter/plugin/editing/TextEditingDelta;->setDeltas(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILjava/lang/CharSequence;IIII)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p5, p0, Lio/flutter/plugin/editing/TextEditingDelta;->newSelectionStart:I

    .line 36
    iput p6, p0, Lio/flutter/plugin/editing/TextEditingDelta;->newSelectionEnd:I

    .line 37
    iput p7, p0, Lio/flutter/plugin/editing/TextEditingDelta;->newComposingStart:I

    .line 38
    iput p8, p0, Lio/flutter/plugin/editing/TextEditingDelta;->newComposingEnd:I

    .line 42
    invoke-interface {p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p4

    .line 40
    invoke-direct {p0, p1, p4, p2, p3}, Lio/flutter/plugin/editing/TextEditingDelta;->setDeltas(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)V

    return-void
.end method

.method private setDeltas(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)V
    .locals 0

    .line 103
    iput-object p1, p0, Lio/flutter/plugin/editing/TextEditingDelta;->oldText:Ljava/lang/CharSequence;

    .line 104
    iput-object p2, p0, Lio/flutter/plugin/editing/TextEditingDelta;->deltaText:Ljava/lang/CharSequence;

    .line 105
    iput p3, p0, Lio/flutter/plugin/editing/TextEditingDelta;->deltaStart:I

    .line 106
    iput p4, p0, Lio/flutter/plugin/editing/TextEditingDelta;->deltaEnd:I

    return-void
.end method


# virtual methods
.method public getDeltaEnd()I
    .locals 1

    .line 79
    iget v0, p0, Lio/flutter/plugin/editing/TextEditingDelta;->deltaEnd:I

    return v0
.end method

.method public getDeltaStart()I
    .locals 1

    .line 74
    iget v0, p0, Lio/flutter/plugin/editing/TextEditingDelta;->deltaStart:I

    return v0
.end method

.method public getDeltaText()Ljava/lang/CharSequence;
    .locals 1

    .line 69
    iget-object v0, p0, Lio/flutter/plugin/editing/TextEditingDelta;->deltaText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getNewComposingEnd()I
    .locals 1

    .line 99
    iget v0, p0, Lio/flutter/plugin/editing/TextEditingDelta;->newComposingEnd:I

    return v0
.end method

.method public getNewComposingStart()I
    .locals 1

    .line 94
    iget v0, p0, Lio/flutter/plugin/editing/TextEditingDelta;->newComposingStart:I

    return v0
.end method

.method public getNewSelectionEnd()I
    .locals 1

    .line 89
    iget v0, p0, Lio/flutter/plugin/editing/TextEditingDelta;->newSelectionEnd:I

    return v0
.end method

.method public getNewSelectionStart()I
    .locals 1

    .line 84
    iget v0, p0, Lio/flutter/plugin/editing/TextEditingDelta;->newSelectionStart:I

    return v0
.end method

.method public getOldText()Ljava/lang/CharSequence;
    .locals 1

    .line 64
    iget-object v0, p0, Lio/flutter/plugin/editing/TextEditingDelta;->oldText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 4

    .line 110
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "oldText"

    .line 113
    iget-object v2, p0, Lio/flutter/plugin/editing/TextEditingDelta;->oldText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "deltaText"

    .line 114
    iget-object v2, p0, Lio/flutter/plugin/editing/TextEditingDelta;->deltaText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "deltaStart"

    .line 115
    iget v2, p0, Lio/flutter/plugin/editing/TextEditingDelta;->deltaStart:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "deltaEnd"

    .line 116
    iget v2, p0, Lio/flutter/plugin/editing/TextEditingDelta;->deltaEnd:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "selectionBase"

    .line 117
    iget v2, p0, Lio/flutter/plugin/editing/TextEditingDelta;->newSelectionStart:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "selectionExtent"

    .line 118
    iget v2, p0, Lio/flutter/plugin/editing/TextEditingDelta;->newSelectionEnd:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "composingBase"

    .line 119
    iget v2, p0, Lio/flutter/plugin/editing/TextEditingDelta;->newComposingStart:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "composingExtent"

    .line 120
    iget v2, p0, Lio/flutter/plugin/editing/TextEditingDelta;->newComposingEnd:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to create JSONObject: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TextEditingDelta"

    invoke-static {v2, v1}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method
