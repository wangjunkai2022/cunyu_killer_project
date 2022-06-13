.class Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative$SingletonHolder;
.super Ljava/lang/Object;
.source "TPDownloadProxyNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    new-instance v0, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;-><init>(Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative$1;)V

    sput-object v0, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative$SingletonHolder;->INSTANCE:Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;
    .locals 1

    .line 55
    sget-object v0, Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative$SingletonHolder;->INSTANCE:Lcom/tencent/thumbplayer/core/downloadproxy/jni/TPDownloadProxyNative;

    return-object v0
.end method
