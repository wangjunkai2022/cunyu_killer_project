.class public Lcom/netease/nis/captcha/c;
.super Ljava/lang/Object;
.source "CaptchaUtil.java"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 5

    .line 4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const-string v3, "pt"

    const-string v4, "es"

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "mai"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x48

    goto/16 :goto_1

    :sswitch_1
    const-string v2, "zh"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x47

    goto/16 :goto_1

    :sswitch_2
    const-string v2, "vi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x46

    goto/16 :goto_1

    :sswitch_3
    const-string v2, "uz"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x45

    goto/16 :goto_1

    :sswitch_4
    const-string v2, "ur"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x44

    goto/16 :goto_1

    :sswitch_5
    const-string v2, "uk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x43

    goto/16 :goto_1

    :sswitch_6
    const-string v2, "ug"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0x42

    goto/16 :goto_1

    :sswitch_7
    const-string v2, "tr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0x41

    goto/16 :goto_1

    :sswitch_8
    const-string v2, "tl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0x40

    goto/16 :goto_1

    :sswitch_9
    const-string v2, "th"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0x3f

    goto/16 :goto_1

    :sswitch_a
    const-string v2, "te"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0x3e

    goto/16 :goto_1

    :sswitch_b
    const-string v2, "ta"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0x3d

    goto/16 :goto_1

    :sswitch_c
    const-string v2, "sw"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0x3c

    goto/16 :goto_1

    :sswitch_d
    const-string v2, "sv"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v1, 0x3b

    goto/16 :goto_1

    :sswitch_e
    const-string v2, "sr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v1, 0x3a

    goto/16 :goto_1

    :sswitch_f
    const-string v2, "sl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v1, 0x39

    goto/16 :goto_1

    :sswitch_10
    const-string v2, "sk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v1, 0x38

    goto/16 :goto_1

    :sswitch_11
    const-string v2, "si"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v1, 0x37

    goto/16 :goto_1

    :sswitch_12
    const-string v2, "ru"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v1, 0x36

    goto/16 :goto_1

    :sswitch_13
    const-string v2, "ro"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v1, 0x35

    goto/16 :goto_1

    :sswitch_14
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v1, 0x34

    goto/16 :goto_1

    :sswitch_15
    const-string v2, "pl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v1, 0x33

    goto/16 :goto_1

    :sswitch_16
    const-string v2, "pa"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v1, 0x32

    goto/16 :goto_1

    :sswitch_17
    const-string v2, "or"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v1, 0x31

    goto/16 :goto_1

    :sswitch_18
    const-string v2, "nl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v1, 0x30

    goto/16 :goto_1

    :sswitch_19
    const-string v2, "ne"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v1, 0x2f

    goto/16 :goto_1

    :sswitch_1a
    const-string v2, "nb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v1, 0x2e

    goto/16 :goto_1

    :sswitch_1b
    const-string v2, "my"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v1, 0x2d

    goto/16 :goto_1

    :sswitch_1c
    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/16 v1, 0x2c

    goto/16 :goto_1

    :sswitch_1d
    const-string v2, "mr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    goto/16 :goto_0

    :cond_1d
    const/16 v1, 0x2b

    goto/16 :goto_1

    :sswitch_1e
    const-string v2, "mn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    goto/16 :goto_0

    :cond_1e
    const/16 v1, 0x2a

    goto/16 :goto_1

    :sswitch_1f
    const-string v2, "ml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    goto/16 :goto_0

    :cond_1f
    const/16 v1, 0x29

    goto/16 :goto_1

    :sswitch_20
    const-string v2, "mk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    goto/16 :goto_0

    :cond_20
    const/16 v1, 0x28

    goto/16 :goto_1

    :sswitch_21
    const-string v2, "mi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    goto/16 :goto_0

    :cond_21
    const/16 v1, 0x27

    goto/16 :goto_1

    :sswitch_22
    const-string v2, "lv"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    goto/16 :goto_0

    :cond_22
    const/16 v1, 0x26

    goto/16 :goto_1

    :sswitch_23
    const-string v2, "lt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    goto/16 :goto_0

    :cond_23
    const/16 v1, 0x25

    goto/16 :goto_1

    :sswitch_24
    const-string v2, "lo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    goto/16 :goto_0

    :cond_24
    const/16 v1, 0x24

    goto/16 :goto_1

    :sswitch_25
    const-string v2, "ko"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    goto/16 :goto_0

    :cond_25
    const/16 v1, 0x23

    goto/16 :goto_1

    :sswitch_26
    const-string v2, "kn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    goto/16 :goto_0

    :cond_26
    const/16 v1, 0x22

    goto/16 :goto_1

    :sswitch_27
    const-string v2, "km"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    goto/16 :goto_0

    :cond_27
    const/16 v1, 0x21

    goto/16 :goto_1

    :sswitch_28
    const-string v2, "kk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    goto/16 :goto_0

    :cond_28
    const/16 v1, 0x20

    goto/16 :goto_1

    :sswitch_29
    const-string v2, "ka"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    goto/16 :goto_0

    :cond_29
    const/16 v1, 0x1f

    goto/16 :goto_1

    :sswitch_2a
    const-string v2, "jv"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    goto/16 :goto_0

    :cond_2a
    const/16 v1, 0x1e

    goto/16 :goto_1

    :sswitch_2b
    const-string v2, "ja"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    goto/16 :goto_0

    :cond_2b
    const/16 v1, 0x1d

    goto/16 :goto_1

    :sswitch_2c
    const-string v2, "iw"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    goto/16 :goto_0

    :cond_2c
    const/16 v1, 0x1c

    goto/16 :goto_1

    :sswitch_2d
    const-string v2, "it"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    goto/16 :goto_0

    :cond_2d
    const/16 v1, 0x1b

    goto/16 :goto_1

    :sswitch_2e
    const-string v2, "in"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    goto/16 :goto_0

    :cond_2e
    const/16 v1, 0x1a

    goto/16 :goto_1

    :sswitch_2f
    const-string v2, "hu"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    goto/16 :goto_0

    :cond_2f
    const/16 v1, 0x19

    goto/16 :goto_1

    :sswitch_30
    const-string v2, "hr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    goto/16 :goto_0

    :cond_30
    const/16 v1, 0x18

    goto/16 :goto_1

    :sswitch_31
    const-string v2, "hi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    goto/16 :goto_0

    :cond_31
    const/16 v1, 0x17

    goto/16 :goto_1

    :sswitch_32
    const-string v2, "gu"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    goto/16 :goto_0

    :cond_32
    const/16 v1, 0x16

    goto/16 :goto_1

    :sswitch_33
    const-string v2, "gl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    goto/16 :goto_0

    :cond_33
    const/16 v1, 0x15

    goto/16 :goto_1

    :sswitch_34
    const-string v2, "fr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    goto/16 :goto_0

    :cond_34
    const/16 v1, 0x14

    goto/16 :goto_1

    :sswitch_35
    const-string v2, "fi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    goto/16 :goto_0

    :cond_35
    const/16 v1, 0x13

    goto/16 :goto_1

    :sswitch_36
    const-string v2, "fa"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    goto/16 :goto_0

    :cond_36
    const/16 v1, 0x12

    goto/16 :goto_1

    :sswitch_37
    const-string v2, "eu"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    goto/16 :goto_0

    :cond_37
    const/16 v1, 0x11

    goto/16 :goto_1

    :sswitch_38
    const-string v2, "et"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    goto/16 :goto_0

    :cond_38
    const/16 v1, 0x10

    goto/16 :goto_1

    :sswitch_39
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    goto/16 :goto_0

    :cond_39
    const/16 v1, 0xf

    goto/16 :goto_1

    :sswitch_3a
    const-string v2, "en"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    goto/16 :goto_0

    :cond_3a
    const/16 v1, 0xe

    goto/16 :goto_1

    :sswitch_3b
    const-string v2, "el"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    goto/16 :goto_0

    :cond_3b
    const/16 v1, 0xd

    goto/16 :goto_1

    :sswitch_3c
    const-string v2, "de"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    goto/16 :goto_0

    :cond_3c
    const/16 v1, 0xc

    goto/16 :goto_1

    :sswitch_3d
    const-string v2, "da"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    goto/16 :goto_0

    :cond_3d
    const/16 v1, 0xb

    goto/16 :goto_1

    :sswitch_3e
    const-string v2, "cs"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    goto/16 :goto_0

    :cond_3e
    const/16 v1, 0xa

    goto/16 :goto_1

    :sswitch_3f
    const-string v2, "ca"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    goto/16 :goto_0

    :cond_3f
    const/16 v1, 0x9

    goto/16 :goto_1

    :sswitch_40
    const-string v2, "bs"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_40

    goto/16 :goto_0

    :cond_40
    const/16 v1, 0x8

    goto/16 :goto_1

    :sswitch_41
    const-string v2, "bo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_41

    goto :goto_0

    :cond_41
    const/4 v1, 0x7

    goto :goto_1

    :sswitch_42
    const-string v2, "bn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    goto :goto_0

    :cond_42
    const/4 v1, 0x6

    goto :goto_1

    :sswitch_43
    const-string v2, "bg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    goto :goto_0

    :cond_43
    const/4 v1, 0x5

    goto :goto_1

    :sswitch_44
    const-string v2, "be"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44

    goto :goto_0

    :cond_44
    const/4 v1, 0x4

    goto :goto_1

    :sswitch_45
    const-string v2, "az"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    goto :goto_0

    :cond_45
    const/4 v1, 0x3

    goto :goto_1

    :sswitch_46
    const-string v2, "as"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    goto :goto_0

    :cond_46
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_47
    const-string v2, "ar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_47

    goto :goto_0

    :cond_47
    const/4 v1, 0x1

    goto :goto_1

    :sswitch_48
    const-string v2, "am"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    goto :goto_0

    :cond_48
    const/4 v1, 0x0

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    const-string v2, "US"

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 9
    :pswitch_0
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HK"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_49

    const-string v3, "zh-HK"

    goto :goto_3

    :cond_49
    const-string v1, "TW"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4c

    const-string v3, "zh-TW"

    goto :goto_3

    :pswitch_1
    const-string v3, "fil"

    goto :goto_3

    .line 29
    :pswitch_2
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BR"

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4d

    const-string v3, "pt-br"

    goto :goto_3

    :pswitch_3
    const-string v3, "no"

    goto :goto_3

    :pswitch_4
    const-string v3, "he"

    goto :goto_3

    :pswitch_5
    const-string v3, "id"

    goto :goto_3

    .line 38
    :pswitch_6
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    const-string v3, "es-la"

    goto :goto_3

    :cond_4a
    move-object v3, v4

    goto :goto_3

    .line 40
    :pswitch_7
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    const-string v3, "en-US"

    goto :goto_3

    :cond_4b
    const-string v3, "en-GB"

    goto :goto_3

    .line 143
    :pswitch_8
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_4c
    :goto_2
    const-string v3, "zh-CN"

    :cond_4d
    :goto_3
    return-object v3

    nop

    :sswitch_data_0
    .sparse-switch
        0xc2c -> :sswitch_48
        0xc31 -> :sswitch_47
        0xc32 -> :sswitch_46
        0xc39 -> :sswitch_45
        0xc43 -> :sswitch_44
        0xc45 -> :sswitch_43
        0xc4c -> :sswitch_42
        0xc4d -> :sswitch_41
        0xc51 -> :sswitch_40
        0xc5e -> :sswitch_3f
        0xc70 -> :sswitch_3e
        0xc7d -> :sswitch_3d
        0xc81 -> :sswitch_3c
        0xca7 -> :sswitch_3b
        0xca9 -> :sswitch_3a
        0xcae -> :sswitch_39
        0xcaf -> :sswitch_38
        0xcb0 -> :sswitch_37
        0xcbb -> :sswitch_36
        0xcc3 -> :sswitch_35
        0xccc -> :sswitch_34
        0xce5 -> :sswitch_33
        0xcee -> :sswitch_32
        0xd01 -> :sswitch_31
        0xd0a -> :sswitch_30
        0xd0d -> :sswitch_2f
        0xd25 -> :sswitch_2e
        0xd2b -> :sswitch_2d
        0xd2e -> :sswitch_2c
        0xd37 -> :sswitch_2b
        0xd4c -> :sswitch_2a
        0xd56 -> :sswitch_29
        0xd60 -> :sswitch_28
        0xd62 -> :sswitch_27
        0xd63 -> :sswitch_26
        0xd64 -> :sswitch_25
        0xd83 -> :sswitch_24
        0xd88 -> :sswitch_23
        0xd8a -> :sswitch_22
        0xd9c -> :sswitch_21
        0xd9e -> :sswitch_20
        0xd9f -> :sswitch_1f
        0xda1 -> :sswitch_1e
        0xda5 -> :sswitch_1d
        0xda6 -> :sswitch_1c
        0xdac -> :sswitch_1b
        0xdb4 -> :sswitch_1a
        0xdb7 -> :sswitch_19
        0xdbe -> :sswitch_18
        0xde3 -> :sswitch_17
        0xdf1 -> :sswitch_16
        0xdfc -> :sswitch_15
        0xe04 -> :sswitch_14
        0xe3d -> :sswitch_13
        0xe43 -> :sswitch_12
        0xe56 -> :sswitch_11
        0xe58 -> :sswitch_10
        0xe59 -> :sswitch_f
        0xe5f -> :sswitch_e
        0xe63 -> :sswitch_d
        0xe64 -> :sswitch_c
        0xe6d -> :sswitch_b
        0xe71 -> :sswitch_a
        0xe74 -> :sswitch_9
        0xe78 -> :sswitch_8
        0xe7e -> :sswitch_7
        0xe92 -> :sswitch_6
        0xe96 -> :sswitch_5
        0xe9d -> :sswitch_4
        0xea5 -> :sswitch_3
        0xeb3 -> :sswitch_2
        0xf2e -> :sswitch_1
        0x1a555 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_5
        :pswitch_8
        :pswitch_4
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_3
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_2
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_1
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method public static a(I)Ljava/lang/String;
    .locals 3

    .line 3696
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v1, p0, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 3690
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    if-eqz p0, :cond_0

    .line 3692
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object p0

    .line 3693
    iget v0, p0, Landroid/net/DhcpInfo;->dns1:I

    invoke-static {v0}, Lcom/netease/nis/captcha/c;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 3694
    iget p0, p0, Landroid/net/DhcpInfo;->dns2:I

    invoke-static {p0}, Lcom/netease/nis/captcha/c;->a(I)Ljava/lang/String;

    move-result-object p0

    .line 3695
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dns1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " dns2:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;)Ljava/lang/String;
    .locals 1

    .line 144
    sget-object v0, Lcom/netease/nis/captcha/c$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const-string p0, ""

    goto/16 :goto_0

    :pswitch_0
    const-string p0, "zh-TW"

    goto/16 :goto_0

    :pswitch_1
    const-string p0, "zh-HK"

    goto/16 :goto_0

    :pswitch_2
    const-string p0, "zh-CN"

    goto/16 :goto_0

    :pswitch_3
    const-string p0, "vi"

    goto/16 :goto_0

    :pswitch_4
    const-string p0, "uz"

    goto/16 :goto_0

    :pswitch_5
    const-string p0, "ur"

    goto/16 :goto_0

    :pswitch_6
    const-string p0, "uk"

    goto/16 :goto_0

    :pswitch_7
    const-string p0, "ug"

    goto/16 :goto_0

    :pswitch_8
    const-string p0, "tr"

    goto/16 :goto_0

    :pswitch_9
    const-string p0, "fil"

    goto/16 :goto_0

    :pswitch_a
    const-string p0, "th"

    goto/16 :goto_0

    :pswitch_b
    const-string p0, "te"

    goto/16 :goto_0

    :pswitch_c
    const-string p0, "ta"

    goto/16 :goto_0

    :pswitch_d
    const-string p0, "sw"

    goto/16 :goto_0

    :pswitch_e
    const-string p0, "sv"

    goto/16 :goto_0

    :pswitch_f
    const-string p0, "sr"

    goto/16 :goto_0

    :pswitch_10
    const-string p0, "sl"

    goto/16 :goto_0

    :pswitch_11
    const-string p0, "sk"

    goto/16 :goto_0

    :pswitch_12
    const-string p0, "si"

    goto/16 :goto_0

    :pswitch_13
    const-string p0, "ru"

    goto/16 :goto_0

    :pswitch_14
    const-string p0, "ro"

    goto/16 :goto_0

    :pswitch_15
    const-string p0, "pt-br"

    goto/16 :goto_0

    :pswitch_16
    const-string p0, "pt"

    goto/16 :goto_0

    :pswitch_17
    const-string p0, "pl"

    goto/16 :goto_0

    :pswitch_18
    const-string p0, "pa"

    goto/16 :goto_0

    :pswitch_19
    const-string p0, "or"

    goto/16 :goto_0

    :pswitch_1a
    const-string p0, "nl"

    goto/16 :goto_0

    :pswitch_1b
    const-string p0, "ne"

    goto/16 :goto_0

    :pswitch_1c
    const-string p0, "no"

    goto/16 :goto_0

    :pswitch_1d
    const-string p0, "my"

    goto/16 :goto_0

    :pswitch_1e
    const-string p0, "ms"

    goto/16 :goto_0

    :pswitch_1f
    const-string p0, "mr"

    goto/16 :goto_0

    :pswitch_20
    const-string p0, "mn"

    goto/16 :goto_0

    :pswitch_21
    const-string p0, "ml"

    goto/16 :goto_0

    :pswitch_22
    const-string p0, "mk"

    goto/16 :goto_0

    :pswitch_23
    const-string p0, "mi"

    goto/16 :goto_0

    :pswitch_24
    const-string p0, "mai"

    goto/16 :goto_0

    :pswitch_25
    const-string p0, "lv"

    goto/16 :goto_0

    :pswitch_26
    const-string p0, "lt"

    goto/16 :goto_0

    :pswitch_27
    const-string p0, "lo"

    goto/16 :goto_0

    :pswitch_28
    const-string p0, "ko"

    goto/16 :goto_0

    :pswitch_29
    const-string p0, "kn"

    goto/16 :goto_0

    :pswitch_2a
    const-string p0, "km"

    goto/16 :goto_0

    :pswitch_2b
    const-string p0, "kk"

    goto/16 :goto_0

    :pswitch_2c
    const-string p0, "ka"

    goto/16 :goto_0

    :pswitch_2d
    const-string p0, "jv"

    goto/16 :goto_0

    :pswitch_2e
    const-string p0, "ja"

    goto/16 :goto_0

    :pswitch_2f
    const-string p0, "he"

    goto/16 :goto_0

    :pswitch_30
    const-string p0, "it"

    goto/16 :goto_0

    :pswitch_31
    const-string p0, "id"

    goto/16 :goto_0

    :pswitch_32
    const-string p0, "hu"

    goto/16 :goto_0

    :pswitch_33
    const-string p0, "hr"

    goto/16 :goto_0

    :pswitch_34
    const-string p0, "hi"

    goto :goto_0

    :pswitch_35
    const-string p0, "gu"

    goto :goto_0

    :pswitch_36
    const-string p0, "gl"

    goto :goto_0

    :pswitch_37
    const-string p0, "fr"

    goto :goto_0

    :pswitch_38
    const-string p0, "fi"

    goto :goto_0

    :pswitch_39
    const-string p0, "fa"

    goto :goto_0

    :pswitch_3a
    const-string p0, "eu"

    goto :goto_0

    :pswitch_3b
    const-string p0, "et"

    goto :goto_0

    :pswitch_3c
    const-string p0, "es-la"

    goto :goto_0

    :pswitch_3d
    const-string p0, "es"

    goto :goto_0

    :pswitch_3e
    const-string p0, "en-US"

    goto :goto_0

    :pswitch_3f
    const-string p0, "en-GB"

    goto :goto_0

    :pswitch_40
    const-string p0, "el"

    goto :goto_0

    :pswitch_41
    const-string p0, "de"

    goto :goto_0

    :pswitch_42
    const-string p0, "da"

    goto :goto_0

    :pswitch_43
    const-string p0, "cs"

    goto :goto_0

    :pswitch_44
    const-string p0, "ca"

    goto :goto_0

    :pswitch_45
    const-string p0, "bs"

    goto :goto_0

    :pswitch_46
    const-string p0, "bo"

    goto :goto_0

    :pswitch_47
    const-string p0, "bn"

    goto :goto_0

    :pswitch_48
    const-string p0, "bg"

    goto :goto_0

    :pswitch_49
    const-string p0, "be"

    goto :goto_0

    :pswitch_4a
    const-string p0, "az"

    goto :goto_0

    :pswitch_4b
    const-string p0, "as"

    goto :goto_0

    :pswitch_4c
    const-string p0, "ar"

    goto :goto_0

    :pswitch_4d
    const-string p0, "am"

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
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

