.class Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "ConnectivityBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->onListen(Ljava/lang/Object;Lio/flutter/plugin/common/EventChannel$EventSink;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;


# direct methods
.method constructor <init>(Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;)V
    .locals 0

    .line 45
    iput-object p1, p0, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver$1;->this$0:Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 0

    .line 48
    iget-object p1, p0, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver$1;->this$0:Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;

    invoke-static {p1}, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->access$000(Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    .line 53
    iget-object p1, p0, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver$1;->this$0:Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;

    const-string v0, "none"

    invoke-static {p1, v0}, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->access$100(Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;Ljava/lang/String;)V

    return-void
.end method
