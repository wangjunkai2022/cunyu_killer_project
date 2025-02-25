.class Lcom/lyokone/location/FlutterLocation$1;
.super Landroid/util/SparseArray;
.source "FlutterLocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lyokone/location/FlutterLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/SparseArray<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lyokone/location/FlutterLocation;


# direct methods
.method constructor <init>(Lcom/lyokone/location/FlutterLocation;)V
    .locals 2

    .line 82
    iput-object p1, p0, Lcom/lyokone/location/FlutterLocation$1;->this$0:Lcom/lyokone/location/FlutterLocation;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    const/16 p1, 0x69

    .line 84
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/lyokone/location/FlutterLocation$1;->put(ILjava/lang/Object;)V

    const/16 p1, 0x68

    .line 85
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/lyokone/location/FlutterLocation$1;->put(ILjava/lang/Object;)V

    const/16 v0, 0x66

    .line 86
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/lyokone/location/FlutterLocation$1;->put(ILjava/lang/Object;)V

    const/16 v0, 0x64

    .line 87
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/lyokone/location/FlutterLocation$1;->put(ILjava/lang/Object;)V

    const/4 v1, 0x4

    .line 88
    invoke-virtual {p0, v1, v0}, Lcom/lyokone/location/FlutterLocation$1;->put(ILjava/lang/Object;)V

    const/4 v0, 0x5

    .line 89
    invoke-virtual {p0, v0, p1}, Lcom/lyokone/location/FlutterLocation$1;->put(ILjava/lang/Object;)V

    return-void
.end method
