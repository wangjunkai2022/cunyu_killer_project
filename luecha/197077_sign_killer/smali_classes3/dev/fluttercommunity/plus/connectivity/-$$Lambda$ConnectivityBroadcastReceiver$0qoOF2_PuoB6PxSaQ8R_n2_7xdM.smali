.class public final synthetic Ldev/fluttercommunity/plus/connectivity/-$$Lambda$ConnectivityBroadcastReceiver$0qoOF2_PuoB6PxSaQ8R_n2_7xdM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/fluttercommunity/plus/connectivity/-$$Lambda$ConnectivityBroadcastReceiver$0qoOF2_PuoB6PxSaQ8R_n2_7xdM;->f$0:Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;

    iput-object p2, p0, Ldev/fluttercommunity/plus/connectivity/-$$Lambda$ConnectivityBroadcastReceiver$0qoOF2_PuoB6PxSaQ8R_n2_7xdM;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ldev/fluttercommunity/plus/connectivity/-$$Lambda$ConnectivityBroadcastReceiver$0qoOF2_PuoB6PxSaQ8R_n2_7xdM;->f$0:Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;

    iget-object v1, p0, Ldev/fluttercommunity/plus/connectivity/-$$Lambda$ConnectivityBroadcastReceiver$0qoOF2_PuoB6PxSaQ8R_n2_7xdM;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->lambda$sendEvent$1$ConnectivityBroadcastReceiver(Ljava/lang/String;)V

    return-void
.end method
