package com.tencent.liteav.network;

import android.content.Context;
import android.os.Bundle;
import com.tencent.liteav.basic.c.b;
import com.tencent.liteav.basic.structs.TXSNALPacket;
import com.tencent.liteav.network.TXCStreamDownloader;
import java.util.HashMap;
import java.util.Map;
import java.util.Vector;

/* loaded from: classes5.dex */
public abstract class TXIStreamDownloader {
    protected Context mApplicationContext;
    protected Map<String, String> mHeaders;
    protected int mPayloadType;
    protected l mListener = null;
    protected b mNotifyListener = null;
    protected a mRestartListener = null;
    protected k mMessageNotifyListener = null;
    protected boolean mIsRunning = false;
    protected String mOriginUrl = "";
    public int connectRetryTimes = 0;
    public int connectRetryLimit = 3;
    public int connectRetryInterval = 3;
    protected boolean mEnableMessage = false;
    protected boolean mEnableMetaData = false;
    protected String mFlvSessionKey = "";
    protected String mUserID = "";

    /* loaded from: classes5.dex */
    public interface a {
        void onOldStreamStop();

        void onRestartDownloader();
    }

    public void PushAudioFrame(byte[] bArr, int i, long j, int i2) {
    }

    public void PushVideoFrame(byte[] bArr, int i, long j, long j2, int i2) {
    }

    public int getConnectCountQuic() {
        return 0;
    }

    public int getConnectCountTcp() {
        return 0;
    }

    public String getCurrentStreamUrl() {
        return null;
    }

    public long getCurrentTS() {
        return 0;
    }

    public TXCStreamDownloader.DownloadStats getDownloadStats() {
        return null;
    }

    public long getLastIFrameTS() {
        return 0;
    }

    public String getRealStreamUrl() {
        return null;
    }

    public boolean isQuicChannel() {
        return false;
    }

    public void requestKeyFrame(String str) {
    }

    public abstract void startDownload(Vector<h> vector, boolean z, boolean z2, boolean z3, boolean z4);

    public abstract void startDownload(Vector<h> vector, boolean z, boolean z2, boolean z3, boolean z4, com.tencent.liteav.basic.b.a aVar);

    public abstract void stopDownload();

    public TXIStreamDownloader(Context context) {
        this.mApplicationContext = null;
        this.mApplicationContext = context;
    }

    public void setPayloadType(int i) {
        this.mPayloadType = i;
    }

    public void setListener(l lVar) {
        this.mListener = lVar;
    }

    public void setHeaders(Map<String, String> map) {
        this.mHeaders = map;
    }

    public void setNotifyListener(b bVar) {
        this.mNotifyListener = bVar;
    }

    public void setRestartListener(a aVar) {
        this.mRestartListener = aVar;
    }

    public void sendNotifyEvent(int i) {
        b bVar = this.mNotifyListener;
        if (bVar != null) {
            bVar.onNotifyEvent(i, null);
        }
    }

    public void sendNotifyEvent(int i, String str) {
        if (this.mNotifyListener != null) {
            Bundle bundle = new Bundle();
            bundle.putString("EVT_MSG", str);
            this.mNotifyListener.onNotifyEvent(i, bundle);
        }
    }

    public void sendNotifyEvent(int i, String str, HashMap<String, String> hashMap) {
        if (this.mNotifyListener != null) {
            Bundle bundle = new Bundle();
            if (hashMap != null && hashMap.size() > 0) {
                for (String str2 : hashMap.keySet()) {
                    bundle.putString(str2, hashMap.get(str2));
                }
            }
            bundle.putString("EVT_MSG", str);
            this.mNotifyListener.onNotifyEvent(i, bundle);
        }
    }

    public void sendNotifyEvent(int i, String str, Bundle bundle) {
        if (this.mNotifyListener != null) {
            Bundle bundle2 = new Bundle();
            if (bundle != null) {
                bundle2.putAll(bundle);
            }
            bundle2.putString("EVT_MSG", str);
            this.mNotifyListener.onNotifyEvent(i, bundle2);
        }
    }

    public void onRecvVideoData(byte[] bArr, int i, long j, long j2, int i2) {
        if (this.mListener != null) {
            TXSNALPacket tXSNALPacket = new TXSNALPacket();
            tXSNALPacket.nalData = bArr;
            tXSNALPacket.nalType = i;
            tXSNALPacket.dts = j;
            tXSNALPacket.pts = j2;
            tXSNALPacket.codecId = i2;
            this.mListener.onPullNAL(tXSNALPacket);
        }
    }

    public void onRecvAudioData(byte[] bArr, int i, int i2, int i3) {
        if (this.mListener != null) {
            com.tencent.liteav.basic.structs.a aVar = new com.tencent.liteav.basic.structs.a();
            aVar.f = bArr;
            aVar.e = (long) i;
            if (i2 == 10) {
                if (i3 == 1) {
                    aVar.d = 2;
                } else {
                    aVar.d = 3;
                }
                if (aVar.d == 2) {
                    aVar.c = 16;
                }
            }
            if (i2 == 2) {
                aVar.d = 5;
            }
            aVar.h = i2;
            aVar.g = i3;
            this.mListener.onPullAudio(aVar);
        }
    }

    public void onRecvSEIData(byte[] bArr) {
        k kVar;
        if (bArr != null && bArr.length > 0 && (kVar = this.mMessageNotifyListener) != null) {
            kVar.onSEIMessage(bArr);
        }
    }

    public void onRecvMetaData(HashMap<String, String> hashMap) {
        k kVar;
        if (hashMap != null && hashMap.size() > 0 && (kVar = this.mMessageNotifyListener) != null) {
            kVar.onMetaDataMessage(hashMap);
        }
    }

    public void setOriginUrl(String str) {
        this.mOriginUrl = str;
    }

    public void setUserID(String str) {
        this.mUserID = str;
    }

    public void setFlvSessionKey(String str) {
        this.mFlvSessionKey = str;
    }

    public String getFlvSessionKey() {
        return this.mFlvSessionKey;
    }

    public void setMessageNotifyListener(k kVar) {
        this.mMessageNotifyListener = kVar;
    }
}
