package com.tencent.liteav.network;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import com.tencent.liteav.basic.c.b;
import com.tencent.liteav.basic.datareport.TXCDRApi;
import com.tencent.liteav.basic.log.TXCLog;
import com.tencent.liteav.basic.structs.TXSNALPacket;
import com.tencent.liteav.basic.util.TXCTimeUtil;
import com.tencent.liteav.basic.util.h;
import com.tencent.liteav.network.TXIStreamDownloader;
import com.tencent.liteav.network.e;
import com.tencent.liteav.network.o;
import com.tencent.rtmp.TXLiveConstants;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Vector;

/* loaded from: classes2.dex */
public class TXCStreamDownloader extends com.tencent.liteav.basic.module.a implements b, TXIStreamDownloader.a, e.a, k, l {
    public static final String TAG = "TXCStreamDownloader";
    private o mAccUrlFetcher;
    private Context mApplicationContext;
    private int mDownloadFormat;
    private TXIStreamDownloader mDownloader;
    private Handler mHandler;
    protected Map<String, String> mHeaders;
    private l mListener = null;
    private byte[] mListenerLock = new byte[0];
    private b mNotifyListener = null;
    private boolean mDownloaderRunning = false;
    private String mOriginPlayUrl = "";
    private boolean mEnableNearestIP = false;
    private int mChannelType = 0;
    private boolean mEnableMessage = false;
    private boolean mEnableMetaData = false;
    private String mFlvSessionKey = "";
    private long mLastTimeStamp = 0;
    private DownloadStats mLastDownloadStats = null;
    private boolean mRecvFirstNal = false;
    private long mSwitchStartTime = 0;
    private long mCurrentNalTs = 0;
    private long mLastIFramelTs = 0;
    private e mStreamSwitcher = null;
    private int mPayLoadType = 0;
    private Runnable mReportNetStatusRunnalbe = new Runnable() { // from class: com.tencent.liteav.network.TXCStreamDownloader.3
        @Override // java.lang.Runnable
        public void run() {
            TXCStreamDownloader.this.reportNetStatus();
        }
    };

    /* loaded from: classes2.dex */
    public static class DownloadStats {
        public long afterParseAudioBytes;
        public long afterParseVideoBytes;
        public long beforeParseAudioBytes;
        public long beforeParseVideoBytes;
        public long connTS;
        public long dnsTS;
        public int errorCode;
        public String errorInfo;
        public long firstAudioTS;
        public long firstVideoTS;
        public String flvSessionKey;
        public String serverIP;
        public long startTS;
        public long videoGop;
    }

    /* loaded from: classes2.dex */
    public static class a {
        public String a;
        public String b;
        public String c;
        public int d;
        public String e;
        public boolean f;
    }

    private native String nativeGetRTMPProxyUserId();

