.class Ltop/niunaijun/blackbox/core/system/dump/BDumpManagerService$1;
.super Ljava/lang/Object;
.source "BDumpManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltop/niunaijun/blackbox/core/system/dump/BDumpManagerService;->registerMonitor(Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltop/niunaijun/blackbox/core/system/dump/BDumpManagerService;

.field final synthetic val$monitor:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Ltop/niunaijun/blackbox/core/system/dump/BDumpManagerService;Landroid/os/IBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$monitor"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Ltop/niunaijun/blackbox/core/system/dump/BDumpManagerService$1;->this$0:Ltop/niunaijun/blackbox/core/system/dump/BDumpManagerService;

    iput-object p2, p0, Ltop/niunaijun/blackbox/core/system/dump/BDumpManagerService$1;->val$monitor:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 33
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/dump/BDumpManagerService$1;->val$monitor:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 34
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/dump/BDumpManagerService$1;->this$0:Ltop/niunaijun/blackbox/core/system/dump/BDumpManagerService;

    invoke-static {v0}, Ltop/niunaijun/blackbox/core/system/dump/BDumpManagerService;->access$000(Ltop/niunaijun/blackbox/core/system/dump/BDumpManagerService;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/dump/BDumpManagerService$1;->val$monitor:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
