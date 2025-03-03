.class public Lcom/facebook/imagepipeline/animated/factory/AnimatedFactoryImpl;
.super Ljava/lang/Object;
.source "AnimatedFactoryImpl.java"

# interfaces
.implements Lcom/facebook/imagepipeline/animated/factory/AnimatedFactory;


# instance fields
.field private mAnimatedDrawableBackendProvider:Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendProvider;

.field private mAnimatedDrawableFactory:Lcom/facebook/imagepipeline/animated/factory/AnimatedDrawableFactory;

.field private mAnimatedDrawableUtil:Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;

.field private mAnimatedImageFactory:Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactory;

.field private mExecutorSupplier:Lcom/facebook/imagepipeline/core/ExecutorSupplier;

.field private mPlatformBitmapFactory:Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;Lcom/facebook/imagepipeline/core/ExecutorSupplier;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/factory/AnimatedFactoryImpl;->mPlatformBitmapFactory:Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;

    .line 55
    iput-object p2, p0, Lcom/facebook/imagepipeline/animated/factory/AnimatedFactoryImpl;->mExecutorSupplier:Lcom/facebook/imagepipeline/core/ExecutorSupplier;

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/imagepipeline/animated/factory/AnimatedFactoryImpl;)Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/factory/AnimatedFactoryImpl;->getAnimatedDrawableUtil()Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;

    move-result-object p0

    return-object p0
.end method

.method private buildAnimatedDrawableFactory(Lcom/facebook/common/executors/SerialExecutorService;Landroid/app/ActivityManager;Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendProvider;Ljava/util/concurrent/ScheduledExecutorService;Lcom/facebook/common/time/MonotonicClock;Landroid/content/res/Resources;)Lcom/facebook/imagepipeline/animated/factory/AnimatedDrawableFactory;
    .locals 7

    .line 66
    new-instance v6, Lcom/facebook/imagepipeline/animated/factory/AnimatedFactoryImpl$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/facebook/imagepipeline/animated/factory/AnimatedFactoryImpl$1;-><init>(Lcom/facebook/imagepipeline/animated/factory/AnimatedFactoryImpl;Lcom/facebook/common/executors/SerialExecutorService;Landroid/app/ActivityManager;Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;Lcom/facebook/common/time/MonotonicClock;)V

    move-object v0, p0

    move-object v1, p4

    move-object v2, v6

    move-object v3, p3

    move-object v4, p5

    move-object v5, p7

    .line 82
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/imagepipeline/animated/factory/AnimatedFactoryImpl;->createAnimatedDrawableFactory(Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendProvider;Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImplProvider;Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;Ljava/util/concurrent/ScheduledExecutorService;Landroid/content/res/Resources;)Lcom/facebook/imagepipeline/animated/factory/AnimatedDrawableFactory;

    move-result-object p1

    return-object p1
.end method

.method private buildAnimatedImageFactory()Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactory;
    .locals 3

    .line 134
    new-instance v0, Lcom/facebook/imagepipeline/animated/factory/AnimatedFactoryImpl$3;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/animated/factory/AnimatedFactoryImpl$3;-><init>(Lcom/facebook/imagepipeline/animated/factory/AnimatedFactoryImpl;)V

    .line 141
    new-instance v1, Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactoryImpl;

    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/factory/AnimatedFactoryImpl;->mPlatformBitmapFactory:Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;

    invoke-direct {v1, v0, v2}, Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactoryImpl;-><init>(Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendProvider;Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;)V

    return-object v1
.end method