    @Override // com.tencent.liteav.basic.c.b
    public void onNotifyEvent(int i, Bundle bundle) {
        int i2;
        b bVar = this.mNotifyListener;
        if (bVar != null) {
            Bundle bundle2 = new Bundle();
            String str = "";
            if (i == -2308) {
                bundle2.putString(TXLiveConstants.EVT_DESCRIPTION, "The server rejected the connection request");
            } else if (i == 2012) {
                byte[] byteArray = bundle.getByteArray(TXLiveConstants.EVT_GET_MSG);
                if (byteArray != null && byteArray.length > 0) {
                    bundle2.putByteArray(TXLiveConstants.EVT_GET_MSG, byteArray);
                }
            } else if (i == 2028 || i == 2031) {
                bundle2 = bundle;
            } else if (i == 2103) {
                bundle2.putString(TXLiveConstants.EVT_DESCRIPTION, "retry connecting stream server");
            } else if (i == 3010) {
                bundle2.putString(TXLiveConstants.EVT_DESCRIPTION, "No video at this stream address");
            } else if (i == -2302) {
                bundle2.putString(TXLiveConstants.EVT_DESCRIPTION, "Failed to get accelerated pull address");
            } else if (i == -2301) {
                bundle2.putString(TXLiveConstants.EVT_DESCRIPTION, "failed to connect server for several times, abort connection");
            } else if (i == 2001) {
                bundle2.putString(TXLiveConstants.EVT_DESCRIPTION, "connection SUCCESS");
                if (bundle != null) {
                    String string = bundle.getString("serverip", str);
                    if (!TextUtils.isEmpty(string)) {
                        bundle2.putString("serverip", string);
                    }
                }
            } else if (i == 2002) {
                bundle2.putString(TXLiveConstants.EVT_DESCRIPTION, "begin receiving stream");
            } else if (i == 3002) {
                bundle2.putString(TXLiveConstants.EVT_DESCRIPTION, "Failed to connect server");
            } else if (i == 3003) {
                bundle2.putString(TXLiveConstants.EVT_DESCRIPTION, "RTMP handshake failed");
            } else if (i == 3006) {
                bundle2.putString(TXLiveConstants.EVT_DESCRIPTION, "Write data error");
            } else if (i != 3007) {
                bundle2.putString(TXLiveConstants.EVT_DESCRIPTION, "UNKNOWN event = " + i);
            } else {
                bundle2.putString(TXLiveConstants.EVT_DESCRIPTION, "Read data error");
            }
            if (bundle != null) {
                str = bundle.getString(TXLiveConstants.EVT_DESCRIPTION, str);
            }
            if (str != null && !str.isEmpty()) {
                bundle2.putString(TXLiveConstants.EVT_DESCRIPTION, str);
            }
            if (i == -2301 && bundle != null && bundle.containsKey("reason")) {
                bundle2.putInt("reason", bundle.getInt("reason"));
            }
            bundle2.putLong("EVT_TIME", TXCTimeUtil.getTimeTick());
            bundle2.putLong(TXLiveConstants.EVT_UTC_TIME, TXCTimeUtil.getUtcTimeTick());
            bVar.onNotifyEvent(i, bundle2);
            if (i == 3001 || i == 3002 || i == 3003 || i == 3004 || i == 3005 || i == 3006 || i == 3007 || i == 3008 || i == 3009 || i == 3010 || i == 2101 || i == 2102 || i == 2109 || i == 2110 || i == -2301 || i == -2304 || i == -2308 || i == -2309) {
                setStatusValue(7105, Integer.valueOf(i));
                if (bundle2 != null) {
                    setStatusValue(7106, bundle2.getString(TXLiveConstants.EVT_DESCRIPTION));
                }
            }
            i2 = 2001;
        } else {
            i2 = 2001;
        }
        if (i == i2) {
            reportNetStatusInternal();
        }
    }

    private void tryResetRetryCount() {
        TXIStreamDownloader tXIStreamDownloader = this.mDownloader;
        if (tXIStreamDownloader != null) {
            tXIStreamDownloader.connectRetryTimes = 0;
        }
    }

    @Override // com.tencent.liteav.network.l
    public void onPullAudio(com.tencent.liteav.basic.structs.a aVar) {
        tryResetRetryCount();
        synchronized (this.mListenerLock) {
            if (this.mListener != null) {
                this.mListener.onPullAudio(aVar);
            }
            if (this.mDownloader != null) {
                this.mDownloader.PushAudioFrame(aVar.f, aVar.h, aVar.e, aVar.g);
            }
        }
    }

    @Override // com.tencent.liteav.network.l
    public void onPullNAL(TXSNALPacket tXSNALPacket) {
        tryResetRetryCount();
        if (!this.mRecvFirstNal) {
            reportNetStatusInternal();
            this.mRecvFirstNal = true;
        }
        synchronized (this.mListenerLock) {
            this.mCurrentNalTs = tXSNALPacket.pts;
            if (tXSNALPacket.nalType == 0) {
                this.mLastIFramelTs = tXSNALPacket.pts;
            }
            if (this.mListener != null) {
                this.mListener.onPullNAL(tXSNALPacket);
            }
            if (this.mDownloader != null) {
                this.mDownloader.PushVideoFrame(tXSNALPacket.nalData, tXSNALPacket.nalType, tXSNALPacket.dts, tXSNALPacket.pts, tXSNALPacket.codecId);
            }
        }
    }