.method public static a(Landroid/content/Context;Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;)V
    .locals 2

    .line 145
    sget-object v0, Lcom/netease/nis/captcha/c$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const-string v0, "pt"

    const-string v1, "es"

    packed-switch p1, :pswitch_data_0

    .line 456
    sget-object p1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    goto/16 :goto_0

    .line 457
    :pswitch_0
    sget-object p1, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    goto/16 :goto_0

    .line 461
    :pswitch_1
    new-instance p1, Ljava/util/Locale;

    const-string v0, "zh"

    const-string v1, "HK"

    invoke-direct {p1, v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 465
    :pswitch_2
    sget-object p1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    goto/16 :goto_0

    .line 489
    :pswitch_3
    new-instance p1, Ljava/util/Locale;

    const-string v0, "vi"

    invoke-direct {p1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 686
    :pswitch_4
    new-instance p1, Ljava/util/Locale;

    const-string v0, "uz"

    invoke-direct {p1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 698
    :pswitch_5
    new-instance p1, Ljava/util/Locale;

    const-string v0, "ur"

    invoke-direct {p1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 699
    :pswitch_6
    new-instance p1, Ljava/util/Locale;

    const-string v0, "uk"

    invoke-direct {p1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 700
    :pswitch_7
    new-instance p1, Ljava/util/Locale;

    const-string v0, "ug"

    invoke-direct {p1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 701
    :pswitch_8
    new-instance p1, Ljava/util/Locale;

    const-string v0, "tr"

    invoke-direct {p1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 869
    :pswitch_9
    new-instance p1, Ljava/util/Locale;

    const-string v0, "tl"

    invoke-direct {p1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 870
    :pswitch_a
    new-instance p1, Ljava/util/Locale;

    const-string v0, "th"

    invoke-direct {p1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1127
    :pswitch_b
    new-instance p1, Ljava/util/Locale;

    const-string v0, "te"

    invoke-direct {p1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1135
    :pswitch_c
    new-instance p1, Ljava/util/Locale;

    const-string v0, "ta"

    invoke-direct {p1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1136
    :pswitch_d
    new-instance p1, Ljava/util/Locale;

    const-string v0, "sw"

    invoke-direct {p1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1137
    :pswitch_e
    new-instance p1, Ljava/util/Locale;

    const-string v0, "sv"

    invoke-direct {p1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1169
    :pswitch_f
    new-instance p1, Ljava/util/Locale;

    const-string v0, "sr"

    invoke-direct {p1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1201
    :pswitch_10
    new-instance p1, Ljava/util/Locale;

    const-string v0, "sl"

    invoke-direct {p1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1202
    :pswitch_11
    new-instance p1, Ljava/util/Locale;

    const-string v0, "sk"

    invoke-direct {p1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1294
    :pswitch_12
    new-instance p1, Ljava/util/Locale;

    const-string v0, "si"

    invoke-direct {p1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1295
    :pswitch_13
    new-instance p1, Ljava/util/Locale;

    const-string v0, "ru"

    invoke-direct {p1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1405
    :pswitch_14
    new-instance p1, Ljava/util/Locale;

    const-string v0, "ro"

    invoke-direct {p1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1406
    :pswitch_15
    new-instance p1, Ljava/util/Locale;

    const-string v1, "BR"

    invoke-direct {p1, v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1407
    :pswitch_16
    new-instance p1, Ljava/util/Locale;

    invoke-direct {p1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1408
    :pswitch_17
    new-instance p1, Ljava/util/Locale;

    const-string v0, "pl"

    invoke-direct {p1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1440
    :pswitch_18
    new-instance p1, Ljava/util/Locale;

    const-string v0, "pa"

    invoke-direct {p1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1441
    :pswitch_19
    new-instance p1, Ljava/util/Locale;

    const-string v0, "or"

    invoke-direct {p1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1545
    :pswitch_1a
    new-instance p1, Ljava/util/Locale;

    const-string v0, "nl"

    invoke-direct {p1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1609
    :pswitch_1b
    new-instance p1, Ljava/util/Locale;

    const-string v0, "ne"

    invoke-direct {p1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1610
    :pswitch_1c
    new-instance p1, Ljava/util/Locale;

    const-string v0, "nb"

    invoke-direct {p1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1611
    :pswitch_1d
    new-instance p1, Ljava/util/Locale;

    const-string v0, "my"

    invoke-direct {p1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1619
    :pswitch_1e
    new-instance p1, Ljava/util/Locale;

    const-string v0, "ms"

    invoke-direct {p1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1839
    :pswitch_1f
    new-instance p1, Ljava/util/Locale;

    const-string v0, "mr"

    invoke-direct {p1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1840
    :pswitch_20
    new-instance p1, Ljava/util/Locale;

    const-string v0, "mn"

    invoke-direct {p1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1841
    :pswitch_21
    new-instance p1, Ljava/util/Locale;

    const-string v0, "ml"

    invoke-direct {p1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1909
    :pswitch_22
    new-instance p1, Ljava/util/Locale;

    const-string v0, "mk"

    invoke-direct {p1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2021
    :pswitch_23
    new-instance p1, Ljava/util/Locale;

    const-string v0, "mi"

    invoke-direct {p1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2022
    :pswitch_24
    new-instance p1, Ljava/util/Locale;

    const-string v0, "mai"

    invoke-direct {p1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2090
    :pswitch_25
    new-instance p1, Ljava/util/Locale;

    const-string v0, "lv"

    invoke-direct {p1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2094
    :pswitch_26
    new-instance p1, Ljava/util/Locale;

    const-string v0, "lt"

    invoke-direct {p1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2095
    :pswitch_27
    new-instance p1, Ljava/util/Locale;

    const-string v0, "lo"

    invoke-direct {p1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2096
    :pswitch_28
    sget-object p1, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    goto/16 :goto_0

    .line 2373
    :pswitch_29
    new-instance p1, Ljava/util/Locale;

    const-string v0, "kn"

    invoke-direct {p1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2374
    :pswitch_2a
    new-instance p1, Ljava/util/Locale;

    const-string v0, "km"

    invoke-direct {p1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2394
    :pswitch_2b
    new-instance p1, Ljava/util/Locale;

    const-string v0, "kk"

    invoke-direct {p1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2395
    :pswitch_2c
    new-instance p1, Ljava/util/Locale;

    const-string v0, "ka"

    invoke-direct {p1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2439
    :pswitch_2d
    new-instance p1, Ljava/util/Locale;

    const-string v0, "jv"

    invoke-direct {p1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2440
    :pswitch_2e
    sget-object p1, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    goto/16 :goto_0

    .line 2473
    :pswitch_2f
    new-instance p1, Ljava/util/Locale;

    const-string v0, "iw"

    invoke-direct {p1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2474
    :pswitch_30
    new-instance p1, Ljava/util/Locale;

    const-string v0, "it"

    invoke-direct {p1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2482
    :pswitch_31
    new-instance p1, Ljava/util/Locale;

    const-string v0, "in"

    invoke-direct {p1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2566
    :pswitch_32
    new-instance p1, Ljava/util/Locale;

    const-string v0, "hu"

    invoke-direct {p1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2618
    :pswitch_33
    new-instance p1, Ljava/util/Locale;

    const-string v0, "hr"

    invoke-direct {p1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2730
    :pswitch_34
    new-instance p1, Ljava/util/Locale;

    const-string v0, "hi"

    invoke-direct {p1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2731
    :pswitch_35
    new-instance p1, Ljava/util/Locale;

    const-string v0, "gu"

    invoke-direct {p1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2732
    :pswitch_36
    new-instance p1, Ljava/util/Locale;

    const-string v0, "gl"

    invoke-direct {p1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2733
    :pswitch_37
    sget-object p1, Ljava/util/Locale;->FRENCH:Ljava/util/Locale;

    goto/16 :goto_0

    .line 2870
    :pswitch_38
    new-instance p1, Ljava/util/Locale;

    const-string v0, "fi"

    invoke-direct {p1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2898
    :pswitch_39
    new-instance p1, Ljava/util/Locale;

    const-string v0, "fa"

    invoke-direct {p1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2914
    :pswitch_3a
    new-instance p1, Ljava/util/Locale;

    const-string v0, "eu"

    invoke-direct {p1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2915
    :pswitch_3b
    new-instance p1, Ljava/util/Locale;

    const-string v0, "et"

    invoke-direct {p1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2916
    :pswitch_3c
    new-instance p1, Ljava/util/Locale;

    const-string v0, "US"

    invoke-direct {p1, v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2917
    :pswitch_3d
    new-instance p1, Ljava/util/Locale;

    invoke-direct {p1, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2918
    :pswitch_3e
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    goto/16 :goto_0

    .line 2922
    :pswitch_3f
    sget-object p1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    goto/16 :goto_0

    .line 3059
    :pswitch_40
    new-instance p1, Ljava/util/Locale;

    const-string v0, "el"

    invoke-direct {p1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3060
    :pswitch_41
    new-instance p1, Ljava/util/Locale;

    const-string v0, "de"

    invoke-direct {p1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 3148
    :pswitch_42
    new-instance p1, Ljava/util/Locale;

    const-string v0, "da"

    invoke-direct {p1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 3152
    :pswitch_43
    new-instance p1, Ljava/util/Locale;

    const-string v0, "cs"

    invoke-direct {p1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 3224
    :pswitch_44
    new-instance p1, Ljava/util/Locale;

    const-string v0, "ca"

    invoke-direct {p1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 3225
    :pswitch_45
    new-instance p1, Ljava/util/Locale;

    const-string v0, "bs"

    invoke-direct {p1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 3309
    :pswitch_46
    new-instance p1, Ljava/util/Locale;

    const-string v0, "bo"

    invoke-direct {p1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 3321
    :pswitch_47
    new-instance p1, Ljava/util/Locale;

    const-string v0, "bn"

    invoke-direct {p1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 3322
    :pswitch_48
    new-instance p1, Ljava/util/Locale;

    const-string v0, "bg"

    invoke-direct {p1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 3402
    :pswitch_49
    new-instance p1, Ljava/util/Locale;

    const-string v0, "be"

    invoke-direct {p1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 3403
    :pswitch_4a
    new-instance p1, Ljava/util/Locale;

    const-string v0, "az"

    invoke-direct {p1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 3404
    :pswitch_4b
    new-instance p1, Ljava/util/Locale;

    const-string v0, "as"

    invoke-direct {p1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 3405
    :pswitch_4c
    new-instance p1, Ljava/util/Locale;

    const-string v0, "ar"

    invoke-direct {p1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 3644
    :pswitch_4d
    new-instance p1, Ljava/util/Locale;

    const-string v0, "am"

    invoke-direct {p1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 3675
    :goto_0
    invoke-static {p0, p1}, Lcom/netease/nis/captcha/c;->a(Landroid/content/Context;Ljava/util/Locale;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
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

.method private static a(Landroid/content/Context;Ljava/util/Locale;)V
    .locals 6

    .line 3676
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3677
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 3678
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 3679
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_0

    .line 3680
    new-instance v3, Landroid/os/LocaleList;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/util/Locale;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-direct {v3, v4}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    .line 3681
    invoke-static {v3}, Landroid/os/LocaleList;->setDefault(Landroid/os/LocaleList;)V

    .line 3682
    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 3683
    invoke-virtual {p0, v2}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    goto :goto_0

    :cond_0
    const/16 p0, 0x13

    if-lt v3, p0, :cond_1

    .line 3685
    invoke-virtual {v2, p1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    goto :goto_0

    .line 3687
    :cond_1
    iput-object p1, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 3689
    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    return-void
.end method

.method static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/netease/nis/captcha/c;->a:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Captcha"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static a(Z)V
    .locals 0

    .line 3
    sput-boolean p0, Lcom/netease/nis/captcha/c;->a:Z

    return-void
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "connectivity"

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_2

    .line 8
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 10
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 12
    invoke-virtual {v1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v2

    if-nez v2, :cond_1

    instance-of v2, v1, Ljava/net/Inet4Address;

    if-eqz v2, :cond_1

    .line 13
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 21
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 23
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    .line 24
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result p0

    invoke-static {p0}, Lcom/netease/nis/captcha/c;->a(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/netease/nis/captcha/c;->a:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Captcha"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "connectivity"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 7
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object p0

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne p0, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method
