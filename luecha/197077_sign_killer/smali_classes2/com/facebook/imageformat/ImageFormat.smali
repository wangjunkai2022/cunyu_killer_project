.class public final enum Lcom/facebook/imageformat/ImageFormat;
.super Ljava/lang/Enum;
.source "ImageFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/imageformat/ImageFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/imageformat/ImageFormat;

.field public static final enum BMP:Lcom/facebook/imageformat/ImageFormat;

.field public static final enum GIF:Lcom/facebook/imageformat/ImageFormat;

.field public static final enum JPEG:Lcom/facebook/imageformat/ImageFormat;

.field public static final enum PNG:Lcom/facebook/imageformat/ImageFormat;

.field public static final enum UNKNOWN:Lcom/facebook/imageformat/ImageFormat;

.field public static final enum WEBP_ANIMATED:Lcom/facebook/imageformat/ImageFormat;

.field public static final enum WEBP_EXTENDED:Lcom/facebook/imageformat/ImageFormat;

.field public static final enum WEBP_EXTENDED_WITH_ALPHA:Lcom/facebook/imageformat/ImageFormat;

.field public static final enum WEBP_LOSSLESS:Lcom/facebook/imageformat/ImageFormat;

.field public static final enum WEBP_SIMPLE:Lcom/facebook/imageformat/ImageFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 17
    new-instance v0, Lcom/facebook/imageformat/ImageFormat;

    const/4 v1, 0x0

    const-string v2, "WEBP_SIMPLE"

    invoke-direct {v0, v2, v1}, Lcom/facebook/imageformat/ImageFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/imageformat/ImageFormat;->WEBP_SIMPLE:Lcom/facebook/imageformat/ImageFormat;

    .line 18
    new-instance v0, Lcom/facebook/imageformat/ImageFormat;

    const/4 v2, 0x1

    const-string v3, "WEBP_LOSSLESS"

    invoke-direct {v0, v3, v2}, Lcom/facebook/imageformat/ImageFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/imageformat/ImageFormat;->WEBP_LOSSLESS:Lcom/facebook/imageformat/ImageFormat;

    .line 19
    new-instance v0, Lcom/facebook/imageformat/ImageFormat;

    const/4 v3, 0x2

    const-string v4, "WEBP_EXTENDED"

    invoke-direct {v0, v4, v3}, Lcom/facebook/imageformat/ImageFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/imageformat/ImageFormat;->WEBP_EXTENDED:Lcom/facebook/imageformat/ImageFormat;

    .line 20
    new-instance v0, Lcom/facebook/imageformat/ImageFormat;

    const/4 v4, 0x3

    const-string v5, "WEBP_EXTENDED_WITH_ALPHA"

    invoke-direct {v0, v5, v4}, Lcom/facebook/imageformat/ImageFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/imageformat/ImageFormat;->WEBP_EXTENDED_WITH_ALPHA:Lcom/facebook/imageformat/ImageFormat;

    .line 21
    new-instance v0, Lcom/facebook/imageformat/ImageFormat;

    const/4 v5, 0x4

    const-string v6, "WEBP_ANIMATED"

    invoke-direct {v0, v6, v5}, Lcom/facebook/imageformat/ImageFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/imageformat/ImageFormat;->WEBP_ANIMATED:Lcom/facebook/imageformat/ImageFormat;

    .line 22
    new-instance v0, Lcom/facebook/imageformat/ImageFormat;

    const/4 v6, 0x5

    const-string v7, "JPEG"

    invoke-direct {v0, v7, v6}, Lcom/facebook/imageformat/ImageFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/imageformat/ImageFormat;->JPEG:Lcom/facebook/imageformat/ImageFormat;

    .line 23
    new-instance v0, Lcom/facebook/imageformat/ImageFormat;

    const/4 v7, 0x6

    const-string v8, "PNG"

    invoke-direct {v0, v8, v7}, Lcom/facebook/imageformat/ImageFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/imageformat/ImageFormat;->PNG:Lcom/facebook/imageformat/ImageFormat;

    .line 24
    new-instance v0, Lcom/facebook/imageformat/ImageFormat;

    const/4 v8, 0x7

    const-string v9, "GIF"

    invoke-direct {v0, v9, v8}, Lcom/facebook/imageformat/ImageFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/imageformat/ImageFormat;->GIF:Lcom/facebook/imageformat/ImageFormat;

    .line 25
    new-instance v0, Lcom/facebook/imageformat/ImageFormat;

    const/16 v9, 0x8

    const-string v10, "BMP"

    invoke-direct {v0, v10, v9}, Lcom/facebook/imageformat/ImageFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/imageformat/ImageFormat;->BMP:Lcom/facebook/imageformat/ImageFormat;

    .line 29
    new-instance v0, Lcom/facebook/imageformat/ImageFormat;

    const/16 v10, 0x9

    const-string v11, "UNKNOWN"

    invoke-direct {v0, v11, v10}, Lcom/facebook/imageformat/ImageFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/imageformat/ImageFormat;->UNKNOWN:Lcom/facebook/imageformat/ImageFormat;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/facebook/imageformat/ImageFormat;

    .line 15
    sget-object v11, Lcom/facebook/imageformat/ImageFormat;->WEBP_SIMPLE:Lcom/facebook/imageformat/ImageFormat;

    aput-object v11, v0, v1

    sget-object v1, Lcom/facebook/imageformat/ImageFormat;->WEBP_LOSSLESS:Lcom/facebook/imageformat/ImageFormat;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/imageformat/ImageFormat;->WEBP_EXTENDED:Lcom/facebook/imageformat/ImageFormat;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/imageformat/ImageFormat;->WEBP_EXTENDED_WITH_ALPHA:Lcom/facebook/imageformat/ImageFormat;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/imageformat/ImageFormat;->WEBP_ANIMATED:Lcom/facebook/imageformat/ImageFormat;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/imageformat/ImageFormat;->JPEG:Lcom/facebook/imageformat/ImageFormat;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/imageformat/ImageFormat;->PNG:Lcom/facebook/imageformat/ImageFormat;

    aput-object v1, v0, v7

    sget-object v1, Lcom/facebook/imageformat/ImageFormat;->GIF:Lcom/facebook/imageformat/ImageFormat;

    aput-object v1, v0, v8

    sget-object v1, Lcom/facebook/imageformat/ImageFormat;->BMP:Lcom/facebook/imageformat/ImageFormat;

    aput-object v1, v0, v9

    sget-object v1, Lcom/facebook/imageformat/ImageFormat;->UNKNOWN:Lcom/facebook/imageformat/ImageFormat;

    aput-object v1, v0, v10

    sput-object v0, Lcom/facebook/imageformat/ImageFormat;->$VALUES:[Lcom/facebook/imageformat/ImageFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getFileExtension(Lcom/facebook/imageformat/ImageFormat;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 48
    sget-object v0, Lcom/facebook/imageformat/ImageFormat$1;->$SwitchMap$com$facebook$imageformat$ImageFormat:[I

    invoke-virtual {p0}, Lcom/facebook/imageformat/ImageFormat;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 64
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown image format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/facebook/imageformat/ImageFormat;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string p0, "bmp"

    return-object p0

    :pswitch_1
    const-string p0, "gif"

    return-object p0

    :pswitch_2
    const-string p0, "png"

    return-object p0

    :pswitch_3
    const-string p0, "jpeg"

    return-object p0

    :pswitch_4
    const-string/jumbo p0, "webp"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isWebpFormat(Lcom/facebook/imageformat/ImageFormat;)Z
    .locals 1

    .line 32
    sget-object v0, Lcom/facebook/imageformat/ImageFormat;->WEBP_SIMPLE:Lcom/facebook/imageformat/ImageFormat;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/facebook/imageformat/ImageFormat;->WEBP_LOSSLESS:Lcom/facebook/imageformat/ImageFormat;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/facebook/imageformat/ImageFormat;->WEBP_EXTENDED:Lcom/facebook/imageformat/ImageFormat;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/facebook/imageformat/ImageFormat;->WEBP_EXTENDED_WITH_ALPHA:Lcom/facebook/imageformat/ImageFormat;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/facebook/imageformat/ImageFormat;->WEBP_ANIMATED:Lcom/facebook/imageformat/ImageFormat;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/imageformat/ImageFormat;
    .locals 1

    .line 15
    const-class v0, Lcom/facebook/imageformat/ImageFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/imageformat/ImageFormat;

    return-object p0
.end method

.method public static values()[Lcom/facebook/imageformat/ImageFormat;
    .locals 1

    .line 15
    sget-object v0, Lcom/facebook/imageformat/ImageFormat;->$VALUES:[Lcom/facebook/imageformat/ImageFormat;

    invoke-virtual {v0}, [Lcom/facebook/imageformat/ImageFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/imageformat/ImageFormat;

    return-object v0
.end method
