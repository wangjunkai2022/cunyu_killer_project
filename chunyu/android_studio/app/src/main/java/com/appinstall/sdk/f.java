package com.appinstall.sdk;

import android.content.SharedPreferences;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

/* loaded from: classes4.dex */
public class f {
    private Future a;
    private final String c = "";
    private final Map b = new HashMap();

    public f(Future future) {
        this.a = future;
    }

    public e a(String str) {
        try {
            return e.a(((SharedPreferences) this.a.get()).getInt(str, e.a.a()));
        } catch (InterruptedException | ExecutionException unused) {
            return e.a;
        }
    }

    public String a() {
        try {
            return ((SharedPreferences) this.a.get()).getString("FM_init_data", "");
        } catch (InterruptedException | ExecutionException unused) {
            return "";
        }
    }

    public void a(long j) {
        try {
            SharedPreferences.Editor edit = ((SharedPreferences) this.a.get()).edit();
            edit.putLong("FM_last_time", j);
            edit.apply();
        } catch (InterruptedException | ExecutionException unused) {
        }
    }

    public void a(g gVar) {
        try {
            SharedPreferences.Editor edit = ((SharedPreferences) this.a.get()).edit();
            edit.putString("FM_config_data", gVar.toString());
            edit.apply();
        } catch (InterruptedException | ExecutionException unused) {
        }
    }

    public void a(String str, e eVar) {
        try {
            SharedPreferences.Editor edit = ((SharedPreferences) this.a.get()).edit();
            edit.putInt(str, eVar.a());
            edit.apply();
        } catch (InterruptedException | ExecutionException unused) {
        }
    }

    public String b() {
        try {
            return ((SharedPreferences) this.a.get()).getString("FM_init_msg", "");
        } catch (InterruptedException | ExecutionException unused) {
            return "";
        }
    }

    public void b(String str) {
        try {
            SharedPreferences.Editor edit = ((SharedPreferences) this.a.get()).edit();
            edit.putString("FM_init_data", str);
            edit.apply();
        } catch (InterruptedException | ExecutionException unused) {
        }
    }

    public g c() {
        try {
            return g.b(((SharedPreferences) this.a.get()).getString("FM_config_data", ""));
        } catch (InterruptedException | ExecutionException unused) {
            return new g();
        }
    }

    public void c(String str) {
        try {
            SharedPreferences.Editor edit = ((SharedPreferences) this.a.get()).edit();
            edit.putString("FM_init_msg", str);
            edit.apply();
        } catch (InterruptedException | ExecutionException unused) {
        }
    }

    public long d() {
        try {
            return ((SharedPreferences) this.a.get()).getLong("FM_last_time", 0);
        } catch (InterruptedException | ExecutionException unused) {
            return 0;
        }
    }

    public void e() {
        try {
            SharedPreferences.Editor edit = ((SharedPreferences) this.a.get()).edit();
            edit.clear();
            edit.apply();
        } catch (InterruptedException | ExecutionException unused) {
        }
    }
}
