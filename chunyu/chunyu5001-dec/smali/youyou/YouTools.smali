.class public Lyouyou/YouTools;
.super Ljava/lang/Object;
.source "YouTools.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyouyou/YouTools$Dialog;
    }
.end annotation


# static fields
.field static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-string v0, "YouTools"

    sput-object v0, Lyouyou/YouTools;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CloneStringToClipboard(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .line 19
    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 21
    .local v0, "cm":Landroid/content/ClipboardManager;
    const-string v1, "Label"

    invoke-static {v1, p0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    .line 23
    .local v1, "mClipData":Landroid/content/ClipData;
    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 24
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Landroid/content/Context;

    .line 13
    invoke-static {p0, p1}, Lyouyou/YouTools;->toLiveYouyouApp(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public static showConfirmationDialog(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .line 27
    new-instance v0, Lyouyou/YouTools$Dialog;

    invoke-direct {v0, p0, p1}, Lyouyou/YouTools$Dialog;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0}, Lyouyou/YouTools$Dialog;->goToPlayer()V

    .line 28
    return-void
.end method

.method private static toLiveYouyouApp(Ljava/lang/String;Landroid/content/Context;)V
    .locals 6
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .line 32
    const-string v0, "\u5f00\u59cb\u64ad\u653e:"

    .line 33
    .local v0, "str_clear":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 34
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 44
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vlc://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 46
    .local v1, "intent":Landroid/content/Intent;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, "intentUri":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 49
    sget-object v3, Lyouyou/YouTools;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u8df3\u8f6c\u64ad\u653e"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    nop

    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "intentUri":Ljava/lang/String;
    goto :goto_0

    .line 50
    :catch_0
    move-exception v1

    .line 51
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 52
    sget-object v2, Lyouyou/YouTools;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u8df3\u8f6c\u64ad\u653e\u5931\u8d25:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 55
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
