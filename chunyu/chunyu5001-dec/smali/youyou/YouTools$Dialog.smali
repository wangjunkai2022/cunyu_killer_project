.class Lyouyou/YouTools$Dialog;
.super Ljava/lang/Object;
.source "YouTools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyouyou/YouTools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Dialog"
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lyouyou/YouTools$Dialog;->url:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lyouyou/YouTools$Dialog;->context:Landroid/content/Context;

    .line 64
    return-void
.end method


# virtual methods
.method public goToPlayer()V
    .locals 4

    .line 67
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lyouyou/YouTools$Dialog;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 68
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v1, "\u662f\u5426\u6253\u5f00vlc\u89c2\u770b\u76f4\u64ad\u5185\u5bb9"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6253\u5f00vlc\u64ad\u653e"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lyouyou/YouTools$Dialog;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 69
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lyouyou/YouTools$Dialog$2;

    invoke-direct {v2, p0}, Lyouyou/YouTools$Dialog$2;-><init>(Lyouyou/YouTools$Dialog;)V

    .line 70
    const-string v3, "\u786e\u8ba4"

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lyouyou/YouTools$Dialog$1;

    invoke-direct {v2, p0}, Lyouyou/YouTools$Dialog$1;-><init>(Lyouyou/YouTools$Dialog;)V

    .line 80
    const-string v3, "\u53d6\u6d88"

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 90
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 91
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 92
    return-void
.end method
