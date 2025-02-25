.class public Lcom/appinstall/sdk/bm;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/appinstall/sdk/cg;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private d:Landroid/content/ClipboardManager;

.field private final e:Ljava/util/concurrent/LinkedBlockingQueue;

.field private final f:Landroid/os/Handler;

.field private g:Ljava/lang/ref/WeakReference;

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CM"

    invoke-static {v0}, Lcom/appinstall/sdk/cg;->a(Ljava/lang/String;)Lcom/appinstall/sdk/cg;

    move-result-object v0

    iput-object v0, p0, Lcom/appinstall/sdk/bm;->a:Lcom/appinstall/sdk/cg;

    const-string v0, "s_r"

    iput-object v0, p0, Lcom/appinstall/sdk/bm;->b:Ljava/lang/String;

    const-string v0, "s_l"

    iput-object v0, p0, Lcom/appinstall/sdk/bm;->c:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/appinstall/sdk/bm;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appinstall/sdk/bm;->g:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    iput v0, p0, Lcom/appinstall/sdk/bm;->h:I

    :try_start_0
    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    iput-object p1, p0, Lcom/appinstall/sdk/bm;->d:Landroid/content/ClipboardManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "releaseHandler"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/appinstall/sdk/bm;->f:Landroid/os/Handler;

    return-void
.end method

.method private a(Landroid/content/ClipData;)Lcom/appinstall/sdk/bl;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lcom/appinstall/sdk/bl;

    invoke-direct {v1}, Lcom/appinstall/sdk/bl;-><init>()V

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    if-lez v2, :cond_3

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p1

    if-eqz p1, :cond_3

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_1

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    :goto_1
    move-object p1, v0

    move-object v0, v2

    goto :goto_2

    :cond_3
    move-object p1, v0

    :goto_2
    if-eqz v0, :cond_5

    sget-object v2, Lcom/appinstall/sdk/ce;->o:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1, v0}, Lcom/appinstall/sdk/bl;->b(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/appinstall/sdk/bl;->a(I)V

    :cond_4
    invoke-direct {p0, v0}, Lcom/appinstall/sdk/bm;->a(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/appinstall/sdk/bl;->a(Z)V

    :cond_5
    if-eqz p1, :cond_8

    sget-object v0, Lcom/appinstall/sdk/ce;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    invoke-virtual {v1, p1}, Lcom/appinstall/sdk/bl;->a(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/appinstall/sdk/bl;->a(I)V

    invoke-direct {p0, p1}, Lcom/appinstall/sdk/bm;->a(Ljava/lang/String;)Z

    move-result p1

    :goto_3
    invoke-virtual {v1, p1}, Lcom/appinstall/sdk/bl;->a(Z)V

    goto :goto_4

    :cond_6
    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/appinstall/sdk/cd;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/appinstall/sdk/ce;->o:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v1, p1}, Lcom/appinstall/sdk/bl;->a(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/appinstall/sdk/bl;->a(I)V

    :cond_7
    invoke-direct {p0, v0}, Lcom/appinstall/sdk/bm;->a(Ljava/lang/String;)Z

    move-result p1

    goto :goto_3

    :cond_8
    :goto_4
    return-object v1
.end method

.method static synthetic a(Lcom/appinstall/sdk/bm;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 0

    iget-object p0, p0, Lcom/appinstall/sdk/bm;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object p0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 6

    sget-object v0, Lcom/appinstall/sdk/ce;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-wide/16 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/appinstall/sdk/ce;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    sget-object v4, Lcom/appinstall/sdk/ce;->p:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v0, v4

    const-string v4, "-"

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long p1, v4, v2

    if-gez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private d()Landroid/content/ClipData;
    .locals 4

    iget-object v0, p0, Lcom/appinstall/sdk/bm;->d:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/appinstall/sdk/bm;->e()Landroid/content/ClipData;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_1

    const-string v2, "text/html"

    invoke-virtual {v0, v2}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v0

    or-int/2addr v1, v0

    :cond_1
    if-nez v1, :cond_2

    const-string v0, "custom"

    const-string v1, "don\'t match"

    invoke-static {v0, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/appinstall/sdk/bm;->d:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/appinstall/sdk/bm;->e()Landroid/content/ClipData;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method private e()Landroid/content/ClipData;
    .locals 2

    invoke-virtual {p0}, Lcom/appinstall/sdk/bm;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/appinstall/sdk/bm;->h:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/appinstall/sdk/bm;->h:I

    const-string v0, "custom"

    const-string v1, "app focus"

    invoke-static {v0, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/appinstall/sdk/bm;->h:I

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public a(Z)Lcom/appinstall/sdk/bl;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/appinstall/sdk/bm;->d:Landroid/content/ClipboardManager;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/appinstall/sdk/bm;->d()Landroid/content/ClipData;

    move-result-object v1

    :goto_0
    if-eqz p1, :cond_3

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/appinstall/sdk/bm;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    const-wide/16 v2, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0}, Lcom/appinstall/sdk/bm;->d()Landroid/content/ClipData;

    move-result-object v2

    const-string v3, "s_l"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-boolean p1, Lcom/appinstall/sdk/cf;->a:Z

    if-eqz p1, :cond_1

    const-string/jumbo p1, "\u7591\u4f3c\u5e94\u7528\u5904\u4e8e\u540e\u53f0\u4e0d\u53ef\u89c1\u72b6\u6001\u4e0b\u8c03\u7528init\uff0c\u5e76\u4e14\u63a5\u7740\u8c03\u7528\u5176\u5b83api\uff0c\u6570\u636e\u5927\u6982\u7387\u4e22\u5931\uff0c\u8bf7\u68c0\u67e5\u4ee3\u7801"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/appinstall/sdk/cf;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    move-object v1, v2

    goto :goto_1

    :cond_2
    move-object v1, v2

    goto :goto_0

    :cond_3
    :goto_1
    invoke-direct {p0, v1}, Lcom/appinstall/sdk/bm;->a(Landroid/content/ClipData;)Lcom/appinstall/sdk/bl;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-object v0
.end method

.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/appinstall/sdk/bm;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    const-string v1, "s_r"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(I)V
    .locals 4

    const/16 v0, 0x64

    if-le p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/appinstall/sdk/bm;->a()V

    :cond_0
    iget-object v0, p0, Lcom/appinstall/sdk/bm;->f:Landroid/os/Handler;

    new-instance v1, Lcom/appinstall/sdk/bn;

    invoke-direct {v1, p0}, Lcom/appinstall/sdk/bn;-><init>(Lcom/appinstall/sdk/bm;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public a(Ljava/lang/ref/WeakReference;)V
    .locals 0

    iput-object p1, p0, Lcom/appinstall/sdk/bm;->g:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/appinstall/sdk/bm;->g:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public c()V
    .locals 4

    iget-object v0, p0, Lcom/appinstall/sdk/bm;->d:Landroid/content/ClipboardManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/ClipData$Item;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Landroid/content/Intent;Landroid/net/Uri;)V

    new-instance v1, Landroid/content/ClipData;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, ""

    invoke-direct {v1, v3, v2, v0}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    iget-object v0, p0, Lcom/appinstall/sdk/bm;->d:Landroid/content/ClipboardManager;

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    return-void
.end method
