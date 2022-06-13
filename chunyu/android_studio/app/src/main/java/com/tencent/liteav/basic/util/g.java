package com.tencent.liteav.basic.util;

import android.content.Context;
import android.content.SharedPreferences;
import com.tencent.liteav.basic.log.TXCLog;

/* compiled from: TXCLocalConfigStorage.java */
/* loaded from: classes2.dex */
public class g {
    protected static volatile g a;
    private SharedPreferences c;
    private Context e;
    private final String b = "TXCSpUtil";
    private final Object d = new Object();

    public static g a() {
        if (a == null) {
            synchronized (g.class) {
                if (a == null) {
                    a = new g();
                }
            }
        }
        return a;
    }

    private g() {
    }

    public void a(Context context) {
        this.e = context.getApplicationContext();
    }

    public void a(String str, boolean z) {
        Context context = this.e;
        try {
            synchronized (this.d) {
                if (this.c == null && context != null) {
                    this.c = context.getSharedPreferences("liteav_hw_encoder_config", 0);
                }
                if (this.c != null) {
                    this.c.edit().putBoolean(str, z).commit();
                }
            }
        } catch (Exception e) {
            TXCLog.e("TXCSpUtil", "saveConfigInfo: error: " + str + ", " + z + " ; " + e);
        }
    }

    public boolean b(String str, boolean z) {
        Context context = this.e;
        try {
        } catch (Exception e) {
            TXCLog.e("TXCSpUtil", "saveConfigInfo: error: " + str + ", " + z + " ; " + e);
        }
        synchronized (this.d) {
            if (this.c == null && context != null) {
                this.c = context.getSharedPreferences("liteav_hw_encoder_config", 0);
            }
            if (this.c == null) {
                return z;
            }
            return this.c.getBoolean(str, z);
        }
    }
}
