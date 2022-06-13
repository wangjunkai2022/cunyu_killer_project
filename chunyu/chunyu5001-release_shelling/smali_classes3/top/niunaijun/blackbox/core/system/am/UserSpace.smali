.class public Ltop/niunaijun/blackbox/core/system/am/UserSpace;
.super Ljava/lang/Object;
.source "UserSpace.java"


# instance fields
.field public final mActiveServices:Ltop/niunaijun/blackbox/core/system/am/ActiveServices;

.field public final mStack:Ltop/niunaijun/blackbox/core/system/am/ActivityStack;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ltop/niunaijun/blackbox/core/system/am/ActiveServices;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/core/system/am/ActiveServices;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mActiveServices:Ltop/niunaijun/blackbox/core/system/am/ActiveServices;

    .line 13
    new-instance v0, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;

    invoke-direct {v0}, Ltop/niunaijun/blackbox/core/system/am/ActivityStack;-><init>()V

    iput-object v0, p0, Ltop/niunaijun/blackbox/core/system/am/UserSpace;->mStack:Ltop/niunaijun/blackbox/core/system/am/ActivityStack;

    return-void
.end method