.method private getAnimatedDrawableBackendProvider()Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendProvider;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/factory/AnimatedFactoryImpl;->mAnimatedDrawableBackendProvider:Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendProvider;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lcom/facebook/imagepipeline/animated/factory/AnimatedFactoryImpl$2;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/animated/factory/AnimatedFactoryImpl$2;-><init>(Lcom/facebook/imagepipeline/animated/factory/AnimatedFactoryImpl;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/factory/AnimatedFactoryImpl;->mAnimatedDrawableBackendProvider:Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendProvider;

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/factory/AnimatedFactoryImpl;->mAnimatedDrawableBackendProvider:Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendProvider;

    return-object v0
.end method

.method private getAnimatedDrawableUtil()Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/factory/AnimatedFactoryImpl;->mAnimatedDrawableUtil:Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/factory/AnimatedFactoryImpl;->mAnimatedDrawableUtil:Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/factory/AnimatedFactoryImpl;->mAnimatedDrawableUtil:Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;

    return-object v0
.end method


# virtual methods
.method protected createAnimatedDrawableFactory(Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendProvider;Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImplProvider;Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;Ljava/util/concurrent/ScheduledExecutorService;Landroid/content/res/Resources;)Lcom/facebook/imagepipeline/animated/factory/AnimatedDrawableFactory;
    .locals 7

    .line 158
    new-instance v6, Lcom/facebook/imagepipeline/animated/factory/AnimatedDrawableFactoryImpl;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/facebook/imagepipeline/animated/factory/AnimatedDrawableFactoryImpl;-><init>(Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendProvider;Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImplProvider;Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;Ljava/util/concurrent/ScheduledExecutorService;Landroid/content/res/Resources;)V

    return-object v6
.end method

.method public getAnimatedDrawableFactory(Landroid/content/Context;)Lcom/facebook/imagepipeline/animated/factory/AnimatedDrawableFactory;
    .locals 9

    .line 107
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/factory/AnimatedFactoryImpl;->mAnimatedDrawableFactory:Lcom/facebook/imagepipeline/animated/factory/AnimatedDrawableFactory;

    if-nez v0, :cond_0

    .line 108
    new-instance v2, Lcom/facebook/common/executors/DefaultSerialExecutorService;

    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/factory/AnimatedFactoryImpl;->mExecutorSupplier:Lcom/facebook/imagepipeline/core/ExecutorSupplier;

    .line 109
    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/ExecutorSupplier;->forDecode()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/facebook/common/executors/DefaultSerialExecutorService;-><init>(Ljava/util/concurrent/Executor;)V

    const-string v0, "activity"

    .line 111
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/app/ActivityManager;

    .line 115
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/factory/AnimatedFactoryImpl;->getAnimatedDrawableUtil()Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;

    move-result-object v4

    .line 116
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/factory/AnimatedFactoryImpl;->getAnimatedDrawableBackendProvider()Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendProvider;

    move-result-object v5

    .line 117
    invoke-static {}, Lcom/facebook/common/executors/UiThreadImmediateExecutorService;->getInstance()Lcom/facebook/common/executors/UiThreadImmediateExecutorService;

    move-result-object v6

    .line 118
    invoke-static {}, Lcom/facebook/common/time/RealtimeSinceBootClock;->get()Lcom/facebook/common/time/RealtimeSinceBootClock;

    move-result-object v7

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    move-object v1, p0

    .line 112
    invoke-direct/range {v1 .. v8}, Lcom/facebook/imagepipeline/animated/factory/AnimatedFactoryImpl;->buildAnimatedDrawableFactory(Lcom/facebook/common/executors/SerialExecutorService;Landroid/app/ActivityManager;Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendProvider;Ljava/util/concurrent/ScheduledExecutorService;Lcom/facebook/common/time/MonotonicClock;Landroid/content/res/Resources;)Lcom/facebook/imagepipeline/animated/factory/AnimatedDrawableFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/factory/AnimatedFactoryImpl;->mAnimatedDrawableFactory:Lcom/facebook/imagepipeline/animated/factory/AnimatedDrawableFactory;

    .line 121
    :cond_0
    iget-object p1, p0, Lcom/facebook/imagepipeline/animated/factory/AnimatedFactoryImpl;->mAnimatedDrawableFactory:Lcom/facebook/imagepipeline/animated/factory/AnimatedDrawableFactory;

    return-object p1
.end method

.method public getAnimatedImageFactory()Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactory;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/factory/AnimatedFactoryImpl;->mAnimatedImageFactory:Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactory;

    if-nez v0, :cond_0

    .line 147
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/factory/AnimatedFactoryImpl;->buildAnimatedImageFactory()Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/factory/AnimatedFactoryImpl;->mAnimatedImageFactory:Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactory;

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/factory/AnimatedFactoryImpl;->mAnimatedImageFactory:Lcom/facebook/imagepipeline/animated/factory/AnimatedImageFactory;

    return-object v0
.end method
