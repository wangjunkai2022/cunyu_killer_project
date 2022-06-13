.class public final Lcom/afollestad/materialdialogs/input/InputUtilExtKt$postRun$1;
.super Ljava/lang/Object;
.source "InputUtilExt.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afollestad/materialdialogs/input/InputUtilExtKt;->postRun(Landroid/view/View;Lkotlin/jvm/functions/Function1;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInputUtilExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InputUtilExt.kt\ncom/afollestad/materialdialogs/input/InputUtilExtKt$postRun$1\n*L\n1#1,48:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "Landroid/view/View;",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic $exec:Lkotlin/jvm/functions/Function1;

.field final synthetic $this_postRun:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/afollestad/materialdialogs/input/InputUtilExtKt$postRun$1;->$this_postRun:Landroid/view/View;

    iput-object p2, p0, Lcom/afollestad/materialdialogs/input/InputUtilExtKt$postRun$1;->$exec:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/afollestad/materialdialogs/input/InputUtilExtKt$postRun$1;->$exec:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lcom/afollestad/materialdialogs/input/InputUtilExtKt$postRun$1;->$this_postRun:Landroid/view/View;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
