package com.tencent.thumbplayer.tplayer.a;

import android.content.Context;
import androidx.webkit.ProxyConfig;
import com.tencent.thumbplayer.api.reportv2.ITPReportChannelListener;
import com.tencent.thumbplayer.api.reportv2.ITPReportInfoGetter;
import com.tencent.thumbplayer.api.reportv2.TPExtendCommonKey;
import com.tencent.thumbplayer.b.a.b;
import com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadProxyHelper;
import com.tencent.thumbplayer.core.player.TPDynamicStatisticParams;
import com.tencent.thumbplayer.core.player.TPGeneralPlayFlowParams;
import com.tencent.thumbplayer.tplayer.a.a.a;
import com.tencent.thumbplayer.utils.TPLogUtil;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class c implements a {
    private static com.tencent.thumbplayer.utils.c i;
    protected ITPReportInfoGetter a;
    protected a b;
    protected CopyOnWriteArrayList<WeakReference<ITPReportChannelListener>> c;
    protected Context d;
    protected l e;
    protected j f = null;
    protected int g = 0;
    protected Map<String, Object> h = new HashMap();

    private synchronized void a(Context context, String str) {
        if (i == null) {
            i = new com.tencent.thumbplayer.utils.c(this.d, str);
        }
    }

    protected static void a(Map<String, String> map, Map<String, String> map2, Map<String, String> map3) {
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (c(entry.getKey())) {
                map2.put(entry.getKey(), entry.getValue());
            } else if (b(entry.getKey())) {
                map3.put(entry.getKey(), entry.getValue());
            } else {
                TPLogUtil.e("TPBaseReporter", "invalid extend info <" + entry.getKey() + ", " + entry.getValue() + "> from ITPReportInfoGetter, key valid!");
            }
        }
    }

    protected static boolean b(String str) {
        if (str == null) {
            return false;
        }
        return str.startsWith("ext_");
    }

    private synchronized void c() {
        if (i != null) {
            Iterator<String> it = i.b().iterator();
            while (it.hasNext()) {
                String next = it.next();
                String d = d(next);
                com.tencent.thumbplayer.tplayer.a.b.a aVar = (com.tencent.thumbplayer.tplayer.a.b.a) i.b(next);
                if (!(d == null || aVar == null)) {
                    Map<String, String> b = aVar.b();
                    b(d, b);
                    b.a(d, b);
                    TPLogUtil.i("TPBaseReporter", "report cached reportEvent, key:" + next);
                }
            }
            i.c();
        }
    }

    protected static boolean c(String str) {
        if (str == null) {
            return false;
        }
        Field[] declaredFields = TPExtendCommonKey.class.getDeclaredFields();
        for (Field field : declaredFields) {
            try {
                field.setAccessible(true);
                String str2 = (String) field.get(TPExtendCommonKey.class);
                if (str2 != null && str2.equals(str)) {
                    return true;
                }
            } catch (IllegalAccessException e) {
                TPLogUtil.e("TPBaseReporter", e);
            }
        }
        return false;
    }

    private static String d(String str) {
        Field[] declaredFields = i.class.getDeclaredFields();
        for (Field field : declaredFields) {
            field.setAccessible(true);
            if (field.getType() == String.class) {
                try {
                    String str2 = (String) field.get(i.class);
                    if (str2 != null && str.endsWith(str2)) {
                        return str2;
                    }
                } catch (IllegalAccessException unused) {
                    TPLogUtil.w("TPBaseReporter", "fail to get value of field(" + field.getName() + ") in TPReportEventId.class)");
                }
            }
        }
        return null;
    }

    protected TPDynamicStatisticParams a(boolean z) {
        a aVar = this.b;
        if (aVar != null) {
            return aVar.a(z);
        }
        TPLogUtil.e("TPBaseReporter", "getDynamicStatParamsFromCore failed, mPlayerInfoGetter is null, return default value");
        return new TPDynamicStatisticParams();
    }

    @Override // com.tencent.thumbplayer.tplayer.a.a
    public void a() {
        CopyOnWriteArrayList<WeakReference<ITPReportChannelListener>> copyOnWriteArrayList = this.c;
        if (copyOnWriteArrayList != null) {
            copyOnWriteArrayList.clear();
            this.c = null;
        }
    }

    @Override // com.tencent.thumbplayer.tplayer.a.a
    public void a(int i2, Object obj) {
    }

    @Override // com.tencent.thumbplayer.tplayer.a.a
    public void a(Context context, l lVar) {
        this.d = context;
        this.c = new CopyOnWriteArrayList<>();
        this.e = lVar;
        this.f = new j(context);
        a(context, "TPReporterCache");
        c();
    }

    @Override // com.tencent.thumbplayer.tplayer.a.a
    public void a(ITPReportChannelListener iTPReportChannelListener) {
        CopyOnWriteArrayList<WeakReference<ITPReportChannelListener>> copyOnWriteArrayList = this.c;
        if (copyOnWriteArrayList == null) {
            TPLogUtil.w("TPBaseReporter", "mReportChannelListenerList is null");
            return;
        }
        Iterator<WeakReference<ITPReportChannelListener>> it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            if (it.next().get() == iTPReportChannelListener) {
                TPLogUtil.w("TPBaseReporter", "mReportChannelListenerList has contain reportChannelListener");
                return;
            }
        }
        this.c.add(new WeakReference<>(iTPReportChannelListener));
    }

    @Override // com.tencent.thumbplayer.tplayer.a.a
    public void a(ITPReportInfoGetter iTPReportInfoGetter) {
        this.a = iTPReportInfoGetter;
    }

    @Override // com.tencent.thumbplayer.tplayer.a.a
    public void a(a aVar) {
        this.b = aVar;
    }

    protected void a(b bVar) {
        a aVar = this.b;
        if (aVar == null) {
            TPLogUtil.e("TPBaseReporter", "fillStreamInfoToCommonParams fail, not set mPlayerInfoGetter");
            return;
        }
        TPGeneralPlayFlowParams a = aVar.a();
        bVar.a.a(this.e.i);
        bVar.a.a(a.mPlayerBaseMediaParams.mDurationMs);
        bVar.a.e(a.mPlayerBaseMediaParams.mHlsSourceType);
        bVar.a.f(this.e.g);
        bVar.a.h(a.mPlayerBaseMediaParams.mFormatContainer);
        bVar.a.g(a.mPlayerBaseMediaParams.mVideoEncodeFormat);
        bVar.a.h(a.mPlayerBaseMediaParams.mAudioEncodeFormat);
        bVar.a.i(a.mPlayerBaseMediaParams.mSubtitleEncodeFormat);
        bVar.a.b(a.mPlayerBaseMediaParams.mVideoStreamBitrateKBps);
        bVar.a.a(a.mPlayerBaseMediaParams.mVideoFrameRate);
        bVar.a.i(this.e.e);
        bVar.a.j("" + a.mPlayerBaseMediaParams.mVideoWidth + ProxyConfig.MATCH_ALL_SCHEMES + a.mPlayerBaseMediaParams.mVideoHeight);
        bVar.a.k(TPDownloadProxyHelper.getNativeLibVersion());
        bVar.a.j(bVar.b);
        bVar.a.n(bVar.e);
        bVar.a.l(bVar.d);
        bVar.a.m(bVar.c);
        bVar.a.k(this.e.h ? 1 : 0);
        this.h.put("buffermintotaldurationms", Long.valueOf(a.mPlayerConfigParams.mBufferMinTotalDurationMs));
        this.h.put("buffermaxtotaldurationms", Long.valueOf(a.mPlayerConfigParams.mBufferMaxTotalDurationMs));
        this.h.put("preloadtotaldurationms", Long.valueOf(a.mPlayerConfigParams.mPreloadTotalDurationMs));
        this.h.put("minbufferingdurationms", Long.valueOf(a.mPlayerConfigParams.mMinBufferingDurationMs));
        this.h.put("minbufferingtimems", Long.valueOf(a.mPlayerConfigParams.mMinBufferingTimeMs));
        this.h.put("maxbufferingtimems", Long.valueOf(a.mPlayerConfigParams.mMaxBufferingTimeMs));
        this.h.put("reducelatencyaction", Integer.valueOf(a.mPlayerConfigParams.mReduceLatencyAction));
        this.h.put("reducelatencyspeed", Float.valueOf(a.mPlayerConfigParams.mReduceLatencyPlaySpeed));
        this.h.put("buffertype", Integer.valueOf(a.mPlayerConfigParams.mBufferType));
        try {
            bVar.a.o(new JSONObject(this.h).toString());
        } catch (NullPointerException e) {
            TPLogUtil.e("TPBaseReporter", e);
        }
    }

    protected synchronized void a(String str) {
        if (i != null) {
            Iterator<String> it = i.b().iterator();
            while (it.hasNext()) {
                String next = it.next();
                if (next.startsWith(str)) {
                    i.a(next);
                    TPLogUtil.i("TPBaseReporter", "remove cache, key:" + next);
                }
            }
        }
    }

    protected synchronized void a(String str, com.tencent.thumbplayer.tplayer.a.b.a aVar) {
        if (i != null) {
            com.tencent.thumbplayer.utils.c cVar = i;
            cVar.a(aVar.a() + str, aVar);
            TPLogUtil.i("TPBaseReporter", "write cache, flowid:" + aVar.a() + ", reportId:" + str);
        }
    }

    protected void a(String str, Map<String, String> map) {
        Iterator<Map.Entry<String, String>> it = map.entrySet().iterator();
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        String str2 = ":{";
        while (true) {
            sb.append(str2);
            if (it.hasNext()) {
                Map.Entry<String, String> next = it.next();
                sb.append(next.getKey());
                sb.append(":");
                sb.append(next.getValue());
                str2 = ",";
            } else {
                sb.append("}");
                TPLogUtil.i("TPBaseReporter", sb.toString());
                return;
            }
        }
    }

    protected TPGeneralPlayFlowParams b() {
        a aVar = this.b;
        if (aVar != null) {
            return aVar.a();
        }
        TPLogUtil.e("TPBaseReporter", "getGeneralPlayFlowParams failed, mPlayerInfoGetter is null, return default value");
        return new TPGeneralPlayFlowParams();
    }

    protected void b(b bVar) {
        ITPReportInfoGetter iTPReportInfoGetter = this.a;
        if (iTPReportInfoGetter != null) {
            Map<String, String> initExtendReportInfo = iTPReportInfoGetter.getInitExtendReportInfo();
            if (initExtendReportInfo == null) {
                TPLogUtil.e("TPBaseReporter", "fillInitExtReportInfoToCommonParams fail, initExtendReportInfo is null");
                return;
            }
            HashMap hashMap = new HashMap();
            HashMap hashMap2 = new HashMap();
            a(initExtendReportInfo, hashMap, hashMap2);
            bVar.a.a(hashMap);
            bVar.a.b(hashMap2);
        }
    }

    protected void b(String str, Map<String, String> map) {
        if (this.c.size() != 0) {
            for (int i2 = 0; i2 < this.c.size(); i2++) {
                ITPReportChannelListener iTPReportChannelListener = this.c.get(i2).get();
                if (iTPReportChannelListener != null) {
                    iTPReportChannelListener.reportEvent(str, map);
                }
            }
        }
    }
}
