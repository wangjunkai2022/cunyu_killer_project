.class Lcom/NlSSLrKK/gPIHumaP/GopqXVGWklgRwUHZ$1;
.super Landroid/content/BroadcastReceiver;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/NlSSLrKK/gPIHumaP/GopqXVGWklgRwUHZ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/NlSSLrKK/gPIHumaP/GopqXVGWklgRwUHZ;


# direct methods
.method constructor <init>(Lcom/NlSSLrKK/gPIHumaP/GopqXVGWklgRwUHZ;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/NlSSLrKK/gPIHumaP/GopqXVGWklgRwUHZ$1;->this$0:Lcom/NlSSLrKK/gPIHumaP/GopqXVGWklgRwUHZ;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 43
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 44
    sget-object p2, Lcom/NlSSLrKK/gPIHumaP/GopqXVGWklgRwUHZ;->ACTION_CLOSE:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 45
    iget-object p1, p0, Lcom/NlSSLrKK/gPIHumaP/GopqXVGWklgRwUHZ$1;->this$0:Lcom/NlSSLrKK/gPIHumaP/GopqXVGWklgRwUHZ;

    invoke-virtual {p1}, Lcom/NlSSLrKK/gPIHumaP/GopqXVGWklgRwUHZ;->finish()V

    :cond_0
    return-void
.end method
