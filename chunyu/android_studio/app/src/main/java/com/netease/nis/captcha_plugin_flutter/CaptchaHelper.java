package com.netease.nis.captcha_plugin_flutter;

import android.app.Activity;
import android.text.TextUtils;
import android.util.Log;
import com.netease.nis.captcha.Captcha;
import com.netease.nis.captcha.CaptchaConfiguration;
import com.netease.nis.captcha.CaptchaListener;
import com.tekartik.sqflite.Constant;
import com.umeng.analytics.pro.ai;
import com.umeng.analytics.pro.c;
import io.flutter.plugin.common.EventChannel;
import io.flutter.plugin.common.MethodCall;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;

/* compiled from: CaptchaHelper.kt */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u000f\u001a\u00020\u0010J\u0016\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015J\u0006\u0010\u0016\u001a\u00020\u0010J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u00020\u0006X\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u001b"}, d2 = {"Lcom/netease/nis/captcha_plugin_flutter/CaptchaHelper;", "Lkotlinx/coroutines/CoroutineScope;", "()V", "captchaListener", "Lcom/netease/nis/captcha/CaptchaListener;", "coroutineContext", "Lkotlin/coroutines/CoroutineContext;", "getCoroutineContext", "()Lkotlin/coroutines/CoroutineContext;", c.ar, "Lio/flutter/plugin/common/EventChannel$EventSink;", "getEvents", "()Lio/flutter/plugin/common/EventChannel$EventSink;", "setEvents", "(Lio/flutter/plugin/common/EventChannel$EventSink;)V", "destroy", "", "init", "activity", "Landroid/app/Activity;", "call", "Lio/flutter/plugin/common/MethodCall;", "showCaptcha", "string2LangType", "Lcom/netease/nis/captcha/CaptchaConfiguration$LangType;", "langTypeStr", "", "captcha_plugin_flutter_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class CaptchaHelper implements CoroutineScope {
    private final /* synthetic */ CoroutineScope $$delegate_0 = CoroutineScopeKt.MainScope();
    private CaptchaListener captchaListener = new CaptchaListener() { // from class: com.netease.nis.captcha_plugin_flutter.CaptchaHelper$captchaListener$1
        @Override // com.netease.nis.captcha.CaptchaListener
        public void onReady() {
        }

        @Override // com.netease.nis.captcha.CaptchaListener
        public void onValidate(String str, String str2, String str3) {
            HashMap hashMap = new HashMap();
            HashMap hashMap2 = hashMap;
            hashMap2.put("validate", str2);
            hashMap2.put(Constant.PARAM_RESULT, str);
            hashMap2.put("msg", str3);
            Job unused = BuildersKt__Builders_commonKt.launch$default(CaptchaHelper.this, Dispatchers.getMain(), null, new CaptchaHelper$captchaListener$1$onValidate$1(CaptchaHelper.this, hashMap, null), 2, null);
        }

        @Override // com.netease.nis.captcha.CaptchaListener
        public void onError(int i, String str) {
            HashMap hashMap = new HashMap();
            HashMap hashMap2 = hashMap;
            hashMap2.put(Constant.PARAM_ERROR_CODE, Integer.valueOf(i));
            hashMap2.put("msg", str);
            Job unused = BuildersKt__Builders_commonKt.launch$default(CaptchaHelper.this, Dispatchers.getMain(), null, new CaptchaHelper$captchaListener$1$onError$1(CaptchaHelper.this, hashMap, null), 2, null);
        }

        @Override // com.netease.nis.captcha.CaptchaListener
        public void onClose(Captcha.CloseType closeType) {
            HashMap hashMap = new HashMap();
            hashMap.put("closed", true);
            Job unused = BuildersKt__Builders_commonKt.launch$default(CaptchaHelper.this, Dispatchers.getMain(), null, new CaptchaHelper$captchaListener$1$onClose$1(CaptchaHelper.this, hashMap, null), 2, null);
        }
    };
    private EventChannel.EventSink events;

    @Override // kotlinx.coroutines.CoroutineScope
    public CoroutineContext getCoroutineContext() {
        return this.$$delegate_0.getCoroutineContext();
    }

    public final EventChannel.EventSink getEvents() {
        return this.events;
    }

    public final void setEvents(EventChannel.EventSink eventSink) {
        this.events = eventSink;
    }

    public final void init(Activity activity, MethodCall methodCall) {
        CaptchaConfiguration.Theme theme;
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(methodCall, "call");
        String str = (String) methodCall.argument("captcha_id");
        Boolean bool = (Boolean) methodCall.argument("is_debug");
        if (bool == null) {
            bool = false;
        }
        boolean booleanValue = bool.booleanValue();
        Boolean bool2 = (Boolean) methodCall.argument("is_no_sense_mode");
        if (bool2 == null) {
            bool2 = false;
        }
        boolean booleanValue2 = bool2.booleanValue();
        Float f = (Float) methodCall.argument("dimAmount");
        if (f == null) {
            f = Float.valueOf(0.5f);
        }
        float floatValue = f.floatValue();
        String str2 = (String) methodCall.argument("control_bar_start_url");
        if (str2 == null) {
            str2 = "";
        }
        String str3 = (String) methodCall.argument("control_bar_moving_url");
        if (str3 == null) {
            str3 = "";
        }
        String str4 = (String) methodCall.argument("control_bar_error_url");
        if (str4 == null) {
            str4 = "";
        }
        Boolean bool3 = (Boolean) methodCall.argument("is_touch_outside_disappear");
        if (bool3 == null) {
            bool3 = true;
        }
        boolean booleanValue3 = bool3.booleanValue();
        long j = (Long) methodCall.argument("timeout");
        if (j == null) {
            j = 10000L;
        }
        long longValue = j.longValue();
        Boolean bool4 = (Boolean) methodCall.argument("is_hide_close_button");
        if (bool4 == null) {
            bool4 = false;
        }
        boolean booleanValue4 = bool4.booleanValue();
        Boolean bool5 = (Boolean) methodCall.argument("use_default_fallback");
        if (bool5 == null) {
            bool5 = true;
        }
        boolean booleanValue5 = bool5.booleanValue();
        String str5 = "";
        int i = (Integer) methodCall.argument("failed_max_retry_count");
        if (i == null) {
            i = 3;
        }
        int intValue = i.intValue();
        String str6 = (String) methodCall.argument("language_type");
        if (str6 != null) {
            str5 = str6;
        }
        String str7 = (String) methodCall.argument("theme");
        String str8 = str7 == null ? "light" : str7;
        String str9 = (String) methodCall.argument("loading_text");
        String str10 = (String) methodCall.argument("api_server");
        String str11 = (String) methodCall.argument("static_server");
        if (str != null) {
            CaptchaConfiguration.Builder builder = new CaptchaConfiguration.Builder();
            builder.captchaId(str);
            builder.listener(this.captchaListener);
            builder.debug(booleanValue);
            if (booleanValue2) {
                builder.mode(CaptchaConfiguration.ModeType.MODE_INTELLIGENT_NO_SENSE);
            }
            builder.timeout(longValue);
            builder.backgroundDimAmount(floatValue);
            builder.failedMaxRetryCount(intValue);
            if (!TextUtils.isEmpty(str3) && !TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str4)) {
                builder.controlBarImageUrl(str2, str3, str4);
            }
            builder.touchOutsideDisappear(booleanValue3);
            builder.useDefaultFallback(booleanValue5);
            builder.hideCloseButton(booleanValue4);
            if (!TextUtils.isEmpty(str5)) {
                builder.languageType(string2LangType(str5));
            }
            if (Intrinsics.areEqual("light", str8)) {
                theme = CaptchaConfiguration.Theme.LIGHT;
            } else {
                theme = CaptchaConfiguration.Theme.DARK;
            }
            builder.theme(theme);
            if (!TextUtils.isEmpty(str9)) {
                builder.loadingText(str9);
            }
            if (!TextUtils.isEmpty(str10)) {
                builder.apiServer(str10);
            }
            if (!TextUtils.isEmpty(str11)) {
                builder.staticServer(str11);
            }
            Captcha.getInstance().init(builder.build(activity));
            Log.i("CaptchaHelper", "初始化成功");
            return;
        }
        Log.e("CaptchaHelper", "业务id必须传");
    }

    public final void showCaptcha() {
        Captcha.getInstance().validate();
    }

    public final void destroy() {
        Captcha.getInstance().destroy();
    }

    private final CaptchaConfiguration.LangType string2LangType(String str) {
        switch (str.hashCode()) {
            case 3116:
                if (str.equals("am")) {
                    return CaptchaConfiguration.LangType.LANG_AM;
                }
                break;
            case 3121:
                if (str.equals("ar")) {
                    return CaptchaConfiguration.LangType.LANG_AR;
                }
                break;
            case 3122:
                if (str.equals("as")) {
                    return CaptchaConfiguration.LangType.LANG_AS;
                }
                break;
            case 3129:
                if (str.equals("az")) {
                    return CaptchaConfiguration.LangType.LANG_AZ;
                }
                break;
            case 3139:
                if (str.equals("be")) {
                    return CaptchaConfiguration.LangType.LANG_BE;
                }
                break;
            case 3141:
                if (str.equals("bg")) {
                    return CaptchaConfiguration.LangType.LANG_BG;
                }
                break;
            case 3148:
                if (str.equals("bn")) {
                    return CaptchaConfiguration.LangType.LANG_BN;
                }
                break;
            case 3149:
                if (str.equals("bo")) {
                    return CaptchaConfiguration.LangType.LANG_BO;
                }
                break;
            case 3153:
                if (str.equals("bs")) {
                    return CaptchaConfiguration.LangType.LANG_BS;
                }
                break;
            case 3166:
                if (str.equals("ca")) {
                    return CaptchaConfiguration.LangType.LANG_CA;
                }
                break;
            case 3184:
                if (str.equals("cs")) {
                    return CaptchaConfiguration.LangType.LANG_CS;
                }
                break;
            case 3197:
                if (str.equals("da")) {
                    return CaptchaConfiguration.LangType.LANG_DA;
                }
                break;
            case 3201:
                if (str.equals("de")) {
                    return CaptchaConfiguration.LangType.LANG_DE;
                }
                break;
            case 3239:
                if (str.equals("el")) {
                    return CaptchaConfiguration.LangType.LANG_EL;
                }
                break;
            case 3241:
                if (str.equals("en")) {
                    return CaptchaConfiguration.LangType.LANG_EN;
                }
                break;
            case 3246:
                if (str.equals("es")) {
                    return CaptchaConfiguration.LangType.LANG_ES;
                }
                break;
            case 3247:
                if (str.equals("et")) {
                    return CaptchaConfiguration.LangType.LANG_ET;
                }
                break;
            case 3248:
                if (str.equals("eu")) {
                    return CaptchaConfiguration.LangType.LANG_EU;
                }
                break;
            case 3259:
                if (str.equals("fa")) {
                    return CaptchaConfiguration.LangType.LANG_FA;
                }
                break;
            case 3267:
                if (str.equals("fi")) {
                    return CaptchaConfiguration.LangType.LANG_FI;
                }
                break;
            case 3276:
                if (str.equals("fr")) {
                    return CaptchaConfiguration.LangType.LANG_FR;
                }
                break;
            case 3301:
                if (str.equals("gl")) {
                    return CaptchaConfiguration.LangType.LANG_GL;
                }
                break;
            case 3310:
                if (str.equals("gu")) {
                    return CaptchaConfiguration.LangType.LANG_GU;
                }
                break;
            case 3325:
                if (str.equals("he")) {
                    return CaptchaConfiguration.LangType.LANG_HE;
                }
                break;
            case 3329:
                if (str.equals("hi")) {
                    return CaptchaConfiguration.LangType.LANG_HI;
                }
                break;
            case 3338:
                if (str.equals("hr")) {
                    return CaptchaConfiguration.LangType.LANG_HR;
                }
                break;
            case 3341:
                if (str.equals("hu")) {
                    return CaptchaConfiguration.LangType.LANG_HU;
                }
                break;
            case 3355:
                if (str.equals("id")) {
                    return CaptchaConfiguration.LangType.LANG_ID;
                }
                break;
            case 3371:
                if (str.equals("it")) {
                    return CaptchaConfiguration.LangType.LANG_IT;
                }
                break;
            case 3383:
                if (str.equals("ja")) {
                    return CaptchaConfiguration.LangType.LANG_JA;
                }
                break;
            case 3404:
                if (str.equals("jv")) {
                    return CaptchaConfiguration.LangType.LANG_JV;
                }
                break;
            case 3414:
                if (str.equals("ka")) {
                    return CaptchaConfiguration.LangType.LANG_KA;
                }
                break;
            case 3424:
                if (str.equals("kk")) {
                    return CaptchaConfiguration.LangType.LANG_KK;
                }
                break;
            case 3426:
                if (str.equals("km")) {
                    return CaptchaConfiguration.LangType.LANG_KM;
                }
                break;
            case 3427:
                if (str.equals("kn")) {
                    return CaptchaConfiguration.LangType.LANG_KN;
                }
                break;
            case 3428:
                if (str.equals("ko")) {
                    return CaptchaConfiguration.LangType.LANG_KO;
                }
                break;
            case 3459:
                if (str.equals("lo")) {
                    return CaptchaConfiguration.LangType.LANG_LO;
                }
                break;
            case 3464:
                if (str.equals("lt")) {
                    return CaptchaConfiguration.LangType.LANG_LT;
                }
                break;
            case 3466:
                if (str.equals("lv")) {
                    return CaptchaConfiguration.LangType.LANG_LV;
                }
                break;
            case 3484:
                if (str.equals("mi")) {
                    return CaptchaConfiguration.LangType.LANG_MI;
                }
                break;
            case 3486:
                if (str.equals("mk")) {
                    return CaptchaConfiguration.LangType.LANG_MK;
                }
                break;
            case 3487:
                if (str.equals("ml")) {
                    return CaptchaConfiguration.LangType.LANG_ML;
                }
                break;
            case 3489:
                if (str.equals("mn")) {
                    return CaptchaConfiguration.LangType.LANG_MN;
                }
                break;
            case 3493:
                if (str.equals("mr")) {
                    return CaptchaConfiguration.LangType.LANG_MR;
                }
                break;
            case 3494:
                if (str.equals("ms")) {
                    return CaptchaConfiguration.LangType.LANG_MS;
                }
                break;
            case 3500:
                if (str.equals("my")) {
                    return CaptchaConfiguration.LangType.LANG_MY;
                }
                break;
            case 3511:
                if (str.equals("ne")) {
                    return CaptchaConfiguration.LangType.LANG_NE;
                }
                break;
            case 3518:
                if (str.equals("nl")) {
                    return CaptchaConfiguration.LangType.LANG_NL;
                }
                break;
            case 3521:
                if (str.equals("no")) {
                    return CaptchaConfiguration.LangType.LANG_NO;
                }
                break;
            case 3555:
                if (str.equals("or")) {
                    return CaptchaConfiguration.LangType.LANG_OR;
                }
                break;
            case 3569:
                if (str.equals("pa")) {
                    return CaptchaConfiguration.LangType.LANG_PA;
                }
                break;
            case 3580:
                if (str.equals(ai.ax)) {
                    return CaptchaConfiguration.LangType.LANG_PL;
                }
                break;
            case 3588:
                if (str.equals("pt")) {
                    return CaptchaConfiguration.LangType.LANG_PT;
                }
                break;
            case 3645:
                if (str.equals("ro")) {
                    return CaptchaConfiguration.LangType.LANG_RO;
                }
                break;
            case 3651:
                if (str.equals("ru")) {
                    return CaptchaConfiguration.LangType.LANG_RU;
                }
                break;
            case 3670:
                if (str.equals("si")) {
                    return CaptchaConfiguration.LangType.LANG_SI;
                }
                break;
            case 3672:
                if (str.equals("sk")) {
                    return CaptchaConfiguration.LangType.LANG_SK;
                }
                break;
            case 3673:
                if (str.equals("sl")) {
                    return CaptchaConfiguration.LangType.LANG_SL;
                }
                break;
            case 3679:
                if (str.equals("sr")) {
                    return CaptchaConfiguration.LangType.LANG_SR;
                }
                break;
            case 3683:
                if (str.equals("sv")) {
                    return CaptchaConfiguration.LangType.LANG_SV;
                }
                break;
            case 3684:
                if (str.equals("sw")) {
                    return CaptchaConfiguration.LangType.LANG_SW;
                }
                break;
            case 3693:
                if (str.equals("ta")) {
                    return CaptchaConfiguration.LangType.LANG_TA;
                }
                break;
            case 3697:
                if (str.equals("te")) {
                    return CaptchaConfiguration.LangType.LANG_TE;
                }
                break;
            case 3700:
                if (str.equals("th")) {
                    return CaptchaConfiguration.LangType.LANG_TH;
                }
                break;
            case 3710:
                if (str.equals("tr")) {
                    return CaptchaConfiguration.LangType.LANG_TR;
                }
                break;
            case 3730:
                if (str.equals("ug")) {
                    return CaptchaConfiguration.LangType.LANG_UG;
                }
                break;
            case 3734:
                if (str.equals("uk")) {
                    return CaptchaConfiguration.LangType.LANG_UK;
                }
                break;
            case 3741:
                if (str.equals("ur")) {
                    return CaptchaConfiguration.LangType.LANG_UR;
                }
                break;
            case 3749:
                if (str.equals("uz")) {
                    return CaptchaConfiguration.LangType.LANG_UZ;
                }
                break;
            case 3763:
                if (str.equals("vi")) {
                    return CaptchaConfiguration.LangType.LANG_VI;
                }
                break;
            case 101385:
                if (str.equals("fil")) {
                    return CaptchaConfiguration.LangType.LANG_FIL;
                }
                break;
            case 107861:
                if (str.equals("mai")) {
                    return CaptchaConfiguration.LangType.LANG_MAI;
                }
                break;
            case 96598143:
                if (str.equals("en-GB")) {
                    return CaptchaConfiguration.LangType.LANG_EN;
                }
                break;
            case 96598594:
                if (str.equals("en-US")) {
                    return CaptchaConfiguration.LangType.LANG_EN_US;
                }
                break;
            case 96748276:
                if (str.equals("es-la")) {
                    return CaptchaConfiguration.LangType.LANG_ES_LA;
                }
                break;
            case 106936505:
                if (str.equals("pt-br")) {
                    return CaptchaConfiguration.LangType.LANG_PT_BR;
                }
                break;
            case 115813226:
                if (str.equals("zh-CN")) {
                    return CaptchaConfiguration.LangType.LANG_ZH_CN;
                }
                break;
            case 115813378:
                if (str.equals("zh-HK")) {
                    return CaptchaConfiguration.LangType.LANG_ZH_HK;
                }
                break;
            case 115813762:
                if (str.equals("zh-TW")) {
                    return CaptchaConfiguration.LangType.LANG_ZH_TW;
                }
                break;
        }
        return CaptchaConfiguration.LangType.LANG_ZH_CN;
    }
}
