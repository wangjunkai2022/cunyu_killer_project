.class public Ltop/niunaijun/blackbox/core/system/am/ActiveServices$ConnectedServiceRecord;
.super Ljava/lang/Object;
.source "ActiveServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/niunaijun/blackbox/core/system/am/ActiveServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectedServiceRecord"
.end annotation


# instance fields
.field private mIBinder:Landroid/os/IBinder;

.field private mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200(Ltop/niunaijun/blackbox/core/system/am/ActiveServices$ConnectedServiceRecord;)Landroid/content/Intent;
    .locals 0

    .line 110
    iget-object p0, p0, Ltop/niunaijun/blackbox/core/system/am/ActiveServices$ConnectedServiceRecord;->mIntent:Landroid/content/Intent;

    return-object p0
.end method
