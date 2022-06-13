.class Lio/flutter/plugin/editing/TextInputPlugin$1;
.super Ljava/lang/Object;
.source "TextInputPlugin.java"

# interfaces
.implements Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugin/editing/TextInputPlugin;-><init>(Landroid/view/View;Lio/flutter/embedding/engine/systemchannels/TextInputChannel;Lio/flutter/plugin/platform/PlatformViewsController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/plugin/editing/TextInputPlugin;


# direct methods
.method constructor <init>(Lio/flutter/plugin/editing/TextInputPlugin;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lio/flutter/plugin/editing/TextInputPlugin$1;->this$0:Lio/flutter/plugin/editing/TextInputPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearClient()V
    .locals 1

    .line 155
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin$1;->this$0:Lio/flutter/plugin/editing/TextInputPlugin;

    invoke-virtual {v0}, Lio/flutter/plugin/editing/TextInputPlugin;->clearTextInputClient()V

    return-void
.end method

.method public finishAutofillContext(Z)V
    .locals 2

    .line 122
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin$1;->this$0:Lio/flutter/plugin/editing/TextInputPlugin;

    invoke-static {v0}, Lio/flutter/plugin/editing/TextInputPlugin;->access$500(Lio/flutter/plugin/editing/TextInputPlugin;)Landroid/view/autofill/AutofillManager;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 126
    iget-object p1, p0, Lio/flutter/plugin/editing/TextInputPlugin$1;->this$0:Lio/flutter/plugin/editing/TextInputPlugin;

    invoke-static {p1}, Lio/flutter/plugin/editing/TextInputPlugin;->access$500(Lio/flutter/plugin/editing/TextInputPlugin;)Landroid/view/autofill/AutofillManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/autofill/AutofillManager;->commit()V

    goto :goto_0

    .line 128
    :cond_1
    iget-object p1, p0, Lio/flutter/plugin/editing/TextInputPlugin$1;->this$0:Lio/flutter/plugin/editing/TextInputPlugin;

    invoke-static {p1}, Lio/flutter/plugin/editing/TextInputPlugin;->access$500(Lio/flutter/plugin/editing/TextInputPlugin;)Landroid/view/autofill/AutofillManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/autofill/AutofillManager;->cancel()V

    :cond_2
    :goto_0
    return-void
.end method

.method public hide()V
    .locals 2

    .line 108
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin$1;->this$0:Lio/flutter/plugin/editing/TextInputPlugin;

    invoke-static {v0}, Lio/flutter/plugin/editing/TextInputPlugin;->access$100(Lio/flutter/plugin/editing/TextInputPlugin;)Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;

    move-result-object v0

    iget-object v0, v0, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;->type:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;

    sget-object v1, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;->HC_PLATFORM_VIEW:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;

    if-ne v0, v1, :cond_0

    .line 109
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin$1;->this$0:Lio/flutter/plugin/editing/TextInputPlugin;

    invoke-static {v0}, Lio/flutter/plugin/editing/TextInputPlugin;->access$200(Lio/flutter/plugin/editing/TextInputPlugin;)V

    goto :goto_0

    .line 111
    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin$1;->this$0:Lio/flutter/plugin/editing/TextInputPlugin;

    invoke-static {v0}, Lio/flutter/plugin/editing/TextInputPlugin;->access$000(Lio/flutter/plugin/editing/TextInputPlugin;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lio/flutter/plugin/editing/TextInputPlugin;->access$300(Lio/flutter/plugin/editing/TextInputPlugin;Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public requestAutofill()V
    .locals 1

    .line 117
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin$1;->this$0:Lio/flutter/plugin/editing/TextInputPlugin;

    invoke-static {v0}, Lio/flutter/plugin/editing/TextInputPlugin;->access$400(Lio/flutter/plugin/editing/TextInputPlugin;)V

    return-void
.end method

.method public sendAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 160
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin$1;->this$0:Lio/flutter/plugin/editing/TextInputPlugin;

    invoke-virtual {v0, p1, p2}, Lio/flutter/plugin/editing/TextInputPlugin;->sendTextInputAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public setClient(ILio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;)V
    .locals 1

    .line 135
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin$1;->this$0:Lio/flutter/plugin/editing/TextInputPlugin;

    invoke-virtual {v0, p1, p2}, Lio/flutter/plugin/editing/TextInputPlugin;->setTextInputClient(ILio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;)V

    return-void
.end method

.method public setEditableSizeAndTransform(DD[D)V
    .locals 6

    .line 150
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin$1;->this$0:Lio/flutter/plugin/editing/TextInputPlugin;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lio/flutter/plugin/editing/TextInputPlugin;->access$700(Lio/flutter/plugin/editing/TextInputPlugin;DD[D)V

    return-void
.end method

.method public setEditingState(Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;)V
    .locals 2

    .line 145
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin$1;->this$0:Lio/flutter/plugin/editing/TextInputPlugin;

    invoke-static {v0}, Lio/flutter/plugin/editing/TextInputPlugin;->access$000(Lio/flutter/plugin/editing/TextInputPlugin;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lio/flutter/plugin/editing/TextInputPlugin;->setTextInputEditingState(Landroid/view/View;Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;)V

    return-void
.end method

.method public setPlatformViewClient(IZ)V
    .locals 1

    .line 140
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin$1;->this$0:Lio/flutter/plugin/editing/TextInputPlugin;

    invoke-static {v0, p1, p2}, Lio/flutter/plugin/editing/TextInputPlugin;->access$600(Lio/flutter/plugin/editing/TextInputPlugin;IZ)V

    return-void
.end method

.method public show()V
    .locals 2

    .line 103
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin$1;->this$0:Lio/flutter/plugin/editing/TextInputPlugin;

    invoke-static {v0}, Lio/flutter/plugin/editing/TextInputPlugin;->access$000(Lio/flutter/plugin/editing/TextInputPlugin;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/flutter/plugin/editing/TextInputPlugin;->showTextInput(Landroid/view/View;)V

    return-void
.end method
