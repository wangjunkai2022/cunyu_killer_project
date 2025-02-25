.class public final Lcom/example/flutterimagecompress/logger/LogExtKt;
.super Ljava/lang/Object;
.source "LogExt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "log",
        "",
        "",
        "any",
        "flutter_image_compress_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final log(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget-object p0, Lcom/example/flutterimagecompress/FlutterImageCompressPlugin;->Companion:Lcom/example/flutterimagecompress/FlutterImageCompressPlugin$Companion;

    invoke-virtual {p0}, Lcom/example/flutterimagecompress/FlutterImageCompressPlugin$Companion;->getShowLog()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "null"

    if-nez p1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move-object p0, p1

    :goto_0
    const-string p1, "flutter_image_compress"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method
