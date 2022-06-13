package com.tencent.thumbplayer.d;

import android.content.Context;
import android.text.TextUtils;
import com.tencent.thumbplayer.api.proxy.ITPPreloadProxy;
import com.tencent.thumbplayer.api.proxy.TPDownloadParamData;
import com.tencent.thumbplayer.config.TPPlayerConfig;
import com.tencent.thumbplayer.core.downloadproxy.api.ITPDLProxyLogListener;
import com.tencent.thumbplayer.core.downloadproxy.api.ITPDownloadProxy;
import com.tencent.thumbplayer.core.downloadproxy.api.ITPPreLoadListener;
import com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadProxyEnum;
import com.tencent.thumbplayer.utils.TPLogUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes2.dex */
public class e implements ITPPreloadProxy {
    private Context a;
    private int b;
    private ITPDownloadProxy c;
    private boolean f = false;
    private a d = new a();
    private ITPPreloadProxy.IPreloadListener e = new d("TPPreloadProxyImpl");

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class a implements ITPDLProxyLogListener, ITPPreLoadListener {
        private a() {
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDLProxyLogListener
        public int d(String str, int i, String str2, String str3) {
            TPLogUtil.d(str2, "[" + str + ":" + i + "] " + str3);
            return 0;
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDLProxyLogListener
        public int e(String str, int i, String str2, String str3) {
            TPLogUtil.e(str2, "[" + str + ":" + i + "] " + str3);
            return 0;
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDLProxyLogListener
        public int i(String str, int i, String str2, String str3) {
            TPLogUtil.i(str2, "[" + str + ":" + i + "] " + str3);
            return 0;
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPreLoadListener
        public void onPrepareDownloadProgressUpdate(int i, int i2, long j, long j2, String str) {
            e.this.e.onPrepareDownloadProgressUpdate(i, i2, j, j2);
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPreLoadListener
        public void onPrepareError(int i, int i2, String str) {
            e.this.e.onPrepareError();
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPPreLoadListener
        public void onPrepareOK() {
            e.this.e.onPrepareSuccess();
        }

        @Override // com.tencent.thumbplayer.core.downloadproxy.api.ITPDLProxyLogListener
        public int w(String str, int i, String str2, String str3) {
            TPLogUtil.w(str2, "[" + str + ":" + i + "] " + str3);
            return 0;
        }
    }

    public e(Context context, int i) {
        this.a = context;
        this.b = i;
        a();
    }

    private void a() {
        b a2;
        int i = 3;
        while (i > 0 && !this.f) {
            try {
                a2 = g.a().a(this.b);
            } catch (Exception e) {
                i--;
                TPLogUtil.e("TPPreloadProxyImpl", e);
            }
            if (a2 == null || a2.a() == null) {
                i--;
                TPLogUtil.e("TPPreloadProxyImpl", "p2p so load failed");
            } else {
                this.c = a2.a();
                this.c.setLogListener(this.d);
                this.c.setUserData(TPDownloadProxyEnum.USER_IS_VIP, Boolean.valueOf(TPPlayerConfig.isUserIsVip()));
                if (!TextUtils.isEmpty(TPPlayerConfig.getUserUin())) {
                    this.c.setUserData(TPDownloadProxyEnum.USER_UIN, TPPlayerConfig.getUserUin());
                }
                if (!TextUtils.isEmpty(TPPlayerConfig.getAppVersionName(this.a))) {
                    this.c.setUserData(TPDownloadProxyEnum.USER_APP_VERSION, TPPlayerConfig.getAppVersionName(this.a));
                }
                if (TPPlayerConfig.getBuildNumber(this.a) != -1) {
                    this.c.setUserData(TPDownloadProxyEnum.USER_APP_VERSION_CODE, String.valueOf(TPPlayerConfig.getBuildNumber(this.a)));
                }
                this.c.setUserData(TPDownloadProxyEnum.USER_UPC, TPPlayerConfig.getUserUpc());
                this.c.setUserData(TPDownloadProxyEnum.USER_UPC_STATE, Integer.valueOf(TPPlayerConfig.getUserUpcState()));
                this.c.setUserData(TPDownloadProxyEnum.USER_EXTERNAL_NETWORK_IP, TPPlayerConfig.getOutNetIp());
                this.f = true;
                return;
            }
        }
    }

    @Override // com.tencent.thumbplayer.api.proxy.ITPPreloadProxy
    public String getPlayErrorCodeStr(int i) {
        return null;
    }

    @Override // com.tencent.thumbplayer.api.proxy.ITPPreloadProxy
    public boolean isAvailable() {
        return this.c != null && this.f;
    }

    @Override // com.tencent.thumbplayer.api.proxy.ITPPreloadProxy
    public void pushEvent(int i) {
        if (isAvailable()) {
            try {
                this.c.pushEvent(i);
            } catch (Throwable th) {
                TPLogUtil.e("TPPreloadProxyImpl", th);
            }
        }
    }

    @Override // com.tencent.thumbplayer.api.proxy.ITPPreloadProxy
    public void setPreloadListener(ITPPreloadProxy.IPreloadListener iPreloadListener) {
        if (iPreloadListener == null) {
            this.e = new d("TPPreloadProxyImpl");
        } else {
            this.e = iPreloadListener;
        }
    }

    @Override // com.tencent.thumbplayer.api.proxy.ITPPreloadProxy
    public int startClipPreload(String str, ArrayList<TPDownloadParamData> arrayList) {
        TPLogUtil.i("TPPreloadProxyImpl", "[startClipPreload] Preloading clips.");
        if (arrayList == null) {
            TPLogUtil.e("TPPreloadProxyImpl", "[startClipPreload] Fail to start clip preload: null download parameter list.");
            return -1;
        }
        if (!isAvailable()) {
            a();
            if (!isAvailable()) {
                TPLogUtil.e("TPPreloadProxyImpl", "[startClipPreload] Fail to initialize proxy.");
                return -1;
            }
        }
        int startClipPreload = this.c.startClipPreload(str, arrayList.size(), this.d);
        if (startClipPreload <= 0) {
            TPLogUtil.e("TPPreloadProxyImpl", "[startClipPreload] Fail to start clip preload: invalid preload ID.");
            stopPreload(startClipPreload);
            return -1;
        }
        Iterator<TPDownloadParamData> it = arrayList.iterator();
        int i = 1;
        while (it.hasNext()) {
            TPDownloadParamData next = it.next();
            if (!this.c.setClipInfo(startClipPreload, i, next.getDownloadFileID(), i.a(next.getUrl(), next, null))) {
                TPLogUtil.e("TPPreloadProxyImpl", "[startClipPreload] Fail to set clip info.");
                stopPreload(startClipPreload);
                return -1;
            }
            i++;
        }
        try {
            this.c.startTask(startClipPreload);
            return startClipPreload;
        } catch (Throwable th) {
            TPLogUtil.e("TPPreloadProxyImpl", "[startClipPreload] Fail to start task: " + th.toString());
            stopPreload(startClipPreload);
            return -1;
        }
    }

    @Override // com.tencent.thumbplayer.api.proxy.ITPPreloadProxy
    public int startPreload(String str, TPDownloadParamData tPDownloadParamData) {
        return startPreload(str, tPDownloadParamData, null);
    }

    @Override // com.tencent.thumbplayer.api.proxy.ITPPreloadProxy
    public int startPreload(String str, TPDownloadParamData tPDownloadParamData, Map<String, String> map) {
        if (!isAvailable()) {
            a();
            if (!isAvailable()) {
                return -1;
            }
        }
        if (tPDownloadParamData != null) {
            try {
                return this.c.startPreload(str, i.a(null, tPDownloadParamData, map), this.d);
            } catch (Throwable th) {
                TPLogUtil.e("TPPreloadProxyImpl", th);
            }
        }
        return -1;
    }

    @Override // com.tencent.thumbplayer.api.proxy.ITPPreloadProxy
    public void stopPreload(int i) {
        ITPDownloadProxy iTPDownloadProxy = this.c;
        if (iTPDownloadProxy != null) {
            try {
                iTPDownloadProxy.stopPreload(i);
            } catch (Throwable th) {
                TPLogUtil.e("TPPreloadProxyImpl", th);
            }
        }
    }
}
