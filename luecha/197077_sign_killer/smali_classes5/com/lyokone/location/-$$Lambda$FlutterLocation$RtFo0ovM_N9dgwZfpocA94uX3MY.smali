.class public final synthetic Lcom/lyokone/location/-$$Lambda$FlutterLocation$RtFo0ovM_N9dgwZfpocA94uX3MY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field private final synthetic f$0:Lcom/lyokone/location/FlutterLocation;


# direct methods
.method public synthetic constructor <init>(Lcom/lyokone/location/FlutterLocation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lyokone/location/-$$Lambda$FlutterLocation$RtFo0ovM_N9dgwZfpocA94uX3MY;->f$0:Lcom/lyokone/location/FlutterLocation;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/lyokone/location/-$$Lambda$FlutterLocation$RtFo0ovM_N9dgwZfpocA94uX3MY;->f$0:Lcom/lyokone/location/FlutterLocation;

    check-cast p1, Lcom/google/android/gms/location/LocationSettingsResponse;

    invoke-virtual {v0, p1}, Lcom/lyokone/location/FlutterLocation;->lambda$startRequestingLocation$2$FlutterLocation(Lcom/google/android/gms/location/LocationSettingsResponse;)V

    return-void
.end method
