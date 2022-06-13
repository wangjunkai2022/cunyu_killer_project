.class Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr$6;
.super Ljava/lang/Object;
.source "InAppBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;


# direct methods
.method constructor <init>(Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;)V
    .locals 0

    .line 610
    iput-object p1, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr$6;->this$0:Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    if-nez p2, :cond_0

    .line 614
    iget-object p1, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr$6;->this$0:Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;

    iget-object p1, p1, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->searchView:Landroid/widget/SearchView;

    const/4 p2, 0x0

    const-string v0, ""

    invoke-virtual {p1, v0, p2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 615
    iget-object p1, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr$6;->this$0:Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;

    iget-object p1, p1, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->searchView:Landroid/widget/SearchView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/SearchView;->setIconified(Z)V

    :cond_0
    return-void
.end method
