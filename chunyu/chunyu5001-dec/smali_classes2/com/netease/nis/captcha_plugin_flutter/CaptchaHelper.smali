.class public final Lcom/netease/nis/captcha_plugin_flutter/CaptchaHelper;
.super Ljava/lang/Object;
.source "CaptchaHelper.kt"

# interfaces
.implements Lkotlinx/coroutines/CoroutineScope;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u000f\u001a\u00020\u0010J\u0016\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015J\u0006\u0010\u0016\u001a\u00020\u0010J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u00020\u0006X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/netease/nis/captcha_plugin_flutter/CaptchaHelper;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "()V",
        "captchaListener",
        "Lcom/netease/nis/captcha/CaptchaListener;",
        "coroutineContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "getCoroutineContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "events",
        "Lio/flutter/plugin/common/EventChannel$EventSink;",
        "getEvents",
        "()Lio/flutter/plugin/common/EventChannel$EventSink;",
        "setEvents",
        "(Lio/flutter/plugin/common/EventChannel$EventSink;)V",
        "destroy",
        "",
        "init",
        "activity",
        "Landroid/app/Activity;",
        "call",
        "Lio/flutter/plugin/common/MethodCall;",
        "showCaptcha",
        "string2LangType",
        "Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;",
        "langTypeStr",
        "",
        "captcha_plugin_flutter_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final synthetic $$delegate_0:Lkotlinx/coroutines/CoroutineScope;

.field private captchaListener:Lcom/netease/nis/captcha/CaptchaListener;

.field private events:Lio/flutter/plugin/common/EventChannel$EventSink;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lkotlinx/coroutines/CoroutineScopeKt;->MainScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nis/captcha_plugin_flutter/CaptchaHelper;->$$delegate_0:Lkotlinx/coroutines/CoroutineScope;

    .line 103
    new-instance v0, Lcom/netease/nis/captcha_plugin_flutter/CaptchaHelper$captchaListener$1;

    invoke-direct {v0, p0}, Lcom/netease/nis/captcha_plugin_flutter/CaptchaHelper$captchaListener$1;-><init>(Lcom/netease/nis/captcha_plugin_flutter/CaptchaHelper;)V

    check-cast v0, Lcom/netease/nis/captcha/CaptchaListener;

    iput-object v0, p0, Lcom/netease/nis/captcha_plugin_flutter/CaptchaHelper;->captchaListener:Lcom/netease/nis/captcha/CaptchaListener;

    return-void
.end method

