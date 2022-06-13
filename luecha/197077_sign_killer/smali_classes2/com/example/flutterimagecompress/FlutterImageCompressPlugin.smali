.class public final Lcom/example/flutterimagecompress/FlutterImageCompressPlugin;
.super Ljava/lang/Object;
.source "FlutterImageCompressPlugin.kt"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/flutterimagecompress/FlutterImageCompressPlugin$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00182\u00020\u00012\u00020\u0002:\u0001\u0018B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0010\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0018\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u0017H\u0016R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/example/flutterimagecompress/FlutterImageCompressPlugin;",
        "Lio/flutter/embedding/engine/plugins/FlutterPlugin;",
        "Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;",
        "()V",
        "channel",
        "Lio/flutter/plugin/common/MethodChannel;",
        "getChannel",
        "()Lio/flutter/plugin/common/MethodChannel;",
        "setChannel",
        "(Lio/flutter/plugin/common/MethodChannel;)V",
        "context",
        "Landroid/content/Context;",
        "handleLog",
        "",
        "call",
        "Lio/flutter/plugin/common/MethodCall;",
        "onAttachedToEngine",
        "",
        "binding",
        "Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;",
        "onDetachedFromEngine",
        "onMethodCall",
        "result",
        "Lio/flutter/plugin/common/MethodChannel$Result;",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/example/flutterimagecompress/FlutterImageCompressPlugin$Companion;

.field private static showLog:Z


# instance fields
.field private channel:Lio/flutter/plugin/common/MethodChannel;

.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/example/flutterimagecompress/FlutterImageCompressPlugin$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/example/flutterimagecompress/FlutterImageCompressPlugin$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/example/flutterimagecompress/FlutterImageCompressPlugin;->Companion:Lcom/example/flutterimagecompress/FlutterImageCompressPlugin$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget-object v0, Lcom/example/flutterimagecompress/format/FormatRegister;->INSTANCE:Lcom/example/flutterimagecompress/format/FormatRegister;

    new-instance v1, Lcom/example/flutterimagecompress/handle/common/CommonHandler;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/example/flutterimagecompress/handle/common/CommonHandler;-><init>(I)V

    check-cast v1, Lcom/example/flutterimagecompress/handle/FormatHandler;

    invoke-virtual {v0, v1}, Lcom/example/flutterimagecompress/format/FormatRegister;->registerFormat(Lcom/example/flutterimagecompress/handle/FormatHandler;)V

    .line 36
    sget-object v0, Lcom/example/flutterimagecompress/format/FormatRegister;->INSTANCE:Lcom/example/flutterimagecompress/format/FormatRegister;

    new-instance v1, Lcom/example/flutterimagecompress/handle/common/CommonHandler;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/example/flutterimagecompress/handle/common/CommonHandler;-><init>(I)V

    check-cast v1, Lcom/example/flutterimagecompress/handle/FormatHandler;

    invoke-virtual {v0, v1}, Lcom/example/flutterimagecompress/format/FormatRegister;->registerFormat(Lcom/example/flutterimagecompress/handle/FormatHandler;)V

    .line 37
    sget-object v0, Lcom/example/flutterimagecompress/format/FormatRegister;->INSTANCE:Lcom/example/flutterimagecompress/format/FormatRegister;

    new-instance v1, Lcom/example/flutterimagecompress/handle/heif/HeifHandler;

    invoke-direct {v1}, Lcom/example/flutterimagecompress/handle/heif/HeifHandler;-><init>()V

    check-cast v1, Lcom/example/flutterimagecompress/handle/FormatHandler;

    invoke-virtual {v0, v1}, Lcom/example/flutterimagecompress/format/FormatRegister;->registerFormat(Lcom/example/flutterimagecompress/handle/FormatHandler;)V

    .line 38
    sget-object v0, Lcom/example/flutterimagecompress/format/FormatRegister;->INSTANCE:Lcom/example/flutterimagecompress/format/FormatRegister;

    new-instance v1, Lcom/example/flutterimagecompress/handle/common/CommonHandler;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/example/flutterimagecompress/handle/common/CommonHandler;-><init>(I)V

    check-cast v1, Lcom/example/flutterimagecompress/handle/FormatHandler;

    invoke-virtual {v0, v1}, Lcom/example/flutterimagecompress/format/FormatRegister;->registerFormat(Lcom/example/flutterimagecompress/handle/FormatHandler;)V

    return-void
.end method

.method public static final synthetic access$getShowLog$cp()Z
    .locals 1

    .line 17
    sget-boolean v0, Lcom/example/flutterimagecompress/FlutterImageCompressPlugin;->showLog:Z

    return v0
.end method

