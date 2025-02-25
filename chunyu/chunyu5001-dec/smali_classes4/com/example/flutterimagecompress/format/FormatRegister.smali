.class public final Lcom/example/flutterimagecompress/format/FormatRegister;
.super Ljava/lang/Object;
.source "FormatRegister.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\u0008J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0005R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/example/flutterimagecompress/format/FormatRegister;",
        "",
        "()V",
        "formatMap",
        "Landroid/util/SparseArray;",
        "Lcom/example/flutterimagecompress/handle/FormatHandler;",
        "findFormat",
        "formatIndex",
        "",
        "registerFormat",
        "",
        "handler",
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
.field public static final INSTANCE:Lcom/example/flutterimagecompress/format/FormatRegister;

.field private static final formatMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/example/flutterimagecompress/handle/FormatHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/example/flutterimagecompress/format/FormatRegister;

    invoke-direct {v0}, Lcom/example/flutterimagecompress/format/FormatRegister;-><init>()V

    sput-object v0, Lcom/example/flutterimagecompress/format/FormatRegister;->INSTANCE:Lcom/example/flutterimagecompress/format/FormatRegister;

    .line 8
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/example/flutterimagecompress/format/FormatRegister;->formatMap:Landroid/util/SparseArray;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final findFormat(I)Lcom/example/flutterimagecompress/handle/FormatHandler;
    .locals 1

    .line 15
    sget-object v0, Lcom/example/flutterimagecompress/format/FormatRegister;->formatMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/example/flutterimagecompress/handle/FormatHandler;

    return-object p1
.end method

.method public final registerFormat(Lcom/example/flutterimagecompress/handle/FormatHandler;)V
    .locals 2

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    sget-object v0, Lcom/example/flutterimagecompress/format/FormatRegister;->formatMap:Landroid/util/SparseArray;

    invoke-interface {p1}, Lcom/example/flutterimagecompress/handle/FormatHandler;->getType()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method
