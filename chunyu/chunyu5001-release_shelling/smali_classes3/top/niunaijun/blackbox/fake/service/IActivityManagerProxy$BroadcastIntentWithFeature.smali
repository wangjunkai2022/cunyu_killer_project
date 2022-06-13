.class public Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$BroadcastIntentWithFeature;
.super Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$BroadcastIntent;
.source "IActivityManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BroadcastIntentWithFeature"
.end annotation

.annotation runtime Ltop/niunaijun/blackbox/fake/hook/ProxyMethod;
    name = "broadcastIntentWithFeature"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 152
    invoke-direct {p0}, Ltop/niunaijun/blackbox/fake/service/IActivityManagerProxy$BroadcastIntent;-><init>()V

    return-void
.end method
