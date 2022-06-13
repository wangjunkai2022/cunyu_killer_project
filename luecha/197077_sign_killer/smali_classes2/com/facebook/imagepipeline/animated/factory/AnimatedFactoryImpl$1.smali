.class Lcom/facebook/imagepipeline/animated/factory/AnimatedFactoryImpl$1;
.super Ljava/lang/Object;
.source "AnimatedFactoryImpl.java"

# interfaces
.implements Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImplProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/animated/factory/AnimatedFactoryImpl;->buildAnimatedDrawableFactory(Lcom/facebook/common/executors/SerialExecutorService;Landroid/app/ActivityManager;Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendProvider;Ljava/util/concurrent/ScheduledExecutorService;Lcom/facebook/common/time/MonotonicClock;Landroid/content/res/Resources;)Lcom/facebook/imagepipeline/animated/factory/AnimatedDrawableFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/imagepipeline/animated/factory/AnimatedFactoryImpl;

.field final synthetic val$activityManager:Landroid/app/ActivityManager;

.field final synthetic val$animatedDrawableUtil:Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;

.field final synthetic val$monotonicClock:Lcom/facebook/common/time/MonotonicClock;

.field final synthetic val$serialExecutorService:Lcom/facebook/common/executors/SerialExecutorService;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/animated/factory/AnimatedFactoryImpl;Lcom/facebook/common/executors/SerialExecutorService;Landroid/app/ActivityManager;Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;Lcom/facebook/common/time/MonotonicClock;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/factory/AnimatedFactoryImpl$1;->this$0:Lcom/facebook/imagepipeline/animated/factory/AnimatedFactoryImpl;

    iput-object p2, p0, Lcom/facebook/imagepipeline/animated/factory/AnimatedFactoryImpl$1;->val$serialExecutorService:Lcom/facebook/common/executors/SerialExecutorService;

    iput-object p3, p0, Lcom/facebook/imagepipeline/animated/factory/AnimatedFactoryImpl$1;->val$activityManager:Landroid/app/ActivityManager;

    iput-object p4, p0, Lcom/facebook/imagepipeline/animated/factory/AnimatedFactoryImpl$1;->val$animatedDrawableUtil:Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;

    iput-object p5, p0, Lcom/facebook/imagepipeline/animated/factory/AnimatedFactoryImpl$1;->val$monotonicClock:Lcom/facebook/common/time/MonotonicClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableOptions;)Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;
    .locals 8

    .line 72
    new-instance v7, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/factory/AnimatedFactoryImpl$1;->val$serialExecutorService:Lcom/facebook/common/executors/SerialExecutorService;

    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/factory/AnimatedFactoryImpl$1;->val$activityManager:Landroid/app/ActivityManager;

    iget-object v3, p0, Lcom/facebook/imagepipeline/animated/factory/AnimatedFactoryImpl$1;->val$animatedDrawableUtil:Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;

    iget-object v4, p0, Lcom/facebook/imagepipeline/animated/factory/AnimatedFactoryImpl$1;->val$monotonicClock:Lcom/facebook/common/time/MonotonicClock;

    move-object v0, v7

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;-><init>(Lcom/facebook/common/executors/SerialExecutorService;Landroid/app/ActivityManager;Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;Lcom/facebook/common/time/MonotonicClock;Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableOptions;)V

    return-object v7
.end method
