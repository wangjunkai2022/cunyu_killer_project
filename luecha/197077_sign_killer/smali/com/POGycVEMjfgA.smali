.class public Lcom/POGycVEMjfgA;
.super Ljava/lang/Object;
.source "POGycVEMjfgA.java"


# instance fields
.field private mCurrentActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/app/FlutterApplication;->mCurrentActivity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public getCurrentActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lio/flutter/app/FlutterApplication;->mCurrentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    invoke-static {}, Lio/flutter/FlutterInjector;->instance()Lio/flutter/FlutterInjector;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/FlutterInjector;->flutterLoader()Lio/flutter/embedding/engine/loader/FlutterLoader;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/flutter/embedding/engine/loader/FlutterLoader;->startInitialization(Landroid/content/Context;)V

    return-void
.end method

.method public setCurrentActivity(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/app/FlutterApplication;->mCurrentActivity:Landroid/app/Activity;

    return-void
.end method
