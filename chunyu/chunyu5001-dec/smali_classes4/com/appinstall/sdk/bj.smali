.class Lcom/appinstall/sdk/bj;
.super Lcom/appinstall/sdk/a;


# instance fields
.field final synthetic a:Lcom/appinstall/sdk/bi;


# direct methods
.method constructor <init>(Lcom/appinstall/sdk/bi;)V
    .locals 0

    iput-object p1, p0, Lcom/appinstall/sdk/bj;->a:Lcom/appinstall/sdk/bi;

    invoke-direct {p0}, Lcom/appinstall/sdk/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/appinstall/sdk/bj;->a:Lcom/appinstall/sdk/bi;

    invoke-static {v1}, Lcom/appinstall/sdk/bi;->a(Lcom/appinstall/sdk/bi;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/appinstall/sdk/bj;->a:Lcom/appinstall/sdk/bi;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/appinstall/sdk/bi;->a(Lcom/appinstall/sdk/bi;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    iget-object p1, p0, Lcom/appinstall/sdk/bj;->a:Lcom/appinstall/sdk/bi;

    invoke-static {p1}, Lcom/appinstall/sdk/bi;->b(Lcom/appinstall/sdk/bi;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/appinstall/sdk/bi;->a(Ljava/lang/ref/WeakReference;)V

    return-void
.end method
