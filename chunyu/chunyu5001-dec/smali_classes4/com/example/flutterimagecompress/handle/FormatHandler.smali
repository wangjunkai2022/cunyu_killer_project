.class public interface abstract Lcom/example/flutterimagecompress/handle/FormatHandler;
.super Ljava/lang/Object;
.source "FormatHandler.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008f\u0018\u00002\u00020\u0001JP\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0003H&JX\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u0003H&R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/example/flutterimagecompress/handle/FormatHandler;",
        "",
        "type",
        "",
        "getType",
        "()I",
        "typeName",
        "",
        "getTypeName",
        "()Ljava/lang/String;",
        "handleByteArray",
        "",
        "context",
        "Landroid/content/Context;",
        "byteArray",
        "",
        "outputStream",
        "Ljava/io/OutputStream;",
        "minWidth",
        "minHeight",
        "quality",
        "rotate",
        "keepExif",
        "",
        "inSampleSize",
        "handleFile",
        "path",
        "numberOfRetries",
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


# virtual methods
.method public abstract getType()I
.end method

.method public abstract getTypeName()Ljava/lang/String;
.end method

.method public abstract handleByteArray(Landroid/content/Context;[BLjava/io/OutputStream;IIIIZI)V
.end method

.method public abstract handleFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/OutputStream;IIIIZII)V
.end method
