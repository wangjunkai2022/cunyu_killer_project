.class public final Lcom/example/flutterimagecompress/FlutterImageCompressPlugin$Companion;
.super Ljava/lang/Object;
.source "FlutterImageCompressPlugin.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/flutterimagecompress/FlutterImageCompressPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0007R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/example/flutterimagecompress/FlutterImageCompressPlugin$Companion;",
        "",
        "()V",
        "showLog",
        "",
        "getShowLog",
        "()Z",
        "setShowLog",
        "(Z)V",
        "registerWith",
        "",
        "registrar",
        "Lio/flutter/plugin/common/PluginRegistry$Registrar;",
        "flutter_image_compress_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/example/flutterimagecompress/FlutterImageCompressPlugin$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getShowLog()Z
    .locals 1

    .line 31
    invoke-static {}, Lcom/example/flutterimagecompress/FlutterImageCompressPlugin;->access$getShowLog$cp()Z

    move-result v0

    return v0
.end method

.method public final registerWith(Lio/flutter/plugin/common/PluginRegistry$Registrar;)V
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "registrar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    new-instance v0, Lcom/example/flutterimagecompress/FlutterImageCompressPlugin;

    invoke-direct {v0}, Lcom/example/flutterimagecompress/FlutterImageCompressPlugin;-><init>()V

    .line 26
    new-instance v1, Lio/flutter/plugin/common/MethodChannel;

    invoke-interface {p1}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->messenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v2

    const-string v3, "flutter_image_compress"

    invoke-direct {v1, v2, v3}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/example/flutterimagecompress/FlutterImageCompressPlugin;->setChannel(Lio/flutter/plugin/common/MethodChannel;)V

    .line 27
    invoke-interface {p1}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->context()Landroid/content/Context;

    move-result-object p1

    const-string v1, "registrar.context()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/example/flutterimagecompress/FlutterImageCompressPlugin;->access$setContext$p(Lcom/example/flutterimagecompress/FlutterImageCompressPlugin;Landroid/content/Context;)V

    .line 28
    invoke-virtual {v0}, Lcom/example/flutterimagecompress/FlutterImageCompressPlugin;->getChannel()Lio/flutter/plugin/common/MethodChannel;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    check-cast v0, Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;

    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    :goto_0
    return-void
.end method

.method public final setShowLog(Z)V
    .locals 0

    .line 31
    invoke-static {p1}, Lcom/example/flutterimagecompress/FlutterImageCompressPlugin;->access$setShowLog$cp(Z)V

    return-void
.end method
