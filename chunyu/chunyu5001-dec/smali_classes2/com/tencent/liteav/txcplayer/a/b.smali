.class public Lcom/tencent/liteav/txcplayer/a/b;
.super Ljava/lang/Object;
.source "TXVCubeGlobalSetting.java"


# static fields
.field private static a:Ljava/lang/String; = "NO_SET"

.field private static b:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Lcom/tencent/liteav/txcplayer/a/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(I)V
    .locals 0

    .line 22
    sput p0, Lcom/tencent/liteav/txcplayer/a/b;->b:I

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    .line 14
    sput-object p0, Lcom/tencent/liteav/txcplayer/a/b;->a:Ljava/lang/String;

    return-void
.end method

.method public static b()I
    .locals 1

    .line 30
    sget v0, Lcom/tencent/liteav/txcplayer/a/b;->b:I

    return v0
.end method
