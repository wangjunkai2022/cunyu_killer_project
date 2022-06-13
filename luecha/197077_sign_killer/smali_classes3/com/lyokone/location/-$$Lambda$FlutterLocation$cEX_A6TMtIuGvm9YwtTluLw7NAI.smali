.class public final synthetic Lcom/lyokone/location/-$$Lambda$FlutterLocation$cEX_A6TMtIuGvm9YwtTluLw7NAI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field private final synthetic f$0:Lcom/lyokone/location/FlutterLocation;


# direct methods
.method public synthetic constructor <init>(Lcom/lyokone/location/FlutterLocation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lyokone/location/-$$Lambda$FlutterLocation$cEX_A6TMtIuGvm9YwtTluLw7NAI;->f$0:Lcom/lyokone/location/FlutterLocation;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/lyokone/location/-$$Lambda$FlutterLocation$cEX_A6TMtIuGvm9YwtTluLw7NAI;->f$0:Lcom/lyokone/location/FlutterLocation;

    invoke-virtual {v0, p1}, Lcom/lyokone/location/FlutterLocation;->lambda$startRequestingLocation$3$FlutterLocation(Ljava/lang/Exception;)V

    return-void
.end method
