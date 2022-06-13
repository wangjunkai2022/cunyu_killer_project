.class public abstract Lcom/tencent/liteav/basic/license/a;
.super Ljava/lang/Object;
.source "HttpCommon.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "UTF-8"

    .line 27
    iput-object v0, p0, Lcom/tencent/liteav/basic/license/a;->a:Ljava/lang/String;

    return-void
.end method
