package com.netease.mobsec.poly;

import android.content.Context;
import android.graphics.Point;
import android.location.Location;
import android.location.LocationManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.IBinder;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.view.Display;
import android.view.WindowManager;
import androidx.webkit.ProxyConfig;
import com.github.florent37.assets_audio_player.Player;
import com.netease.mobsec.poly.b;
import java.lang.reflect.Method;
import java.security.KeyFactory;
import java.security.spec.X509EncodedKeySpec;
import java.util.Arrays;
import java.util.List;
import javax.crypto.Cipher;

/* loaded from: classes2.dex */
public class a {
    public static int o = 2;
    public static int p;

    public static String a(int i) {
        try {
            Class<?> cls = Class.forName(d("p?x\\~8x\u0000~\"2}t#jGr4QO\u007f0{Kc", "\u0011Q\u001c."));
            if (cls == null) {
                return null;
            }
            Method declaredMethod = cls.getDeclaredMethod(d("}SL\u0000\u007fDN:yS", "\u001a68S"), String.class);
            declaredMethod.setAccessible(true);
            b a = b.a.a((IBinder) declaredMethod.invoke(cls, d("7EOR0PTH<\\I[1", "^5'=")));
            if (a != null) {
                return i == 1 ? a.b() : i == 2 ? a.c() : "";
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public static String b(Context context) {
        int i;
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        int i2 = Build.VERSION.SDK_INT;
        int i3 = 0;
        if (i2 >= 17) {
            defaultDisplay.getRealSize(point);
            i3 = point.x;
            i = point.y;
        } else {
            i = 0;
        }
        if (i2 < 17) {
            i3 = defaultDisplay.getWidth();
            i = defaultDisplay.getHeight();
        }
        return i3 + ProxyConfig.MATCH_ALL_SCHEMES + i;
    }

    public static int c(Context context) {
        if (context != null) {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null && activeNetworkInfo.isAvailable()) {
                int type = activeNetworkInfo.getType();
                if (type == 1) {
                    return 1;
                }
                if (type == 0) {
                    int subtype = activeNetworkInfo.getSubtype();
                    TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                    if (subtype == 13 && !telephonyManager.isNetworkRoaming()) {
                        return 4;
                    }
                    int i = 3;
                    if (!(subtype == 3 || subtype == 8 || subtype == 5 || subtype == 15 || subtype == 14 || subtype == 12 || subtype == 10 || subtype == 9 || (subtype == 6 && !telephonyManager.isNetworkRoaming()))) {
                        i = 2;
                        if (subtype == 1 || subtype == 2 || subtype == 4 || subtype == 11 || subtype != 7 || !telephonyManager.isNetworkRoaming()) {
                        }
                    }
                    return i;
                }
            } else if (activeNetworkInfo == null) {
                return 0;
            }
        }
        return -1;
    }

    public static int d(Context context) {
        try {
            String property = System.getProperty(d("K]ni\rYhv[PRvP]", "#)\u001a\u0019"));
            String property2 = System.getProperty(d("{nJ|=jLckcncan", "\u0013\u001a>\f"));
            if (property2 == null) {
                property2 = d("\u0003\b", ".9,\u0012");
            }
            return (TextUtils.isEmpty(property) || Integer.parseInt(property2) == -1) ? 0 : 1;
        } catch (Exception unused) {
            return 0;
        }
    }

    public static String d(String str, String str2) {
        char[] charArray = str2.toCharArray();
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            sb.append((char) (str.charAt(i) ^ charArray[i % charArray.length]));
        }
        return sb.toString();
    }

    public static double[] e(Context context) {
        LocationManager locationManager;
        double[] dArr = {0.0d, 0.0d};
        try {
            locationManager = (LocationManager) context.getSystemService("location");
        } catch (Exception unused) {
        }
        if (context.checkCallingOrSelfPermission("android.permission.ACCESS_FINE_LOCATION") != 0) {
            return dArr;
        }
        Location location = null;
        List<String> providers = locationManager.getProviders(true);
        if (providers.contains("gps")) {
            location = locationManager.getLastKnownLocation("gps");
        }
        if (location == null && providers.contains(Player.AUDIO_TYPE_NETWORK)) {
            location = locationManager.getLastKnownLocation(Player.AUDIO_TYPE_NETWORK);
        }
        if (location != null) {
            dArr[0] = location.getLongitude();
            dArr[1] = location.getLatitude();
        }
        return dArr;
    }

    public static int f(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        try {
            Cipher instance = Cipher.getInstance("RSA/ECB/PKCS1Padding");
            instance.init(2, KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(bArr3)));
            return Arrays.equals(instance.doFinal(bArr), bArr2) ? 1 : 0;
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }
}
