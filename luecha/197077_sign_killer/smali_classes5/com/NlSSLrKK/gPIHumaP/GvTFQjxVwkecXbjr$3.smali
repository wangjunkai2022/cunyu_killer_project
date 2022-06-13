.class Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr$3;
.super Ljava/lang/Object;
.source "InAppBrowserActivity.java"

# interfaces
.implements Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->finish()V
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

    .line 502
    iput-object p1, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr$3;->this$0:Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcn/pedant/SweetAlert/SweetAlertDialog;)V
    .locals 2

    .line 505
    iget-object v0, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr$3;->this$0:Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->close(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 506
    invoke-virtual {p1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->dismiss()V

    .line 507
    iget-object p1, p0, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr$3;->this$0:Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;

    invoke-static {p1}, Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;->access$001(Lcom/NlSSLrKK/gPIHumaP/GvTFQjxVwkecXbjr;)V

    return-void
.end method
