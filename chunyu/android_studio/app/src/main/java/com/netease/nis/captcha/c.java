package com.netease.nis.captcha;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.DhcpInfo;
import android.net.NetworkInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.LocaleList;
import android.util.DisplayMetrics;
import android.util.Log;
import com.netease.nis.captcha.CaptchaConfiguration;
import com.umeng.analytics.pro.ai;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.Enumeration;
import java.util.Locale;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.io.IOUtils;

/* compiled from: CaptchaUtil.java */
/* loaded from: classes2.dex */
public class c {
    private static boolean a;

    /* compiled from: CaptchaUtil.java */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class a {
        static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[CaptchaConfiguration.LangType.values().length];
            a = iArr;
            try {
                iArr[CaptchaConfiguration.LangType.LANG_AM.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[CaptchaConfiguration.LangType.LANG_AR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[CaptchaConfiguration.LangType.LANG_AS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[CaptchaConfiguration.LangType.LANG_AZ.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[CaptchaConfiguration.LangType.LANG_BE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[CaptchaConfiguration.LangType.LANG_BG.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                a[CaptchaConfiguration.LangType.LANG_BN.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                a[CaptchaConfiguration.LangType.LANG_BO.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                a[CaptchaConfiguration.LangType.LANG_BS.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                a[CaptchaConfiguration.LangType.LANG_CA.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                a[CaptchaConfiguration.LangType.LANG_CS.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                a[CaptchaConfiguration.LangType.LANG_DA.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                a[CaptchaConfiguration.LangType.LANG_DE.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                a[CaptchaConfiguration.LangType.LANG_EL.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                a[CaptchaConfiguration.LangType.LANG_EN.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                a[CaptchaConfiguration.LangType.LANG_EN_US.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                a[CaptchaConfiguration.LangType.LANG_ES.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                a[CaptchaConfiguration.LangType.LANG_ES_LA.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                a[CaptchaConfiguration.LangType.LANG_ET.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                a[CaptchaConfiguration.LangType.LANG_EU.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                a[CaptchaConfiguration.LangType.LANG_FA.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                a[CaptchaConfiguration.LangType.LANG_FI.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                a[CaptchaConfiguration.LangType.LANG_FR.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                a[CaptchaConfiguration.LangType.LANG_GL.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                a[CaptchaConfiguration.LangType.LANG_GU.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                a[CaptchaConfiguration.LangType.LANG_HI.ordinal()] = 26;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                a[CaptchaConfiguration.LangType.LANG_HR.ordinal()] = 27;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                a[CaptchaConfiguration.LangType.LANG_HU.ordinal()] = 28;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                a[CaptchaConfiguration.LangType.LANG_ID.ordinal()] = 29;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                a[CaptchaConfiguration.LangType.LANG_IT.ordinal()] = 30;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                a[CaptchaConfiguration.LangType.LANG_HE.ordinal()] = 31;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                a[CaptchaConfiguration.LangType.LANG_JA.ordinal()] = 32;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                a[CaptchaConfiguration.LangType.LANG_JV.ordinal()] = 33;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                a[CaptchaConfiguration.LangType.LANG_KA.ordinal()] = 34;
            } catch (NoSuchFieldError unused34) {
            }
            try {
                a[CaptchaConfiguration.LangType.LANG_KK.ordinal()] = 35;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                a[CaptchaConfiguration.LangType.LANG_KM.ordinal()] = 36;
            } catch (NoSuchFieldError unused36) {
            }
            try {
                a[CaptchaConfiguration.LangType.LANG_KN.ordinal()] = 37;
            } catch (NoSuchFieldError unused37) {
            }
            try {
                a[CaptchaConfiguration.LangType.LANG_KO.ordinal()] = 38;
            } catch (NoSuchFieldError unused38) {
            }
            try {
                a[CaptchaConfiguration.LangType.LANG_LO.ordinal()] = 39;
            } catch (NoSuchFieldError unused39) {
            }
            try {
                a[CaptchaConfiguration.LangType.LANG_LT.ordinal()] = 40;
            } catch (NoSuchFieldError unused40) {
            }
            try {
                a[CaptchaConfiguration.LangType.LANG_LV.ordinal()] = 41;
            } catch (NoSuchFieldError unused41) {
            }
            try {
                a[CaptchaConfiguration.LangType.LANG_MAI.ordinal()] = 42;
            } catch (NoSuchFieldError unused42) {
            }
            try {
                a[CaptchaConfiguration.LangType.LANG_MI.ordinal()] = 43;
            } catch (NoSuchFieldError unused43) {
            }
            try {
                a[CaptchaConfiguration.LangType.LANG_MK.ordinal()] = 44;
            } catch (NoSuchFieldError unused44) {
            }
            try {
                a[CaptchaConfiguration.LangType.LANG_ML.ordinal()] = 45;
            } catch (NoSuchFieldError unused45) {
            }
            try {
                a[CaptchaConfiguration.LangType.LANG_MN.ordinal()] = 46;
            } catch (NoSuchFieldError unused46) {
            }
            try {
                a[CaptchaConfiguration.LangType.LANG_MR.ordinal()] = 47;
            } catch (NoSuchFieldError unused47) {
            }
            try {
                a[CaptchaConfiguration.LangType.LANG_MS.ordinal()] = 48;
            } catch (NoSuchFieldError unused48) {
            }
            try {
                a[CaptchaConfiguration.LangType.LANG_MY.ordinal()] = 49;
            } catch (NoSuchFieldError unused49) {
            }
            try {
                a[CaptchaConfiguration.LangType.LANG_NO.ordinal()] = 50;
            } catch (NoSuchFieldError unused50) {
            }
            try {
                a[CaptchaConfiguration.LangType.LANG_NE.ordinal()] = 51;
            } catch (NoSuchFieldError unused51) {
            }
            try {
                a[CaptchaConfiguration.LangType.LANG_NL.ordinal()] = 52;
            } catch (NoSuchFieldError unused52) {
            }
            try {
                a[CaptchaConfiguration.LangType.LANG_OR.ordinal()] = 53;
            } catch (NoSuchFieldError unused53) {
            }
            try {
                a[CaptchaConfiguration.LangType.LANG_PA.ordinal()] = 54;
            } catch (NoSuchFieldError unused54) {
            }
            try {
                a[CaptchaConfiguration.LangType.LANG_PL.ordinal()] = 55;
            } catch (NoSuchFieldError unused55) {
            }
            try {
                a[CaptchaConfiguration.LangType.LANG_PT.ordinal()] = 56;
            } catch (NoSuchFieldError unused56) {
            }
            try {
                a[CaptchaConfiguration.LangType.LANG_PT_BR.ordinal()] = 57;
            } catch (NoSuchFieldError unused57) {
            }
            try {
                a[CaptchaConfiguration.LangType.LANG_RO.ordinal()] = 58;
            } catch (NoSuchFieldError unused58) {
            }
            try {
                a[CaptchaConfiguration.LangType.LANG_RU.ordinal()] = 59;
            } catch (NoSuchFieldError unused59) {
            }
            try {
                a[CaptchaConfiguration.LangType.LANG_SI.ordinal()] = 60;
            } catch (NoSuchFieldError unused60) {
            }
            try {
                a[CaptchaConfiguration.LangType.LANG_SK.ordinal()] = 61;
            } catch (NoSuchFieldError unused61) {
            }
            try {
                a[CaptchaConfiguration.LangType.LANG_SL.ordinal()] = 62;
            } catch (NoSuchFieldError unused62) {
            }
            try {
                a[CaptchaConfiguration.LangType.LANG_SR.ordinal()] = 63;
            } catch (NoSuchFieldError unused63) {
            }
            try {
                a[CaptchaConfiguration.LangType.LANG_SV.ordinal()] = 64;
            } catch (NoSuchFieldError unused64) {
            }
            try {
                a[CaptchaConfiguration.LangType.LANG_SW.ordinal()] = 65;
            } catch (NoSuchFieldError unused65) {
            }
            try {
                a[CaptchaConfiguration.LangType.LANG_TA.ordinal()] = 66;
            } catch (NoSuchFieldError unused66) {
            }
            try {
                a[CaptchaConfiguration.LangType.LANG_TE.ordinal()] = 67;
            } catch (NoSuchFieldError unused67) {
            }
            try {
                a[CaptchaConfiguration.LangType.LANG_TH.ordinal()] = 68;
            } catch (NoSuchFieldError unused68) {
            }
            try {
                a[CaptchaConfiguration.LangType.LANG_FIL.ordinal()] = 69;
            } catch (NoSuchFieldError unused69) {
            }
            try {
                a[CaptchaConfiguration.LangType.LANG_TR.ordinal()] = 70;
            } catch (NoSuchFieldError unused70) {
            }
            try {
                a[CaptchaConfiguration.LangType.LANG_UG.ordinal()] = 71;
            } catch (NoSuchFieldError unused71) {
            }
            try {
                a[CaptchaConfiguration.LangType.LANG_UK.ordinal()] = 72;
            } catch (NoSuchFieldError unused72) {
            }
            try {
                a[CaptchaConfiguration.LangType.LANG_UR.ordinal()] = 73;
            } catch (NoSuchFieldError unused73) {
            }
            try {
                a[CaptchaConfiguration.LangType.LANG_UZ.ordinal()] = 74;
            } catch (NoSuchFieldError unused74) {
            }
            try {
                a[CaptchaConfiguration.LangType.LANG_VI.ordinal()] = 75;
            } catch (NoSuchFieldError unused75) {
            }
            try {
                a[CaptchaConfiguration.LangType.LANG_ZH_CN.ordinal()] = 76;
            } catch (NoSuchFieldError unused76) {
            }
            try {
                a[CaptchaConfiguration.LangType.LANG_ZH_HK.ordinal()] = 77;
            } catch (NoSuchFieldError unused77) {
            }
            try {
                a[CaptchaConfiguration.LangType.LANG_ZH_TW.ordinal()] = 78;
            } catch (NoSuchFieldError unused78) {
            }
        }
    }

    public static void a(String str, Object... objArr) {
        if (a) {
            Log.d(Captcha.TAG, String.format(str, objArr));
        }
    }

    public static void b(String str, Object... objArr) {
        if (a) {
            Log.e(Captcha.TAG, String.format(str, objArr));
        }
    }

    public static boolean c(Context context) {
        NetworkInfo activeNetworkInfo;
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager != null && (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) != null && activeNetworkInfo.isConnected() && activeNetworkInfo.getState() == NetworkInfo.State.CONNECTED) {
            return true;
        }
        return false;
    }

    public static void a(boolean z) {
        a = z;
    }

    public static String b(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
            return null;
        }
        if (activeNetworkInfo.getType() == 0) {
            try {
                Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
                while (networkInterfaces.hasMoreElements()) {
                    Enumeration<InetAddress> inetAddresses = networkInterfaces.nextElement().getInetAddresses();
                    while (inetAddresses.hasMoreElements()) {
                        InetAddress nextElement = inetAddresses.nextElement();
                        if (!nextElement.isLoopbackAddress() && (nextElement instanceof Inet4Address)) {
                            return nextElement.getHostAddress();
                        }
                    }
                }
                return null;
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        } else if (activeNetworkInfo.getType() == 1) {
            return a(((WifiManager) context.getApplicationContext().getSystemService("wifi")).getConnectionInfo().getIpAddress());
        } else {
            return null;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static String a() {
        char c;
        Locale locale = Locale.getDefault();
        String language = locale.getLanguage();
        language.hashCode();
        switch (language.hashCode()) {
            case 3116:
                if (language.equals("am")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 3121:
                if (language.equals("ar")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 3122:
                if (language.equals("as")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 3129:
                if (language.equals("az")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 3139:
                if (language.equals("be")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 3141:
                if (language.equals("bg")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case 3148:
                if (language.equals("bn")) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case 3149:
                if (language.equals("bo")) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case 3153:
                if (language.equals("bs")) {
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            case 3166:
                if (language.equals("ca")) {
                    c = '\t';
                    break;
                }
                c = 65535;
                break;
            case 3184:
                if (language.equals("cs")) {
                    c = '\n';
                    break;
                }
                c = 65535;
                break;
            case 3197:
                if (language.equals("da")) {
                    c = 11;
                    break;
                }
                c = 65535;
                break;
            case 3201:
                if (language.equals("de")) {
                    c = '\f';
                    break;
                }
                c = 65535;
                break;
            case 3239:
                if (language.equals("el")) {
                    c = '\r';
                    break;
                }
                c = 65535;
                break;
            case 3241:
                if (language.equals("en")) {
                    c = 14;
                    break;
                }
                c = 65535;
                break;
            case 3246:
                if (language.equals("es")) {
                    c = 15;
                    break;
                }
                c = 65535;
                break;
            case 3247:
                if (language.equals("et")) {
                    c = 16;
                    break;
                }
                c = 65535;
                break;
            case 3248:
                if (language.equals("eu")) {
                    c = 17;
                    break;
                }
                c = 65535;
                break;
            case 3259:
                if (language.equals("fa")) {
                    c = 18;
                    break;
                }
                c = 65535;
                break;
            case 3267:
                if (language.equals("fi")) {
                    c = 19;
                    break;
                }
                c = 65535;
                break;
            case 3276:
                if (language.equals("fr")) {
                    c = 20;
                    break;
                }
                c = 65535;
                break;
            case 3301:
                if (language.equals("gl")) {
                    c = 21;
                    break;
                }
                c = 65535;
                break;
            case 3310:
                if (language.equals("gu")) {
                    c = 22;
                    break;
                }
                c = 65535;
                break;
            case 3329:
                if (language.equals("hi")) {
                    c = 23;
                    break;
                }
                c = 65535;
                break;
            case 3338:
                if (language.equals("hr")) {
                    c = 24;
                    break;
                }
                c = 65535;
                break;
            case 3341:
                if (language.equals("hu")) {
                    c = 25;
                    break;
                }
                c = 65535;
                break;
            case 3365:
                if (language.equals("in")) {
                    c = 26;
                    break;
                }
                c = 65535;
                break;
            case 3371:
                if (language.equals("it")) {
                    c = 27;
                    break;
                }
                c = 65535;
                break;
            case 3374:
                if (language.equals("iw")) {
                    c = 28;
                    break;
                }
                c = 65535;
                break;
            case 3383:
                if (language.equals("ja")) {
                    c = 29;
                    break;
                }
                c = 65535;
                break;
            case 3404:
                if (language.equals("jv")) {
                    c = 30;
                    break;
                }
                c = 65535;
                break;
            case 3414:
                if (language.equals("ka")) {
                    c = 31;
                    break;
                }
                c = 65535;
                break;
            case 3424:
                if (language.equals("kk")) {
                    c = ' ';
                    break;
                }
                c = 65535;
                break;
            case 3426:
                if (language.equals("km")) {
                    c = '!';
                    break;
                }
                c = 65535;
                break;
            case 3427:
                if (language.equals("kn")) {
                    c = '\"';
                    break;
                }
                c = 65535;
                break;
            case 3428:
                if (language.equals("ko")) {
                    c = '#';
                    break;
                }
                c = 65535;
                break;
            case 3459:
                if (language.equals("lo")) {
                    c = '$';
                    break;
                }
                c = 65535;
                break;
            case 3464:
                if (language.equals("lt")) {
                    c = '%';
                    break;
                }
                c = 65535;
                break;
            case 3466:
                if (language.equals("lv")) {
                    c = '&';
                    break;
                }
                c = 65535;
                break;
            case 3484:
                if (language.equals("mi")) {
                    c = '\'';
                    break;
                }
                c = 65535;
                break;
            case 3486:
                if (language.equals("mk")) {
                    c = '(';
                    break;
                }
                c = 65535;
                break;
            case 3487:
                if (language.equals("ml")) {
                    c = ')';
                    break;
                }
                c = 65535;
                break;
            case 3489:
                if (language.equals("mn")) {
                    c = '*';
                    break;
                }
                c = 65535;
                break;
            case 3493:
                if (language.equals("mr")) {
                    c = '+';
                    break;
                }
                c = 65535;
                break;
            case 3494:
                if (language.equals("ms")) {
                    c = ',';
                    break;
                }
                c = 65535;
                break;
            case 3500:
                if (language.equals("my")) {
                    c = '-';
                    break;
                }
                c = 65535;
                break;
            case 3508:
                if (language.equals("nb")) {
                    c = FilenameUtils.EXTENSION_SEPARATOR;
                    break;
                }
                c = 65535;
                break;
            case 3511:
                if (language.equals("ne")) {
                    c = IOUtils.DIR_SEPARATOR_UNIX;
                    break;
                }
                c = 65535;
                break;
            case 3518:
                if (language.equals("nl")) {
                    c = '0';
                    break;
                }
                c = 65535;
                break;
            case 3555:
                if (language.equals("or")) {
                    c = '1';
                    break;
                }
                c = 65535;
                break;
            case 3569:
                if (language.equals("pa")) {
                    c = '2';
                    break;
                }
                c = 65535;
                break;
            case 3580:
                if (language.equals(ai.ax)) {
                    c = '3';
                    break;
                }
                c = 65535;
                break;
            case 3588:
                if (language.equals("pt")) {
                    c = '4';
                    break;
                }
                c = 65535;
                break;
            case 3645:
                if (language.equals("ro")) {
                    c = '5';
                    break;
                }
                c = 65535;
                break;
            case 3651:
                if (language.equals("ru")) {
                    c = '6';
                    break;
                }
                c = 65535;
                break;
            case 3670:
                if (language.equals("si")) {
                    c = '7';
                    break;
                }
                c = 65535;
                break;
            case 3672:
                if (language.equals("sk")) {
                    c = '8';
                    break;
                }
                c = 65535;
                break;
            case 3673:
                if (language.equals("sl")) {
                    c = '9';
                    break;
                }
                c = 65535;
                break;
            case 3679:
                if (language.equals("sr")) {
                    c = ':';
                    break;
                }
                c = 65535;
                break;
            case 3683:
                if (language.equals("sv")) {
                    c = ';';
                    break;
                }
                c = 65535;
                break;
            case 3684:
                if (language.equals("sw")) {
                    c = '<';
                    break;
                }
                c = 65535;
                break;
            case 3693:
                if (language.equals("ta")) {
                    c = '=';
                    break;
                }
                c = 65535;
                break;
            case 3697:
                if (language.equals("te")) {
                    c = '>';
                    break;
                }
                c = 65535;
                break;
            case 3700:
                if (language.equals("th")) {
                    c = '?';
                    break;
                }
                c = 65535;
                break;
            case 3704:
                if (language.equals("tl")) {
                    c = '@';
                    break;
                }
                c = 65535;
                break;
            case 3710:
                if (language.equals("tr")) {
                    c = 'A';
                    break;
                }
                c = 65535;
                break;
            case 3730:
                if (language.equals("ug")) {
                    c = 'B';
                    break;
                }
                c = 65535;
                break;
            case 3734:
                if (language.equals("uk")) {
                    c = 'C';
                    break;
                }
                c = 65535;
                break;
            case 3741:
                if (language.equals("ur")) {
                    c = 'D';
                    break;
                }
                c = 65535;
                break;
            case 3749:
                if (language.equals("uz")) {
                    c = 'E';
                    break;
                }
                c = 65535;
                break;
            case 3763:
                if (language.equals("vi")) {
                    c = 'F';
                    break;
                }
                c = 65535;
                break;
            case 3886:
                if (language.equals("zh")) {
                    c = 'G';
                    break;
                }
                c = 65535;
                break;
            case 107861:
                if (language.equals("mai")) {
                    c = 'H';
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case '\b':
            case '\t':
            case '\n':
            case 11:
            case '\f':
            case '\r':
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 27:
            case 29:
            case 30:
            case 31:
            case ' ':
            case '!':
            case '\"':
            case '#':
            case '$':
            case '%':
            case '&':
            case '\'':
            case '(':
            case ')':
            case '*':
            case '+':
            case ',':
            case '-':
            case '/':
            case '0':
            case '1':
            case '2':
            case '3':
            case '5':
            case '6':
            case '7':
            case '8':
            case '9':
            case ':':
            case ';':
            case '<':
            case '=':
            case '>':
            case '?':
            case 'A':
            case 'B':
            case 'C':
            case 'D':
            case 'E':
            case 'F':
            case 'H':
                return locale.getLanguage();
            case 14:
                return locale.getCountry().equalsIgnoreCase("US") ? "en-US" : "en-GB";
            case 15:
                if (locale.getCountry().equalsIgnoreCase("US")) {
                    return "es-la";
                }
                return "es";
            case 26:
                return "id";
            case 28:
                return "he";
            case '.':
                return "no";
            case '4':
                if (locale.getCountry().equalsIgnoreCase("BR")) {
                    return "pt-br";
                }
                return "pt";
            case '@':
                return "fil";
            case 'G':
                String country = locale.getCountry();
                if (country.equalsIgnoreCase("HK")) {
                    return "zh-HK";
                }
                if (country.equalsIgnoreCase("TW")) {
                    return "zh-TW";
                }
                break;
        }
        return "zh-CN";
    }

    public static String a(CaptchaConfiguration.LangType langType) {
        switch (a.a[langType.ordinal()]) {
            case 1:
                return "am";
            case 2:
                return "ar";
            case 3:
                return "as";
            case 4:
                return "az";
            case 5:
                return "be";
            case 6:
                return "bg";
            case 7:
                return "bn";
            case 8:
                return "bo";
            case 9:
                return "bs";
            case 10:
                return "ca";
            case 11:
                return "cs";
            case 12:
                return "da";
            case 13:
                return "de";
            case 14:
                return "el";
            case 15:
                return "en-GB";
            case 16:
                return "en-US";
            case 17:
                return "es";
            case 18:
                return "es-la";
            case 19:
                return "et";
            case 20:
                return "eu";
            case 21:
                return "fa";
            case 22:
                return "fi";
            case 23:
                return "fr";
            case 24:
                return "gl";
            case 25:
                return "gu";
            case 26:
                return "hi";
            case 27:
                return "hr";
            case 28:
                return "hu";
            case 29:
                return "id";
            case 30:
                return "it";
            case 31:
                return "he";
            case 32:
                return "ja";
            case 33:
                return "jv";
            case 34:
                return "ka";
            case 35:
                return "kk";
            case 36:
                return "km";
            case 37:
                return "kn";
            case 38:
                return "ko";
            case 39:
                return "lo";
            case 40:
                return "lt";
            case 41:
                return "lv";
            case 42:
                return "mai";
            case 43:
                return "mi";
            case 44:
                return "mk";
            case 45:
                return "ml";
            case 46:
                return "mn";
            case 47:
                return "mr";
            case 48:
                return "ms";
            case 49:
                return "my";
            case 50:
                return "no";
            case 51:
                return "ne";
            case 52:
                return "nl";
            case 53:
                return "or";
            case 54:
                return "pa";
            case 55:
                return ai.ax;
            case 56:
                return "pt";
            case 57:
                return "pt-br";
            case 58:
                return "ro";
            case 59:
                return "ru";
            case 60:
                return "si";
            case 61:
                return "sk";
            case 62:
                return "sl";
            case 63:
                return "sr";
            case 64:
                return "sv";
            case 65:
                return "sw";
            case 66:
                return "ta";
            case 67:
                return "te";
            case 68:
                return "th";
            case 69:
                return "fil";
            case 70:
                return "tr";
            case 71:
                return "ug";
            case 72:
                return "uk";
            case 73:
                return "ur";
            case 74:
                return "uz";
            case 75:
                return "vi";
            case 76:
                return "zh-CN";
            case 77:
                return "zh-HK";
            case 78:
                return "zh-TW";
            default:
                return "";
        }
    }

    public static void a(Context context, CaptchaConfiguration.LangType langType) {
        Locale locale;
        switch (a.a[langType.ordinal()]) {
            case 1:
                locale = new Locale("am");
                break;
            case 2:
                locale = new Locale("ar");
                break;
            case 3:
                locale = new Locale("as");
                break;
            case 4:
                locale = new Locale("az");
                break;
            case 5:
                locale = new Locale("be");
                break;
            case 6:
                locale = new Locale("bg");
                break;
            case 7:
                locale = new Locale("bn");
                break;
            case 8:
                locale = new Locale("bo");
                break;
            case 9:
                locale = new Locale("bs");
                break;
            case 10:
                locale = new Locale("ca");
                break;
            case 11:
                locale = new Locale("cs");
                break;
            case 12:
                locale = new Locale("da");
                break;
            case 13:
                locale = new Locale("de");
                break;
            case 14:
                locale = new Locale("el");
                break;
            case 15:
                locale = Locale.UK;
                break;
            case 16:
                locale = Locale.US;
                break;
            case 17:
                locale = new Locale("es");
                break;
            case 18:
                locale = new Locale("es", "US");
                break;
            case 19:
                locale = new Locale("et");
                break;
            case 20:
                locale = new Locale("eu");
                break;
            case 21:
                locale = new Locale("fa");
                break;
            case 22:
                locale = new Locale("fi");
                break;
            case 23:
                locale = Locale.FRENCH;
                break;
            case 24:
                locale = new Locale("gl");
                break;
            case 25:
                locale = new Locale("gu");
                break;
            case 26:
                locale = new Locale("hi");
                break;
            case 27:
                locale = new Locale("hr");
                break;
            case 28:
                locale = new Locale("hu");
                break;
            case 29:
                locale = new Locale("in");
                break;
            case 30:
                locale = new Locale("it");
                break;
            case 31:
                locale = new Locale("iw");
                break;
            case 32:
                locale = Locale.JAPANESE;
                break;
            case 33:
                locale = new Locale("jv");
                break;
            case 34:
                locale = new Locale("ka");
                break;
            case 35:
                locale = new Locale("kk");
                break;
            case 36:
                locale = new Locale("km");
                break;
            case 37:
                locale = new Locale("kn");
                break;
            case 38:
                locale = Locale.KOREAN;
                break;
            case 39:
                locale = new Locale("lo");
                break;
            case 40:
                locale = new Locale("lt");
                break;
            case 41:
                locale = new Locale("lv");
                break;
            case 42:
                locale = new Locale("mai");
                break;
            case 43:
                locale = new Locale("mi");
                break;
            case 44:
                locale = new Locale("mk");
                break;
            case 45:
                locale = new Locale("ml");
                break;
            case 46:
                locale = new Locale("mn");
                break;
            case 47:
                locale = new Locale("mr");
                break;
            case 48:
                locale = new Locale("ms");
                break;
            case 49:
                locale = new Locale("my");
                break;
            case 50:
                locale = new Locale("nb");
                break;
            case 51:
                locale = new Locale("ne");
                break;
            case 52:
                locale = new Locale("nl");
                break;
            case 53:
                locale = new Locale("or");
                break;
            case 54:
                locale = new Locale("pa");
                break;
            case 55:
                locale = new Locale(ai.ax);
                break;
            case 56:
                locale = new Locale("pt");
                break;
            case 57:
                locale = new Locale("pt", "BR");
                break;
            case 58:
                locale = new Locale("ro");
                break;
            case 59:
                locale = new Locale("ru");
                break;
            case 60:
                locale = new Locale("si");
                break;
            case 61:
                locale = new Locale("sk");
                break;
            case 62:
                locale = new Locale("sl");
                break;
            case 63:
                locale = new Locale("sr");
                break;
            case 64:
                locale = new Locale("sv");
                break;
            case 65:
                locale = new Locale("sw");
                break;
            case 66:
                locale = new Locale("ta");
                break;
            case 67:
                locale = new Locale("te");
                break;
            case 68:
                locale = new Locale("th");
                break;
            case 69:
                locale = new Locale("tl");
                break;
            case 70:
                locale = new Locale("tr");
                break;
            case 71:
                locale = new Locale("ug");
                break;
            case 72:
                locale = new Locale("uk");
                break;
            case 73:
                locale = new Locale("ur");
                break;
            case 74:
                locale = new Locale("uz");
                break;
            case 75:
                locale = new Locale("vi");
                break;
            case 76:
                locale = Locale.SIMPLIFIED_CHINESE;
                break;
            case 77:
                locale = new Locale("zh", "HK");
                break;
            case 78:
                locale = Locale.TAIWAN;
                break;
            default:
                locale = Locale.SIMPLIFIED_CHINESE;
                break;
        }
        a(context, locale);
    }

    private static void a(Context context, Locale locale) {
        Resources resources = context.getResources();
        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        Configuration configuration = resources.getConfiguration();
        int i = Build.VERSION.SDK_INT;
        if (i >= 24) {
            LocaleList localeList = new LocaleList(locale);
            LocaleList.setDefault(localeList);
            configuration.setLocales(localeList);
            context.createConfigurationContext(configuration);
        } else if (i >= 19) {
            configuration.setLocale(locale);
        } else {
            configuration.locale = locale;
        }
        resources.updateConfiguration(configuration, displayMetrics);
    }

    public static String a(Context context) {
        WifiManager wifiManager = (WifiManager) context.getApplicationContext().getSystemService("wifi");
        if (wifiManager == null) {
            return null;
        }
        DhcpInfo dhcpInfo = wifiManager.getDhcpInfo();
        String a2 = a(dhcpInfo.dns1);
        String a3 = a(dhcpInfo.dns2);
        return "dns1:" + a2 + " dns2:" + a3;
    }

    public static String a(int i) {
        return (i & 255) + "." + ((i >> 8) & 255) + "." + ((i >> 16) & 255) + "." + ((i >> 24) & 255);
    }
}
