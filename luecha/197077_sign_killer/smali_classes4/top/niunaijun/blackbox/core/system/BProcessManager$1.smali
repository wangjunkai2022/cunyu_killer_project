.class Ltop/niunaijun/blackbox/core/system/BProcessManager$1;
.super Ljava/lang/Object;
.source "BProcessManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltop/niunaijun/blackbox/core/system/BProcessManager;->attachClientL(Ltop/niunaijun/blackbox/core/system/ProcessRecord;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltop/niunaijun/blackbox/core/system/BProcessManager;

.field final synthetic val$app:Ltop/niunaijun/blackbox/core/system/ProcessRecord;

.field final synthetic val$appThread:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Ltop/niunaijun/blackbox/core/system/BProcessManager;Ltop/niunaijun/blackbox/core/system/ProcessRecord;Landroid/os/IBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$appThread",
            "val$app"
        }
    .end annotation

    .line 170
    iput-object p1, p0, Ltop/niunaijun/blackbox/core/system/BProcessManager$1;->this$0:Ltop/niunaijun/blackbox/core/system/BProcessManager;

    iput-object p2, p0, Ltop/niunaijun/blackbox/core/system/BProcessManager$1;->val$app:Ltop/niunaijun/blackbox/core/system/ProcessRecord;

    iput-object p3, p0, Ltop/niunaijun/blackbox/core/system/BProcessManager$1;->val$appThread:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "App Died: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/BProcessManager$1;->val$app:Ltop/niunaijun/blackbox/core/system/ProcessRecord;

    iget-object v1, v1, Ltop/niunaijun/blackbox/core/system/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BProcessManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/BProcessManager$1;->val$appThread:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 175
    iget-object v0, p0, Ltop/niunaijun/blackbox/core/system/BProcessManager$1;->this$0:Ltop/niunaijun/blackbox/core/system/BProcessManager;

    iget-object v1, p0, Ltop/niunaijun/blackbox/core/system/BProcessManager$1;->val$app:Ltop/niunaijun/blackbox/core/system/ProcessRecord;

    invoke-virtual {v0, v1}, Ltop/niunaijun/blackbox/core/system/BProcessManager;->onProcessDie(Ltop/niunaijun/blackbox/core/system/ProcessRecord;)V

    return-void
.end method
