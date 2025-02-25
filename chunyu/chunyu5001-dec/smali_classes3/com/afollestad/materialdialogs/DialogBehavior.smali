.class public interface abstract Lcom/afollestad/materialdialogs/DialogBehavior;
.super Ljava/lang/Object;
.source "DialogBehavior.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0006\u0008f\u0018\u00002\u00020\u0001J(\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH&J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0003H&J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\'J\u0008\u0010\u0013\u001a\u00020\u0012H&J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\n\u001a\u00020\u000bH&J\u0010\u0010\u0016\u001a\u00020\u00152\u0006\u0010\n\u001a\u00020\u000bH&J\"\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\r2\u0008\u0008\u0001\u0010\u0019\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u001bH&J1\u0010\u001c\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\r2\n\u0008\u0001\u0010\u001f\u001a\u0004\u0018\u00010\u0010H&\u00a2\u0006\u0002\u0010 \u00a8\u0006!"
    }
    d2 = {
        "Lcom/afollestad/materialdialogs/DialogBehavior;",
        "",
        "createView",
        "Landroid/view/ViewGroup;",
        "creatingContext",
        "Landroid/content/Context;",
        "dialogWindow",
        "Landroid/view/Window;",
        "layoutInflater",
        "Landroid/view/LayoutInflater;",
        "dialog",
        "Lcom/afollestad/materialdialogs/MaterialDialog;",
        "getDialogLayout",
        "Lcom/afollestad/materialdialogs/internal/main/DialogLayout;",
        "root",
        "getThemeRes",
        "",
        "isDark",
        "",
        "onDismiss",
        "onPostShow",
        "",
        "onPreShow",
        "setBackgroundColor",
        "view",
        "color",
        "cornerRadius",
        "",
        "setWindowConstraints",
        "context",
        "window",
        "maxWidth",
        "(Landroid/content/Context;Landroid/view/Window;Lcom/afollestad/materialdialogs/internal/main/DialogLayout;Ljava/lang/Integer;)V",
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
.method public abstract createView(Landroid/content/Context;Landroid/view/Window;Landroid/view/LayoutInflater;Lcom/afollestad/materialdialogs/MaterialDialog;)Landroid/view/ViewGroup;
.end method

.method public abstract getDialogLayout(Landroid/view/ViewGroup;)Lcom/afollestad/materialdialogs/internal/main/DialogLayout;
.end method

.method public abstract getThemeRes(Z)I
.end method

.method public abstract onDismiss()Z
.end method

.method public abstract onPostShow(Lcom/afollestad/materialdialogs/MaterialDialog;)V
.end method

.method public abstract onPreShow(Lcom/afollestad/materialdialogs/MaterialDialog;)V
.end method

.method public abstract setBackgroundColor(Lcom/afollestad/materialdialogs/internal/main/DialogLayout;IF)V
.end method

.method public abstract setWindowConstraints(Landroid/content/Context;Landroid/view/Window;Lcom/afollestad/materialdialogs/internal/main/DialogLayout;Ljava/lang/Integer;)V
.end method
