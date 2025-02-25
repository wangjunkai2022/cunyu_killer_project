.class public final synthetic Lcom/lyokone/location/-$$Lambda$FlutterLocation$Y5o6FemQSu3t5HPM4zMZ4Zwptiw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/location/OnNmeaMessageListener;


# instance fields
.field private final synthetic f$0:Lcom/lyokone/location/FlutterLocation;


# direct methods
.method public synthetic constructor <init>(Lcom/lyokone/location/FlutterLocation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lyokone/location/-$$Lambda$FlutterLocation$Y5o6FemQSu3t5HPM4zMZ4Zwptiw;->f$0:Lcom/lyokone/location/FlutterLocation;

    return-void
.end method


# virtual methods
.method public final onNmeaMessage(Ljava/lang/String;J)V
    .locals 1

    iget-object v0, p0, Lcom/lyokone/location/-$$Lambda$FlutterLocation$Y5o6FemQSu3t5HPM4zMZ4Zwptiw;->f$0:Lcom/lyokone/location/FlutterLocation;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lyokone/location/FlutterLocation;->lambda$createLocationCallback$0$FlutterLocation(Ljava/lang/String;J)V

    return-void
.end method
