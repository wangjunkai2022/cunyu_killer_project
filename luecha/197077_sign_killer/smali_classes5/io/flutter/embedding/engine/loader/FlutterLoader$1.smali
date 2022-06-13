.class Lio/flutter/embedding/engine/loader/FlutterLoader$1;
.super Ljava/lang/Object;
.source "FlutterLoader.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/embedding/engine/loader/FlutterLoader;->startInitialization(Landroid/content/Context;Lio/flutter/embedding/engine/loader/FlutterLoader$Settings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lio/flutter/embedding/engine/loader/FlutterLoader$InitResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/embedding/engine/loader/FlutterLoader;

.field final synthetic val$appContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lio/flutter/embedding/engine/loader/FlutterLoader;Landroid/content/Context;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lio/flutter/embedding/engine/loader/FlutterLoader$1;->this$0:Lio/flutter/embedding/engine/loader/FlutterLoader;

    iput-object p2, p0, Lio/flutter/embedding/engine/loader/FlutterLoader$1;->val$appContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lio/flutter/embedding/engine/loader/FlutterLoader$InitResult;
    .locals 5

    const-string v0, "FlutterLoader initTask"

    .line 169
    invoke-static {v0}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 172
    :try_start_0
    iget-object v0, p0, Lio/flutter/embedding/engine/loader/FlutterLoader$1;->this$0:Lio/flutter/embedding/engine/loader/FlutterLoader;

    iget-object v1, p0, Lio/flutter/embedding/engine/loader/FlutterLoader$1;->val$appContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lio/flutter/embedding/engine/loader/FlutterLoader;->access$000(Lio/flutter/embedding/engine/loader/FlutterLoader;Landroid/content/Context;)Lio/flutter/embedding/engine/loader/ResourceExtractor;

    move-result-object v0

    .line 174
    iget-object v1, p0, Lio/flutter/embedding/engine/loader/FlutterLoader$1;->this$0:Lio/flutter/embedding/engine/loader/FlutterLoader;

    invoke-static {v1}, Lio/flutter/embedding/engine/loader/FlutterLoader;->access$100(Lio/flutter/embedding/engine/loader/FlutterLoader;)Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object v1

    invoke-virtual {v1}, Lio/flutter/embedding/engine/FlutterJNI;->loadLibrary()V

    .line 178
    iget-object v1, p0, Lio/flutter/embedding/engine/loader/FlutterLoader$1;->this$0:Lio/flutter/embedding/engine/loader/FlutterLoader;

    invoke-static {v1}, Lio/flutter/embedding/engine/loader/FlutterLoader;->access$200(Lio/flutter/embedding/engine/loader/FlutterLoader;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lio/flutter/embedding/engine/loader/-$$Lambda$FlutterLoader$1$PxPBAYXSGwBZpcVVqDCovN-I54s;

    invoke-direct {v2, p0}, Lio/flutter/embedding/engine/loader/-$$Lambda$FlutterLoader$1$PxPBAYXSGwBZpcVVqDCovN-I54s;-><init>(Lio/flutter/embedding/engine/loader/FlutterLoader$1;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0}, Lio/flutter/embedding/engine/loader/ResourceExtractor;->waitForCompletion()V

    .line 184
    :cond_0
    new-instance v0, Lio/flutter/embedding/engine/loader/FlutterLoader$InitResult;

    iget-object v1, p0, Lio/flutter/embedding/engine/loader/FlutterLoader$1;->val$appContext:Landroid/content/Context;

    .line 185
    invoke-static {v1}, Lio/flutter/util/PathUtils;->getFilesDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/flutter/embedding/engine/loader/FlutterLoader$1;->val$appContext:Landroid/content/Context;

    .line 186
    invoke-static {v2}, Lio/flutter/util/PathUtils;->getCacheDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lio/flutter/embedding/engine/loader/FlutterLoader$1;->val$appContext:Landroid/content/Context;

    .line 187
    invoke-static {v3}, Lio/flutter/util/PathUtils;->getDataDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lio/flutter/embedding/engine/loader/FlutterLoader$InitResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/flutter/embedding/engine/loader/FlutterLoader$1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 190
    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 166
    invoke-virtual {p0}, Lio/flutter/embedding/engine/loader/FlutterLoader$1;->call()Lio/flutter/embedding/engine/loader/FlutterLoader$InitResult;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$call$0$FlutterLoader$1()V
    .locals 1

    .line 178
    iget-object v0, p0, Lio/flutter/embedding/engine/loader/FlutterLoader$1;->this$0:Lio/flutter/embedding/engine/loader/FlutterLoader;

    invoke-static {v0}, Lio/flutter/embedding/engine/loader/FlutterLoader;->access$100(Lio/flutter/embedding/engine/loader/FlutterLoader;)Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterJNI;->prefetchDefaultFontManager()V

    return-void
.end method
