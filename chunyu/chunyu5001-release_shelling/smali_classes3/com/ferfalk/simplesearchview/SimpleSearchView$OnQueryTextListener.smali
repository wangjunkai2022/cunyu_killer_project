.class public interface abstract Lcom/ferfalk/simplesearchview/SimpleSearchView$OnQueryTextListener;
.super Ljava/lang/Object;
.source "SimpleSearchView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ferfalk/simplesearchview/SimpleSearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnQueryTextListener"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0008\u0010\u0006\u001a\u00020\u0003H&J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u0005H&\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/ferfalk/simplesearchview/SimpleSearchView$OnQueryTextListener;",
        "",
        "onQueryTextChange",
        "",
        "newText",
        "",
        "onQueryTextCleared",
        "onQueryTextSubmit",
        "query",
        "simplesearchview_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# virtual methods
.method public abstract onQueryTextChange(Ljava/lang/String;)Z
.end method

.method public abstract onQueryTextCleared()Z
.end method

.method public abstract onQueryTextSubmit(Ljava/lang/String;)Z
.end method
