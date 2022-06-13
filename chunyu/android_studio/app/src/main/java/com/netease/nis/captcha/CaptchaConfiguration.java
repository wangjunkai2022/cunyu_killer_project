package com.netease.nis.captcha;

import android.content.Context;
import android.text.TextUtils;

/* loaded from: classes2.dex */
public class CaptchaConfiguration {
    final String A;
    final Context a;
    final String b;
    final ModeType c;
    final LangType d;
    final Theme e;
    final float f;
    final String g;
    final int h;
    final int i;
    final int j;
    final CaptchaListener k;
    final long l;
    final boolean m;
    final boolean n;
    final boolean o;
    final int p;
    final String q;
    final String r;
    final String s;
    final boolean t;
    final String u;
    final String v;
    final String w;
    final String x;
    final int y;
    final int z;

    /* loaded from: classes2.dex */
    public enum LangType {
        LANG_DEFAULT,
        LANG_AM,
        LANG_AR,
        LANG_AS,
        LANG_AZ,
        LANG_BE,
        LANG_BG,
        LANG_BN,
        LANG_BO,
        LANG_BS,
        LANG_CA,
        LANG_CS,
        LANG_DA,
        LANG_DE,
        LANG_EL,
        LANG_EN,
        LANG_EN_US,
        LANG_ES,
        LANG_ES_LA,
        LANG_ET,
        LANG_EU,
        LANG_FA,
        LANG_FI,
        LANG_FR,
        LANG_GL,
        LANG_GU,
        LANG_HI,
        LANG_HR,
        LANG_HU,
        LANG_ID,
        LANG_IT,
        LANG_HE,
        LANG_JA,
        LANG_JV,
        LANG_KA,
        LANG_KK,
        LANG_KM,
        LANG_KN,
        LANG_KO,
        LANG_LO,
        LANG_LT,
        LANG_LV,
        LANG_MAI,
        LANG_MI,
        LANG_MK,
        LANG_ML,
        LANG_MN,
        LANG_MR,
        LANG_MS,
        LANG_MY,
        LANG_NO,
        LANG_NE,
        LANG_NL,
        LANG_OR,
        LANG_PA,
        LANG_PL,
        LANG_PT,
        LANG_PT_BR,
        LANG_RO,
        LANG_RU,
        LANG_SI,
        LANG_SK,
        LANG_SL,
        LANG_SR,
        LANG_SV,
        LANG_SW,
        LANG_TA,
        LANG_TE,
        LANG_TH,
        LANG_FIL,
        LANG_TR,
        LANG_UG,
        LANG_UK,
        LANG_UR,
        LANG_UZ,
        LANG_VI,
        LANG_ZH_CN,
        LANG_ZH_HK,
        LANG_ZH_TW
    }

    /* loaded from: classes2.dex */
    public enum ModeType {
        MODE_CAPTCHA,
        MODE_INTELLIGENT_NO_SENSE
    }

    /* loaded from: classes2.dex */
    public enum Theme {
        LIGHT,
        DARK
    }

    public CaptchaConfiguration(Context context, Builder builder) {
        this.a = context;
        this.b = builder.captchaId;
        String unused = builder.url;
        this.c = builder.mode;
        this.d = builder.langType;
        this.e = builder.theme;
        this.f = builder.backgroundDimAmount;
        String unused2 = builder.startIconUrl;
        this.g = builder.movingIconUrl;
        String unused3 = builder.errorIconUrl;
        this.h = builder.xCoordinate;
        this.i = builder.yCoordinate;
        this.j = builder.width;
        this.k = builder.listener;
        this.l = builder.timeout;
        this.m = builder.isHideCloseButton;
        this.n = builder.isTouchOutsideDisappear;
        this.o = builder.isUsedDefaultFallback;
        this.p = builder.failedMaxRetryCount;
        this.s = builder.protocol;
        this.q = builder.apiServer;
        this.r = builder.staticServer;
        this.t = builder.isIpv6;
        this.u = builder.mWmConfigServer;
        this.v = builder.mWmApiServer;
        this.w = builder.mWmStaticServer;
        this.x = builder.loadingText;
        this.y = builder.loadingTextId;
        this.z = builder.loadingAnimResId;
        this.A = builder.extraData;
        c.a(builder.debug);
    }

