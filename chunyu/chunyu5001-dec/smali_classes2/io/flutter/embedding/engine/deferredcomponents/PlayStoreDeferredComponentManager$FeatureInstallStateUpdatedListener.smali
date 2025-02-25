.class Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager$FeatureInstallStateUpdatedListener;
.super Ljava/lang/Object;
.source "PlayStoreDeferredComponentManager.java"

# interfaces
.implements Lcom/google/android/play/core/splitinstall/SplitInstallStateUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FeatureInstallStateUpdatedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;


# direct methods
.method private constructor <init>(Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager$FeatureInstallStateUpdatedListener;->this$0:Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager$1;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager$FeatureInstallStateUpdatedListener;-><init>(Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;)V

    return-void
.end method


# virtual methods
.method public onStateUpdate(Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;)V
    .locals 7

    .line 70
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->sessionId()I

    move-result v0

    .line 71
    iget-object v1, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager$FeatureInstallStateUpdatedListener;->this$0:Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;

    invoke-static {v1}, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->access$000(Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 72
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->status()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const-string v5, "PlayStoreDeferredComponentManager"

    packed-switch v1, :pswitch_data_0

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->status()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lio/flutter/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_0
    new-array p1, v3, [Ljava/lang/Object;

    .line 137
    iget-object v1, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager$FeatureInstallStateUpdatedListener;->this$0:Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;

    .line 141
    invoke-static {v1}, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->access$000(Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p1, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v4

    const-string v1, "Module \"%s\" (sessionId %d) install canceling."

    .line 139
    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 137
    invoke-static {v5, p1}, Lio/flutter/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object p1, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager$FeatureInstallStateUpdatedListener;->this$0:Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;

    invoke-static {p1}, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->access$400(Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;)Landroid/util/SparseArray;

    move-result-object p1

    const-string v1, "canceling"

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_1
    new-array p1, v3, [Ljava/lang/Object;

    .line 157
    iget-object v1, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager$FeatureInstallStateUpdatedListener;->this$0:Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;

    .line 161
    invoke-static {v1}, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->access$000(Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p1, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v4

    const-string v1, "Module \"%s\" (sessionId %d) install requires user confirmation."

    .line 159
    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 157
    invoke-static {v5, p1}, Lio/flutter/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object p1, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager$FeatureInstallStateUpdatedListener;->this$0:Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;

    invoke-static {p1}, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->access$400(Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;)Landroid/util/SparseArray;

    move-result-object p1

    const-string v1, "requiresUserConfirmation"

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_2
    new-array p1, v3, [Ljava/lang/Object;

    .line 120
    iget-object v1, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager$FeatureInstallStateUpdatedListener;->this$0:Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;

    .line 124
    invoke-static {v1}, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->access$000(Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p1, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v4

    const-string v1, "Module \"%s\" (sessionId %d) install canceled."

    .line 122
    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 120
    invoke-static {v5, p1}, Lio/flutter/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object p1, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager$FeatureInstallStateUpdatedListener;->this$0:Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;

    invoke-static {p1}, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->access$300(Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;)Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 126
    iget-object p1, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager$FeatureInstallStateUpdatedListener;->this$0:Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;

    invoke-static {p1}, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->access$300(Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;)Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;

    move-result-object p1

    iget-object v1, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager$FeatureInstallStateUpdatedListener;->this$0:Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;

    .line 127
    invoke-static {v1}, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->access$000(Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "Android Deferred Component installation canceled."

    .line 126
    invoke-virtual {p1, v1, v2}, Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;->completeInstallError(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_0
    iget-object p1, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager$FeatureInstallStateUpdatedListener;->this$0:Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;

    invoke-static {p1}, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->access$000(Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->delete(I)V

    .line 131
    iget-object p1, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager$FeatureInstallStateUpdatedListener;->this$0:Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;

    invoke-static {p1}, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->access$100(Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;)Landroid/util/SparseIntArray;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->delete(I)V

    .line 132
    iget-object p1, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager$FeatureInstallStateUpdatedListener;->this$0:Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;

    invoke-static {p1}, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->access$400(Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;)Landroid/util/SparseArray;

    move-result-object p1

    const-string v1, "cancelled"

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_3
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 75
    iget-object v6, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager$FeatureInstallStateUpdatedListener;->this$0:Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;

    .line 79
    invoke-static {v6}, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->access$000(Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v1, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->errorCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "Module \"%s\" (sessionId %d) install failed with: %s"

    .line 77
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-static {v5, v1}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager$FeatureInstallStateUpdatedListener;->this$0:Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;

    invoke-static {v1}, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->access$200(Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;)Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object v1

    iget-object v2, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager$FeatureInstallStateUpdatedListener;->this$0:Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;

    .line 81
    invoke-static {v2}, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->access$100(Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;)Landroid/util/SparseIntArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Module install failed with "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->errorCode()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 80
    invoke-virtual {v1, v2, p1, v4}, Lio/flutter/embedding/engine/FlutterJNI;->deferredComponentInstallFailure(ILjava/lang/String;Z)V

    .line 84
    iget-object p1, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager$FeatureInstallStateUpdatedListener;->this$0:Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;

    invoke-static {p1}, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->access$300(Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;)Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 85
    iget-object p1, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager$FeatureInstallStateUpdatedListener;->this$0:Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;

    invoke-static {p1}, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->access$300(Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;)Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;

    move-result-object p1

    iget-object v1, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager$FeatureInstallStateUpdatedListener;->this$0:Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;

    .line 86
    invoke-static {v1}, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->access$000(Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "Android Deferred Component failed to install."

    .line 85
    invoke-virtual {p1, v1, v2}, Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;->completeInstallError(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_1
    iget-object p1, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager$FeatureInstallStateUpdatedListener;->this$0:Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;

    invoke-static {p1}, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->access$000(Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->delete(I)V

    .line 90
    iget-object p1, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager$FeatureInstallStateUpdatedListener;->this$0:Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;

    invoke-static {p1}, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->access$100(Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;)Landroid/util/SparseIntArray;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->delete(I)V

    .line 91
    iget-object p1, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager$FeatureInstallStateUpdatedListener;->this$0:Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;

    invoke-static {p1}, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->access$400(Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;)Landroid/util/SparseArray;

    move-result-object p1

    const-string v1, "failed"

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_4
    new-array p1, v3, [Ljava/lang/Object;

    .line 96
    iget-object v1, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager$FeatureInstallStateUpdatedListener;->this$0:Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;

    .line 100
    invoke-static {v1}, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->access$000(Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p1, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v4

    const-string v1, "Module \"%s\" (sessionId %d) install successfully."

    .line 98
    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 96
    invoke-static {v5, p1}, Lio/flutter/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object p1, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager$FeatureInstallStateUpdatedListener;->this$0:Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;

    invoke-static {p1}, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->access$100(Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    iget-object v2, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager$FeatureInstallStateUpdatedListener;->this$0:Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;

    invoke-static {v2}, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->access$000(Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->loadAssets(ILjava/lang/String;)V

    .line 106
    iget-object p1, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager$FeatureInstallStateUpdatedListener;->this$0:Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;

    invoke-static {p1}, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->access$100(Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;)Landroid/util/SparseIntArray;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    if-lez p1, :cond_2

    .line 107
    iget-object p1, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager$FeatureInstallStateUpdatedListener;->this$0:Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;

    .line 108
    invoke-static {p1}, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->access$100(Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    iget-object v2, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager$FeatureInstallStateUpdatedListener;->this$0:Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;

    invoke-static {v2}, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->access$000(Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 107
    invoke-virtual {p1, v1, v2}, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->loadDartLibrary(ILjava/lang/String;)V

    .line 110
    :cond_2
    iget-object p1, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager$FeatureInstallStateUpdatedListener;->this$0:Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;

    invoke-static {p1}, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->access$300(Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;)Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 111
    iget-object p1, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager$FeatureInstallStateUpdatedListener;->this$0:Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;

    invoke-static {p1}, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->access$300(Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;)Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;

    move-result-object p1

    iget-object v1, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager$FeatureInstallStateUpdatedListener;->this$0:Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;

    invoke-static {v1}, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->access$000(Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;->completeInstallSuccess(Ljava/lang/String;)V

    .line 113
    :cond_3
    iget-object p1, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager$FeatureInstallStateUpdatedListener;->this$0:Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;

    invoke-static {p1}, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->access$000(Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->delete(I)V

    .line 114
    iget-object p1, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager$FeatureInstallStateUpdatedListener;->this$0:Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;

    invoke-static {p1}, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->access$100(Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;)Landroid/util/SparseIntArray;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->delete(I)V

    .line 115
    iget-object p1, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager$FeatureInstallStateUpdatedListener;->this$0:Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;

    invoke-static {p1}, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->access$400(Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;)Landroid/util/SparseArray;

    move-result-object p1

    const-string v1, "installed"

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_5
    new-array p1, v3, [Ljava/lang/Object;

    .line 187
    iget-object v1, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager$FeatureInstallStateUpdatedListener;->this$0:Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;

    .line 191
    invoke-static {v1}, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->access$000(Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p1, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v4

    const-string v1, "Module \"%s\" (sessionId %d) installing."

    .line 189
    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 187
    invoke-static {v5, p1}, Lio/flutter/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object p1, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager$FeatureInstallStateUpdatedListener;->this$0:Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;

    invoke-static {p1}, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->access$400(Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;)Landroid/util/SparseArray;

    move-result-object p1

    const-string v1, "installing"

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_6
    new-array p1, v3, [Ljava/lang/Object;

    .line 177
    iget-object v1, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager$FeatureInstallStateUpdatedListener;->this$0:Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;

    .line 181
    invoke-static {v1}, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->access$000(Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p1, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v4

    const-string v1, "Module \"%s\" (sessionId %d) downloaded."

    .line 179
    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 177
    invoke-static {v5, p1}, Lio/flutter/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object p1, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager$FeatureInstallStateUpdatedListener;->this$0:Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;

    invoke-static {p1}, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->access$400(Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;)Landroid/util/SparseArray;

    move-result-object p1

    const-string v1, "downloaded"

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :pswitch_7
    new-array p1, v3, [Ljava/lang/Object;

    .line 167
    iget-object v1, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager$FeatureInstallStateUpdatedListener;->this$0:Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;

    .line 171
    invoke-static {v1}, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->access$000(Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p1, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v4

    const-string v1, "Module \"%s\" (sessionId %d) downloading."

    .line 169
    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 167
    invoke-static {v5, p1}, Lio/flutter/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object p1, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager$FeatureInstallStateUpdatedListener;->this$0:Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;

    invoke-static {p1}, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->access$400(Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;)Landroid/util/SparseArray;

    move-result-object p1

    const-string v1, "downloading"

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :pswitch_8
    new-array p1, v3, [Ljava/lang/Object;

    .line 147
    iget-object v1, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager$FeatureInstallStateUpdatedListener;->this$0:Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;

    .line 151
    invoke-static {v1}, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->access$000(Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p1, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v4

    const-string v1, "Module \"%s\" (sessionId %d) install pending."

    .line 149
    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 147
    invoke-static {v5, p1}, Lio/flutter/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object p1, p0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager$FeatureInstallStateUpdatedListener;->this$0:Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;

    invoke-static {p1}, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;->access$400(Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;)Landroid/util/SparseArray;

    move-result-object p1

    const-string v1, "pending"

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_4
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onStateUpdate(Ljava/lang/Object;)V
    .locals 0

    .line 67
    check-cast p1, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;

    invoke-virtual {p0, p1}, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager$FeatureInstallStateUpdatedListener;->onStateUpdate(Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;)V

    return-void
.end method
