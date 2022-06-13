package com.tencent.thumbplayer.adapter.a.b;

import android.content.Context;
import android.content.SharedPreferences;
import com.tencent.thumbplayer.adapter.strategy.utils.TPNativeKeyMap;
import com.tencent.thumbplayer.adapter.strategy.utils.TPNativeKeyMapUtil;
import com.tencent.thumbplayer.api.TPCommonEnum;
import com.tencent.thumbplayer.core.common.TPNativeLibraryException;
import com.tencent.thumbplayer.core.common.TPThumbplayerCapabilityHelper;
import com.tencent.thumbplayer.utils.TPLogUtil;
import com.tencent.thumbplayer.utils.b;
import com.tencent.thumbplayer.utils.o;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes5.dex */
public class a {
    private static Set<String> a = new HashSet();
    private static Set<String> b = new HashSet();

    public static synchronized void a(Context context) {
        synchronized (a.class) {
            TPLogUtil.i("TPDrmCapability", "TPDrmCapability, init");
            TPLogUtil.i("TPDrmCapability", "TPDrmCapability, get shared preferences.");
            SharedPreferences sharedPreferences = context.getSharedPreferences("TP_DRM_CAPABILITY", 0);
            try {
                a = sharedPreferences.getStringSet("DRM_CAPABILITY_LIST", a);
            } catch (ClassCastException e) {
                TPLogUtil.e("TPDrmCapability", e);
            }
            a.removeAll(b);
            a(sharedPreferences);
        }
    }

    private static void a(final SharedPreferences sharedPreferences) {
        o.a().d().execute(new Runnable() { // from class: com.tencent.thumbplayer.adapter.a.b.a.1
            @Override // java.lang.Runnable
            public void run() {
                int[] iArr = new int[0];
                try {
                    iArr = TPThumbplayerCapabilityHelper.getDRMCapabilities();
                } catch (TPNativeLibraryException e) {
                    TPLogUtil.e("TPDrmCapability", e);
                }
                TPLogUtil.i("TPDrmCapability", "TPThumbPlayerCapabilityHelper, DRM capability:" + Arrays.toString(iArr));
                if (iArr.length != 0) {
                    HashSet hashSet = new HashSet();
                    for (int i : iArr) {
                        hashSet.add(String.valueOf(TPNativeKeyMapUtil.toTPIntValue(TPNativeKeyMap.MapDrmType.class, i)));
                    }
                    SharedPreferences.Editor edit = sharedPreferences.edit();
                    edit.putStringSet("DRM_CAPABILITY_LIST", hashSet);
                    edit.apply();
                    synchronized (a.class) {
                        Set unused = a.a = hashSet;
                        a.a.removeAll(a.b);
                    }
                }
            }
        });
    }

    public static synchronized boolean a(@TPCommonEnum.TP_DRM_TYPE int i) {
        synchronized (a.class) {
            if (i == -1) {
                return false;
            }
            for (String str : a) {
                if (b.a(str, -1) == i) {
                    return true;
                }
            }
            return false;
        }
    }

    public static synchronized int[] a() {
        int[] iArr;
        synchronized (a.class) {
            iArr = new int[a.size()];
            int i = 0;
            for (String str : a) {
                i++;
                iArr[i] = b.a(str, -1);
            }
        }
        return iArr;
    }

    public static synchronized void b(@TPCommonEnum.TP_DRM_TYPE int i) {
        synchronized (a.class) {
            if (i != -1) {
                b.add(String.valueOf(i));
                a.removeAll(b);
            }
        }
    }
}
