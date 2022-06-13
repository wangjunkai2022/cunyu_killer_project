package com.tencent.thumbplayer.h.b;

import android.media.MediaFormat;
import android.os.Build;
import com.tencent.thumbplayer.h.h.b;
import com.tencent.thumbplayer.h.h.c;
import java.util.ArrayList;

/* loaded from: classes5.dex */
public final class e {
    public int d;
    public int e;
    public int f;
    public final String j;
    private boolean k;
    private boolean l;
    public ArrayList<byte[]> a = new ArrayList<>();
    public int b = -1;
    public int c = -1;
    public int g = -1;
    public int h = -1;
    public int i = -1;

    public e(String str) {
        this.j = str;
    }

    public static int a(MediaFormat mediaFormat, String str) {
        return a(mediaFormat, str, -1);
    }

    public static int a(MediaFormat mediaFormat, String str, int i) {
        return mediaFormat.containsKey(str) ? mediaFormat.getInteger(str) : i;
    }

    public static e a(MediaFormat mediaFormat) {
        e eVar = new e(mediaFormat.getString("mime"));
        try {
            eVar.f = a(mediaFormat, "sample-rate");
            eVar.i = a(mediaFormat, "max-input-size");
            eVar.a = c.a(mediaFormat);
            if (eVar.a()) {
                eVar.d = a(mediaFormat, "rotation-degrees");
                eVar.b = a(mediaFormat, "width");
                eVar.c = a(mediaFormat, "height");
                if (Build.VERSION.SDK_INT >= 19) {
                    eVar.g = a(mediaFormat, "max-width");
                    eVar.h = a(mediaFormat, "max-height");
                }
            } else {
                eVar.e = a(mediaFormat, "channel-count");
            }
        } catch (Throwable th) {
            b.b("FormatWrapper", "create format error", th);
        }
        return eVar;
    }

    private static String a(String str, byte[] bArr) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(", length:");
        sb.append(bArr.length);
        sb.append("  [");
        for (int i = 0; i < Math.min(bArr.length, 20); i++) {
            if (i != 0) {
                sb.append(" ,");
            }
            sb.append((int) bArr[i]);
        }
        sb.append("]");
        return sb.toString();
    }

    public static void a(ArrayList<byte[]> arrayList) {
        if (arrayList != null && b.a()) {
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < arrayList.size(); i++) {
                sb.append(a(c.a[i], arrayList.get(i)));
                sb.append("\n");
            }
            b.b("FormatWrapper", "csdData size:" + arrayList.size() + "    " + sb.toString());
        }
    }

    public final boolean a() {
        if (!this.k) {
            this.k = true;
            this.l = c.a(this.j);
        }
        return this.l;
    }

    public final boolean a(e eVar) {
        if (this.a.size() != eVar.a.size()) {
            return false;
        }
        for (int i = 0; i < this.a.size(); i++) {
            if (!this.a.get(i).equals(eVar.a.get(i))) {
                return false;
            }
        }
        return true;
    }
}
