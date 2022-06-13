package com.tencent.thumbplayer.tplayer.a.b;

import com.github.florent37.assets_audio_player.Player;
import com.google.android.gms.common.internal.ImagesContract;
import com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadProxyEnum;
import com.tencent.thumbplayer.utils.TPLogUtil;
import com.umeng.analytics.pro.ai;
import java.io.Serializable;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class a implements Serializable {
    @AbstractC0047a(a = "videoframerate")
    private float t;
    @AbstractC0047a(a = "streambitrate")
    private long u;
    @AbstractC0047a(a = "flowid")
    private String a = "";
    @AbstractC0047a(a = "seq")
    private int b = -1;
    @AbstractC0047a(a = "platformtype")
    private int c = -1;
    @AbstractC0047a(a = "devtype")
    private int d = -1;
    @AbstractC0047a(a = Player.AUDIO_TYPE_NETWORK)
    private int e = 0;
    @AbstractC0047a(a = "device")
    private String f = "";
    @AbstractC0047a(a = "osver")
    private String g = "";
    @AbstractC0047a(a = "appname")
    private String h = "";
    @AbstractC0047a(a = "playerver")
    private String i = "";
    @AbstractC0047a(a = "appver")
    private String j = "";
    @AbstractC0047a(a = "reportprotocolver")
    private String k = "";
    @AbstractC0047a(a = "durationms")
    private long l = -1;
    @AbstractC0047a(a = "hlssourcetype")
    private int m = -1;
    @AbstractC0047a(a = "playertype")
    private int n = -1;
    @AbstractC0047a(a = "urlprotocol")
    private int o = -1;
    @AbstractC0047a(a = "formatcontainer")
    private String p = "";
    @AbstractC0047a(a = "videoencodefmt")
    private int q = -1;
    @AbstractC0047a(a = "audioencodefmt")
    private int r = -1;
    @AbstractC0047a(a = "subtitleencodefmt")
    private int s = -1;
    @AbstractC0047a(a = ImagesContract.URL)
    private String v = "";
    @AbstractC0047a(a = ai.z)
    private String w = "";
    @AbstractC0047a(a = "datatransportver")
    private String x = "";
    @AbstractC0047a(a = "speed")
    private int y = -1;
    @AbstractC0047a(a = "usedatatransport")
    private int z = -1;
    @AbstractC0047a(a = "cdnuip")
    private String A = "";
    @AbstractC0047a(a = "cdnip")
    private String B = "";
    @AbstractC0047a(a = "datatransportprotocolver")
    private String C = "";
    @AbstractC0047a(a = TPDownloadProxyEnum.USER_PLATFORM)
    private int D = -1;
    @AbstractC0047a(a = "playerconfig")
    private String E = "";
    private Map<String, String> F = null;
    private Map<String, String> G = null;
    private Map<String, String> H = null;
    private Map<String, String> I = null;

    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    /* renamed from: com.tencent.thumbplayer.tplayer.a.b.a$a */
    /* loaded from: classes2.dex */
    public @interface AbstractC0047a {
        String a() default "";
    }

    private String a(Field field) {
        String str;
        try {
            field.setAccessible(true);
            if (field.getType() == Integer.TYPE) {
                str = String.valueOf(field.getInt(this));
            } else if (field.getType() == Long.TYPE) {
                str = String.valueOf(field.getLong(this));
            } else if (field.getType() == Float.TYPE) {
                str = String.valueOf(field.getFloat(this));
            } else if (field.getType() == Boolean.TYPE) {
                str = String.valueOf(field.getBoolean(this));
            } else if (field.getType() == String.class) {
                str = (String) field.get(this);
            } else {
                String name = getClass().getName();
                TPLogUtil.e(name, "getFieldValue field:" + field.getName() + " is not match.");
                return "-1";
            }
            return str;
        } catch (Exception e) {
            TPLogUtil.e(getClass().getName(), e);
            return "-1";
        }
    }

    private Map<String, String> a(Field[] fieldArr) {
        HashMap hashMap = new HashMap();
        for (Field field : fieldArr) {
            AbstractC0047a aVar = (AbstractC0047a) field.getAnnotation(AbstractC0047a.class);
            if (aVar != null) {
                hashMap.put(aVar.a(), a(field));
            }
        }
        return hashMap;
    }

    private static void a(Map<String, String> map, Map<String, String> map2) {
        for (Map.Entry<String, String> entry : map2.entrySet()) {
            if (map.containsKey(entry.getKey())) {
                map.put(entry.getKey(), entry.getValue());
            }
        }
    }

    private void c() {
        Map<String, String> map;
        Map<String, String> map2 = this.F;
        if (map2 != null && (map = this.H) != null) {
            a(map2, map);
        }
    }

    private void d() {
        Map<String, String> map;
        Map<String, String> map2 = this.G;
        if (map2 != null && (map = this.I) != null) {
            a(map2, map);
        }
    }

    public String a() {
        return this.a;
    }

    public void a(float f) {
        this.t = f;
    }

    public void a(int i) {
        this.b = i;
    }

    public void a(long j) {
        this.l = j;
    }

    public void a(a aVar) {
        this.a = aVar.a;
        this.b = aVar.b;
        this.c = aVar.c;
        this.d = aVar.d;
        this.e = aVar.e;
        this.f = aVar.f;
        this.g = aVar.g;
        this.h = aVar.h;
        this.i = aVar.i;
        this.j = aVar.j;
        this.k = aVar.k;
        this.l = aVar.l;
        this.m = aVar.m;
        this.n = aVar.n;
        this.o = aVar.o;
        this.p = aVar.p;
        this.q = aVar.q;
        this.r = aVar.r;
        this.s = aVar.s;
        this.u = aVar.u;
        this.t = aVar.t;
        this.v = aVar.v;
        this.w = aVar.w;
        this.x = aVar.x;
        this.y = aVar.y;
        this.z = aVar.z;
        this.A = aVar.A;
        this.B = aVar.B;
        this.C = aVar.C;
        this.D = aVar.D;
        this.E = aVar.E;
        this.F = aVar.F;
        this.G = aVar.G;
        this.H = aVar.H;
        this.I = aVar.I;
    }

    public void a(String str) {
        this.a = str;
    }

    public void a(Map<String, String> map) {
        this.F = map;
    }

    public Map<String, String> b() {
        HashMap hashMap = new HashMap();
        Class<? super Object> superclass = getClass().getSuperclass();
        if (superclass != null) {
            hashMap.putAll(a(superclass.getDeclaredFields()));
        }
        hashMap.putAll(a(getClass().getDeclaredFields()));
        c();
        d();
        Map<String, String> map = this.F;
        if (map != null) {
            hashMap.putAll(map);
        }
        Map<String, String> map2 = this.H;
        if (map2 != null) {
            hashMap.putAll(map2);
        }
        Map<String, String> map3 = this.G;
        if (map3 != null) {
            hashMap.putAll(map3);
        }
        Map<String, String> map4 = this.I;
        if (map4 != null) {
            hashMap.putAll(map4);
        }
        return hashMap;
    }

    public void b(int i) {
        this.c = i;
    }

    public void b(long j) {
        this.u = j;
    }

    public void b(String str) {
        this.f = str;
    }

    public void b(Map<String, String> map) {
        this.G = map;
    }

    public void c(int i) {
        this.d = i;
    }

    public void c(String str) {
        this.g = str;
    }

    public void c(Map<String, String> map) {
        this.H = map;
    }

    public void d(int i) {
        this.e = i;
    }

    public void d(String str) {
        this.h = str;
    }

    public void d(Map<String, String> map) {
        this.I = map;
    }

    public void e(int i) {
        this.m = i;
    }

    public void e(String str) {
        this.i = str;
    }

    public void f(int i) {
        this.n = i;
    }

    public void f(String str) {
        this.j = str;
    }

    public void g(int i) {
        this.q = i;
    }

    public void g(String str) {
        this.k = str;
    }

    public void h(int i) {
        this.r = i;
    }

    public void h(String str) {
        this.p = str;
    }

    public void i(int i) {
        this.s = i;
    }

    public void i(String str) {
        this.v = str;
    }

    public void j(int i) {
        this.y = i;
    }

    public void j(String str) {
        this.w = str;
    }

    public void k(int i) {
        this.z = i;
    }

    public void k(String str) {
        this.x = str;
    }

    public void l(int i) {
        this.D = i;
    }

    public void l(String str) {
        this.A = str;
    }

    public void m(String str) {
        this.B = str;
    }

    public void n(String str) {
        this.C = str;
    }

    public void o(String str) {
        this.E = str;
    }
}
