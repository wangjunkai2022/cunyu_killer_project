.class Lcom/facebook/imagepipeline/animated/factory/AnimatedDrawableFactoryImpl$1;
.super Ljava/lang/Object;
.source "AnimatedDrawableFactoryImpl.java"

# interfaces
.implements Lcom/facebook/common/time/MonotonicClock;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/animated/factory/AnimatedDrawableFactoryImpl;-><init>(Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendProvider;Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImplProvider;Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;Ljava/util/concurrent/ScheduledExecutorService;Landroid/content/res/Resources;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/imagepipeline/animated/factory/AnimatedDrawableFactoryImpl;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/animated/factory/AnimatedDrawableFactoryImpl;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/factory/AnimatedDrawableFactoryImpl$1;->this$0:Lcom/facebook/imagepipeline/animated/factory/AnimatedDrawableFactoryImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public now()J
    .locals 2

    .line 62
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
