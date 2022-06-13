.class public final Lcom/lyokone/location/FlutterLocationService$LocalBinder;
.super Landroid/os/Binder;
.source "FlutterLocationService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lyokone/location/FlutterLocationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LocalBinder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/lyokone/location/FlutterLocationService$LocalBinder;",
        "Landroid/os/Binder;",
        "(Lcom/lyokone/location/FlutterLocationService;)V",
        "getService",
        "Lcom/lyokone/location/FlutterLocationService;",
        "location_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lyokone/location/FlutterLocationService;


# direct methods
.method public constructor <init>(Lcom/lyokone/location/FlutterLocationService;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    iput-object p1, p0, Lcom/lyokone/location/FlutterLocationService$LocalBinder;->this$0:Lcom/lyokone/location/FlutterLocationService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public final getService()Lcom/lyokone/location/FlutterLocationService;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/lyokone/location/FlutterLocationService$LocalBinder;->this$0:Lcom/lyokone/location/FlutterLocationService;

    return-object v0
.end method