.method public static final synthetic access$setContext$p(Lcom/example/flutterimagecompress/FlutterImageCompressPlugin;Landroid/content/Context;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/example/flutterimagecompress/FlutterImageCompressPlugin;->context:Landroid/content/Context;

    return-void
.end method

.method public static final synthetic access$setShowLog$cp(Z)V
    .locals 0

    .line 17
    sput-boolean p0, Lcom/example/flutterimagecompress/FlutterImageCompressPlugin;->showLog:Z

    return-void
.end method

.method private final handleLog(Lio/flutter/plugin/common/MethodCall;)I
    .locals 2

    .line 53
    invoke-virtual {p1}, Lio/flutter/plugin/common/MethodCall;->arguments()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    .line 54
    sget-object v0, Lcom/example/flutterimagecompress/FlutterImageCompressPlugin;->Companion:Lcom/example/flutterimagecompress/FlutterImageCompressPlugin$Companion;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    sput-boolean p1, Lcom/example/flutterimagecompress/FlutterImageCompressPlugin;->showLog:Z

    return v0
.end method

.method public static final registerWith(Lio/flutter/plugin/common/PluginRegistry$Registrar;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/example/flutterimagecompress/FlutterImageCompressPlugin;->Companion:Lcom/example/flutterimagecompress/FlutterImageCompressPlugin$Companion;

    invoke-virtual {v0, p0}, Lcom/example/flutterimagecompress/FlutterImageCompressPlugin$Companion;->registerWith(Lio/flutter/plugin/common/PluginRegistry$Registrar;)V

    return-void
.end method


# virtual methods
.method public final getChannel()Lio/flutter/plugin/common/MethodChannel;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/example/flutterimagecompress/FlutterImageCompressPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    return-object v0
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 2

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "binding.applicationContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/example/flutterimagecompress/FlutterImageCompressPlugin;->context:Landroid/content/Context;

    .line 60
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object p1

    const-string v1, "flutter_image_compress"

    invoke-direct {v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/example/flutterimagecompress/FlutterImageCompressPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    .line 61
    iget-object p1, p0, Lcom/example/flutterimagecompress/FlutterImageCompressPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    check-cast v0, Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;

    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    :goto_0
    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-object p1, p0, Lcom/example/flutterimagecompress/FlutterImageCompressPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 66
    :goto_0
    iput-object v0, p0, Lcom/example/flutterimagecompress/FlutterImageCompressPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    return-void
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 4

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "context"

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "showLog"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 43
    :cond_0
    invoke-direct {p0, p1}, Lcom/example/flutterimagecompress/FlutterImageCompressPlugin;->handleLog(Lio/flutter/plugin/common/MethodCall;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_1
    const-string p1, "getSystemVersion"

    .line 42
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 47
    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_1

    :sswitch_2
    const-string v1, "compressWithList"

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 44
    :cond_2
    new-instance v0, Lcom/example/flutterimagecompress/core/CompressListHandler;

    invoke-direct {v0, p1, p2}, Lcom/example/flutterimagecompress/core/CompressListHandler;-><init>(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    iget-object p1, p0, Lcom/example/flutterimagecompress/FlutterImageCompressPlugin;->context:Landroid/content/Context;

    if-nez p1, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_3
    invoke-virtual {v0, p1}, Lcom/example/flutterimagecompress/core/CompressListHandler;->handle(Landroid/content/Context;)V

    goto :goto_1

    :sswitch_3
    const-string v1, "compressWithFile"

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    .line 45
    :cond_4
    new-instance v0, Lcom/example/flutterimagecompress/core/CompressFileHandler;

    invoke-direct {v0, p1, p2}, Lcom/example/flutterimagecompress/core/CompressFileHandler;-><init>(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    iget-object p1, p0, Lcom/example/flutterimagecompress/FlutterImageCompressPlugin;->context:Landroid/content/Context;

    if-nez p1, :cond_5

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_5
    invoke-virtual {v0, p1}, Lcom/example/flutterimagecompress/core/CompressFileHandler;->handle(Landroid/content/Context;)V

    goto :goto_1

    :sswitch_4
    const-string v1, "compressWithFileAndGetFile"

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    .line 46
    :cond_6
    new-instance v0, Lcom/example/flutterimagecompress/core/CompressFileHandler;

    invoke-direct {v0, p1, p2}, Lcom/example/flutterimagecompress/core/CompressFileHandler;-><init>(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    iget-object p1, p0, Lcom/example/flutterimagecompress/FlutterImageCompressPlugin;->context:Landroid/content/Context;

    if-nez p1, :cond_7

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_7
    invoke-virtual {v0, p1}, Lcom/example/flutterimagecompress/core/CompressFileHandler;->handleGetFile(Landroid/content/Context;)V

    goto :goto_1

    .line 48
    :cond_8
    :goto_0
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7bdcfe1 -> :sswitch_4
        0x52114e4 -> :sswitch_3
        0x523d006 -> :sswitch_2
        0x4b43fbf3 -> :sswitch_1
        0x7b381307 -> :sswitch_0
    .end sparse-switch
.end method

.method public final setChannel(Lio/flutter/plugin/common/MethodChannel;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/example/flutterimagecompress/FlutterImageCompressPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    return-void
.end method