    @Override // com.tencent.liteav.network.TXIStreamDownloader.a
    public void onRestartDownloader() {
        Handler handler = this.mHandler;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.tencent.liteav.network.TXCStreamDownloader.1
                @Override // java.lang.Runnable
                public void run() {
                    TXCStreamDownloader.this.stop();
                    TXCStreamDownloader tXCStreamDownloader = TXCStreamDownloader.this;
                    tXCStreamDownloader.start(tXCStreamDownloader.mOriginPlayUrl, TXCStreamDownloader.this.mEnableNearestIP, TXCStreamDownloader.this.mChannelType, TXCStreamDownloader.this.mEnableMessage, TXCStreamDownloader.this.mEnableMetaData);
                }
            });
        }
    }

    @Override // com.tencent.liteav.network.TXIStreamDownloader.a
    public void onOldStreamStop() {
        synchronized (this.mListenerLock) {
            if (this.mStreamSwitcher != null) {
                this.mStreamSwitcher.b();
            }
        }
    }

    public void setListener(l lVar) {
        synchronized (this.mListenerLock) {
            this.mListener = lVar;
        }
    }

    public void setNotifyListener(b bVar) {
        synchronized (this.mListenerLock) {
            this.mNotifyListener = bVar;
        }
    }

    @Override // com.tencent.liteav.basic.module.a
    public void setID(String str) {
        super.setID(str);
        TXIStreamDownloader tXIStreamDownloader = this.mDownloader;
        if (tXIStreamDownloader != null) {
            tXIStreamDownloader.setUserID(str);
        }
    }

    @Override // com.tencent.liteav.network.e.a
    public void onSwitchFinish(TXIStreamDownloader tXIStreamDownloader, boolean z) {
        synchronized (this.mListenerLock) {
            int currentTimeMillis = (int) (System.currentTimeMillis() - this.mSwitchStartTime);
            this.mSwitchStartTime = 0;
            Bundle bundle = new Bundle();
            bundle.putLong("EVT_TIME", TXCTimeUtil.getTimeTick());
            bundle.putLong(TXLiveConstants.EVT_UTC_TIME, TXCTimeUtil.getUtcTimeTick());
            if (z) {
                this.mDownloader = tXIStreamDownloader;
                this.mDownloader.setListener(this);
                this.mDownloader.setNotifyListener(this);
                this.mDownloader.setRestartListener(this);
                bundle.putInt("EVT_ID", 2015);
                bundle.putCharSequence(TXLiveConstants.EVT_DESCRIPTION, "Switched resolution successfully");
                if (this.mNotifyListener != null) {
                    this.mNotifyListener.onNotifyEvent(2015, bundle);
                }
                TXCDRApi.txReportDAU(this.mApplicationContext, com.tencent.liteav.basic.datareport.a.by, currentTimeMillis, "");
            } else {
                bundle.putInt("EVT_ID", -2307);
                bundle.putCharSequence(TXLiveConstants.EVT_DESCRIPTION, "Failed to switch resolution");
                if (this.mNotifyListener != null) {
                    this.mNotifyListener.onNotifyEvent(-2307, bundle);
                }
                TXCDRApi.txReportDAU(this.mApplicationContext, com.tencent.liteav.basic.datareport.a.bz);
            }
            this.mStreamSwitcher = null;
        }
    }

    @Override // com.tencent.liteav.network.k
    public void onSEIMessage(byte[] bArr) {
        b bVar = this.mNotifyListener;
        if (bVar != null) {
            Bundle bundle = new Bundle();
            bundle.putByteArray(TXLiveConstants.EVT_GET_MSG, bArr);
            bVar.onNotifyEvent(2012, bundle);
        }
    }

    @Override // com.tencent.liteav.network.k
    public void onMetaDataMessage(HashMap<String, String> hashMap) {
        b bVar = this.mNotifyListener;
        if (bVar != null) {
            Bundle bundle = new Bundle();
            bundle.putSerializable("EVT_GET_METADATA", hashMap);
            bVar.onNotifyEvent(2028, bundle);
        }
    }

    static {
        h.f();
    }

    public TXCStreamDownloader(Context context, int i) {
        this.mDownloader = null;
        this.mDownloadFormat = 1;
        this.mHandler = null;
        if (i == 0) {
            this.mDownloader = new TXCFLVDownloader(context);
            this.mDownloader.setFlvSessionKey(this.mFlvSessionKey);
        } else if (i == 1 || i == 4) {
            this.mDownloader = new TXCRTMPDownloader(context);
        }
        TXIStreamDownloader tXIStreamDownloader = this.mDownloader;
        if (tXIStreamDownloader != null) {
            tXIStreamDownloader.setListener(this);
            this.mDownloader.setNotifyListener(this);
            this.mDownloader.setRestartListener(this);
            this.mDownloader.setMessageNotifyListener(this);
        }
        this.mDownloadFormat = i;
        this.mAccUrlFetcher = new o(context);
        this.mApplicationContext = context;
        Context context2 = this.mApplicationContext;
        if (context2 != null) {
            this.mHandler = new Handler(context2.getMainLooper());
        }
    }

    public void setRetryTimes(int i) {
        TXIStreamDownloader tXIStreamDownloader = this.mDownloader;
        if (tXIStreamDownloader != null) {
            tXIStreamDownloader.connectRetryLimit = i;
        }
    }

    public void setRetryInterval(int i) {
        TXIStreamDownloader tXIStreamDownloader = this.mDownloader;
        if (tXIStreamDownloader != null) {
            tXIStreamDownloader.connectRetryInterval = i;
        }
    }

    public int start(String str, boolean z, int i, boolean z2, boolean z3) {
        return start(str, z, i, z2, z3, null);
    }

    public int start(final String str, boolean z, int i, final boolean z2, final boolean z3, final com.tencent.liteav.basic.b.a aVar) {
        TXCLog.i(TAG, "start url:" + str + " ,enableNearestIP:" + z + " ,channeyType:" + i + " ,enableMessage:" + z2 + " ,enableMetaData:" + z3);
        this.mDownloaderRunning = true;
        this.mRecvFirstNal = false;
        this.mOriginPlayUrl = str;
        this.mEnableNearestIP = z;
        this.mChannelType = i;
        this.mEnableMessage = z2;
        this.mEnableMetaData = z3;
        setStatusValue(7113, 0L);
        setStatusValue(7114, 0L);
        setStatusValue(7115, 0L);
        if (str.startsWith("room")) {
            setStatusValue(7113, 1L);
            setStatusValue(7112, 2L);
            setStatusValue(7116, str);
            if (this.mDownloader != null) {
                Vector<h> vector = new Vector<>();
                vector.add(new h(str, true));
                this.mDownloader.setOriginUrl(str);
                this.mDownloader.setUserID(getID());
                this.mDownloader.startDownload(vector, false, false, z2, z3);
            }
            Handler handler = this.mHandler;
            if (handler != null) {
                handler.postDelayed(this.mReportNetStatusRunnalbe, 2000);
            }
            return 0;
        } else if (!z || this.mDownloadFormat != 4) {
            if (this.mDownloader != null) {
                setStatusValue(7112, 1L);
                Vector<h> vector2 = new Vector<>();
                vector2.add(new h(str, false));
                this.mDownloader.setOriginUrl(str);
                this.mDownloader.startDownload(vector2, this.mDownloadFormat == 4, z, z2, z3, aVar);
                Handler handler2 = this.mHandler;
                if (handler2 != null) {
                    handler2.postDelayed(this.mReportNetStatusRunnalbe, 2000);
                }
            }
            return 0;
        } else {
            int a2 = this.mAccUrlFetcher.a(str, i, new o.a() { // from class: com.tencent.liteav.network.TXCStreamDownloader.2
                @Override // com.tencent.liteav.network.o.a
                public void a(int i2, String str2, Vector<h> vector3) {
                    if (i2 != 0 || vector3 == null || vector3.isEmpty()) {
                        TXCStreamDownloader.this.onNotifyEvent(-2302, null);
                        TXCDRApi.txReportDAU(TXCStreamDownloader.this.mApplicationContext, com.tencent.liteav.basic.datareport.a.av, i2, str2);
                        TXCLog.e(TXCStreamDownloader.TAG, "getAccelerateStreamPlayUrl failed, play stream with raw url");
                        if (TXCStreamDownloader.this.mDownloaderRunning) {
                            TXCStreamDownloader.this.onNotifyEvent(-2301, null);
                        }
                    } else if (TXCStreamDownloader.this.mDownloaderRunning) {
                        if (TXCStreamDownloader.this.mDownloader != null) {
                            int i3 = 0;
                            Iterator<h> it = vector3.iterator();
                            while (it.hasNext()) {
                                h next = it.next();
                                if (next != null && next.b && next.a != null && next.a.length() > 0) {
                                    i3++;
                                }
                            }
                            TXCStreamDownloader.this.setStatusValue(7113, Long.valueOf((long) i3));
                            TXCStreamDownloader.this.setStatusValue(7112, 2L);
                            TXCStreamDownloader.this.mDownloader.setOriginUrl(str);
                            TXCStreamDownloader.this.mDownloader.startDownload(vector3, true, true, z2, z3);
                        }
                        if (TXCStreamDownloader.this.mHandler != null) {
                            TXCStreamDownloader.this.mHandler.postDelayed(TXCStreamDownloader.this.mReportNetStatusRunnalbe, 2000);
                        }
                        TXCDRApi.txReportDAU(TXCStreamDownloader.this.mApplicationContext, com.tencent.liteav.basic.datareport.a.av, i2, TXCStreamDownloader.this.mAccUrlFetcher.b());
                    } else {
                        TXCDRApi.txReportDAU(TXCStreamDownloader.this.mApplicationContext, com.tencent.liteav.basic.datareport.a.av, -4, "livePlayer have been stopped");
                    }
                }
            });
            if (a2 != 0) {
                if (a2 == -1) {
                    TXCDRApi.txReportDAU(this.mApplicationContext, com.tencent.liteav.basic.datareport.a.av, a2, "invalid playUrl");
                } else if (a2 == -2) {
                    TXCDRApi.txReportDAU(this.mApplicationContext, com.tencent.liteav.basic.datareport.a.av, a2, "invalid streamID");
                } else if (a2 == -3) {
                    TXCDRApi.txReportDAU(this.mApplicationContext, com.tencent.liteav.basic.datareport.a.av, a2, "invalid signature");
                }
                TXCLog.e(TAG, "getAccelerateStreamPlayUrl failed, result = " + a2 + ", play stream with raw url");
                onNotifyEvent(-2302, null);
                onNotifyEvent(-2301, null);
            }
            return 0;
        }
    }

    private void playStreamWithRawUrl(String str, boolean z, com.tencent.liteav.basic.b.a aVar) {
        if (this.mDownloader != null) {
            if (str != null && ((str.startsWith("http://") || str.startsWith("https://")) && str.contains(".flv"))) {
                int i = this.mDownloader.connectRetryLimit;
                int i2 = this.mDownloader.connectRetryInterval;
                this.mDownloader = null;
                this.mDownloader = new TXCFLVDownloader(this.mApplicationContext);
                this.mDownloader.setFlvSessionKey(this.mFlvSessionKey);
                this.mDownloader.setListener(this);
                this.mDownloader.setNotifyListener(this);
                this.mDownloader.setRestartListener(this);
                TXIStreamDownloader tXIStreamDownloader = this.mDownloader;
                tXIStreamDownloader.connectRetryLimit = i;
                tXIStreamDownloader.connectRetryInterval = i2;
                tXIStreamDownloader.setHeaders(this.mHeaders);
                this.mDownloader.setUserID(getID());
                this.mDownloader.setMessageNotifyListener(this);
                this.mDownloader.setPayloadType(this.mPayLoadType);
            }
            setStatusValue(7112, 1L);
            Vector<h> vector = new Vector<>();
            vector.add(new h(str, false));
            this.mDownloader.setOriginUrl(str);
            this.mDownloader.startDownload(vector, false, false, z, z, aVar);
        }
    }

    public void stop() {
        this.mDownloaderRunning = false;
        this.mRecvFirstNal = false;
        TXIStreamDownloader tXIStreamDownloader = this.mDownloader;
        if (tXIStreamDownloader != null) {
            tXIStreamDownloader.stopDownload();
        }
        Handler handler = this.mHandler;
        if (handler != null) {
            handler.removeCallbacks(this.mReportNetStatusRunnalbe);
        }
        synchronized (this.mListenerLock) {
            if (this.mStreamSwitcher != null) {
                this.mStreamSwitcher.a((l) null);
                this.mStreamSwitcher.a();
                this.mStreamSwitcher = null;
            }
        }
    }

    public boolean switchStream(String str) {
        return switchStream(str, null);
    }

    public boolean switchStream(String str, com.tencent.liteav.basic.b.a aVar) {
        synchronized (this.mListenerLock) {
            if (this.mStreamSwitcher == null && this.mDownloader != null && (this.mDownloader instanceof TXCFLVDownloader)) {
                TXCFLVDownloader tXCFLVDownloader = new TXCFLVDownloader(this.mApplicationContext, (TXCFLVDownloader) this.mDownloader);
                tXCFLVDownloader.connectRetryLimit = this.mDownloader.connectRetryLimit;
                tXCFLVDownloader.connectRetryInterval = this.mDownloader.connectRetryInterval;
                tXCFLVDownloader.setHeaders(this.mHeaders);
                tXCFLVDownloader.setUserID(getID());
                tXCFLVDownloader.setFlvSessionKey(this.mFlvSessionKey);
                tXCFLVDownloader.setMessageNotifyListener(this);
                tXCFLVDownloader.setPayloadType(this.mPayLoadType);
                this.mStreamSwitcher = new e(this);
                this.mStreamSwitcher.a(this);
                this.mStreamSwitcher.a(this.mDownloader, tXCFLVDownloader, this.mCurrentNalTs, this.mLastIFramelTs, str, aVar);
                this.mSwitchStartTime = System.currentTimeMillis();
                return true;
            }
            TXCLog.w(TAG, "stream_switch stream is changing ignore this change");
            return false;
        }
    }

    public void requestKeyFrame(String str) {
        TXIStreamDownloader tXIStreamDownloader;
        if (this.mDownloaderRunning && str != null && str.startsWith("room") && (tXIStreamDownloader = this.mDownloader) != null) {
            tXIStreamDownloader.requestKeyFrame(str);
        }
    }

    private DownloadStats getDownloadStats() {
        TXIStreamDownloader tXIStreamDownloader = this.mDownloader;
        if (tXIStreamDownloader != null) {
            return tXIStreamDownloader.getDownloadStats();
        }
        return null;
    }

    private a getRealTimeStreamInfo() {
        a aVar;
        o oVar = this.mAccUrlFetcher;
        if (oVar == null || TextUtils.isEmpty(oVar.a())) {
            aVar = null;
        } else {
            aVar = new a();
            aVar.b = this.mAccUrlFetcher.a();
            aVar.c = this.mAccUrlFetcher.b();
            aVar.d = this.mAccUrlFetcher.c();
            aVar.e = this.mAccUrlFetcher.d();
        }
        TXIStreamDownloader tXIStreamDownloader = this.mDownloader;
        if (!(tXIStreamDownloader == null || aVar == null)) {
            aVar.a = tXIStreamDownloader.getCurrentStreamUrl();
            aVar.f = this.mDownloader.isQuicChannel();
        }
        return aVar;
    }

    public void reportNetStatus() {
        reportNetStatusInternal();
        this.mHandler.postDelayed(this.mReportNetStatusRunnalbe, 2000);
    }

    private void reportNetStatusInternal() {
        long j;
        long j2;
        long timeTick = TXCTimeUtil.getTimeTick();
        long j3 = timeTick - this.mLastTimeStamp;
        DownloadStats downloadStats = getDownloadStats();
        a realTimeStreamInfo = getRealTimeStreamInfo();
        if (downloadStats != null) {
            DownloadStats downloadStats2 = this.mLastDownloadStats;
            if (downloadStats2 != null) {
                j = getSpeed(downloadStats2.afterParseVideoBytes, downloadStats.afterParseVideoBytes, j3).longValue();
                j2 = getSpeed(this.mLastDownloadStats.afterParseAudioBytes, downloadStats.afterParseAudioBytes, j3).longValue();
            } else {
                j2 = 0;
                j = 0;
            }
            if (j > 0 || j2 > 0) {
                this.mDownloader.connectRetryTimes = 0;
            }
            setStatusValue(7101, Long.valueOf(j));
            setStatusValue(7102, Long.valueOf(j2));
            setStatusValue(7103, Long.valueOf(downloadStats.firstVideoTS));
            setStatusValue(7104, Long.valueOf(downloadStats.firstAudioTS));
            setStatusValue(7120, Long.valueOf(downloadStats.videoGop));
            long j4 = 1;
            if (realTimeStreamInfo != null) {
                setStatusValue(7105, Long.valueOf((long) realTimeStreamInfo.d));
                setStatusValue(7106, realTimeStreamInfo.e);
                if (realTimeStreamInfo.f) {
                    j4 = 2;
                }
                setStatusValue(7111, Long.valueOf(j4));
                setStatusValue(7116, realTimeStreamInfo.a);
                setStatusValue(7117, realTimeStreamInfo.b);
                setStatusValue(7118, realTimeStreamInfo.c);
            } else {
                setStatusValue(7105, Long.valueOf((long) downloadStats.errorCode));
                setStatusValue(7106, downloadStats.errorInfo);
                setStatusValue(7111, 1L);
            }
            setStatusValue(7107, Long.valueOf(downloadStats.startTS));
            setStatusValue(7108, Long.valueOf(downloadStats.dnsTS));
            setStatusValue(7109, Long.valueOf(downloadStats.connTS));
            setStatusValue(7110, String.valueOf(downloadStats.serverIP));
        }
        TXIStreamDownloader tXIStreamDownloader = this.mDownloader;
        if (tXIStreamDownloader != null) {
            int connectCountQuic = tXIStreamDownloader.getConnectCountQuic();
            int connectCountTcp = this.mDownloader.getConnectCountTcp();
            setStatusValue(7114, Long.valueOf((long) (connectCountQuic + 1)));
            setStatusValue(7115, Long.valueOf((long) (connectCountTcp + 1)));
            setStatusValue(7119, this.mDownloader.getRealStreamUrl());
            setStatusValue(7121, String.valueOf(this.mDownloader.getFlvSessionKey()));
        }
        this.mLastTimeStamp = timeTick;
        this.mLastDownloadStats = downloadStats;
    }

    private Long getSpeed(long j, long j2, long j3) {
        if (j <= j2) {
            j2 -= j;
        }
        long j4 = 0;
        if (j3 > 0) {
            j4 = ((j2 * 8) * 1000) / (j3 * 1024);
        }
        return Long.valueOf(j4);
    }

    public void setHeaders(Map<String, String> map) {
        this.mHeaders = map;
        TXIStreamDownloader tXIStreamDownloader = this.mDownloader;
        if (tXIStreamDownloader != null) {
            tXIStreamDownloader.setHeaders(this.mHeaders);
        }
    }

    public void setFlvSessionKey(String str) {
        this.mFlvSessionKey = str;
        TXIStreamDownloader tXIStreamDownloader = this.mDownloader;
        if (tXIStreamDownloader != null) {
            tXIStreamDownloader.setFlvSessionKey(str);
        }
    }

    public void setPayloadType(int i) {
        this.mPayLoadType = i;
        TXIStreamDownloader tXIStreamDownloader = this.mDownloader;
        if (tXIStreamDownloader != null) {
            tXIStreamDownloader.setPayloadType(this.mPayLoadType);
        }
    }

    public String getRTMPProxyUserId() {
        return nativeGetRTMPProxyUserId();
    }
}
