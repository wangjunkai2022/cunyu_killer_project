package com.pichillilorenzo.flutter_inappwebview;

import android.os.Build;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.ValueCallback;
import com.google.android.gms.common.internal.ImagesContract;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class MyCookieManager implements MethodChannel.MethodCallHandler {
    static final String LOG_TAG = "MyCookieManager";
    public static MethodChannel channel;
    public static CookieManager cookieManager;

    public MyCookieManager(BinaryMessenger binaryMessenger) {
        channel = new MethodChannel(binaryMessenger, "com.pichillilorenzo/flutter_inappwebview_cookiemanager");
        channel.setMethodCallHandler(this);
        cookieManager = CookieManager.getInstance();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
        char c;
        String str = methodCall.method;
        switch (str.hashCode()) {
            case -1222815761:
                if (str.equals("deleteCookie")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 126640486:
                if (str.equals("setCookie")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 747417188:
                if (str.equals("deleteCookies")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 822411705:
                if (str.equals("deleteAllCookies")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 1989049945:
                if (str.equals("getCookies")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        if (c == 0) {
            String str2 = (String) methodCall.argument(ImagesContract.URL);
            String str3 = (String) methodCall.argument("name");
            String str4 = (String) methodCall.argument("value");
            String str5 = (String) methodCall.argument("domain");
            String str6 = (String) methodCall.argument("path");
            String str7 = (String) methodCall.argument("expiresDate");
            setCookie(str2, str3, str4, str5, str6, str7 != null ? new Long(str7) : null, (Integer) methodCall.argument("maxAge"), (Boolean) methodCall.argument("isSecure"), (Boolean) methodCall.argument("isHttpOnly"), (String) methodCall.argument("sameSite"), result);
        } else if (c == 1) {
            result.success(getCookies((String) methodCall.argument(ImagesContract.URL)));
        } else if (c == 2) {
            deleteCookie((String) methodCall.argument(ImagesContract.URL), (String) methodCall.argument("name"), (String) methodCall.argument("domain"), (String) methodCall.argument("path"), result);
        } else if (c == 3) {
            deleteCookies((String) methodCall.argument(ImagesContract.URL), (String) methodCall.argument("domain"), (String) methodCall.argument("path"), result);
        } else if (c != 4) {
            result.notImplemented();
        } else {
            deleteAllCookies(result);
        }
    }

    public static void setCookie(String str, String str2, String str3, String str4, String str5, Long l, Integer num, Boolean bool, Boolean bool2, String str6, final MethodChannel.Result result) {
        String str7 = str2 + "=" + str3 + "; Domain=" + str4 + "; Path=" + str5;
        if (l != null) {
            str7 = str7 + "; Expires=" + getCookieExpirationDate(l);
        }
        if (num != null) {
            str7 = str7 + "; Max-Age=" + num.toString();
        }
        if (bool != null && bool.booleanValue()) {
            str7 = str7 + "; Secure";
        }
        if (bool2 != null && bool2.booleanValue()) {
            str7 = str7 + "; HttpOnly";
        }
        if (str6 != null) {
            str7 = str7 + "; SameSite=" + str6;
        }
        String str8 = str7 + ";";
        if (Build.VERSION.SDK_INT >= 21) {
            cookieManager.setCookie(str, str8, new ValueCallback<Boolean>() { // from class: com.pichillilorenzo.flutter_inappwebview.MyCookieManager.1
                public void onReceiveValue(Boolean bool3) {
                    MethodChannel.Result.this.success(true);
                }
            });
            cookieManager.flush();
            return;
        }
        CookieSyncManager createInstance = CookieSyncManager.createInstance(Shared.applicationContext);
        createInstance.startSync();
        cookieManager.setCookie(str, str8);
        result.success(true);
        createInstance.stopSync();
        createInstance.sync();
    }

    public static List<Map<String, Object>> getCookies(String str) {
        ArrayList arrayList = new ArrayList();
        String cookie = cookieManager.getCookie(str);
        if (cookie != null) {
            for (String str2 : cookie.split(";")) {
                String[] split = str2.split("=", 2);
                String trim = split[0].trim();
                String trim2 = split.length > 1 ? split[1].trim() : "";
                HashMap hashMap = new HashMap();
                hashMap.put("name", trim);
                hashMap.put("value", trim2);
                hashMap.put("expiresDate", null);
                hashMap.put("isSessionOnly", null);
                hashMap.put("domain", null);
                hashMap.put("sameSite", null);
                hashMap.put("isSecure", null);
                hashMap.put("isHttpOnly", null);
                hashMap.put("path", null);
                arrayList.add(hashMap);
            }
        }
        return arrayList;
    }

    public static void deleteCookie(String str, String str2, String str3, String str4, final MethodChannel.Result result) {
        String str5 = str2 + "=; Path=" + str4 + "; Domain=" + str3 + "; Max-Age=-1;";
        if (Build.VERSION.SDK_INT >= 21) {
            cookieManager.setCookie(str, str5, new ValueCallback<Boolean>() { // from class: com.pichillilorenzo.flutter_inappwebview.MyCookieManager.2
                public void onReceiveValue(Boolean bool) {
                    MethodChannel.Result.this.success(true);
                }
            });
            cookieManager.flush();
            return;
        }
        CookieSyncManager createInstance = CookieSyncManager.createInstance(Shared.applicationContext);
        createInstance.startSync();
        cookieManager.setCookie(str, str5);
        result.success(true);
        createInstance.stopSync();
        createInstance.sync();
    }

    public static void deleteCookies(String str, String str2, String str3, MethodChannel.Result result) {
        CookieSyncManager cookieSyncManager;
        String cookie = cookieManager.getCookie(str);
        if (cookie != null) {
            if (Build.VERSION.SDK_INT < 21) {
                cookieSyncManager = CookieSyncManager.createInstance(Shared.applicationContext);
                cookieSyncManager.startSync();
            } else {
                cookieSyncManager = null;
            }
            for (String str4 : cookie.split(";")) {
                String str5 = str4.split("=", 2)[0].trim() + "=; Path=" + str3 + "; Domain=" + str2 + "; Max-Age=-1;";
                if (Build.VERSION.SDK_INT >= 21) {
                    cookieManager.setCookie(str, str5, null);
                } else {
                    cookieManager.setCookie(str, str5);
                }
            }
            if (cookieSyncManager != null) {
                cookieSyncManager.stopSync();
                cookieSyncManager.sync();
            } else if (Build.VERSION.SDK_INT >= 21) {
                cookieManager.flush();
            }
        }
        result.success(true);
    }

    public static void deleteAllCookies(final MethodChannel.Result result) {
        if (Build.VERSION.SDK_INT >= 21) {
            cookieManager.removeAllCookies(new ValueCallback<Boolean>() { // from class: com.pichillilorenzo.flutter_inappwebview.MyCookieManager.3
                public void onReceiveValue(Boolean bool) {
                    MethodChannel.Result.this.success(true);
                }
            });
            cookieManager.flush();
            return;
        }
        CookieSyncManager createInstance = CookieSyncManager.createInstance(Shared.applicationContext);
        createInstance.startSync();
        cookieManager.removeAllCookie();
        result.success(true);
        createInstance.stopSync();
        createInstance.sync();
    }

    public static String getCookieExpirationDate(Long l) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, d MMM yyyy hh:mm:ss z", Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
        return simpleDateFormat.format(new Date(l.longValue()));
    }

    public void dispose() {
        channel.setMethodCallHandler(null);
    }
}
