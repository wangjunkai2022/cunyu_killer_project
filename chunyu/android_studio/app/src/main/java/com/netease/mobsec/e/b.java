package com.netease.mobsec.e;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.exifinterface.media.ExifInterface;
import com.tekartik.sqflite.Constant;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class b {
    private long a;
    private long b;
    private long c;
    private Context d;
    private long e = 0;
    private int f = 0;
    private long g = 0;

    public b(Context context) {
        this.d = null;
        this.d = context;
    }

    private void a(String str) {
        try {
            SharedPreferences.Editor edit = this.d.getSharedPreferences(a("VZTmVMT\u007fh\\]mV_Pu|LnwlJn", "\t)1\u0019"), 0).edit();
            edit.putString("D", str);
            edit.commit();
        } catch (Exception unused) {
        }
    }

    private void b(String str) {
        try {
            SharedPreferences.Editor edit = this.d.getSharedPreferences(a("VZTmVMT\u007fh\\]mV_Pu|LnwlJn", "\t)1\u0019"), 0).edit();
            edit.putString("DI", str);
            edit.commit();
        } catch (Exception unused) {
        }
    }

    private void c(long j) {
        this.c = j;
    }

    private void c(String str) {
        try {
            SharedPreferences.Editor edit = this.d.getSharedPreferences(a("VZTmVMT\u007fh\\]mV_Pu|LnwlJn", "\t)1\u0019"), 0).edit();
            edit.putString("I", str);
            edit.commit();
        } catch (Exception unused) {
        }
    }

    private void e(String str) {
        try {
            SharedPreferences.Editor edit = this.d.getSharedPreferences(a("VZTmVMT\u007fh\\]mV_Pu|LnwlJn", "\t)1\u0019"), 0).edit();
            edit.putString(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, str);
            edit.commit();
        } catch (Exception unused) {
        }
    }

    public int a(JSONObject jSONObject) {
        int i;
        if (jSONObject == null) {
            return -1;
        }
        try {
            int optInt = jSONObject.optInt(Constant.PARAM_ERROR_CODE, -1);
            try {
                JSONObject jSONObject2 = new JSONObject(g.a(jSONObject.optString(Constant.PARAM_RESULT)));
                String optString = jSONObject2.optString("dcu");
                if (optString.startsWith("ac")) {
                    optString = String.format("%s%s", "https://", optString);
                }
                String optString2 = jSONObject2.optString("bcu");
                if (optString2.startsWith("ac")) {
                    optString2 = String.format("%s%s", "https://", optString2);
                }
                int optInt2 = jSONObject2.optInt("ivp");
                int optInt3 = jSONObject2.optInt("dtvp");
                int i2 = optInt3 < 90 ? 90 : optInt3;
                int optInt4 = jSONObject2.optInt("tto");
                boolean optBoolean = jSONObject2.optBoolean("edc");
                String optString3 = jSONObject2.optString("bl");
                this.a = f() + ((long) (optInt2 / 1000));
                this.e = jSONObject2.optLong("sim");
                this.f = jSONObject2.optInt("mun");
                this.g = jSONObject2.optLong("mmm");
                i = optInt;
                try {
                    a(optString, optString2, optInt2, i2, optInt4, optBoolean, optString3, jSONObject2.optBoolean("eau", false), jSONObject2.optLong("adt", 50), jSONObject2.optBoolean("etc", false), jSONObject2.optLong("tct", 0));
                } catch (Exception unused) {
                }
            } catch (Exception unused2) {
                i = optInt;
            }
            return i;
        } catch (Exception unused3) {
            return -1;
        }
    }

    public long a(long j) {
        try {
            SharedPreferences.Editor edit = this.d.getSharedPreferences(a("VZTmVMT\u007fh\\]mV_Pu|LnwlJn", "\t)1\u0019"), 0).edit();
            edit.putLong("DTVPT", j);
            edit.commit();
            return 0;
        } catch (Exception unused) {
            return 0;
        }
    }

    public String a() {
        try {
            return this.d.getSharedPreferences(a("VZTmVMT\u007fh\\]mV_Pu|LnwlJn", "\t)1\u0019"), 0).getString("D", "");
        } catch (Exception unused) {
            return "";
        }
    }

    public String a(String str, String str2) {
        char[] charArray = str2.toCharArray();
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            sb.append((char) (str.charAt(i) ^ charArray[i % charArray.length]));
        }
        return sb.toString();
    }

    public void a(String str, String str2, int i, int i2, int i3, boolean z, String str3, boolean z2, long j, boolean z3, long j2) {
        try {
            SharedPreferences.Editor edit = this.d.getSharedPreferences(a("VZTmVMT\u007fh\\]mV_Pu|LnwlJn", "\t)1\u0019"), 0).edit();
            edit.putString("DU", str);
            edit.putString("BU", str2);
            edit.putLong("IVP", (long) i);
            edit.putLong("IVPT", this.a);
            edit.putLong("DTVP", (long) i2);
            edit.putLong("TTO", (long) i3);
            edit.putBoolean("EDC", z);
            edit.putString("bl", str3);
            edit.putLong("sim", this.e);
            edit.putLong("mmm", this.g);
            edit.putInt("mun", this.f);
            edit.putBoolean("eau", z2);
            edit.putLong("adt", j);
            edit.putBoolean("etc", z3);
            edit.putLong("tct", j2);
            edit.commit();
        } catch (Exception unused) {
        }
    }

    public int b(JSONObject jSONObject) {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        if (jSONObject == null) {
            return -1;
        }
        int optInt = jSONObject.optInt(Constant.PARAM_ERROR_CODE, -1);
        JSONObject optJSONObject = jSONObject.optJSONObject(Constant.PARAM_RESULT);
        if (optJSONObject != null) {
            str5 = optJSONObject.optString("tid");
            str4 = optJSONObject.optString("timestamp");
            str3 = optJSONObject.has("dt") ? optJSONObject.optString("dt") : "";
            str2 = optJSONObject.has("ni") ? optJSONObject.optString("ni") : "";
            str = optJSONObject.has("di") ? optJSONObject.optString("di") : "";
        } else {
            str = "";
            str5 = str;
            str4 = str5;
            str3 = str4;
            str2 = str3;
        }
        if (optInt == 200) {
            if (!str5.equals("")) {
                d(str5);
            }
            if (!str3.equals("")) {
                a(str3);
            }
            if (!str2.equals("")) {
                c(str2);
            }
            if (!str.equals("")) {
                b(str);
            }
        } else if (optInt == 420 && !str4.equals("")) {
            long parseLong = Long.parseLong(str4) / 1000;
            if (parseLong != 0) {
                c(this.b - parseLong);
            }
        }
        return optInt;
    }

    public long b(long j) {
        try {
            SharedPreferences.Editor edit = this.d.getSharedPreferences(a("VZTmVMT\u007fh\\]mV_Pu|LnwlJn", "\t)1\u0019"), 0).edit();
            edit.putLong("DST", j);
            edit.commit();
            return 0;
        } catch (Exception unused) {
            return 0;
        }
    }

    public String b() {
        try {
            return this.d.getSharedPreferences(a("VZTmVMT\u007fh\\]mV_Pu|LnwlJn", "\t)1\u0019"), 0).getString("DI", "");
        } catch (Exception unused) {
            return "";
        }
    }

    public String c() {
        try {
            return this.d.getSharedPreferences(a("VZTmVMT\u007fh\\]mV_Pu|LnwlJn", "\t)1\u0019"), 0).getString("I", "");
        } catch (Exception unused) {
            return "";
        }
    }

    public void d() {
        try {
            SharedPreferences.Editor edit = this.d.getSharedPreferences(a("VZTmVMT\u007fh\\]mV_Pu|LnwlJn", "\t)1\u0019"), 0).edit();
            edit.remove("DU");
            edit.remove("BU");
            edit.remove("IVP");
            edit.remove("IVPT");
            edit.remove("DTVP");
            edit.remove("TTO");
            edit.remove("EDC");
            edit.remove("bl");
            edit.commit();
        } catch (Exception unused) {
        }
    }

    public void d(String str) {
        e(str);
    }

    public long e() {
        try {
            return this.d.getSharedPreferences(a("VZTmVMT\u007fh\\]mV_Pu|LnwlJn", "\t)1\u0019"), 0).getLong("adt", 50);
        } catch (Exception unused) {
            return 50;
        }
    }

    public long f() {
        long currentTimeMillis = System.currentTimeMillis() / 1000;
        this.b = currentTimeMillis;
        return currentTimeMillis;
    }

    public long g() {
        try {
            return this.d.getSharedPreferences(a("VZTmVMT\u007fh\\]mV_Pu|LnwlJn", "\t)1\u0019"), 0).getLong("DTVPT", 0);
        } catch (Exception unused) {
            return 0;
        }
    }

    public long h() {
        try {
            return this.d.getSharedPreferences(a("VZTmVMT\u007fh\\]mV_Pu|LnwlJn", "\t)1\u0019"), 0).getLong("DST", 0);
        } catch (Exception unused) {
            return 0;
        }
    }

    public boolean i() {
        try {
            return this.d.getSharedPreferences(a("VZTmVMT\u007fh\\]mV_Pu|LnwlJn", "\t)1\u0019"), 0).getBoolean("eau", true);
        } catch (Exception unused) {
            return true;
        }
    }

    public boolean j() {
        try {
            return this.d.getSharedPreferences(a("VZTmVMT\u007fh\\]mV_Pu|LnwlJn", "\t)1\u0019"), 0).getBoolean("etc", false);
        } catch (Exception unused) {
            return false;
        }
    }

    public String k() {
        try {
            return this.d.getSharedPreferences(a("VZTmVMT\u007fh\\]mV_Pu|LnwlJn", "\t)1\u0019"), 0).getString("BU", "");
        } catch (Exception unused) {
            return "";
        }
    }

    public boolean l() {
        try {
            return this.d.getSharedPreferences(a("VZTmVMT\u007fh\\]mV_Pu|LnwlJn", "\t)1\u0019"), 0).getBoolean("EDC", true);
        } catch (Exception unused) {
            return true;
        }
    }

    public String m() {
        try {
            return this.d.getSharedPreferences(a("VZTmVMT\u007fh\\]mV_Pu|LnwlJn", "\t)1\u0019"), 0).getString("DU", "");
        } catch (Exception unused) {
            return "";
        }
    }

    public long n() {
        long j;
        try {
            j = this.d.getSharedPreferences(a("VZTmVMT\u007fh\\]mV_Pu|LnwlJn", "\t)1\u0019"), 0).getLong("DTVP", 0);
        } catch (Exception unused) {
            j = 0;
        }
        if (j <= 0) {
            return 3600000;
        }
        return j;
    }

    public long o() {
        try {
            return this.d.getSharedPreferences(a("VZTmVMT\u007fh\\]mV_Pu|LnwlJn", "\t)1\u0019"), 0).getLong("IVPT", 0);
        } catch (Exception unused) {
            return 0;
        }
    }

    public String p() {
        try {
            return this.d.getSharedPreferences(a("VZTmVMT\u007fh\\]mV_Pu|LnwlJn", "\t)1\u0019"), 0).getString("bl", "");
        } catch (Exception unused) {
            return "";
        }
    }

    public long q() {
        long currentTimeMillis = System.currentTimeMillis() / 1000;
        this.b = currentTimeMillis;
        return currentTimeMillis - this.c;
    }

    public long r() {
        try {
            return this.d.getSharedPreferences(a("VZTmVMT\u007fh\\]mV_Pu|LnwlJn", "\t)1\u0019"), 0).getLong("tct", 0);
        } catch (Exception unused) {
            return 0;
        }
    }

    public long s() {
        try {
            return this.d.getSharedPreferences(a("VZTmVMT\u007fh\\]mV_Pu|LnwlJn", "\t)1\u0019"), 0).getLong("TTO", 0);
        } catch (Exception unused) {
            return 0;
        }
    }

    public String t() {
        return this.d == null ? "" : u();
    }

    public String u() {
        try {
            return this.d.getSharedPreferences(a("VZTmVMT\u007fh\\]mV_Pu|LnwlJn", "\t)1\u0019"), 0).getString(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "");
        } catch (Exception unused) {
            return "";
        }
    }

    public long v() {
        try {
            return this.d.getSharedPreferences(a("VZTmVMT\u007fh\\]mV_Pu|LnwlJn", "\t)1\u0019"), 0).getLong("mmm", 0);
        } catch (Exception unused) {
            return 0;
        }
    }

    public int w() {
        try {
            return this.d.getSharedPreferences(a("VZTmVMT\u007fh\\]mV_Pu|LnwlJn", "\t)1\u0019"), 0).getInt("mun", 0);
        } catch (Exception unused) {
            return 0;
        }
    }

    public long x() {
        try {
            return this.d.getSharedPreferences(a("VZTmVMT\u007fh\\]mV_Pu|LnwlJn", "\t)1\u0019"), 0).getLong("sim", 0);
        } catch (Exception unused) {
            return 0;
        }
    }
}
