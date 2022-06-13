.class public final Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin$Companion;
.super Ljava/lang/Object;
.source "FlutterImageEditorPlugin.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001c\u0010\t\u001a\u00020\n2\u000e\u0008\u0004\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\u000cH\u0086\u0008\u00f8\u0001\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\r"
    }
    d2 = {
        "Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin$Companion;",
        "",
        "()V",
        "channelName",
        "",
        "threadPool",
        "Ljava/util/concurrent/ExecutorService;",
        "getThreadPool",
        "()Ljava/util/concurrent/ExecutorService;",
        "runOnBackground",
        "",
        "block",
        "Lkotlin/Function0;",
        "image_editor_release"
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

    invoke-direct {p0}, Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getThreadPool()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 34
    invoke-static {}, Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin;->access$getThreadPool$cp()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public final runOnBackground(Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin$Companion;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin$Companion$runOnBackground$1;

    invoke-direct {v1, p1}, Ltop/kikt/flutter_image_editor/FlutterImageEditorPlugin$Companion$runOnBackground$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
