.class Lcom/example/super_network_kit/WsStatus$TIP;
.super Ljava/lang/Object;
.source "WsStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/super_network_kit/WsStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TIP"
.end annotation


# static fields
.field public static final ABNORMAL_CLOSE:Ljava/lang/String; = "abnormal close"

.field public static final NORMAL_CLOSE:Ljava/lang/String; = "normal close"


# instance fields
.field final synthetic this$0:Lcom/example/super_network_kit/WsStatus;


# direct methods
.method constructor <init>(Lcom/example/super_network_kit/WsStatus;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/example/super_network_kit/WsStatus$TIP;->this$0:Lcom/example/super_network_kit/WsStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
