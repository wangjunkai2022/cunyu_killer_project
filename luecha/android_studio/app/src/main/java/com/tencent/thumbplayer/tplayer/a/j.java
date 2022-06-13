package com.tencent.thumbplayer.tplayer.a;

import android.content.Context;
import com.tencent.thumbplayer.config.TPPlayerConfig;
import com.tencent.thumbplayer.core.common.TPSystemInfo;
import com.tencent.thumbplayer.tplayer.a.b.a;
import com.tencent.thumbplayer.utils.h;
import com.tencent.thumbplayer.utils.i;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class j implements i.b {
    private static final String a = TPSystemInfo.getDeviceName();
    private static final String b = String.format("android %s", TPSystemInfo.getOsVersion());
    private Context c;

    public j(Context context) {
        this.c = null;
        this.c = context;
        i.a().a(this);
    }

    @Override // com.tencent.thumbplayer.utils.i.b
    public void a(int i, int i2, int i3, int i4) {
        h.b(this.c);
    }

    public void a(a aVar) {
        aVar.b(0);
        aVar.c(0);
        aVar.d(h.a(this.c));
        aVar.b(a);
        aVar.c(b);
        aVar.d(this.c.getPackageName());
        aVar.f(TPPlayerConfig.getAppVersionName(this.c));
        aVar.g("1.0.0");
        aVar.e("2.27.0.1123");
        aVar.l(TPPlayerConfig.getPlatform());
        aVar.a(0);
    }

    public void b(a aVar) {
        aVar.d(h.a(this.c));
    }
}
