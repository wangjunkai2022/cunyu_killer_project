.class public Lcom/crazecoder/openfile/OpenFilePlugin;
.super Ljava/lang/Object;
.source "OpenFilePlugin.java"

# interfaces
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/embedding/engine/plugins/activity/ActivityAware;
.implements Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;
.implements Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;


# static fields
.field private static final REQUEST_CODE:I = 0x8298

.field private static final RESULT_CODE:I = 0x12

.field private static final TYPE_STRING_APK:Ljava/lang/String; = "application/vnd.android.package-archive"


# instance fields
.field private activity:Landroid/app/Activity;

.field private channel:Lio/flutter/plugin/common/MethodChannel;

.field private context:Landroid/content/Context;

.field private filePath:Ljava/lang/String;

.field private flutterPluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

.field private isResultSubmitted:Z

.field private result:Lio/flutter/plugin/common/MethodChannel$Result;

.field private typeString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/crazecoder/openfile/OpenFilePlugin;->isResultSubmitted:Z

    return-void
.end method

.method private canInstallApk()Z
    .locals 2

    .line 330
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 331
    iget-object v0, p0, Lcom/crazecoder/openfile/OpenFilePlugin;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->canRequestPackageInstalls()Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "android.permission.REQUEST_INSTALL_PACKAGES"

    .line 333
    invoke-direct {p0, v0}, Lcom/crazecoder/openfile/OpenFilePlugin;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private getFileType(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, "\\."

    .line 171
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 172
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 173
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "class"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v1, 0x8

    goto/16 :goto_1

    :sswitch_1
    const-string/jumbo v0, "xlsx"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v1, 0x12

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "rmvb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v1, 0x38

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "prop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v1, 0x36

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "pptx"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v1, 0x35

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "mpga"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v1, 0x2e

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "mpg4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v1, 0x2d

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "mpeg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v1, 0x2b

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "jpeg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v1, 0x1b

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "java"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v1, 0x1a

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "html"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v1, 0x18

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "gtar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v1, 0x14

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "docx"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v1, 0xf

    goto/16 :goto_1

    :sswitch_d
    const-string v0, "conf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v1, 0xc

    goto/16 :goto_1

    :sswitch_e
    const-string/jumbo v0, "zip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v1, 0x44

    goto/16 :goto_1

    :sswitch_f
    const-string/jumbo v0, "xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v1, 0x42

    goto/16 :goto_1

    :sswitch_10
    const-string/jumbo v0, "xls"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v1, 0x10

    goto/16 :goto_1

    :sswitch_11
    const-string/jumbo v0, "wps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v1, 0x41

    goto/16 :goto_1

    :sswitch_12
    const-string/jumbo v0, "wmv"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v1, 0x40

    goto/16 :goto_1

    :sswitch_13
    const-string/jumbo v0, "wma"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v1, 0x3f

    goto/16 :goto_1

    :sswitch_14
    const-string/jumbo v0, "wav"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v1, 0x3e

    goto/16 :goto_1

    :sswitch_15
    const-string/jumbo v0, "txt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v1, 0x3d

    goto/16 :goto_1

    :sswitch_16
    const-string v0, "tgz"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v1, 0x3c

    goto/16 :goto_1

    :sswitch_17
    const-string v0, "tar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v1, 0x3b

    goto/16 :goto_1

    :sswitch_18
    const-string v0, "rtf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v1, 0x39

    goto/16 :goto_1

    :sswitch_19
    const-string v0, "ppt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v1, 0x34

    goto/16 :goto_1

    :sswitch_1a
    const-string v0, "pps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v1, 0x33

    goto/16 :goto_1

    :sswitch_1b
    const-string v0, "png"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v1, 0x32

    goto/16 :goto_1

    :sswitch_1c
    const-string v0, "pdf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v1, 0x31

    goto/16 :goto_1

    :sswitch_1d
    const-string v0, "ogg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v1, 0x30

    goto/16 :goto_1

    :sswitch_1e
    const-string v0, "msg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v1, 0x2f

    goto/16 :goto_1

    :sswitch_1f
    const-string v0, "mpg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v1, 0x2c

    goto/16 :goto_1

    :sswitch_20
    const-string v0, "mpe"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v1, 0x2a

    goto/16 :goto_1

    :sswitch_21
    const-string v0, "mpc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v1, 0x29

    goto/16 :goto_1

    :sswitch_22
    const-string v0, "mov"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v1, 0x25

    goto/16 :goto_1

    :sswitch_23
    const-string v0, "mp4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v1, 0x28

    goto/16 :goto_1

    :sswitch_24
    const-string v0, "mp3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v1, 0x27

    goto/16 :goto_1

    :sswitch_25
    const-string v0, "mp2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v1, 0x26

    goto/16 :goto_1

    :sswitch_26
    const-string v0, "log"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v1, 0x1e

    goto/16 :goto_1

    :sswitch_27
    const-string v0, "m4v"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v1, 0x24

    goto/16 :goto_1

    :sswitch_28
    const-string v0, "m4u"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v1, 0x23

    goto/16 :goto_1

    :sswitch_29
    const-string v0, "m4p"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v1, 0x22

    goto/16 :goto_1

    :sswitch_2a
    const-string v0, "m4b"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v1, 0x21

    goto/16 :goto_1

    :sswitch_2b
    const-string v0, "m4a"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v1, 0x20

    goto/16 :goto_1

    :sswitch_2c
    const-string v0, "m3u"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v1, 0x1f

    goto/16 :goto_1

    :sswitch_2d
    const-string v0, "kml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    goto/16 :goto_1

    :sswitch_2e
    const-string v0, "jpg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v1, 0x1c

    goto/16 :goto_1

    :sswitch_2f
    const-string v0, "jar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v1, 0x19

    goto/16 :goto_1

    :sswitch_30
    const-string v0, "htm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v1, 0x17

    goto/16 :goto_1

    :sswitch_31
    const-string v0, "gpx"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x3

    goto/16 :goto_1

    :sswitch_32
    const-string v0, "gif"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v1, 0x13

    goto/16 :goto_1

    :sswitch_33
    const-string v0, "exe"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v1, 0x9

    goto/16 :goto_1

    :sswitch_34
    const-string v0, "doc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v1, 0xe

    goto/16 :goto_1

    :sswitch_35
    const-string v0, "csv"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v1, 0x11

    goto/16 :goto_1

    :sswitch_36
    const-string v0, "cpp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v1, 0xd

    goto/16 :goto_1

    :sswitch_37
    const-string v0, "bmp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v1, 0xa

    goto/16 :goto_1

    :sswitch_38
    const-string v0, "bin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x7

    goto/16 :goto_1

    :sswitch_39
    const-string v0, "avi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x6

    goto/16 :goto_1

    :sswitch_3a
    const-string v0, "asf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x5

    goto/16 :goto_1

    :sswitch_3b
    const-string v0, "apk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_3c
    const-string v0, "3gp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_3d
    const-string v0, "sh"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v1, 0x3a

    goto :goto_1

    :sswitch_3e
    const-string v0, "rc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v1, 0x37

    goto :goto_1

    :sswitch_3f
    const-string v0, "js"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v1, 0x1d

    goto :goto_1

    :sswitch_40
    const-string v0, "gz"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v1, 0x15

    goto :goto_1

    :sswitch_41
    const-string/jumbo v0, "z"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v1, 0x43

    goto :goto_1

    :sswitch_42
    const-string v0, "h"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v1, 0x16

    goto :goto_1

    :sswitch_43
    const-string v0, "c"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v1, 0xb

    goto :goto_1

    :sswitch_44
    const-string/jumbo v0, "torrent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    :goto_1
    const-string p1, "application/vnd.ms-powerpoint"

    const-string/jumbo v0, "video/mp4"

    const-string v2, "audio/x-mpeg"

    const-string v3, "image/jpeg"

    const-string v4, "text/html"

    const-string/jumbo v5, "video/mpeg"

    const-string v6, "audio/mp4a-latm"

    const-string v7, "text/plain"

    packed-switch v1, :pswitch_data_0

    const-string p1, "*/*"

    return-object p1

    :pswitch_0
    const-string p1, "application/x-zip-compressed"

    return-object p1

    :pswitch_1
    const-string p1, "application/x-compress"

    return-object p1

    :pswitch_2
    return-object v7

    :pswitch_3
    const-string p1, "application/vnd.ms-works"

    return-object p1

    :pswitch_4
    const-string p1, "audio/x-ms-wmv"

    return-object p1

    :pswitch_5
    const-string p1, "audio/x-ms-wma"

    return-object p1

    :pswitch_6
    const-string p1, "audio/x-wav"

    return-object p1

    :pswitch_7
    return-object v7

    :pswitch_8
    const-string p1, "application/x-compressed"

    return-object p1

    :pswitch_9
    const-string p1, "application/x-tar"

    return-object p1

    :pswitch_a
    return-object v7

    :pswitch_b
    const-string p1, "application/rtf"

    return-object p1

    :pswitch_c
    const-string p1, "audio/x-pn-realaudio"

    return-object p1

    :pswitch_d
    return-object v7

    :pswitch_e
    const-string p1, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    :pswitch_f
    return-object p1

    :pswitch_10
    const-string p1, "image/png"

    return-object p1

    :pswitch_11
    const-string p1, "application/pdf"

    return-object p1

    :pswitch_12
    const-string p1, "audio/ogg"

    return-object p1

    :pswitch_13
    const-string p1, "application/vnd.ms-outlook"

    return-object p1

    :pswitch_14
    const-string p1, "audio/mpeg"

    return-object p1

    :pswitch_15
    return-object v0

    :pswitch_16
    return-object v5

    :pswitch_17
    const-string p1, "application/vnd.mpohun.certificate"

    return-object p1

    :pswitch_18
    return-object v0

    :pswitch_19
    return-object v2

    :pswitch_1a
    const-string/jumbo p1, "video/quicktime"

    return-object p1

    :pswitch_1b
    const-string/jumbo p1, "video/x-m4v"

    return-object p1

    :pswitch_1c
    const-string/jumbo p1, "video/vnd.mpegurl"

    return-object p1

    :pswitch_1d
    return-object v6

    :pswitch_1e
    const-string p1, "audio/x-mpegurl"

    return-object p1

    :pswitch_1f
    return-object v7

    :pswitch_20
    const-string p1, "application/x-javascript"

    return-object p1

    :pswitch_21
    return-object v3

    :pswitch_22
    return-object v7

    :pswitch_23
    const-string p1, "application/java-archive"

    return-object p1

    :pswitch_24
    return-object v4

    :pswitch_25
    return-object v7

    :pswitch_26
    const-string p1, "application/x-gzip"

    return-object p1

    :pswitch_27
    const-string p1, "application/x-gtar"

    return-object p1

    :pswitch_28
    const-string p1, "image/gif"

    return-object p1

    :pswitch_29
    const-string p1, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    return-object p1

    :pswitch_2a
    const-string p1, "application/vnd.ms-excel"

    return-object p1

    :pswitch_2b
    const-string p1, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    return-object p1

    :pswitch_2c
    const-string p1, "application/msword"

    return-object p1

    :pswitch_2d
    return-object v7

    :pswitch_2e
    const-string p1, "image/bmp"

    return-object p1

    :pswitch_2f
    const-string p1, "application/octet-stream"

    return-object p1

    :pswitch_30
    const-string/jumbo p1, "video/x-msvideo"

    return-object p1

    :pswitch_31
    const-string/jumbo p1, "video/x-ms-asf"

    return-object p1

    :pswitch_32
    const-string p1, "application/vnd.android.package-archive"

    return-object p1

    :pswitch_33
    const-string p1, "application/gpx+xml"

    return-object p1

    :pswitch_34
    const-string p1, "application/vnd.google-earth.kml+xml"

    return-object p1

    :pswitch_35
    const-string p1, "application/x-bittorrent"

    return-object p1

    :pswitch_36
    const-string/jumbo p1, "video/3gpp"

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x43c766f0 -> :sswitch_44
        0x63 -> :sswitch_43
        0x68 -> :sswitch_42
        0x7a -> :sswitch_41
        0xcf3 -> :sswitch_40
        0xd49 -> :sswitch_3f
        0xe31 -> :sswitch_3e
        0xe55 -> :sswitch_3d
        0xcc5c -> :sswitch_3c
        0x17a1c -> :sswitch_3b
        0x17a74 -> :sswitch_3a
        0x17ad4 -> :sswitch_39
        0x17d07 -> :sswitch_38
        0x17d85 -> :sswitch_37
        0x181a3 -> :sswitch_36
        0x18206 -> :sswitch_35
        0x18538 -> :sswitch_34
        0x18a12 -> :sswitch_33
        0x18fc4 -> :sswitch_32
        0x190af -> :sswitch_31
        0x194e1 -> :sswitch_30
        0x19a1b -> :sswitch_2f
        0x19be1 -> :sswitch_2e
        0x19f4a -> :sswitch_2d
        0x19fcf -> :sswitch_2c
        0x19fda -> :sswitch_2b
        0x19fdb -> :sswitch_2a
        0x19fe9 -> :sswitch_29
        0x19fee -> :sswitch_28
        0x19fef -> :sswitch_27
        0x1a344 -> :sswitch_26
        0x1a6ef -> :sswitch_25
        0x1a6f0 -> :sswitch_24
        0x1a6f1 -> :sswitch_23
        0x1a714 -> :sswitch_22
        0x1a720 -> :sswitch_21
        0x1a722 -> :sswitch_20
        0x1a724 -> :sswitch_1f
        0x1a781 -> :sswitch_1e
        0x1ad8f -> :sswitch_1d
        0x1b0f2 -> :sswitch_1c
        0x1b229 -> :sswitch_1b
        0x1b273 -> :sswitch_1a
        0x1b274 -> :sswitch_19
        0x1ba64 -> :sswitch_18
        0x1bfa5 -> :sswitch_17
        0x1c067 -> :sswitch_16
        0x1c270 -> :sswitch_15
        0x1caec -> :sswitch_14
        0x1cc4b -> :sswitch_13
        0x1cc60 -> :sswitch_12
        0x1ccba -> :sswitch_11
        0x1cfff -> :sswitch_10
        0x1d017 -> :sswitch_f
        0x1d721 -> :sswitch_e
        0x2eaf24 -> :sswitch_d
        0x2f2240 -> :sswitch_c
        0x3091de -> :sswitch_b
        0x3107ab -> :sswitch_a
        0x31aa22 -> :sswitch_9
        0x31e068 -> :sswitch_8
        0x333d85 -> :sswitch_7
        0x333d90 -> :sswitch_6
        0x333dbd -> :sswitch_5
        0x349c84 -> :sswitch_4
        0x34a363 -> :sswitch_3
        0x357a27 -> :sswitch_2
        0x383059 -> :sswitch_1
        0x5a5a978 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private hasPermission(Ljava/lang/String;)Z
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/crazecoder/openfile/OpenFilePlugin;->activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private openApkFile()V
    .locals 3

    .line 316
    invoke-direct {p0}, Lcom/crazecoder/openfile/OpenFilePlugin;->canInstallApk()Z

    move-result v0

    if-nez v0, :cond_1

    .line 317
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 318
    invoke-direct {p0}, Lcom/crazecoder/openfile/OpenFilePlugin;->startInstallPermissionSettingActivity()V

    goto :goto_0

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/crazecoder/openfile/OpenFilePlugin;->activity:Landroid/app/Activity;

    const-string v1, "android.permission.REQUEST_INSTALL_PACKAGES"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const v2, 0x8298

    invoke-static {v0, v1, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 324
    :cond_1
    invoke-direct {p0}, Lcom/crazecoder/openfile/OpenFilePlugin;->startActivity()V

    :goto_0
    return-void
.end method

.method private pathRequiresPermission()Z
    .locals 4

    .line 115
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    .line 120
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/crazecoder/openfile/OpenFilePlugin;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 121
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/crazecoder/openfile/OpenFilePlugin;->filePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    .line 122
    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr v0, v1

    return v0

    :catch_0
    move-exception v1

    .line 124
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    return v0
.end method

.method public static registerWith(Lio/flutter/plugin/common/PluginRegistry$Registrar;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 69
    new-instance v0, Lcom/crazecoder/openfile/OpenFilePlugin;

    invoke-direct {v0}, Lcom/crazecoder/openfile/OpenFilePlugin;-><init>()V

    .line 70
    invoke-interface {p0}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->activity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, v0, Lcom/crazecoder/openfile/OpenFilePlugin;->activity:Landroid/app/Activity;

    .line 71
    invoke-interface {p0}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->context()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lcom/crazecoder/openfile/OpenFilePlugin;->context:Landroid/content/Context;

    .line 72
    new-instance v1, Lio/flutter/plugin/common/MethodChannel;

    invoke-interface {p0}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->messenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v2

    const-string v3, "open_file"

    invoke-direct {v1, v2, v3}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/crazecoder/openfile/OpenFilePlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    .line 73
    iget-object v1, v0, Lcom/crazecoder/openfile/OpenFilePlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    invoke-virtual {v1, v0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 74
    invoke-interface {p0, v0}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->addRequestPermissionsResultListener(Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;)Lio/flutter/plugin/common/PluginRegistry$Registrar;

    .line 75
    invoke-interface {p0, v0}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->addActivityResultListener(Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;)Lio/flutter/plugin/common/PluginRegistry$Registrar;

    return-void
.end method

.method private result(ILjava/lang/String;)V
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/crazecoder/openfile/OpenFilePlugin;->result:Lio/flutter/plugin/common/MethodChannel$Result;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/crazecoder/openfile/OpenFilePlugin;->isResultSubmitted:Z

    if-nez v0, :cond_0

    .line 381
    invoke-static {p1, p2}, Lcom/crazecoder/openfile/utils/MapUtil;->createMap(ILjava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 382
    iget-object p2, p0, Lcom/crazecoder/openfile/OpenFilePlugin;->result:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-static {p1}, Lcom/crazecoder/openfile/utils/JsonUtil;->toJson(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 383
    iput-boolean p1, p0, Lcom/crazecoder/openfile/OpenFilePlugin;->isResultSubmitted:Z

    :cond_0
    return-void
.end method

.method private startActivity()V
    .locals 6

    .line 131
    iget-object v0, p0, Lcom/crazecoder/openfile/OpenFilePlugin;->filePath:Ljava/lang/String;

    const/4 v1, -0x4

    if-nez v0, :cond_0

    const-string v0, "the file path cannot be null"

    .line 132
    invoke-direct {p0, v1, v0}, Lcom/crazecoder/openfile/OpenFilePlugin;->result(ILjava/lang/String;)V

    return-void

    .line 135
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, -0x2

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/crazecoder/openfile/OpenFilePlugin;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " file does not exists"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/crazecoder/openfile/OpenFilePlugin;->result(ILjava/lang/String;)V

    return-void

    .line 141
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 142
    iget-object v3, p0, Lcom/crazecoder/openfile/OpenFilePlugin;->typeString:Ljava/lang/String;

    const-string v4, "application/vnd.android.package-archive"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/high16 v3, 0x10000000

    .line 143
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    const/high16 v3, 0x20000000

    .line 145
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :goto_0
    const-string v3, "android.intent.category.DEFAULT"

    .line 146
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_3

    const/4 v2, 0x1

    .line 148
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 149
    iget-object v2, p0, Lcom/crazecoder/openfile/OpenFilePlugin;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 150
    iget-object v3, p0, Lcom/crazecoder/openfile/OpenFilePlugin;->context:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".fileProvider.com.crazecoder.openfile"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/crazecoder/openfile/OpenFilePlugin;->filePath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v2, v4}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 151
    iget-object v3, p0, Lcom/crazecoder/openfile/OpenFilePlugin;->typeString:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 153
    :cond_3
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/crazecoder/openfile/OpenFilePlugin;->typeString:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    const/4 v2, 0x0

    .line 158
    :try_start_0
    iget-object v3, p0, Lcom/crazecoder/openfile/OpenFilePlugin;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "done"

    move v1, v2

    goto :goto_2

    :catch_0
    const-string v0, "File opened incorrectly\u3002"

    goto :goto_2

    :catch_1
    const/4 v1, -0x1

    const-string v0, "No APP found to open this file\u3002"

    .line 166
    :goto_2
    invoke-direct {p0, v1, v0}, Lcom/crazecoder/openfile/OpenFilePlugin;->result(ILjava/lang/String;)V

    return-void
.end method

.method private startInstallPermissionSettingActivity()V
    .locals 3

    .line 338
    iget-object v0, p0, Lcom/crazecoder/openfile/OpenFilePlugin;->activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 341
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/crazecoder/openfile/OpenFilePlugin;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 342
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.MANAGE_UNKNOWN_APP_SOURCES"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 343
    iget-object v0, p0, Lcom/crazecoder/openfile/OpenFilePlugin;->activity:Landroid/app/Activity;

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 0

    const/16 p2, 0x12

    if-ne p1, p2, :cond_1

    .line 369
    invoke-direct {p0}, Lcom/crazecoder/openfile/OpenFilePlugin;->canInstallApk()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 370
    invoke-direct {p0}, Lcom/crazecoder/openfile/OpenFilePlugin;->startActivity()V

    goto :goto_0

    :cond_0
    const/4 p1, -0x3

    const-string p2, "Permission denied: android.permission.REQUEST_INSTALL_PACKAGES"

    .line 373
    invoke-direct {p0, p1, p2}, Lcom/crazecoder/openfile/OpenFilePlugin;->result(ILjava/lang/String;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 3

    .line 398
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    iget-object v1, p0, Lcom/crazecoder/openfile/OpenFilePlugin;->flutterPluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    .line 400
    invoke-virtual {v1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v1

    const-string v2, "open_file"

    invoke-direct {v0, v1, v2}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/crazecoder/openfile/OpenFilePlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    .line 401
    iget-object v0, p0, Lcom/crazecoder/openfile/OpenFilePlugin;->flutterPluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/crazecoder/openfile/OpenFilePlugin;->context:Landroid/content/Context;

    .line 402
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/crazecoder/openfile/OpenFilePlugin;->activity:Landroid/app/Activity;

    .line 403
    iget-object v0, p0, Lcom/crazecoder/openfile/OpenFilePlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    invoke-virtual {v0, p0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 404
    invoke-interface {p1, p0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->addRequestPermissionsResultListener(Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;)V

    .line 405
    invoke-interface {p1, p0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->addActivityResultListener(Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;)V

    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 0

    .line 389
    iput-object p1, p0, Lcom/crazecoder/openfile/OpenFilePlugin;->flutterPluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 2

    .line 420
    iget-object v0, p0, Lcom/crazecoder/openfile/OpenFilePlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 425
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 426
    iput-object v1, p0, Lcom/crazecoder/openfile/OpenFilePlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    .line 427
    iput-object v1, p0, Lcom/crazecoder/openfile/OpenFilePlugin;->flutterPluginBinding:Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 0

    .line 410
    invoke-virtual {p0}, Lcom/crazecoder/openfile/OpenFilePlugin;->onDetachedFromActivity()V

    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 0

    return-void
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lcom/crazecoder/openfile/OpenFilePlugin;->isResultSubmitted:Z

    .line 86
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    const-string v1, "open_file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "file_path"

    .line 87
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/crazecoder/openfile/OpenFilePlugin;->filePath:Ljava/lang/String;

    .line 88
    iput-object p2, p0, Lcom/crazecoder/openfile/OpenFilePlugin;->result:Lio/flutter/plugin/common/MethodChannel$Result;

    const-string/jumbo p2, "type"

    .line 90
    invoke-virtual {p1, p2}, Lio/flutter/plugin/common/MethodCall;->hasArgument(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p1, p2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/crazecoder/openfile/OpenFilePlugin;->typeString:Ljava/lang/String;

    goto :goto_0

    .line 93
    :cond_0
    iget-object p1, p0, Lcom/crazecoder/openfile/OpenFilePlugin;->filePath:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/crazecoder/openfile/OpenFilePlugin;->getFileType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/crazecoder/openfile/OpenFilePlugin;->typeString:Ljava/lang/String;

    .line 95
    :goto_0
    invoke-direct {p0}, Lcom/crazecoder/openfile/OpenFilePlugin;->pathRequiresPermission()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 96
    invoke-direct {p0, p1}, Lcom/crazecoder/openfile/OpenFilePlugin;->hasPermission(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 97
    iget-object p1, p0, Lcom/crazecoder/openfile/OpenFilePlugin;->typeString:Ljava/lang/String;

    const-string p2, "application/vnd.android.package-archive"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 98
    invoke-direct {p0}, Lcom/crazecoder/openfile/OpenFilePlugin;->openApkFile()V

    return-void

    .line 101
    :cond_1
    invoke-direct {p0}, Lcom/crazecoder/openfile/OpenFilePlugin;->startActivity()V

    goto :goto_1

    .line 103
    :cond_2
    iget-object p2, p0, Lcom/crazecoder/openfile/OpenFilePlugin;->activity:Landroid/app/Activity;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const v0, 0x8298

    invoke-static {p2, p1, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_1

    .line 106
    :cond_3
    invoke-direct {p0}, Lcom/crazecoder/openfile/OpenFilePlugin;->startActivity()V

    goto :goto_1

    .line 109
    :cond_4
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    const/4 p1, 0x1

    .line 110
    iput-boolean p1, p0, Lcom/crazecoder/openfile/OpenFilePlugin;->isResultSubmitted:Z

    :goto_1
    return-void
.end method

.method public onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 0

    .line 415
    invoke-virtual {p0, p1}, Lcom/crazecoder/openfile/OpenFilePlugin;->onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)Z
    .locals 3

    const/4 p3, 0x0

    const v0, 0x8298

    if-eq p1, v0, :cond_0

    return p3

    :cond_0
    const-string p1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 350
    invoke-direct {p0, p1}, Lcom/crazecoder/openfile/OpenFilePlugin;->hasPermission(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/crazecoder/openfile/OpenFilePlugin;->typeString:Ljava/lang/String;

    const-string v0, "application/vnd.android.package-archive"

    .line 351
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 352
    invoke-direct {p0}, Lcom/crazecoder/openfile/OpenFilePlugin;->openApkFile()V

    return p3

    .line 355
    :cond_1
    array-length p1, p2

    move v0, p3

    :goto_0
    if-ge v0, p1, :cond_3

    aget-object v1, p2, v0

    .line 356
    invoke-direct {p0, v1}, Lcom/crazecoder/openfile/OpenFilePlugin;->hasPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 p1, -0x3

    .line 357
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Permission denied: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/crazecoder/openfile/OpenFilePlugin;->result(ILjava/lang/String;)V

    return p3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 361
    :cond_3
    invoke-direct {p0}, Lcom/crazecoder/openfile/OpenFilePlugin;->startActivity()V

    const/4 p1, 0x1

    return p1
.end method
