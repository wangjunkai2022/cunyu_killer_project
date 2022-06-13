.class public final Lcom/tencent/liteav/txcplayer/R$string;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/txcplayer/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "string"
.end annotation


# static fields
.field public static app_name:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5
    sget v0, Lcom/tencent/rtmp/liteavsdk/R$string;->app_name:I

    sput v0, Lcom/tencent/liteav/txcplayer/R$string;->app_name:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
