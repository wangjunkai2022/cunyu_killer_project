.class public Ltop/kikt/flutter_image_editor/common/font/FontUtils;
.super Ljava/lang/Object;
.source "FontUtils.java"


# static fields
.field private static fontIndex:I = -0x1

.field private static map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ltop/kikt/flutter_image_editor/common/font/FontUtils;->map:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFont(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 1

    .line 45
    sget-object v0, Ltop/kikt/flutter_image_editor/common/font/FontUtils;->map:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Typeface;

    return-object p0
.end method

.method public static registerFont(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 24
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/jaredrummler/truetypeparser/TTFFile;->open(Ljava/io/InputStream;)Lcom/jaredrummler/truetypeparser/TTFFile;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/jaredrummler/truetypeparser/TTFFile;->getFullName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 29
    sget v0, Ltop/kikt/flutter_image_editor/common/font/FontUtils;->fontIndex:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Ltop/kikt/flutter_image_editor/common/font/FontUtils;->fontIndex:I

    .line 30
    sget v0, Ltop/kikt/flutter_image_editor/common/font/FontUtils;->fontIndex:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 33
    :cond_1
    sget-object v1, Ltop/kikt/flutter_image_editor/common/font/FontUtils;->map:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    .line 37
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object p0

    .line 38
    sget-object v1, Ltop/kikt/flutter_image_editor/common/font/FontUtils;->map:Ljava/util/Map;

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
