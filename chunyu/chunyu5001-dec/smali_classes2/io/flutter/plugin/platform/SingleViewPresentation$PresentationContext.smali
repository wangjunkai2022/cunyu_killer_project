.class Lio/flutter/plugin/platform/SingleViewPresentation$PresentationContext;
.super Landroid/content/ContextWrapper;
.source "SingleViewPresentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugin/platform/SingleViewPresentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PresentationContext"
.end annotation


# instance fields
.field private final flutterAppWindowContext:Landroid/content/Context;

.field private windowManager:Landroid/view/WindowManager;

.field private final windowManagerHandler:Lio/flutter/plugin/platform/SingleViewPresentation$WindowManagerHandler;


# direct methods
.method constructor <init>(Landroid/content/Context;Lio/flutter/plugin/platform/SingleViewPresentation$WindowManagerHandler;Landroid/content/Context;)V
    .locals 0

    .line 319
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 320
    iput-object p2, p0, Lio/flutter/plugin/platform/SingleViewPresentation$PresentationContext;->windowManagerHandler:Lio/flutter/plugin/platform/SingleViewPresentation$WindowManagerHandler;

    .line 321
    iput-object p3, p0, Lio/flutter/plugin/platform/SingleViewPresentation$PresentationContext;->flutterAppWindowContext:Landroid/content/Context;

    return-void
.end method

.method private getWindowManager()Landroid/view/WindowManager;
    .locals 1

    .line 347
    iget-object v0, p0, Lio/flutter/plugin/platform/SingleViewPresentation$PresentationContext;->windowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    .line 348
    iget-object v0, p0, Lio/flutter/plugin/platform/SingleViewPresentation$PresentationContext;->windowManagerHandler:Lio/flutter/plugin/platform/SingleViewPresentation$WindowManagerHandler;

    invoke-virtual {v0}, Lio/flutter/plugin/platform/SingleViewPresentation$WindowManagerHandler;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iput-object v0, p0, Lio/flutter/plugin/platform/SingleViewPresentation$PresentationContext;->windowManager:Landroid/view/WindowManager;

    .line 350
    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/platform/SingleViewPresentation$PresentationContext;->windowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method private isCalledFromAlertDialog()Z
    .locals 5

    .line 354
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 355
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    const/16 v3, 0xb

    if-ge v2, v3, :cond_1

    .line 356
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Landroid/app/AlertDialog;

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    aget-object v3, v0, v2

    .line 357
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "<init>"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const-string v0, "window"

    .line 326
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 327
    invoke-direct {p0}, Lio/flutter/plugin/platform/SingleViewPresentation$PresentationContext;->isCalledFromAlertDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lio/flutter/plugin/platform/SingleViewPresentation$PresentationContext;->flutterAppWindowContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 341
    :cond_0
    invoke-direct {p0}, Lio/flutter/plugin/platform/SingleViewPresentation$PresentationContext;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    return-object p1

    .line 343
    :cond_1
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
