package com.netease.mobsec.d;

import android.os.Build;
import com.netease.mobsec.d.c;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public final class e implements c.b {
    @Override // com.netease.mobsec.d.c.b
    public void a(String str) {
        System.loadLibrary(str);
    }

    @Override // com.netease.mobsec.d.c.b
    public String[] a() {
        if (Build.VERSION.SDK_INT >= 21) {
            String[] strArr = Build.SUPPORTED_ABIS;
            if (strArr.length > 0) {
                return strArr;
            }
        }
        String str = Build.CPU_ABI2;
        return !f.a(str) ? new String[]{Build.CPU_ABI, str} : new String[]{Build.CPU_ABI};
    }

    @Override // com.netease.mobsec.d.c.b
    public void b(String str) {
        System.load(str);
    }

    @Override // com.netease.mobsec.d.c.b
    public String c(String str) {
        return str.substring(3, str.length() - 3);
    }

    @Override // com.netease.mobsec.d.c.b
    public String d(String str) {
        return (!str.startsWith("lib") || !str.endsWith(".so")) ? System.mapLibraryName(str) : str;
    }
}
