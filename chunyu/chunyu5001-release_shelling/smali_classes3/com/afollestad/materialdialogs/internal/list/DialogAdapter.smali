.class public interface abstract Lcom/afollestad/materialdialogs/internal/list/DialogAdapter;
.super Ljava/lang/Object;
.source "DialogAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afollestad/materialdialogs/internal/list/DialogAdapter$DefaultImpls;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<IT:",
        "Ljava/lang/Object;",
        "S",
        "L:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0015\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0008\u0007\u0008f\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u0000*\u0006\u0008\u0001\u0010\u0002 \u00002\u00020\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0008H&J\u0010\u0010\t\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0008H&J\u0008\u0010\n\u001a\u00020\u000bH&J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000bH&J\u0008\u0010\u000f\u001a\u00020\u0005H&J\'\u0010\u0010\u001a\u00020\u00052\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00122\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00018\u0001H&\u00a2\u0006\u0002\u0010\u0014J\u0008\u0010\u0015\u001a\u00020\u0005H&J\u0010\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0008H&J\u0008\u0010\u0017\u001a\u00020\u0005H&J\u0010\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0008H&\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/afollestad/materialdialogs/internal/list/DialogAdapter;",
        "IT",
        "SL",
        "",
        "checkAllItems",
        "",
        "checkItems",
        "indices",
        "",
        "disableItems",
        "getItemCount",
        "",
        "isItemChecked",
        "",
        "index",
        "positiveButtonClicked",
        "replaceItems",
        "items",
        "",
        "listener",
        "(Ljava/util/List;Ljava/lang/Object;)V",
        "toggleAllChecked",
        "toggleItems",
        "uncheckAllItems",
        "uncheckItems",
        "core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# virtual methods
.method public abstract checkAllItems()V
.end method

.method public abstract checkItems([I)V
.end method

.method public abstract disableItems([I)V
.end method

.method public abstract getItemCount()I
.end method

.method public abstract isItemChecked(I)Z
.end method

.method public abstract positiveButtonClicked()V
.end method

.method public abstract replaceItems(Ljava/util/List;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TIT;>;TS",
            "L;",
            ")V"
        }
    .end annotation
.end method

.method public abstract toggleAllChecked()V
.end method

.method public abstract toggleItems([I)V
.end method

.method public abstract uncheckAllItems()V
.end method

.method public abstract uncheckItems([I)V
.end method
