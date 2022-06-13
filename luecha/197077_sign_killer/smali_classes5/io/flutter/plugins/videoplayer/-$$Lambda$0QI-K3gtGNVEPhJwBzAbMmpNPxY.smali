.class public final synthetic Lio/flutter/plugins/videoplayer/-$$Lambda$0QI-K3gtGNVEPhJwBzAbMmpNPxY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/flutter/plugins/videoplayer/VideoPlayerPlugin$KeyForAssetAndPackageName;


# instance fields
.field private final synthetic f$0:Lio/flutter/embedding/engine/loader/FlutterLoader;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/embedding/engine/loader/FlutterLoader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugins/videoplayer/-$$Lambda$0QI-K3gtGNVEPhJwBzAbMmpNPxY;->f$0:Lio/flutter/embedding/engine/loader/FlutterLoader;

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/flutter/plugins/videoplayer/-$$Lambda$0QI-K3gtGNVEPhJwBzAbMmpNPxY;->f$0:Lio/flutter/embedding/engine/loader/FlutterLoader;

    invoke-virtual {v0, p1, p2}, Lio/flutter/embedding/engine/loader/FlutterLoader;->getLookupKeyForAsset(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
