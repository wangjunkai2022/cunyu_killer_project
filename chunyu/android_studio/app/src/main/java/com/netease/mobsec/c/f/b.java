package com.netease.mobsec.c.f;

import android.content.Context;
import com.netease.mobsec.d.c;

/* loaded from: classes2.dex */
public class b implements a {
    public String a(String str, String str2) {
        char[] charArray = str2.toCharArray();
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            sb.append((char) (str.charAt(i) ^ charArray[i % charArray.length]));
        }
        return sb.toString();
    }

    @Override // com.netease.mobsec.c.f.a
    public final void a(Context context) {
        try {
            c.a(context, a("_Z4|^]3tR\u0012t?\u0005\u0011u", "1?@\u0011"));
        } catch (Exception unused) {
        }
    }

    @Override // com.netease.mobsec.c.f.a
    public final int b(Context context) {
        if (context == null) {
            return 0;
        }
        a(context);
        return 1;
    }
}
