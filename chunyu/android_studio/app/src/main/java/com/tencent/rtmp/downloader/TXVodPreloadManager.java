package com.tencent.rtmp.downloader;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import com.tencent.liteav.thumbplayer.ThumbMediaPlayer;
import com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy;
import com.tencent.thumbplayer.core.downloadproxy.api.ITPPreLoadListener;
import com.tencent.thumbplayer.core.downloadproxy.api.TPDLProxyInitParam;
import com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadParam;
import com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadProxyEnum;
import com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadProxyFactory;
import java.util.ArrayList;
import java.util.HashMap;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class TXVodPreloadManager {
    private static Context c;
    private ITPDownloadProxy a;
    private boolean b;

    /* loaded from: classes2.dex */
    private static class a {
        static TXVodPreloadManager a = new TXVodPreloadManager();
    }

    private TXVodPreloadManager() {
        this.b = false;
    }

    public static TXVodPreloadManager getInstance(Context context) {
        if (context == null) {
            return null;
        }
        c = context.getApplicationContext();
        return a.a;
    }

    private synchronized Pair<Integer, String> a() {
        this.a = TPDownloadProxyFactory.getTPDownloadProxy(2330303);
        if (this.a != null) {
            int b2 = com.tencent.liteav.txcplayer.a.b.b();
            if (b2 < 0) {
                return new Pair<>(-1, "MaxCacheSize not set.");
            }
            String a2 = com.tencent.liteav.txcplayer.a.b.a();
            if (TextUtils.equals(a2, "NO_SET")) {
                return new Pair<>(-2, "CacheFolderPath not set.");
            }
            if (!this.b) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("VodCacheReserveSizeMB", b2);
                } catch (Exception e) {
                    e.printStackTrace();
                }
                this.a.init(c, new TPDLProxyInitParam(2330303, "1.0.0", "liteav_tbplayer_android_" + c.getPackageName(), null, a2, jSONObject.toString()));
                this.b = true;
            }
            this.a.updateStoragePath(a2);
            this.a.setMaxStorageSizeMB((long) b2);
            return new Pair<>(0, null);
        }
        return new Pair<>(-3, "Inner error.");
    }

    public int startPreload(String str, int i, long j, ITXVodPreloadListener iTXVodPreloadListener) {
        Pair<Integer, String> a2 = a();
        if (((Integer) a2.first).intValue() < 0) {
            if (iTXVodPreloadListener != null) {
                iTXVodPreloadListener.onError(-1, str, ((Integer) a2.first).intValue(), (String) a2.second);
            }
            return -1;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(str);
        HashMap hashMap = new HashMap();
        hashMap.put(TPDownloadProxyEnum.DLPARAM_PRELOAD_SIZE, Integer.valueOf(i * 1024 * 1024));
        hashMap.put(TPDownloadProxyEnum.DLPARAM_PREFERRED_RESOLUTION, Long.valueOf(j));
        TPDownloadParam tPDownloadParam = new TPDownloadParam(arrayList, 0, hashMap);
        b bVar = new b(str, iTXVodPreloadListener);
        int startPreload = this.a.startPreload(ThumbMediaPlayer.genFieldID(str), tPDownloadParam, bVar);
        bVar.a(startPreload);
        return startPreload;
    }

    public void stopPreload(int i) {
        if (((Integer) a().first).intValue() >= 0) {
            this.a.stopPreload(i);
        }
    }

    /* loaded from: classes2.dex */
    private static class b implements ITPPreLoadListener {
        private final ITXVodPreloadListener a;
        private final String b;
        private int c = -1;

        public b(String str, ITXVodPreloadListener iTXVodPreloadListener) {
            this.b = str;
            this.a = iTXVodPreloadListener;
        }

        public void a(int i) {
            this.c = i;
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPreLoadListener
        public void onPrepareOK() {
            Log.d("TXVodPreloadManager", "preload: onPrepareOK");
            ITXVodPreloadListener iTXVodPreloadListener = this.a;
            if (iTXVodPreloadListener != null) {
                iTXVodPreloadListener.onComplete(this.c, this.b);
            }
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPreLoadListener
        public void onPrepareError(int i, int i2, String str) {
            Log.d("TXVodPreloadManager", "preload error: moduleId: " + i + ", errorCode: " + i2 + ", extInfo: " + str);
            ITXVodPreloadListener iTXVodPreloadListener = this.a;
            if (iTXVodPreloadListener != null) {
                iTXVodPreloadListener.onError(this.c, this.b, i2, str);
            }
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPreLoadListener
        public void onPrepareDownloadProgressUpdate(int i, int i2, long j, long j2, String str) {
            Log.d("TXVodPreloadManager", "preload: prepare process:" + i + "," + i2 + "," + j + "," + j2);
        }
    }
}
