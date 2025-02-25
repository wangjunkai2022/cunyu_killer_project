.class Lio/flutter/plugins/sharedpreferences/MethodCallHandlerImpl$1;
.super Ljava/lang/Object;
.source "MethodCallHandlerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugins/sharedpreferences/MethodCallHandlerImpl;->commitAsync(Landroid/content/SharedPreferences$Editor;Lio/flutter/plugin/common/MethodChannel$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/plugins/sharedpreferences/MethodCallHandlerImpl;

.field final synthetic val$editor:Landroid/content/SharedPreferences$Editor;

.field final synthetic val$result:Lio/flutter/plugin/common/MethodChannel$Result;


# direct methods
.method constructor <init>(Lio/flutter/plugins/sharedpreferences/MethodCallHandlerImpl;Landroid/content/SharedPreferences$Editor;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lio/flutter/plugins/sharedpreferences/MethodCallHandlerImpl$1;->this$0:Lio/flutter/plugins/sharedpreferences/MethodCallHandlerImpl;

    iput-object p2, p0, Lio/flutter/plugins/sharedpreferences/MethodCallHandlerImpl$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    iput-object p3, p0, Lio/flutter/plugins/sharedpreferences/MethodCallHandlerImpl$1;->val$result:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 143
    iget-object v0, p0, Lio/flutter/plugins/sharedpreferences/MethodCallHandlerImpl$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    .line 144
    iget-object v1, p0, Lio/flutter/plugins/sharedpreferences/MethodCallHandlerImpl$1;->this$0:Lio/flutter/plugins/sharedpreferences/MethodCallHandlerImpl;

    invoke-static {v1}, Lio/flutter/plugins/sharedpreferences/MethodCallHandlerImpl;->access$000(Lio/flutter/plugins/sharedpreferences/MethodCallHandlerImpl;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lio/flutter/plugins/sharedpreferences/MethodCallHandlerImpl$1$1;

    invoke-direct {v2, p0, v0}, Lio/flutter/plugins/sharedpreferences/MethodCallHandlerImpl$1$1;-><init>(Lio/flutter/plugins/sharedpreferences/MethodCallHandlerImpl$1;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
