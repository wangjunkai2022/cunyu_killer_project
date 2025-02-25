.class public final Lcom/example/imagegallerysaver/ImageGallerySaverPlugin$Companion;
.super Ljava/lang/Object;
.source "ImageGallerySaverPlugin.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/imagegallerysaver/ImageGallerySaverPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/example/imagegallerysaver/ImageGallerySaverPlugin$Companion;",
        "",
        "()V",
        "registerWith",
        "",
        "registrar",
        "Lio/flutter/plugin/common/PluginRegistry$Registrar;",
        "image_gallery_saver_release"
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

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/example/imagegallerysaver/ImageGallerySaverPlugin$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final registerWith(Lio/flutter/plugin/common/PluginRegistry$Registrar;)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "registrar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    new-instance v0, Lcom/example/imagegallerysaver/ImageGallerySaverPlugin;

    invoke-direct {v0}, Lcom/example/imagegallerysaver/ImageGallerySaverPlugin;-><init>()V

    .line 35
    invoke-interface {p1}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->context()Landroid/content/Context;

    move-result-object v1

    const-string v2, "registrar.context()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->messenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object p1

    const-string v2, "registrar.messenger()"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1, p1}, Lcom/example/imagegallerysaver/ImageGallerySaverPlugin;->access$onAttachedToEngine(Lcom/example/imagegallerysaver/ImageGallerySaverPlugin;Landroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;)V

    return-void
.end method
