.class final Lcom/opensource/svgaplayer/SVGACache$clearCache$1;
.super Ljava/lang/Object;
.source "SVGACache.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opensource/svgaplayer/SVGACache;->clearCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/opensource/svgaplayer/SVGACache$clearCache$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/opensource/svgaplayer/SVGACache$clearCache$1;

    invoke-direct {v0}, Lcom/opensource/svgaplayer/SVGACache$clearCache$1;-><init>()V

    sput-object v0, Lcom/opensource/svgaplayer/SVGACache$clearCache$1;->INSTANCE:Lcom/opensource/svgaplayer/SVGACache$clearCache$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 53
    sget-object v0, Lcom/opensource/svgaplayer/SVGACache;->INSTANCE:Lcom/opensource/svgaplayer/SVGACache;

    sget-object v1, Lcom/opensource/svgaplayer/SVGACache;->INSTANCE:Lcom/opensource/svgaplayer/SVGACache;

    invoke-static {v1}, Lcom/opensource/svgaplayer/SVGACache;->access$getCacheDir$p(Lcom/opensource/svgaplayer/SVGACache;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/opensource/svgaplayer/SVGACache;->clearDir$com_opensource_svgaplayer(Ljava/lang/String;)V

    .line 54
    sget-object v0, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    const-string v1, "SVGACache"

    const-string v2, "Clear svga cache done!"

    invoke-virtual {v0, v1, v2}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
