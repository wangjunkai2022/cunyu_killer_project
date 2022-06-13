package com.appinstall.sdk;

import android.content.Context;
import android.hardware.SensorManager;
import android.os.Build;
import android.text.TextUtils;
import com.umeng.analytics.pro.ai;
import java.io.File;

/* loaded from: classes2.dex */
public class ap {
    private static ap b;
    private static final Object c = new Object();
    private final cg a = cg.a("ECh");

    private ap() {
    }

    private int a(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        return str.split("package:").length;
    }

    public static ap a() {
        synchronized (c) {
            if (b == null) {
                b = new ap();
            }
        }
        return b;
    }

    private String b(String str) {
        String a = an.a().a(str);
        if (TextUtils.isEmpty(a)) {
            return null;
        }
        return a;
    }

    public boolean a(Context context) {
        String b2 = b(cd.a("Z3NtLnZlcnNpb24uYmFzZWJhbmQ="));
        boolean z = true;
        int i = (b2 == null || b2.contains("1.0.0.0")) ? 1 : 0;
        String b3 = b(cd.a("cm8uYnVpbGQuZmxhdm9y"));
        if (b3 == null || b3.contains("vbox") || b3.contains("sdk_gphone") || b3.contains("sdk_phone")) {
            i++;
        }
        String b4 = b(cd.a("cm8ucHJvZHVjdC5ib2FyZA=="));
        if (b4 == null || b4.contains("android") || b4.contains("goldfish")) {
            i++;
        }
        String b5 = b(cd.a("cm8uYm9hcmQucGxhdGZvcm0="));
        if (b5 == null || b5.contains("android")) {
            i++;
        }
        String b6 = b(cd.a("cm8uaGFyZHdhcmU="));
        if (b6 == null) {
            i++;
        } else if (b6.toLowerCase().contains("ttvm") || b6.toLowerCase().contains("nox")) {
            i += 5;
        }
        StringBuilder sb = new StringBuilder();
        boolean z2 = false;
        for (String str : new String[]{"L3N5c3RlbS9iaW4vZHJvaWQ0eC1wcm9w", "L3N5c3RlbS9saWIvbGlibm94ZC5zbw==", "L3N5c3RlbS9iaW4vdHRWTS1wcm9w", "L3N5c3RlbS9iaW4vYnN0c2h1dGRvd24=", "L3N5c3RlbS9iaW4vbWljcm92aXJ0LXByb3A=", "L3N5c3RlbS9iaW4vbmVtdVZNLXByb3A=", "L3N5c3RlbS9iaW4vYW5kcm9WTS1wcm9w", "L3N5c3RlbS9iaW4vZ2VueW1vdGlvbi12Ym94LXNm"}) {
            String a = cd.a(str);
            if (new File(a).exists()) {
                sb.append(a);
                sb.append(";");
                z2 = true;
            }
        }
        if (z2) {
            i += 5;
        }
        if (new File(cd.a("L3N5c3RlbS9ldGMvZXhjbHVkZWQtaW5wdXQtZGV2aWNlcy54bWw=")).exists()) {
            i = Build.VERSION.SDK_INT < 26 ? i + 3 : i + 1;
        }
        if (!context.getPackageManager().hasSystemFeature(cd.a("YW5kcm9pZC5oYXJkd2FyZS5ibHVldG9vdGg="))) {
            i += 3;
        }
        if (!context.getPackageManager().hasSystemFeature(cd.a("YW5kcm9pZC5oYXJkd2FyZS5jYW1lcmEuZmxhc2g="))) {
            i += 3;
        }
        if (((SensorManager) context.getSystemService(ai.ac)).getSensorList(-1).size() < 9) {
            i++;
        }
        if (a(an.a().b(cd.a("cG0gbGlzdCBwYWNrYWdlIC0z"))) < 5) {
            i++;
        }
        if (i < 5) {
            z = false;
        }
        if (z && cf.a) {
            cf.b("device is simulator", new Object[0]);
        }
        return z;
    }
}
