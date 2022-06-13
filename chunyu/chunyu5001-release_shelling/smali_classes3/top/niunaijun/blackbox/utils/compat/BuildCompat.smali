.class public Ltop/niunaijun/blackbox/utils/compat/BuildCompat;
.super Ljava/lang/Object;
.source "BuildCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/niunaijun/blackbox/utils/compat/BuildCompat$ROMType;
    }
.end annotation


# static fields
.field private static sRomType:Ltop/niunaijun/blackbox/utils/compat/BuildCompat$ROMType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPreviewSDKInt()I
    .locals 2

    .line 8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 10
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getROMType()Ltop/niunaijun/blackbox/utils/compat/BuildCompat$ROMType;
    .locals 1

    .line 110
    sget-object v0, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->sRomType:Ltop/niunaijun/blackbox/utils/compat/BuildCompat$ROMType;

    if-nez v0, :cond_8

    .line 111
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isEMUI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    sget-object v0, Ltop/niunaijun/blackbox/utils/compat/BuildCompat$ROMType;->EMUI:Ltop/niunaijun/blackbox/utils/compat/BuildCompat$ROMType;

    sput-object v0, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->sRomType:Ltop/niunaijun/blackbox/utils/compat/BuildCompat$ROMType;

    goto :goto_0

    .line 113
    :cond_0
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isMIUI()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    sget-object v0, Ltop/niunaijun/blackbox/utils/compat/BuildCompat$ROMType;->MIUI:Ltop/niunaijun/blackbox/utils/compat/BuildCompat$ROMType;

    sput-object v0, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->sRomType:Ltop/niunaijun/blackbox/utils/compat/BuildCompat$ROMType;

    goto :goto_0

    .line 115
    :cond_1
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isFlyme()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    sget-object v0, Ltop/niunaijun/blackbox/utils/compat/BuildCompat$ROMType;->FLYME:Ltop/niunaijun/blackbox/utils/compat/BuildCompat$ROMType;

    sput-object v0, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->sRomType:Ltop/niunaijun/blackbox/utils/compat/BuildCompat$ROMType;

    goto :goto_0

    .line 117
    :cond_2
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isColorOS()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 118
    sget-object v0, Ltop/niunaijun/blackbox/utils/compat/BuildCompat$ROMType;->COLOR_OS:Ltop/niunaijun/blackbox/utils/compat/BuildCompat$ROMType;

    sput-object v0, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->sRomType:Ltop/niunaijun/blackbox/utils/compat/BuildCompat$ROMType;

    goto :goto_0

    .line 119
    :cond_3
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->is360UI()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 120
    sget-object v0, Ltop/niunaijun/blackbox/utils/compat/BuildCompat$ROMType;->_360:Ltop/niunaijun/blackbox/utils/compat/BuildCompat$ROMType;

    sput-object v0, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->sRomType:Ltop/niunaijun/blackbox/utils/compat/BuildCompat$ROMType;

    goto :goto_0

    .line 121
    :cond_4
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isLetv()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 122
    sget-object v0, Ltop/niunaijun/blackbox/utils/compat/BuildCompat$ROMType;->LETV:Ltop/niunaijun/blackbox/utils/compat/BuildCompat$ROMType;

    sput-object v0, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->sRomType:Ltop/niunaijun/blackbox/utils/compat/BuildCompat$ROMType;

    goto :goto_0

    .line 123
    :cond_5
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isVivo()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 124
    sget-object v0, Ltop/niunaijun/blackbox/utils/compat/BuildCompat$ROMType;->VIVO:Ltop/niunaijun/blackbox/utils/compat/BuildCompat$ROMType;

    sput-object v0, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->sRomType:Ltop/niunaijun/blackbox/utils/compat/BuildCompat$ROMType;

    goto :goto_0

    .line 125
    :cond_6
    invoke-static {}, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->isSamsung()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 126
    sget-object v0, Ltop/niunaijun/blackbox/utils/compat/BuildCompat$ROMType;->SAMSUNG:Ltop/niunaijun/blackbox/utils/compat/BuildCompat$ROMType;

    sput-object v0, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->sRomType:Ltop/niunaijun/blackbox/utils/compat/BuildCompat$ROMType;

    goto :goto_0

    .line 128
    :cond_7
    sget-object v0, Ltop/niunaijun/blackbox/utils/compat/BuildCompat$ROMType;->OTHER:Ltop/niunaijun/blackbox/utils/compat/BuildCompat$ROMType;

    sput-object v0, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->sRomType:Ltop/niunaijun/blackbox/utils/compat/BuildCompat$ROMType;

    .line 131
    :cond_8
    :goto_0
    sget-object v0, Ltop/niunaijun/blackbox/utils/compat/BuildCompat;->sRomType:Ltop/niunaijun/blackbox/utils/compat/BuildCompat$ROMType;

    return-object v0
.end method

.method public static is360UI()Z
    .locals 2

    const-string v0, "ro.build.uiversion"

    .line 94
    invoke-static {v0}, Ltop/niunaijun/blackbox/utils/compat/SystemPropertiesCompat;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "360UI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isColorOS()Z
    .locals 1

    const-string v0, "ro.build.version.opporom"

    .line 89
    invoke-static {v0}, Ltop/niunaijun/blackbox/utils/compat/SystemPropertiesCompat;->isExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ro.rom.different.version"

    .line 90
    invoke-static {v0}, Ltop/niunaijun/blackbox/utils/compat/SystemPropertiesCompat;->isExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isEMUI()Z
    .locals 3

    .line 73
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EMUI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "ro.build.version.emui"

    .line 76
    invoke-static {v0}, Ltop/niunaijun/blackbox/utils/compat/SystemPropertiesCompat;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "EmotionUI"

    .line 77
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isFlyme()Z
    .locals 2

    .line 85
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "flyme"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isL()Z
    .locals 2

    .line 60
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isL_MR1()Z
    .locals 2

    .line 65
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLetv()Z
    .locals 2

    .line 99
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Letv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isM()Z
    .locals 2

    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isMIUI()Z
    .locals 2

    const-string v0, "ro.miui.ui.version.code"

    const/4 v1, 0x0

    .line 81
    invoke-static {v0, v1}, Ltop/niunaijun/blackbox/utils/compat/SystemPropertiesCompat;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isN()Z
    .locals 3

    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x18

    if-ge v0, v2, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_0

    sget v0, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static isN_MR1()Z
    .locals 3

    .line 50
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x19

    if-ge v0, v2, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_0

    sget v0, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static isOreo()Z
    .locals 3

    .line 40
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x19

    if-lt v0, v2, :cond_0

    sget v0, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static isPie()Z
    .locals 3

    .line 35
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x1c

    if-ge v0, v2, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-lt v0, v2, :cond_0

    sget v0, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static isQ()Z
    .locals 3

    .line 30
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x1d

    if-ge v0, v2, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_0

    sget v0, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static isR()Z
    .locals 3

    .line 25
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x1e

    if-ge v0, v2, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_0

    sget v0, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static isS()Z
    .locals 3

    .line 20
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x1f

    if-ge v0, v2, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_0

    sget v0, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static isSamsung()Z
    .locals 2

    .line 69
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "samsung"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isVivo()Z
    .locals 1

    const-string v0, "ro.vivo.os.build.display.id"

    .line 103
    invoke-static {v0}, Ltop/niunaijun/blackbox/utils/compat/SystemPropertiesCompat;->isExist(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
