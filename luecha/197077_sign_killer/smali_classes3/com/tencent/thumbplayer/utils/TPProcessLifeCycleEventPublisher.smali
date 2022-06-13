.class public Lcom/tencent/thumbplayer/utils/TPProcessLifeCycleEventPublisher;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/thumbplayer/utils/TPProcessLifeCycleEventPublisher$a;
    }
.end annotation


# static fields
.field private static a:Lcom/tencent/thumbplayer/utils/TPProcessLifeCycleEventPublisher;

.field private static b:Z

.field private static c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tencent/thumbplayer/utils/TPProcessLifeCycleEventPublisher$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tencent/thumbplayer/utils/TPProcessLifeCycleEventPublisher;

    invoke-direct {v0}, Lcom/tencent/thumbplayer/utils/TPProcessLifeCycleEventPublisher;-><init>()V

    sput-object v0, Lcom/tencent/thumbplayer/utils/TPProcessLifeCycleEventPublisher;->a:Lcom/tencent/thumbplayer/utils/TPProcessLifeCycleEventPublisher;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/thumbplayer/utils/TPProcessLifeCycleEventPublisher;->b:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/thumbplayer/utils/TPProcessLifeCycleEventPublisher;->c:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized a(I)V
    .locals 3

    const-class v0, Lcom/tencent/thumbplayer/utils/TPProcessLifeCycleEventPublisher;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/thumbplayer/utils/TPProcessLifeCycleEventPublisher;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/thumbplayer/utils/TPProcessLifeCycleEventPublisher$a;

    invoke-interface {v2, p0}, Lcom/tencent/thumbplayer/utils/TPProcessLifeCycleEventPublisher$a;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private onCreate()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    const-string v0, "TPProcessLifeCycleEventPublisher"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/thumbplayer/utils/TPProcessLifeCycleEventPublisher;->a(I)V

    return-void
.end method

.method private onDestroy()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    const-string v0, "TPProcessLifeCycleEventPublisher"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/tencent/thumbplayer/utils/TPProcessLifeCycleEventPublisher;->a(I)V

    return-void
.end method

.method private onPause()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    const-string v0, "TPProcessLifeCycleEventPublisher"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/tencent/thumbplayer/utils/TPProcessLifeCycleEventPublisher;->a(I)V

    return-void
.end method

.method private onResume()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    const-string v0, "TPProcessLifeCycleEventPublisher"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/tencent/thumbplayer/utils/TPProcessLifeCycleEventPublisher;->a(I)V

    return-void
.end method

.method private onStart()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    const-string v0, "TPProcessLifeCycleEventPublisher"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tencent/thumbplayer/utils/TPProcessLifeCycleEventPublisher;->a(I)V

    return-void
.end method

.method private onStop()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    const-string v0, "TPProcessLifeCycleEventPublisher"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/tencent/thumbplayer/utils/TPProcessLifeCycleEventPublisher;->a(I)V

    return-void
.end method
