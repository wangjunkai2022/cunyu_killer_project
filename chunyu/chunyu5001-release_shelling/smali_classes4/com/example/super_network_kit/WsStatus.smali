.class public Lcom/example/super_network_kit/WsStatus;
.super Ljava/lang/Object;
.source "WsStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/super_network_kit/WsStatus$TIP;,
        Lcom/example/super_network_kit/WsStatus$CODE;
    }
.end annotation


# static fields
.field public static final CONNECTED:I = 0x1

.field public static final CONNECTING:I = 0x0

.field public static final DISCONNECTED:I = -0x1

.field public static final RECONNECT:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