.method private final string2LangType(Ljava/lang/String;)Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;
    .locals 1

    .line 136
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "zh-TW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 372
    :cond_0
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_ZH_TW:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "zh-HK"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    .line 369
    :cond_1
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_ZH_HK:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "zh-CN"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    .line 366
    :cond_2
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_ZH_CN:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "pt-br"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    .line 309
    :cond_3
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_PT_BR:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "es-la"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    .line 192
    :cond_4
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_ES_LA:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "en-US"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_0

    .line 186
    :cond_5
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_EN_US:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "en-GB"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_0

    .line 183
    :cond_6
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_EN:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "mai"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_0

    .line 264
    :cond_7
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_MAI:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "fil"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto/16 :goto_0

    .line 345
    :cond_8
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_FIL:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "vi"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto/16 :goto_0

    .line 363
    :cond_9
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_VI:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "uz"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto/16 :goto_0

    .line 360
    :cond_a
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_UZ:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "ur"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto/16 :goto_0

    .line 357
    :cond_b
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_UR:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "uk"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto/16 :goto_0

    .line 354
    :cond_c
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_UK:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    goto/16 :goto_1

    :sswitch_d
    const-string v0, "ug"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto/16 :goto_0

    .line 351
    :cond_d
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_UG:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    goto/16 :goto_1

    :sswitch_e
    const-string v0, "tr"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto/16 :goto_0

    .line 348
    :cond_e
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_TR:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    goto/16 :goto_1

    :sswitch_f
    const-string v0, "th"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto/16 :goto_0

    .line 342
    :cond_f
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_TH:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    goto/16 :goto_1

    :sswitch_10
    const-string v0, "te"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto/16 :goto_0

    .line 339
    :cond_10
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_TE:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    goto/16 :goto_1

    :sswitch_11
    const-string v0, "ta"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    goto/16 :goto_0

    .line 336
    :cond_11
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_TA:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    goto/16 :goto_1

    :sswitch_12
    const-string v0, "sw"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    goto/16 :goto_0

    .line 333
    :cond_12
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_SW:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    goto/16 :goto_1

    :sswitch_13
    const-string v0, "sv"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    goto/16 :goto_0

    .line 330
    :cond_13
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_SV:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    goto/16 :goto_1

    :sswitch_14
    const-string v0, "sr"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    goto/16 :goto_0

    .line 327
    :cond_14
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_SR:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    goto/16 :goto_1

    :sswitch_15
    const-string v0, "sl"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    goto/16 :goto_0

    .line 324
    :cond_15
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_SL:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    goto/16 :goto_1

    :sswitch_16
    const-string v0, "sk"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    goto/16 :goto_0

    .line 321
    :cond_16
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_SK:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    goto/16 :goto_1

    :sswitch_17
    const-string v0, "si"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    goto/16 :goto_0

    .line 318
    :cond_17
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_SI:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    goto/16 :goto_1

    :sswitch_18
    const-string v0, "ru"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    goto/16 :goto_0

    .line 315
    :cond_18
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_RU:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    goto/16 :goto_1

    :sswitch_19
    const-string v0, "ro"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_19

    goto/16 :goto_0

    .line 312
    :cond_19
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_RO:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    goto/16 :goto_1

    :sswitch_1a
    const-string v0, "pt"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    goto/16 :goto_0

    .line 306
    :cond_1a
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_PT:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    goto/16 :goto_1

    :sswitch_1b
    const-string v0, "pl"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1b

    goto/16 :goto_0

    .line 303
    :cond_1b
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_PL:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    goto/16 :goto_1

    :sswitch_1c
    const-string v0, "pa"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1c

    goto/16 :goto_0

    .line 300
    :cond_1c
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_PA:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    goto/16 :goto_1

    :sswitch_1d
    const-string v0, "or"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1d

    goto/16 :goto_0

    .line 297
    :cond_1d
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_OR:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    goto/16 :goto_1

    :sswitch_1e
    const-string v0, "no"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1e

    goto/16 :goto_0

    .line 288
    :cond_1e
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_NO:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    goto/16 :goto_1

    :sswitch_1f
    const-string v0, "nl"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1f

    goto/16 :goto_0

    .line 294
    :cond_1f
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_NL:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    goto/16 :goto_1

    :sswitch_20
    const-string v0, "ne"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_20

    goto/16 :goto_0

    .line 291
    :cond_20
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_NE:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    goto/16 :goto_1

    :sswitch_21
    const-string v0, "my"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_21

    goto/16 :goto_0

    .line 285
    :cond_21
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_MY:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    goto/16 :goto_1

    :sswitch_22
    const-string v0, "ms"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    goto/16 :goto_0

    .line 282
    :cond_22
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_MS:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    goto/16 :goto_1

    :sswitch_23
    const-string v0, "mr"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_23

    goto/16 :goto_0

    .line 279
    :cond_23
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_MR:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    goto/16 :goto_1

    :sswitch_24
    const-string v0, "mn"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_24

    goto/16 :goto_0

    .line 276
    :cond_24
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_MN:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    goto/16 :goto_1

    :sswitch_25
    const-string v0, "ml"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_25

    goto/16 :goto_0

    .line 273
    :cond_25
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_ML:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    goto/16 :goto_1

    :sswitch_26
    const-string v0, "mk"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_26

    goto/16 :goto_0

    .line 270
    :cond_26
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_MK:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    goto/16 :goto_1

    :sswitch_27
    const-string v0, "mi"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_27

    goto/16 :goto_0

    .line 267
    :cond_27
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_MI:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    goto/16 :goto_1

    :sswitch_28
    const-string v0, "lv"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_28

    goto/16 :goto_0

    .line 261
    :cond_28
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_LV:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    goto/16 :goto_1

    :sswitch_29
    const-string v0, "lt"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_29

    goto/16 :goto_0

    .line 258
    :cond_29
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_LT:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    goto/16 :goto_1

    :sswitch_2a
    const-string v0, "lo"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2a

    goto/16 :goto_0

    .line 255
    :cond_2a
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_LO:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    goto/16 :goto_1

    :sswitch_2b
    const-string v0, "ko"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2b

    goto/16 :goto_0

    .line 252
    :cond_2b
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_KO:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    goto/16 :goto_1

    :sswitch_2c
    const-string v0, "kn"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2c

    goto/16 :goto_0

    .line 249
    :cond_2c
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_KN:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    goto/16 :goto_1

    :sswitch_2d
    const-string v0, "km"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2d

    goto/16 :goto_0

    .line 246
    :cond_2d
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_KM:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    goto/16 :goto_1

    :sswitch_2e
    const-string v0, "kk"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2e

    goto/16 :goto_0

    .line 243
    :cond_2e
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_KK:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    goto/16 :goto_1

    :sswitch_2f
    const-string v0, "ka"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2f

    goto/16 :goto_0

    .line 240
    :cond_2f
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_KA:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    goto/16 :goto_1

    :sswitch_30
    const-string v0, "jv"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_30

    goto/16 :goto_0

    .line 237
    :cond_30
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_JV:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    goto/16 :goto_1

    :sswitch_31
    const-string v0, "ja"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_31

    goto/16 :goto_0

    .line 234
    :cond_31
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_JA:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    goto/16 :goto_1

    :sswitch_32
    const-string v0, "it"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_32

    goto/16 :goto_0

    .line 228
    :cond_32
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_IT:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    goto/16 :goto_1

    :sswitch_33
    const-string v0, "id"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_33

    goto/16 :goto_0

    .line 225
    :cond_33
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_ID:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    goto/16 :goto_1

    :sswitch_34
    const-string v0, "hu"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_34

    goto/16 :goto_0

    .line 222
    :cond_34
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_HU:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    goto/16 :goto_1

    :sswitch_35
    const-string v0, "hr"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_35

    goto/16 :goto_0

    .line 219
    :cond_35
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_HR:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    goto/16 :goto_1

    :sswitch_36
    const-string v0, "hi"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_36

    goto/16 :goto_0

    .line 216
    :cond_36
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_HI:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    goto/16 :goto_1

    :sswitch_37
    const-string v0, "he"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_37

    goto/16 :goto_0

    .line 231
    :cond_37
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_HE:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    goto/16 :goto_1

    :sswitch_38
    const-string v0, "gu"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_38

    goto/16 :goto_0

    .line 213
    :cond_38
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_GU:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    goto/16 :goto_1

    :sswitch_39
    const-string v0, "gl"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_39

    goto/16 :goto_0

    .line 210
    :cond_39
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_GL:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    goto/16 :goto_1

    :sswitch_3a
    const-string v0, "fr"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3a

    goto/16 :goto_0

    .line 207
    :cond_3a
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_FR:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    goto/16 :goto_1

    :sswitch_3b
    const-string v0, "fi"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3b

    goto/16 :goto_0

    .line 204
    :cond_3b
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_FI:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    goto/16 :goto_1

    :sswitch_3c
    const-string v0, "fa"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3c

    goto/16 :goto_0

    .line 201
    :cond_3c
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_FA:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    goto/16 :goto_1

    :sswitch_3d
    const-string v0, "eu"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3d

    goto/16 :goto_0

    .line 198
    :cond_3d
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_EU:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    goto/16 :goto_1

    :sswitch_3e
    const-string v0, "et"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3e

    goto/16 :goto_0

    .line 195
    :cond_3e
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_ET:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    goto/16 :goto_1

    :sswitch_3f
    const-string v0, "es"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3f

    goto/16 :goto_0

    .line 189
    :cond_3f
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_ES:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    goto/16 :goto_1

    :sswitch_40
    const-string v0, "en"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_40

    goto/16 :goto_0

    .line 180
    :cond_40
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_EN:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    goto/16 :goto_1

    :sswitch_41
    const-string v0, "el"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_41

    goto/16 :goto_0

    .line 177
    :cond_41
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_EL:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    goto/16 :goto_1

    :sswitch_42
    const-string v0, "de"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_42

    goto/16 :goto_0

    .line 174
    :cond_42
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_DE:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    goto/16 :goto_1

    :sswitch_43
    const-string v0, "da"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_43

    goto/16 :goto_0

    .line 171
    :cond_43
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_DA:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    goto/16 :goto_1

    :sswitch_44
    const-string v0, "cs"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_44

    goto/16 :goto_0

    .line 168
    :cond_44
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_CS:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    goto/16 :goto_1

    :sswitch_45
    const-string v0, "ca"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_45

    goto/16 :goto_0

    .line 165
    :cond_45
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_CA:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    goto/16 :goto_1

    :sswitch_46
    const-string v0, "bs"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_46

    goto/16 :goto_0

    .line 162
    :cond_46
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_BS:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    goto/16 :goto_1

    :sswitch_47
    const-string v0, "bo"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_47

    goto :goto_0

    .line 159
    :cond_47
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_BO:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    goto :goto_1

    :sswitch_48
    const-string v0, "bn"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_48

    goto :goto_0

    .line 156
    :cond_48
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_BN:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    goto :goto_1

    :sswitch_49
    const-string v0, "bg"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_49

    goto :goto_0

    .line 153
    :cond_49
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_BG:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    goto :goto_1

    :sswitch_4a
    const-string v0, "be"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4a

    goto :goto_0

    .line 150
    :cond_4a
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_BE:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    goto :goto_1

    :sswitch_4b
    const-string v0, "az"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4b

    goto :goto_0

    .line 147
    :cond_4b
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_AZ:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    goto :goto_1

    :sswitch_4c
    const-string v0, "as"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4c

    goto :goto_0

    .line 144
    :cond_4c
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_AS:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    goto :goto_1

    :sswitch_4d
    const-string v0, "ar"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4d

    goto :goto_0

    .line 141
    :cond_4d
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_AR:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    goto :goto_1

    :sswitch_4e
    const-string v0, "am"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4e

    goto :goto_0

    .line 138
    :cond_4e
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_AM:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    goto :goto_1

    .line 374
    :goto_0
    sget-object p1, Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;->LANG_ZH_CN:Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    :goto_1
    return-object p1

    :sswitch_data_0
    .sparse-switch
        0xc2c -> :sswitch_4e
        0xc31 -> :sswitch_4d
        0xc32 -> :sswitch_4c
        0xc39 -> :sswitch_4b
        0xc43 -> :sswitch_4a
        0xc45 -> :sswitch_49
        0xc4c -> :sswitch_48
        0xc4d -> :sswitch_47
        0xc51 -> :sswitch_46
        0xc5e -> :sswitch_45
        0xc70 -> :sswitch_44
        0xc7d -> :sswitch_43
        0xc81 -> :sswitch_42
        0xca7 -> :sswitch_41
        0xca9 -> :sswitch_40
        0xcae -> :sswitch_3f
        0xcaf -> :sswitch_3e
        0xcb0 -> :sswitch_3d
        0xcbb -> :sswitch_3c
        0xcc3 -> :sswitch_3b
        0xccc -> :sswitch_3a
        0xce5 -> :sswitch_39
        0xcee -> :sswitch_38
        0xcfd -> :sswitch_37
        0xd01 -> :sswitch_36
        0xd0a -> :sswitch_35
        0xd0d -> :sswitch_34
        0xd1b -> :sswitch_33
        0xd2b -> :sswitch_32
        0xd37 -> :sswitch_31
        0xd4c -> :sswitch_30
        0xd56 -> :sswitch_2f
        0xd60 -> :sswitch_2e
        0xd62 -> :sswitch_2d
        0xd63 -> :sswitch_2c
        0xd64 -> :sswitch_2b
        0xd83 -> :sswitch_2a
        0xd88 -> :sswitch_29
        0xd8a -> :sswitch_28
        0xd9c -> :sswitch_27
        0xd9e -> :sswitch_26
        0xd9f -> :sswitch_25
        0xda1 -> :sswitch_24
        0xda5 -> :sswitch_23
        0xda6 -> :sswitch_22
        0xdac -> :sswitch_21
        0xdb7 -> :sswitch_20
        0xdbe -> :sswitch_1f
        0xdc1 -> :sswitch_1e
        0xde3 -> :sswitch_1d
        0xdf1 -> :sswitch_1c
        0xdfc -> :sswitch_1b
        0xe04 -> :sswitch_1a
        0xe3d -> :sswitch_19
        0xe43 -> :sswitch_18
        0xe56 -> :sswitch_17
        0xe58 -> :sswitch_16
        0xe59 -> :sswitch_15
        0xe5f -> :sswitch_14
        0xe63 -> :sswitch_13
        0xe64 -> :sswitch_12
        0xe6d -> :sswitch_11
        0xe71 -> :sswitch_10
        0xe74 -> :sswitch_f
        0xe7e -> :sswitch_e
        0xe92 -> :sswitch_d
        0xe96 -> :sswitch_c
        0xe9d -> :sswitch_b
        0xea5 -> :sswitch_a
        0xeb3 -> :sswitch_9
        0x18c09 -> :sswitch_8
        0x1a555 -> :sswitch_7
        0x5c1f87f -> :sswitch_6
        0x5c1fa42 -> :sswitch_5
        0x5c442f4 -> :sswitch_4
        0x65fb8b9 -> :sswitch_3
        0x6e72b6a -> :sswitch_2
        0x6e72c02 -> :sswitch_1
        0x6e72d82 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    .line 100
    invoke-static {}, Lcom/netease/nis/captcha/Captcha;->getInstance()Lcom/netease/nis/captcha/Captcha;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nis/captcha/Captcha;->destroy()V

    return-void
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    iget-object v0, p0, Lcom/netease/nis/captcha_plugin_flutter/CaptchaHelper;->$$delegate_0:Lkotlinx/coroutines/CoroutineScope;

    invoke-interface {v0}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    return-object v0
