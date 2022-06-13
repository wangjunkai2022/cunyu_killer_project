.class final Lcom/afollestad/materialdialogs/files/FileChooserAdapter$itemClicked$1;
.super Lkotlin/jvm/internal/Lambda;
.source "FileChooserAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afollestad/materialdialogs/files/FileChooserAdapter;->itemClicked(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afollestad/materialdialogs/files/FileChooserAdapter;


# direct methods
.method constructor <init>(Lcom/afollestad/materialdialogs/files/FileChooserAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/afollestad/materialdialogs/files/FileChooserAdapter$itemClicked$1;->this$0:Lcom/afollestad/materialdialogs/files/FileChooserAdapter;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 65
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/files/FileChooserAdapter$itemClicked$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/afollestad/materialdialogs/files/FileChooserAdapter$itemClicked$1;->this$0:Lcom/afollestad/materialdialogs/files/FileChooserAdapter;

    invoke-static {v0}, Lcom/afollestad/materialdialogs/files/FileChooserAdapter;->access$getCurrentFolder$p(Lcom/afollestad/materialdialogs/files/FileChooserAdapter;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/afollestad/materialdialogs/files/FileChooserAdapter;->access$switchDirectory(Lcom/afollestad/materialdialogs/files/FileChooserAdapter;Ljava/io/File;)V

    return-void
.end method
