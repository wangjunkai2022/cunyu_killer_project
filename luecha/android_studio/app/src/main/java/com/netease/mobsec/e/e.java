package com.netease.mobsec.e;

import android.util.Pair;
import com.netease.mobsec.AbstractNetClient;
import java.net.URLEncoder;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class e {
    private static final String a = "aZõbz\u0014®=hM¯v|@¯#?\u001døgg\u0000â}d\u0001÷ &Mî|oGæ=h@å`fGå-";
    private static String b;

    public static String a() {
        return b;
    }

    private static String a(String str, String str2) {
        char[] charArray = str2.toCharArray();
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            sb.append((char) (str.charAt(i) ^ charArray[i % charArray.length]));
        }
        return sb.toString();
    }

    public static JSONObject a(String str, int i) {
        try {
            String str2 = b() + str;
            AbstractNetClient m = f.m();
            if (m == null) {
                m = new c();
            }
            Pair<Integer, String> sendGet = m.sendGet(str2, i);
            if (sendGet != null && ((Integer) sendGet.first).intValue() == 200) {
                try {
                    return new JSONObject((String) sendGet.second);
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return null;
    }

    public static JSONObject a(String str, String str2, int i) {
        if (str2 == null || str2.equals("")) {
            return null;
        }
        String str3 = "d=" + URLEncoder.encode(str2);
        try {
            AbstractNetClient m = f.m();
            if (m == null) {
                m = new c();
            }
            Pair<Integer, String> sendPost = m.sendPost(str, str3, i);
            if (sendPost != null && ((Integer) sendPost.first).intValue() == 200) {
                try {
                    return new JSONObject((String) sendPost.second);
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return null;
    }

    public static void a(String str) {
        b = str;
    }

    private static String b() {
        if (b == null) {
            return a("aZõbz\u0014®=hM¯v|@¯#?\u001døgg\u0000â}d\u0001÷ &Mî|oGæ=h@å`fGå-", "\t.\u0081\u0012");
        }
        return b + "/v2/config/android?";
    }

    public static String b(String str, int i) {
        try {
            AbstractNetClient m = f.m();
            if (m == null) {
                m = new c();
            }
            Pair<Integer, String> sendGet = m.sendGet(str, i);
            if (sendGet != null && ((Integer) sendGet.first).intValue() == 200) {
                return (String) sendGet.second;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "";
    }
}