    /* loaded from: classes2.dex */
    public static class Builder {
        private String apiServer;
        private String captchaId;
        private boolean debug;
        private String errorIconUrl;
        private String extraData;
        private boolean isIpv6;
        private CaptchaListener listener;
        private int loadingAnimResId;
        private String loadingText;
        private int loadingTextId;
        private String mWmApiServer;
        private String mWmConfigServer;
        private String mWmStaticServer;
        private String movingIconUrl;
        private String protocol;
        private String startIconUrl;
        private String staticServer;
        private String url = "https://cstaticdun.126.net/api/v2/mobile.v2.10.1.html";
        private ModeType mode = ModeType.MODE_CAPTCHA;
        private LangType langType = LangType.LANG_DEFAULT;
        private Theme theme = Theme.LIGHT;
        private long timeout = 10000;
        private float backgroundDimAmount = 0.5f;
        private int xCoordinate = -1;
        private int yCoordinate = -1;
        private int width = 0;
        private int height = 0;
        private boolean isHideCloseButton = false;
        private boolean isTouchOutsideDisappear = true;
        private boolean isUsedDefaultFallback = true;
        private int failedMaxRetryCount = 3;

        public Builder apiServer(String str) {
            this.apiServer = str;
            return this;
        }

        public Builder backgroundDimAmount(float f) {
            this.backgroundDimAmount = f;
            return this;
        }

        public CaptchaConfiguration build(Context context) {
            return new CaptchaConfiguration(context, this);
        }

        public Builder captchaId(String str) {
            this.captchaId = str;
            return this;
        }

        public Builder controlBarImageUrl(String str, String str2, String str3) {
            this.startIconUrl = str;
            this.movingIconUrl = str2;
            this.errorIconUrl = str3;
            return this;
        }

        public Builder debug(boolean z) {
            this.debug = z;
            return this;
        }

        public Builder extraData(String str) {
            this.extraData = str;
            return this;
        }

        public Builder failedMaxRetryCount(int i) {
            this.failedMaxRetryCount = i;
            return this;
        }

        public Builder hideCloseButton(boolean z) {
            this.isHideCloseButton = z;
            return this;
        }

        public Builder ipv6(boolean z) {
            this.isIpv6 = z;
            return this;
        }

        public Builder languageType(LangType langType) {
            this.langType = langType;
            return this;
        }

        public Builder listener(CaptchaListener captchaListener) {
            this.listener = captchaListener;
            return this;
        }

        public Builder loadingAnimResId(int i) {
            this.loadingAnimResId = i;
            return this;
        }

        public Builder loadingText(String str) {
            this.loadingText = str;
            return this;
        }

        public Builder loadingTextId(int i) {
            this.loadingTextId = i;
            return this;
        }

        public Builder mode(ModeType modeType) {
            this.mode = modeType;
            return this;
        }

        @Deprecated
        public Builder position(int i, int i2, int i3, int i4) {
            this.xCoordinate = i;
            this.yCoordinate = i2;
            this.width = i3;
            this.height = i4;
            return this;
        }

        public Builder protocol(String str) {
            if (!str.equals("http") && !str.equals("https")) {
                str = "https";
            }
            this.protocol = str;
            return this;
        }

        public Builder staticServer(String str) {
            this.staticServer = str;
            return this;
        }

        public Builder theme(Theme theme) {
            this.theme = theme;
            return this;
        }

        public Builder timeout(long j) {
            this.timeout = j;
            return this;
        }

        public Builder touchOutsideDisappear(boolean z) {
            this.isTouchOutsideDisappear = z;
            return this;
        }

        public Builder url(String str) {
            if (!TextUtils.isEmpty(str)) {
                this.url = str;
            }
            return this;
        }

        public Builder useDefaultFallback(boolean z) {
            this.isUsedDefaultFallback = z;
            return this;
        }

        public Builder wmApiServer(String str) {
            this.mWmApiServer = str;
            return this;
        }

        public Builder wmConfigServer(String str) {
            this.mWmConfigServer = str;
            return this;
        }

        public Builder wmStaticServer(String str) {
            this.mWmStaticServer = str;
            return this;
        }

        public Builder position(int i, int i2) {
            this.xCoordinate = i;
            this.yCoordinate = i2;
            return this;
        }
    }
}
