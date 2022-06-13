.class public Lyouyou/YouyouTools;
.super Ljava/lang/Object;
.source "YouyouTools.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CloneStringToClipboard(Ljava/lang/String;Landroid/content/Context;)V
    .registers 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    const-string v2, "clipboard"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 13
    .local v0, "cm":Landroid/content/ClipboardManager;
    const-string v2, "Label"

    invoke-static {v2, p0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    .line 15
    .local v1, "mClipData":Landroid/content/ClipData;
    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 16
    return-void
.end method