.end method

.method public final getEvents()Lio/flutter/plugin/common/EventChannel$EventSink;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/netease/nis/captcha_plugin_flutter/CaptchaHelper;->events:Lio/flutter/plugin/common/EventChannel$EventSink;

    return-object v0
.end method

.method public final init(Landroid/app/Activity;Lio/flutter/plugin/common/MethodCall;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "activity"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "call"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "captcha_id"

    .line 25
    invoke-virtual {v2, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "is_debug"

    .line 26
    invoke-virtual {v2, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    if-nez v4, :cond_0

    move-object v4, v5

    :cond_0
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string v6, "is_no_sense_mode"

    .line 27
    invoke-virtual {v2, v6}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    if-nez v6, :cond_1

    move-object v6, v5

    :cond_1
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const-string v7, "dimAmount"

    .line 28
    invoke-virtual {v2, v7}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    if-nez v7, :cond_2

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    :cond_2
    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    const-string v8, "control_bar_start_url"

    .line 29
    invoke-virtual {v2, v8}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, ""

    if-nez v8, :cond_3

    move-object v8, v9

    :cond_3
    const-string v10, "control_bar_moving_url"

    .line 30
    invoke-virtual {v2, v10}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    if-nez v10, :cond_4

    move-object v10, v9

    :cond_4
    const-string v11, "control_bar_error_url"

    .line 31
    invoke-virtual {v2, v11}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    if-nez v11, :cond_5

    move-object v11, v9

    :cond_5
    const-string v12, "is_touch_outside_disappear"

    .line 33
    invoke-virtual {v2, v12}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    const/4 v13, 0x1

    if-nez v12, :cond_6

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    :cond_6
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    const-string v14, "timeout"

    .line 34
    invoke-virtual {v2, v14}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    if-nez v14, :cond_7

    const-wide/16 v14, 0x2710

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    :cond_7
    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->longValue()J

    move-result-wide v14

    const-string v13, "is_hide_close_button"

    .line 35
    invoke-virtual {v2, v13}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    if-nez v13, :cond_8

    move-object v13, v5

    :cond_8
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const-string v13, "use_default_fallback"

    .line 36
    invoke-virtual {v2, v13}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    if-nez v13, :cond_9

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    :cond_9
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    move-object/from16 v16, v9

    const-string v9, "failed_max_retry_count"

    .line 37
    invoke-virtual {v2, v9}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    if-nez v9, :cond_a

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    :cond_a
    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    const-string v1, "language_type"

    .line 38
    invoke-virtual {v2, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_b

    goto :goto_0

    :cond_b
    move-object/from16 v16, v1

    :goto_0
    const-string v1, "theme"

    .line 39
    invoke-virtual {v2, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move/from16 v17, v5

    const-string v5, "light"

    if-nez v1, :cond_c

    move-object/from16 v18, v5

    goto :goto_1

    :cond_c
    move-object/from16 v18, v1

    :goto_1
    const-string v1, "loading_text"

    .line 40
    invoke-virtual {v2, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v19, v1

    const-string v1, "api_server"

    .line 41
    invoke-virtual {v2, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v20, v1

    const-string v1, "static_server"

    .line 42
    invoke-virtual {v2, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "CaptchaHelper"

    if-eqz v3, :cond_14

    move-object/from16 p2, v2

    .line 45
    new-instance v2, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;

    invoke-direct {v2}, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;-><init>()V

    .line 46
    invoke-virtual {v2, v3}, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->captchaId(Ljava/lang/String;)Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;

    .line 47
    iget-object v3, v0, Lcom/netease/nis/captcha_plugin_flutter/CaptchaHelper;->captchaListener:Lcom/netease/nis/captcha/CaptchaListener;

    invoke-virtual {v2, v3}, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->listener(Lcom/netease/nis/captcha/CaptchaListener;)Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;

    .line 48
    invoke-virtual {v2, v4}, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->debug(Z)Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;

    if-eqz v6, :cond_d

    .line 50
    sget-object v3, Lcom/netease/nis/captcha/CaptchaConfiguration$ModeType;->MODE_INTELLIGENT_NO_SENSE:Lcom/netease/nis/captcha/CaptchaConfiguration$ModeType;

    invoke-virtual {v2, v3}, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->mode(Lcom/netease/nis/captcha/CaptchaConfiguration$ModeType;)Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;

    .line 52
    :cond_d
    invoke-virtual {v2, v14, v15}, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->timeout(J)Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;

    .line 53
    invoke-virtual {v2, v7}, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->backgroundDimAmount(F)Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;

    .line 54
    invoke-virtual {v2, v9}, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->failedMaxRetryCount(I)Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;

    .line 55
    move-object v3, v10

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 56
    move-object v3, v8

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 58
    move-object v3, v11

    check-cast v3, Ljava/lang/CharSequence;

    .line 57
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 61
    invoke-virtual {v2, v8, v10, v11}, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->controlBarImageUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;

    .line 67
    :cond_e
    invoke-virtual {v2, v12}, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->touchOutsideDisappear(Z)Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;

    .line 68
    invoke-virtual {v2, v13}, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->useDefaultFallback(Z)Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;

    move/from16 v3, v17

    .line 69
    invoke-virtual {v2, v3}, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->hideCloseButton(Z)Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;

    .line 70
    move-object/from16 v3, v16

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    move-object/from16 v3, v16

    .line 71
    invoke-direct {v0, v3}, Lcom/netease/nis/captcha_plugin_flutter/CaptchaHelper;->string2LangType(Ljava/lang/String;)Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->languageType(Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;)Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;

    :cond_f
    move-object/from16 v3, v18

    .line 74
    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 75
    sget-object v3, Lcom/netease/nis/captcha/CaptchaConfiguration$Theme;->LIGHT:Lcom/netease/nis/captcha/CaptchaConfiguration$Theme;

    goto :goto_2

    .line 77
    :cond_10
    sget-object v3, Lcom/netease/nis/captcha/CaptchaConfiguration$Theme;->DARK:Lcom/netease/nis/captcha/CaptchaConfiguration$Theme;

    .line 73
    :goto_2
    invoke-virtual {v2, v3}, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->theme(Lcom/netease/nis/captcha/CaptchaConfiguration$Theme;)Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;

    .line 79
    move-object/from16 v3, v19

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_11

    move-object/from16 v3, v19

    .line 80
    invoke-virtual {v2, v3}, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->loadingText(Ljava/lang/String;)Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;

    .line 82
    :cond_11
    move-object/from16 v3, v20

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_12

    move-object/from16 v3, v20

    .line 83
    invoke-virtual {v2, v3}, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->apiServer(Ljava/lang/String;)Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;

    .line 85
    :cond_12
    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 86
    invoke-virtual {v2, v1}, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->staticServer(Ljava/lang/String;)Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;

    .line 88
    :cond_13
    invoke-static {}, Lcom/netease/nis/captcha/Captcha;->getInstance()Lcom/netease/nis/captcha/Captcha;

    move-result-object v1

    move-object/from16 v3, p1

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/netease/nis/captcha/CaptchaConfiguration$Builder;->build(Landroid/content/Context;)Lcom/netease/nis/captcha/CaptchaConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netease/nis/captcha/Captcha;->init(Lcom/netease/nis/captcha/CaptchaConfiguration;)Lcom/netease/nis/captcha/Captcha;

    const-string v1, "\u521d\u59cb\u5316\u6210\u529f"

    move-object/from16 v2, p2

    .line 89
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_14
    const-string v1, "\u4e1a\u52a1id\u5fc5\u987b\u4f20"

    .line 91
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method

.method public final setEvents(Lio/flutter/plugin/common/EventChannel$EventSink;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/netease/nis/captcha_plugin_flutter/CaptchaHelper;->events:Lio/flutter/plugin/common/EventChannel$EventSink;

    return-void
.end method

.method public final showCaptcha()V
    .locals 1

    .line 96
    invoke-static {}, Lcom/netease/nis/captcha/Captcha;->getInstance()Lcom/netease/nis/captcha/Captcha;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nis/captcha/Captcha;->validate()V

    return-void
.end method
