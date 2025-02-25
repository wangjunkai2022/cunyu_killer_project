.class final Lcom/afollestad/materialdialogs/callbacks/DialogCallbackExtKt$onShow$1;
.super Ljava/lang/Object;
.source "DialogCallbackExt.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afollestad/materialdialogs/callbacks/DialogCallbackExtKt;->onShow(Lcom/afollestad/materialdialogs/MaterialDialog;Lkotlin/jvm/functions/Function1;)Lcom/afollestad/materialdialogs/MaterialDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/content/DialogInterface;",
        "kotlin.jvm.PlatformType",
        "onShow"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic $this_onShow:Lcom/afollestad/materialdialogs/MaterialDialog;


# direct methods
.method constructor <init>(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/afollestad/materialdialogs/callbacks/DialogCallbackExtKt$onShow$1;->$this_onShow:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 1

    .line 42
    iget-object p1, p0, Lcom/afollestad/materialdialogs/callbacks/DialogCallbackExtKt$onShow$1;->$this_onShow:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->getShowListeners$core()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/afollestad/materialdialogs/callbacks/DialogCallbackExtKt$onShow$1;->$this_onShow:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-static {p1, v0}, Lcom/afollestad/materialdialogs/callbacks/DialogCallbackExtKt;->invokeAll(Ljava/util/List;Lcom/afollestad/materialdialogs/MaterialDialog;)V

    return-void
.end method
