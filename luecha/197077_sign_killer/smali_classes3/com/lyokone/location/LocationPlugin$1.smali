.class Lcom/lyokone/location/LocationPlugin$1;
.super Ljava/lang/Object;
.source "LocationPlugin.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lyokone/location/LocationPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lyokone/location/LocationPlugin;


# direct methods
.method constructor <init>(Lcom/lyokone/location/LocationPlugin;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/lyokone/location/LocationPlugin$1;->this$0:Lcom/lyokone/location/LocationPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service connected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LocationPlugin"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object p1, p0, Lcom/lyokone/location/LocationPlugin$1;->this$0:Lcom/lyokone/location/LocationPlugin;

    check-cast p2, Lcom/lyokone/location/FlutterLocationService$LocalBinder;

    invoke-virtual {p2}, Lcom/lyokone/location/FlutterLocationService$LocalBinder;->getService()Lcom/lyokone/location/FlutterLocationService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lyokone/location/LocationPlugin;->access$000(Lcom/lyokone/location/LocationPlugin;Lcom/lyokone/location/FlutterLocationService;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service disconnected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LocationPlugin"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
