package com.tencent.liteav.network;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import com.google.android.exoplayer2.PlaybackException;
import com.tencent.liteav.basic.log.TXCLog;
import com.tencent.liteav.basic.module.Monitor;
import com.tencent.liteav.basic.module.TXCEventRecorderProxy;
import com.tencent.liteav.basic.module.TXCStatus;
import com.tencent.liteav.basic.structs.TXSNALPacket;
import com.tencent.liteav.basic.util.TXCTimeUtil;
import com.tencent.liteav.basic.util.h;
import java.lang.ref.WeakReference;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Vector;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class TXCStreamUploader extends com.tencent.liteav.basic.module.a implements b {
    public static final int NAL_CODEC_ID_AVC = 0;
    public static final int NAL_CODEC_ID_HEVC = 1;
    public static final int RTMPSENDSTRATEGY_LIVE = 1;
    public static final int RTMPSENDSTRATEGY_REALTIME_QUIC = 3;
    public static final int RTMPSENDSTRATEGY_REALTIME_TCP = 2;
    static final String TAG = "TXCStreamUploader";
    public static final int TXE_UPLOAD_MODE_AUDIO_ONLY = 1;
    public static final int TXE_UPLOAD_MODE_LINK_MIC = 2;
    public static final int TXE_UPLOAD_MODE_REAL_TIME = 0;
    public static final int TXE_UPLOAD_PROTOCOL_AV = 1;
    public static final int TXE_UPLOAD_PROTOCOL_RTMP = 0;
    private Context mContext;
    private int mCurrentRecordIdx;
    private HandlerThread mHandlerThread;
    private d mIntelligentRoute;
    private ArrayList<a> mIpList;
    private boolean mIsPushing;
    private int mLastNetworkType;
    HashMap<String, String> mMetaData;
    private p mParam;
    private int mRetryCount;
    private String mRtmpUrl;
    private Thread mThread;
    private Object mThreadLock;
    private s mUploadQualityReport;
    private long mUploaderInstance;
    private boolean mQuicChannel = false;
    private int mChannelType = 0;
    private boolean mEnableNearestIP = true;
    private WeakReference<com.tencent.liteav.basic.c.b> mNotifyListener = null;
    private long mConnectSuccessTimeStamps = 0;
    private long mGoodPushTime = 30000;
    private Handler mHandler = null;
    private final int MSG_RECONNECT = 101;
    private final int MSG_EVENT = 102;
    private final int MSG_REPORT_STATUS = 103;
    private final int MSG_RTMPPROXY_HEARTBEAT = 104;
    private long mLastTimeStamp = 0;
    private UploadStats mLastUploadStats = null;
    private Vector<TXSNALPacket> mVecPendingNAL = new Vector<>();
    private int mConnectCountQuic = 0;
    private int mConnectCountTcp = 0;
    private boolean mRtmpProxyEnable = false;
    private boolean mAudioMuted = false;
    private a mRtmpProxyParam = new a();
    private Vector<String> mRtmpProxyIPList = new Vector<>();
    private int mRtmpProxyIPIndex = 0;
    private long mRtmpProxyInstance = 0;
    private long mRtmpMsgRecvThreadInstance = 0;
    private Object mRtmpProxyLock = new Object();
    private Object mRtmpMsgRecvThreadLock = new Object();

    private native void nativeCacheJNIParams();

    private native void nativeEnableDrop(long j, boolean z);

    private native UploadStats nativeGetStats(long j);

    /* JADX INFO: Access modifiers changed from: private */
    public native long nativeInitRtmpMsgRecvThreadInstance(long j, long j2);

    /* JADX INFO: Access modifiers changed from: private */
    public native long nativeInitRtmpProxyInstance(long j, long j2, String str, long j3, String str2, long j4, long j5, String str3, boolean z, String str4);

    /* JADX INFO: Access modifiers changed from: private */
    public native long nativeInitUploader(String str, String str2, boolean z, int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z2, int i8, HashMap<String, String> hashMap);

    /* JADX INFO: Access modifiers changed from: private */
    public native void nativeOnThreadRun(long j);

    private native void nativePushAAC(long j, byte[] bArr, long j2);

    /* JADX INFO: Access modifiers changed from: private */
    public native void nativePushNAL(long j, byte[] bArr, int i, long j2, long j3, long j4, boolean z);

    private native void nativeReleaseJNIParams();

    private native void nativeRtmpMsgRecvThreadStart(long j);

    /* JADX INFO: Access modifiers changed from: private */
    public native void nativeRtmpMsgRecvThreadStop(long j);

    private native void nativeRtmpProxyEnterRoom(long j);

    private native void nativeRtmpProxyLeaveRoom(long j);

    private native void nativeRtmpProxySendHeartBeat(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11);

    private native void nativeSendRtmpProxyMsg(long j, byte[] bArr);

    private native void nativeSendSeiMessage(long j, int i, byte[] bArr);

    private native void nativeSetSendStrategy(long j, int i, boolean z);

    /* JADX INFO: Access modifiers changed from: private */
    public native void nativeSetVideoDropParams(long j, boolean z, int i, int i2);

    private native void nativeStopPush(long j);

    /* JADX INFO: Access modifiers changed from: private */
    public native void nativeUninitRtmpMsgRecvThreadInstance(long j);

    /* JADX INFO: Access modifiers changed from: private */
    public native void nativeUninitRtmpProxyInstance(long j);

    /* JADX INFO: Access modifiers changed from: private */
    public native void nativeUninitUploader(long j);

    public int init() {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public class b {
        public String a;
        public boolean b;

        public b(String str, boolean z) {
            this.a = "";
            this.b = false;
            this.a = str;
            this.b = z;
        }
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public class UploadStats {
        public long audioCacheLen;
        public long audioDropCount;
        public long bandwidthEst;
        public long channelType;
        public long connTS;
        public long connectTimeCost;
        public String connectionID;
        public String connectionStats;
        public long dnsTS;
        public long dnsparseTimeCost;
        public long handshakeTimeCost;
        public long inAudioBytes;
        public long inVideoBytes;
        public long outAudioBytes;
        public long outVideoBytes;
        public String serverIP;
        public long startTS;
        public long videoCacheLen;
        public long videoDropCount;

        public UploadStats() {
        }
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public class a {
        public long a;
        public long b;
        public String c;
        public long d;
        public String e;
        public long f;
        public long g;
        public String h;
        public boolean i;
        public String j;

        public a() {
        }

        public void a() {
            this.a = 0;
            this.b = 0;
            this.c = "";
            this.d = 0;
            this.e = "";
            this.f = 0;
            this.g = 0;
            this.i = false;
            this.j = "";
        }
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public class RtmpProxyUserInfo {
        public String account = "";
        public String playUrl = "";
        public int stmType = 0;

        public RtmpProxyUserInfo() {
        }
    }

    static {
        h.f();
    }

    public void setNotifyListener(com.tencent.liteav.basic.c.b bVar) {
        this.mNotifyListener = new WeakReference<>(bVar);
    }

    public TXCStreamUploader(Context context, p pVar) {
        this.mUploaderInstance = 0;
        this.mThread = null;
        this.mThreadLock = null;
        this.mIsPushing = false;
        this.mRtmpUrl = "";
        this.mIntelligentRoute = null;
        this.mLastNetworkType = 0;
        this.mContext = null;
        this.mIpList = null;
        this.mCurrentRecordIdx = 0;
        this.mRetryCount = 0;
        this.mHandlerThread = null;
        this.mParam = null;
        this.mUploadQualityReport = null;
        this.mContext = context;
        if (pVar == null) {
            pVar = new p();
            pVar.a = 0;
            pVar.f = 3;
            pVar.e = 3;
            pVar.g = 40;
            pVar.h = 1000;
            pVar.i = true;
        }
        this.mParam = pVar;
        this.mThreadLock = new Object();
        this.mIntelligentRoute = new d();
        this.mIntelligentRoute.a = this;
        this.mUploaderInstance = 0;
        this.mRetryCount = 0;
        this.mCurrentRecordIdx = 0;
        this.mIpList = null;
        this.mIsPushing = false;
        this.mThread = null;
        this.mRtmpUrl = null;
        this.mLastNetworkType = 0;
        this.mHandlerThread = null;
        this.mUploadQualityReport = new s(context);
        q.a().a(context);
    }

    public void setRetryInterval(int i) {
        p pVar = this.mParam;
        if (pVar != null) {
            pVar.f = i;
        }
    }

    public void setAudioInfo(int i, int i2) {
        p pVar = this.mParam;
        if (pVar != null) {
            pVar.c = i2;
            pVar.d = i;
        }
    }

    public void setRetryTimes(int i) {
        p pVar = this.mParam;
        if (pVar != null) {
            pVar.e = i;
        }
    }

    public void setMode(int i) {
        p pVar = this.mParam;
        if (pVar != null) {
            pVar.a = i;
        }
    }

    private void postReconnectMsg(String str, boolean z, int i) {
        Message message = new Message();
        message.what = 101;
        message.obj = str;
        message.arg1 = z ? 2 : 1;
        Handler handler = this.mHandler;
        if (handler != null) {
            handler.sendMessageDelayed(message, (long) i);
        }
    }

    @Override // com.tencent.liteav.network.b
    public void onFetchDone(int i, ArrayList<a> arrayList) {
        if (this.mIsPushing) {
            if (i == 1) {
                TXCLog.w("TXCStreamUploader", "onFetchDone: Network connection failed. Invalid push url!");
                sendNotifyEvent(-1313, "Network connection failed. Invalid push url!");
                return;
            }
            if (i != 0 || arrayList == null || arrayList.size() <= 0) {
                StringBuilder sb = new StringBuilder();
                sb.append("onFetchDone: code = ");
                sb.append(i);
                sb.append(" ip count = ");
                sb.append(arrayList != null ? arrayList.size() : 0);
                TXCLog.i("TXCStreamUploader", sb.toString());
            } else {
                TXCLog.i("TXCStreamUploader", "onFetchDone: connect success, ip count = " + arrayList.size());
                this.mIpList = arrayList;
                this.mCurrentRecordIdx = 0;
                Iterator<a> it = this.mIpList.iterator();
                String str = "";
                int i2 = 0;
                while (it.hasNext()) {
                    a next = it.next();
                    if (next != null && next.c && next.a != null && next.a.length() > 0) {
                        i2++;
                    }
                    if (next != null) {
                        str = str + " " + getConfusionIP(next.a) + ":" + next.b;
                    }
                }
                setStatusValue(7016, Long.valueOf((long) i2));
                setStatusValue(7019, "{" + str + " }");
            }
            b rtmpRealConnectInfo = getRtmpRealConnectInfo();
            postReconnectMsg(rtmpRealConnectInfo.a, rtmpRealConnectInfo.b, 0);
        }
    }

    public String getConfusionIP(String str) {
        int indexOf;
        String substring;
        int indexOf2;
        if (str == null || (indexOf = str.indexOf(".")) == -1 || (indexOf2 = (substring = str.substring(indexOf + 1)).indexOf(".")) == -1) {
            return str;
        }
        String substring2 = substring.substring(indexOf2 + 1);
        return "A.B." + substring2;
    }

    public String start(String str, boolean z, int i) {
        if (this.mIsPushing) {
            return this.mRtmpUrl;
        }
        this.mIsPushing = true;
        this.mConnectSuccessTimeStamps = 0;
        this.mRetryCount = 0;
        this.mRtmpUrl = str;
        this.mChannelType = i;
        this.mConnectCountQuic = 0;
        this.mConnectCountTcp = 0;
        this.mRtmpProxyEnable = false;
        this.mRtmpProxyParam.a();
        this.mRtmpProxyIPList.clear();
        this.mRtmpProxyIPIndex = 0;
        this.mRtmpProxyInstance = 0;
        this.mRtmpMsgRecvThreadInstance = 0;
        setStatusValue(7016, 0L);
        setStatusValue(7017, 0L);
        setStatusValue(7018, 0L);
        this.mUploadQualityReport.a();
        StringBuilder sb = new StringBuilder();
        sb.append("start push with url:");
        sb.append(this.mRtmpUrl);
        sb.append(" enable nearest ip:");
        sb.append(z ? "yes" : "no");
        sb.append("channel type:");
        sb.append(i);
        TXCLog.i("TXCStreamUploader", sb.toString());
        if (h.d(this.mContext) == 0) {
            sendNotifyEvent(-1325);
            return this.mRtmpUrl;
        }
        this.mEnableNearestIP = z;
        if (this.mHandlerThread == null) {
            this.mHandlerThread = new HandlerThread("RTMP_PUSH");
            this.mHandlerThread.start();
        }
        this.mHandler = new Handler(this.mHandlerThread.getLooper()) { // from class: com.tencent.liteav.network.TXCStreamUploader.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                int i2 = message.what;
                if (i2 == 101) {
                    TXCStreamUploader.this.startPushTask((String) message.obj, message.arg1 == 2, 0);
                } else if (i2 == 103) {
                    TXCStreamUploader.this.reportNetStatus();
                } else if (i2 == 104) {
                    TXCStreamUploader.this.rtmpProxySendHeartBeat();
                    if (TXCStreamUploader.this.mHandler != null) {
                        TXCStreamUploader.this.mHandler.sendEmptyMessageDelayed(104, 2000);
                    }
                }
            }
        };
        parseProxyInfo(str);
        if (this.mRtmpProxyEnable) {
            this.mLastNetworkType = h.d(this.mContext);
            nativeCacheJNIParams();
            startPushTask(this.mRtmpUrl, this.mQuicChannel, 0);
        } else if (!this.mEnableNearestIP || this.mLastNetworkType == h.d(this.mContext)) {
            startPushTask(this.mRtmpUrl, this.mQuicChannel, 0);
        } else {
            TXCLog.i("TXCStreamUploader", "fetching nearest ip list");
            this.mLastNetworkType = h.d(this.mContext);
            this.mIntelligentRoute.a(str, i);
        }
        this.mHandler.sendEmptyMessageDelayed(103, 2000);
        return this.mRtmpUrl;
    }

    public void stop() {
        if (this.mIsPushing) {
            this.mIsPushing = false;
            TXCLog.i("TXCStreamUploader", "stop push");
            if (this.mRtmpProxyEnable) {
                synchronized (this.mRtmpProxyLock) {
                    nativeRtmpProxyLeaveRoom(this.mRtmpProxyInstance);
                }
            }
            synchronized (this.mThreadLock) {
                nativeStopPush(this.mUploaderInstance);
            }
            HandlerThread handlerThread = this.mHandlerThread;
            if (handlerThread != null) {
                handlerThread.getLooper().quit();
                this.mHandlerThread = null;
            }
            if (this.mHandler != null) {
                this.mHandler = null;
            }
            if (this.mRtmpProxyEnable) {
                nativeReleaseJNIParams();
            }
            this.mUploadQualityReport.c();
            this.mUploadQualityReport.a();
        }
    }

    private void tryResetRetryCount() {
        if (this.mConnectSuccessTimeStamps != 0 && TXCTimeUtil.getTimeTick() - this.mConnectSuccessTimeStamps > ((long) (this.mParam.e * (this.mParam.f + 13) * 1000))) {
            this.mRetryCount = 0;
            this.mConnectSuccessTimeStamps = 0;
            TXCLog.i("TXCStreamUploader", "reset retry count");
        }
    }

    public void setMetaData(HashMap<String, String> hashMap) {
        this.mMetaData = hashMap;
    }

    public void pushAAC(byte[] bArr, long j) {
        tryResetRetryCount();
        synchronized (this.mThreadLock) {
            if (!this.mAudioMuted || !this.mRtmpProxyEnable) {
                nativePushAAC(this.mUploaderInstance, bArr, j);
            }
        }
    }

    public void pushNAL(TXSNALPacket tXSNALPacket) {
        tryResetRetryCount();
        synchronized (this.mThreadLock) {
            if (this.mUploaderInstance == 0) {
                if (tXSNALPacket.nalType == 0) {
                    this.mVecPendingNAL.removeAllElements();
                }
                this.mVecPendingNAL.add(tXSNALPacket);
            } else if (!(tXSNALPacket == null || tXSNALPacket.nalData == null || tXSNALPacket.nalData.length <= 0)) {
                nativePushNAL(this.mUploaderInstance, tXSNALPacket.nalData, tXSNALPacket.nalType, tXSNALPacket.frameIndex, tXSNALPacket.pts, tXSNALPacket.dts, tXSNALPacket.codecId == 1);
            }
        }
    }

    public void setAudioMute(boolean z) {
        synchronized (this.mThreadLock) {
            this.mAudioMuted = z;
            if (this.mRtmpProxyEnable && this.mUploaderInstance != 0) {
                nativeSetSendStrategy(this.mUploaderInstance, this.mParam.j ? this.mQuicChannel ? 3 : 2 : 1, false);
            }
        }
    }

    public void setDropEanble(boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append("drop enable ");
        sb.append(z ? "yes" : "no");
        TXCLog.i("TXCStreamUploader", sb.toString());
        synchronized (this.mThreadLock) {
            nativeEnableDrop(this.mUploaderInstance, z);
        }
    }

    public void setVideoDropParams(boolean z, int i, int i2) {
        StringBuilder sb = new StringBuilder();
        sb.append("drop params wait i frame:");
        sb.append(z ? "yes" : "no");
        sb.append(" max video count:");
        sb.append(i);
        sb.append(" max video cache time: ");
        sb.append(i2);
        sb.append(" ms");
        TXCLog.i("TXCStreamUploader", sb.toString());
        synchronized (this.mThreadLock) {
            this.mParam.i = z;
            this.mParam.g = i;
            this.mParam.h = i2;
            if (this.mUploaderInstance != 0) {
                nativeSetVideoDropParams(this.mUploaderInstance, this.mParam.i, this.mParam.g, this.mParam.h);
            }
        }
    }

    public void setSendStrategy(boolean z, boolean z2) {
        ArrayList<a> arrayList;
        p pVar = this.mParam;
        pVar.j = z;
        pVar.k = z2;
        this.mUploadQualityReport.a(z);
        int i = z ? this.mQuicChannel ? 3 : 2 : 1;
        if (!this.mRtmpProxyEnable && ((arrayList = this.mIpList) == null || arrayList.size() == 0)) {
            i = 1;
        }
        synchronized (this.mThreadLock) {
            if (this.mUploaderInstance != 0) {
                nativeSetSendStrategy(this.mUploaderInstance, i, z2);
            }
        }
        setStatusValue(7020, Long.valueOf((long) i));
    }

    public void sendSeiMessage(int i, byte[] bArr) {
        nativeSendSeiMessage(this.mUploaderInstance, i, bArr);
    }

    public UploadStats getUploadStats() {
        UploadStats nativeGetStats;
        synchronized (this.mThreadLock) {
            nativeGetStats = nativeGetStats(this.mUploaderInstance);
            if (nativeGetStats != null) {
                nativeGetStats.channelType = this.mQuicChannel ? 2 : 1;
            }
        }
        return nativeGetStats;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startPushTask(final String str, final boolean z, int i) {
        TXCLog.i("TXCStreamUploader", "start push task");
        boolean z2 = this.mQuicChannel;
        if (z2 != z && z2) {
            Monitor.a(2, String.format("Network: switch push channel from quic to tcp.[retryCount:%d][retryLimit:%d]", Integer.valueOf(this.mRetryCount), Integer.valueOf(this.mParam.e)), "", 0);
        }
        if (z) {
            int i2 = this.mConnectCountQuic + 1;
            this.mConnectCountQuic = i2;
            setStatusValue(7017, Long.valueOf((long) i2));
        } else {
            int i3 = this.mConnectCountTcp + 1;
            this.mConnectCountTcp = i3;
            setStatusValue(7018, Long.valueOf((long) i3));
        }
        this.mThread = new Thread("RTMPUpload") { // from class: com.tencent.liteav.network.TXCStreamUploader.2
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                Iterator it;
                while (TXCStreamUploader.this.mUploaderInstance != 0) {
                    try {
                        sleep(100, 0);
                    } catch (InterruptedException unused) {
                    }
                }
                TXCStreamUploader.this.mUploadQualityReport.b();
                TXCStreamUploader.this.mUploadQualityReport.a(TXCStreamUploader.this.mParam.j);
                TXCStreamUploader.this.mUploadQualityReport.a(TXCStreamUploader.this.mRtmpUrl);
                TXCStreamUploader.this.mUploadQualityReport.a(z, TXCStreamUploader.this.getAddressFromUrl(str));
                synchronized (TXCStreamUploader.this.mThreadLock) {
                    TXCStreamUploader.this.mQuicChannel = z;
                    int i4 = TXCStreamUploader.this.mParam.j ? TXCStreamUploader.this.mQuicChannel ? 3 : 2 : 1;
                    if (!TXCStreamUploader.this.mRtmpProxyEnable) {
                        if (TXCStreamUploader.this.mIpList == null || TXCStreamUploader.this.mIpList.size() == 0) {
                            i4 = 1;
                        }
                    } else if (TXCStreamUploader.this.mAudioMuted) {
                        TXCStreamUploader.this.mParam.k = false;
                    }
                    TXCStreamUploader.this.setStatusValue(7020, Long.valueOf((long) i4));
                    TXCStreamUploader.this.mUploaderInstance = TXCStreamUploader.this.nativeInitUploader(TXCStreamUploader.this.mRtmpUrl, str, z, TXCStreamUploader.this.mParam.d, TXCStreamUploader.this.mParam.c, TXCStreamUploader.this.mParam.a, TXCStreamUploader.this.mParam.b, TXCStreamUploader.this.mParam.g, 16, i4, TXCStreamUploader.this.mParam.k, TXCStreamUploader.this.mParam.l, TXCStreamUploader.this.mMetaData);
                    if (TXCStreamUploader.this.mUploaderInstance != 0) {
                        TXCStreamUploader.this.nativeSetVideoDropParams(TXCStreamUploader.this.mUploaderInstance, TXCStreamUploader.this.mParam.i, TXCStreamUploader.this.mParam.g, TXCStreamUploader.this.mParam.h);
                        Iterator it2 = TXCStreamUploader.this.mVecPendingNAL.iterator();
                        boolean z3 = false;
                        while (it2.hasNext()) {
                            TXSNALPacket tXSNALPacket = (TXSNALPacket) it2.next();
                            if (!z3 && tXSNALPacket.nalType == 0) {
                                z3 = true;
                            }
                            if (z3) {
                                it = it2;
                                TXCStreamUploader.this.nativePushNAL(TXCStreamUploader.this.mUploaderInstance, tXSNALPacket.nalData, tXSNALPacket.nalType, tXSNALPacket.frameIndex, tXSNALPacket.pts, tXSNALPacket.dts, tXSNALPacket.codecId == 1);
                            } else {
                                it = it2;
                            }
                            it2 = it;
                        }
                        TXCStreamUploader.this.mVecPendingNAL.removeAllElements();
                    }
                }
                if (TXCStreamUploader.this.mRtmpProxyEnable) {
                    synchronized (TXCStreamUploader.this.mRtmpProxyLock) {
                        TXCStreamUploader.this.mRtmpProxyInstance = TXCStreamUploader.this.nativeInitRtmpProxyInstance(TXCStreamUploader.this.mRtmpProxyParam.a, TXCStreamUploader.this.mRtmpProxyParam.b, TXCStreamUploader.this.mRtmpProxyParam.c, TXCStreamUploader.this.mRtmpProxyParam.d, TXCStreamUploader.this.mRtmpProxyParam.e, TXCStreamUploader.this.mRtmpProxyParam.f, TXCStreamUploader.this.mRtmpProxyParam.g, TXCStreamUploader.this.mRtmpProxyParam.h, TXCStreamUploader.this.mRtmpProxyParam.i, TXCStreamUploader.this.mRtmpProxyParam.j);
                    }
                    synchronized (TXCStreamUploader.this.mRtmpMsgRecvThreadLock) {
                        TXCStreamUploader.this.mRtmpMsgRecvThreadInstance = TXCStreamUploader.this.nativeInitRtmpMsgRecvThreadInstance(TXCStreamUploader.this.mRtmpProxyInstance, TXCStreamUploader.this.mUploaderInstance);
                    }
                }
                TXCStreamUploader tXCStreamUploader = TXCStreamUploader.this;
                tXCStreamUploader.nativeOnThreadRun(tXCStreamUploader.mUploaderInstance);
                if (TXCStreamUploader.this.mRtmpProxyEnable) {
                    synchronized (TXCStreamUploader.this.mRtmpMsgRecvThreadLock) {
                        TXCStreamUploader.this.nativeRtmpMsgRecvThreadStop(TXCStreamUploader.this.mRtmpMsgRecvThreadInstance);
                        TXCStreamUploader.this.nativeUninitRtmpMsgRecvThreadInstance(TXCStreamUploader.this.mRtmpMsgRecvThreadInstance);
                        TXCStreamUploader.this.mRtmpMsgRecvThreadInstance = 0;
                    }
                    synchronized (TXCStreamUploader.this.mRtmpProxyLock) {
                        TXCStreamUploader.this.nativeUninitRtmpProxyInstance(TXCStreamUploader.this.mRtmpProxyInstance);
                        TXCStreamUploader.this.mRtmpProxyInstance = 0;
                    }
                }
                synchronized (TXCStreamUploader.this.mThreadLock) {
                    TXCStreamUploader.this.nativeUninitUploader(TXCStreamUploader.this.mUploaderInstance);
                    TXCStreamUploader.this.mUploaderInstance = 0;
                }
            }
        };
        this.mThread.start();
    }

    private void stopPushTask() {
        TXCLog.i("TXCStreamUploader", "stop push task");
        synchronized (this.mThreadLock) {
            this.mVecPendingNAL.removeAllElements();
            nativeStopPush(this.mUploaderInstance);
        }
    }

    private b getRtmpRealConnectInfo() {
        int i;
        if (!this.mEnableNearestIP) {
            return new b(this.mRtmpUrl, false);
        }
        ArrayList<a> arrayList = this.mIpList;
        if (arrayList == null) {
            return new b(this.mRtmpUrl, false);
        }
        if (this.mCurrentRecordIdx >= arrayList.size() || (i = this.mCurrentRecordIdx) < 0) {
            return new b(this.mRtmpUrl, false);
        }
        a aVar = this.mIpList.get(i);
        String[] split = this.mRtmpUrl.split("://");
        if (split.length < 2) {
            return new b(this.mRtmpUrl, false);
        }
        String[] split2 = split[1].split("/");
        if (aVar.a.split(":").length <= 1 || aVar.a.startsWith("[")) {
            split2[0] = aVar.a + ":" + aVar.b;
        } else {
            split2[0] = "[" + aVar.a + "]:" + aVar.b;
        }
        StringBuilder sb = new StringBuilder(split2[0]);
        for (int i2 = 1; i2 < split2.length; i2++) {
            sb.append("/");
            sb.append(split2[i2]);
        }
        return new b(split[0] + "://" + sb.toString(), aVar.c);
    }

    private boolean nextRecordIdx(boolean z) {
        ArrayList<a> arrayList = this.mIpList;
        if (!(arrayList == null || arrayList.size() == 0)) {
            if (z) {
                this.mIpList.get(this.mCurrentRecordIdx).e++;
            }
            if (this.mCurrentRecordIdx + 1 < this.mIpList.size()) {
                this.mCurrentRecordIdx++;
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getAddressFromUrl(String str) {
        int indexOf;
        String substring;
        int indexOf2;
        return (str == null || (indexOf = str.indexOf("://")) == -1 || (indexOf2 = (substring = str.substring(indexOf + 3)).indexOf("/")) == -1) ? "" : substring.substring(0, indexOf2);
    }

    private void reconnect(final boolean z) {
        stopPushTask();
        Handler handler = this.mHandler;
        if (handler != null) {
            handler.postDelayed(new Runnable() { // from class: com.tencent.liteav.network.TXCStreamUploader.3
                @Override // java.lang.Runnable
                public void run() {
                    TXCStreamUploader.this.internalReconnect(z);
                }
            }, (long) (this.mParam.f * 1000));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void internalReconnect(boolean z) {
        if (this.mIsPushing) {
            if (!this.mRtmpProxyEnable) {
                this.mUploadQualityReport.c();
                if (!this.mEnableNearestIP || this.mLastNetworkType == h.d(this.mContext)) {
                    boolean z2 = !this.mEnableNearestIP ? false : z;
                    if (this.mQuicChannel) {
                        z2 = true;
                    }
                    if (z2 && !nextRecordIdx(true)) {
                        TXCLog.e("TXCStreamUploader", "reconnect: try all addresses failed");
                        TXCEventRecorderProxy.a(this.mRtmpUrl, 91002, -1, -1, "connect upload server failed(try all addresses failed)", 0);
                    }
                    b rtmpRealConnectInfo = getRtmpRealConnectInfo();
                    String addressFromUrl = getAddressFromUrl(rtmpRealConnectInfo.a);
                    StringBuilder sb = new StringBuilder();
                    sb.append("reconnect change ip: ");
                    sb.append(addressFromUrl);
                    sb.append(" enableNearestIP: ");
                    sb.append(this.mEnableNearestIP);
                    sb.append(" last channel type: ");
                    sb.append(this.mQuicChannel ? "Q Channel" : "TCP");
                    TXCLog.e("TXCStreamUploader", sb.toString());
                    if (this.mQuicChannel) {
                        TXCLog.e("TXCStreamUploader", "reconnect last channel type is Q Channel，ignore retry limit");
                        Monitor.a(2, String.format("Network: reconnecting to upload server with quic.[addr:%s]", addressFromUrl), "", 0);
                        startPushTask(rtmpRealConnectInfo.a, rtmpRealConnectInfo.b, 0);
                        sendNotifyEvent(1102);
                        return;
                    }
                    TXCLog.e("TXCStreamUploader", "reconnect retry count:" + this.mRetryCount + " retry limit:" + this.mParam.e);
                    if (this.mRetryCount < this.mParam.e) {
                        this.mRetryCount++;
                        Monitor.a(2, String.format("Network: reconnecting to upload server with tcp.[addr:%s][retryCount:%d][retryLimit:%d]", addressFromUrl, Integer.valueOf(this.mRetryCount), Integer.valueOf(this.mParam.e)), "", 0);
                        TXCEventRecorderProxy.a(this.mRtmpUrl, 91003, -1, -1, "reconnect upload server:(retry count:" + this.mRetryCount + " retry limit:" + this.mParam.e + ")", 0);
                        startPushTask(rtmpRealConnectInfo.a, rtmpRealConnectInfo.b, 0);
                        sendNotifyEvent(1102);
                        return;
                    }
                    TXCLog.e("TXCStreamUploader", "reconnect: try all times failed");
                    TXCEventRecorderProxy.a(this.mRtmpUrl, 91002, -1, -1, "connect upload server failed(try all times failed)", 0);
                    sendNotifyEvent(-1324);
                    return;
                }
                TXCLog.e("TXCStreamUploader", "reconnect network switch from " + this.mLastNetworkType + " to " + h.d(this.mContext));
                this.mLastNetworkType = h.d(this.mContext);
                this.mIntelligentRoute.a(this.mRtmpUrl, this.mChannelType);
                this.mRetryCount = 0;
            } else if (this.mLastNetworkType != h.d(this.mContext)) {
                TXCLog.e("TXCStreamUploader", "reconnect network switch from " + this.mLastNetworkType + " to " + h.d(this.mContext));
                this.mLastNetworkType = h.d(this.mContext);
                this.mRetryCount = 0;
                Monitor.a(2, "WebrtcRoom: need enter again by user", "", 0);
                sendNotifyEvent(1021, String.format("Network type has changed. Need to re-enter the room", new Object[0]));
            } else if (this.mRetryCount < this.mParam.e) {
                this.mRetryCount++;
                Monitor.a(2, String.format("Network: reconnecting to upload server with quic.[addr:%s][retryCount:%d][retryLimit:%d]", this.mRtmpProxyParam.h, Integer.valueOf(this.mRetryCount), Integer.valueOf(this.mParam.e)), "", 0);
                TXCEventRecorderProxy.a(this.mRtmpUrl, 91003, -1, -1, "reconnect rtmp-proxy server(econnect retry count:" + this.mRetryCount + " retry limit:" + this.mParam.e + ")", 0);
                sendNotifyEvent(1102);
                startPushTask(this.mRtmpUrl, this.mQuicChannel, 0);
            } else if (getNextRtmpProxyIP()) {
                this.mRetryCount = 0;
                Monitor.a(2, String.format("Network: reconnecting to upload server with quic.[addr:%s][retryCount:%d][retryLimit:%d]", this.mRtmpProxyParam.h, Integer.valueOf(this.mRetryCount), Integer.valueOf(this.mParam.e)), "", 0);
                sendNotifyEvent(1102);
                startPushTask(this.mRtmpUrl, this.mQuicChannel, 0);
            } else {
                TXCEventRecorderProxy.a(this.mRtmpUrl, 91002, -1, -1, "connect rtmp-proxy server failed(try all addresses)", 0);
                sendNotifyEvent(-1324);
            }
        }
    }

    private void sendNotifyEvent(int i, String str) {
        if (str == null || str.isEmpty()) {
            sendNotifyEvent(i);
        } else {
            Bundle bundle = new Bundle();
            bundle.putString("EVT_MSG", str);
            bundle.putLong("EVT_TIME", TXCTimeUtil.getTimeTick());
            bundle.putLong("EVT_UTC_TIME", TXCTimeUtil.getUtcTimeTick());
            h.a(this.mNotifyListener, i, bundle);
        }
        if (i == 1002) {
            UploadStats uploadStats = getUploadStats();
            if (uploadStats != null) {
                this.mUploadQualityReport.a(uploadStats.dnsparseTimeCost, uploadStats.connectTimeCost, uploadStats.handshakeTimeCost);
            }
        } else if (i == 1101) {
            this.mUploadQualityReport.d();
        }
    }

    private void sendNotifyEvent(int i) {
        if (i == 0) {
            reconnect(false);
        } else if (i == 1) {
            reconnect(true);
        } else {
            if (i == 1001) {
                this.mConnectSuccessTimeStamps = TXCTimeUtil.getTimeTick();
            }
            if (i == 1026) {
                if (this.mRtmpProxyEnable) {
                    synchronized (this.mRtmpMsgRecvThreadLock) {
                        nativeRtmpMsgRecvThreadStart(this.mRtmpMsgRecvThreadInstance);
                    }
                    synchronized (this.mRtmpProxyLock) {
                        nativeRtmpProxyEnterRoom(this.mRtmpProxyInstance);
                    }
                    Handler handler = this.mHandler;
                    if (handler != null) {
                        handler.sendEmptyMessageDelayed(104, 2000);
                    }
                }
            } else if (this.mNotifyListener != null) {
                Bundle bundle = new Bundle();
                if (i == -2308) {
                    bundle.putString("EVT_MSG", "The server rejects the connection request. It may be that the push URL has been occupied or expired, or the anti-leech link is wrong.");
                } else if (i == -1307) {
                    bundle.putString("EVT_MSG", "failed to connect server for several times, abort connection");
                } else if (i != 1026) {
                    if (i == 3003) {
                        bundle.putString("EVT_MSG", "RTMP servers handshake failed");
                    } else if (i == -1325) {
                        bundle.putString("EVT_MSG", "No internet. Please check if WiFi or mobile data is turned on");
                    } else if (i == -1324) {
                        bundle.putString("EVT_MSG", "Failed to connect all IPs, abort connection.");
                    } else if (i == 1001) {
                        bundle.putString("EVT_MSG", "Already connected to rtmp server");
                    } else if (i == 1002) {
                        bundle.putString("EVT_MSG", "rtmp start push stream");
                    } else if (i == 1101) {
                        bundle.putString("EVT_MSG", "Insufficient upstream bandwidth. Data transmission is not timely");
                    } else if (i == 1102) {
                        bundle.putString("EVT_MSG", "Enables network reconnection");
                    } else if (i == 3008) {
                        bundle.putString("EVT_MSG", "No data is sent for more than 30s. Actively disconnect");
                    } else if (i != 3009) {
                        bundle.putString("EVT_MSG", "UNKNOWN");
                    } else {
                        bundle.putString("EVT_MSG", "Failed to connect server");
                    }
                } else if (this.mRtmpProxyEnable) {
                    synchronized (this.mRtmpMsgRecvThreadLock) {
                        nativeRtmpMsgRecvThreadStart(this.mRtmpMsgRecvThreadInstance);
                    }
                    synchronized (this.mRtmpProxyLock) {
                        nativeRtmpProxyEnterRoom(this.mRtmpProxyInstance);
                    }
                    Handler handler2 = this.mHandler;
                    if (handler2 != null) {
                        handler2.sendEmptyMessageDelayed(104, 2000);
                        return;
                    }
                    return;
                } else {
                    return;
                }
                bundle.putLong("EVT_TIME", TXCTimeUtil.getTimeTick());
                bundle.putLong("EVT_UTC_TIME", TXCTimeUtil.getUtcTimeTick());
                h.a(this.mNotifyListener, i, bundle);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reportNetStatus() {
        long j;
        long j2;
        long j3;
        int i;
        long timeTick = TXCTimeUtil.getTimeTick();
        long j4 = timeTick - this.mLastTimeStamp;
        UploadStats uploadStats = getUploadStats();
        long j5 = 0;
        if (uploadStats != null) {
            UploadStats uploadStats2 = this.mLastUploadStats;
            if (uploadStats2 != null) {
                i = 7005;
                long longValue = getSpeed(uploadStats2.inVideoBytes, uploadStats.inVideoBytes, j4).longValue();
                j2 = getSpeed(this.mLastUploadStats.inAudioBytes, uploadStats.inAudioBytes, j4).longValue();
                j = getSpeed(this.mLastUploadStats.outVideoBytes, uploadStats.outVideoBytes, j4).longValue();
                j3 = getSpeed(this.mLastUploadStats.outAudioBytes, uploadStats.outAudioBytes, j4).longValue();
                j5 = longValue;
            } else {
                i = 7005;
                j3 = 0;
                j2 = 0;
                j = 0;
            }
            setStatusValue(i, Long.valueOf(uploadStats.videoCacheLen));
            setStatusValue(7006, Long.valueOf(uploadStats.audioCacheLen));
            setStatusValue(7007, Long.valueOf(uploadStats.videoDropCount));
            setStatusValue(7008, Long.valueOf(uploadStats.audioDropCount));
            setStatusValue(7021, Long.valueOf(uploadStats.bandwidthEst));
            setStatusValue(7009, Long.valueOf(uploadStats.startTS));
            setStatusValue(7010, Long.valueOf(uploadStats.dnsTS));
            setStatusValue(7011, Long.valueOf(uploadStats.connTS));
            setStatusValue(7012, String.valueOf(uploadStats.serverIP));
            setStatusValue(7013, Long.valueOf(this.mQuicChannel ? 2 : 1));
            setStatusValue(7014, uploadStats.connectionID);
            setStatusValue(7015, uploadStats.connectionStats);
            this.mUploadQualityReport.a(uploadStats.videoDropCount, uploadStats.audioDropCount);
            this.mUploadQualityReport.b(uploadStats.videoCacheLen, uploadStats.audioCacheLen);
        } else {
            setStatusValue(7005, 0L);
            setStatusValue(7006, 0L);
            setStatusValue(7007, 0L);
            setStatusValue(7008, 0L);
            j3 = 0;
            j2 = 0;
            j = 0;
        }
        setStatusValue(7001, Long.valueOf(j5));
        setStatusValue(7002, Long.valueOf(j2));
        setStatusValue(7003, Long.valueOf(j));
        setStatusValue(7004, Long.valueOf(j3));
        this.mLastTimeStamp = timeTick;
        this.mLastUploadStats = uploadStats;
        Handler handler = this.mHandler;
        if (handler != null) {
            handler.sendEmptyMessageDelayed(103, 2000);
        }
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

    private boolean isQCloudStreamUrl(String str) {
        int indexOf;
        String substring;
        if (str == null || str.length() == 0 || (indexOf = str.indexOf("://")) == -1 || (substring = str.substring(indexOf + 3)) == null || !substring.startsWith("cloud.tencent.com")) {
            return false;
        }
        return true;
    }

    private void parseProxyInfo(String str) {
        if (str != null && str.length() != 0 && str.startsWith("room")) {
            this.mRtmpProxyParam.i = isQCloudStreamUrl(str);
            HashMap paramsFromUrl = getParamsFromUrl(str);
            if (paramsFromUrl != null) {
                if (paramsFromUrl.containsKey("sdkappid")) {
                    this.mRtmpProxyParam.a = Long.valueOf((String) paramsFromUrl.get("sdkappid")).longValue();
                }
                if (paramsFromUrl.containsKey("roomid") && paramsFromUrl.containsKey("userid") && paramsFromUrl.containsKey("roomsig")) {
                    this.mRtmpProxyParam.d = Long.valueOf((String) paramsFromUrl.get("roomid")).longValue();
                    this.mRtmpProxyParam.c = (String) paramsFromUrl.get("userid");
                    if (paramsFromUrl.containsKey("bizbuf")) {
                        try {
                            this.mRtmpProxyParam.j = URLDecoder.decode((String) paramsFromUrl.get("bizbuf"), "UTF-8");
                        } catch (Exception e) {
                            TXCLog.e("TXCStreamUploader", "decode bizbuf failed.", e);
                        }
                    }
                    try {
                        JSONObject jSONObject = new JSONObject(URLDecoder.decode((String) paramsFromUrl.get("roomsig"), "UTF-8"));
                        this.mRtmpProxyParam.b = 0;
                        if (jSONObject.has("Key")) {
                            this.mRtmpProxyParam.e = jSONObject.optString("Key");
                            JSONObject optJSONObject = jSONObject.optJSONObject("RtmpProxy");
                            if (optJSONObject == null || (optJSONObject.has("Ip") && optJSONObject.has("Port") && optJSONObject.has("Type"))) {
                                JSONArray optJSONArray = jSONObject.optJSONArray("AccessList");
                                if (optJSONArray != null && optJSONArray.length() > 0) {
                                    for (int i = 0; i < optJSONArray.length(); i++) {
                                        JSONObject jSONObject2 = optJSONArray.getJSONObject(i);
                                        if (jSONObject2 != null && jSONObject2.has("Ip") && jSONObject2.has("Port") && jSONObject2.has("Type")) {
                                            String optString = jSONObject2.optString("Ip");
                                            long optLong = jSONObject2.optLong("Port");
                                            if (jSONObject2.optLong("Type") == 2) {
                                                this.mRtmpProxyIPList.add(optString + ":" + optLong);
                                            }
                                        }
                                    }
                                }
                                if (!this.mRtmpProxyParam.i) {
                                    this.mRtmpUrl = str;
                                    this.mQuicChannel = false;
                                } else if (optJSONObject != null) {
                                    this.mRtmpUrl = str.substring(0, str.indexOf("?")) + "/webrtc/" + (this.mRtmpProxyParam.a + "_" + this.mRtmpProxyParam.d + "_" + this.mRtmpProxyParam.c) + "?real_rtmp_ip=" + optJSONObject.optString("Ip") + "&real_rtmp_port=" + optJSONObject.optLong("Port") + "&tinyid=" + this.mRtmpProxyParam.b + "&srctinyid=0";
                                    getNextRtmpProxyIP();
                                } else {
                                    return;
                                }
                                this.mRtmpProxyEnable = true;
                            }
                        }
                    } catch (Exception e2) {
                        TXCLog.e("TXCStreamUploader", "parse proxy info failed.", e2);
                    }
                }
            }
        }
    }

    private HashMap getParamsFromUrl(String str) {
        HashMap hashMap = new HashMap();
        String[] split = str.split("[?]");
        if (!(split == null || split.length < 2 || split[1] == null || split[1].length() == 0)) {
            String[] split2 = split[1].split("[&]");
            for (String str2 : split2) {
                if (str2.indexOf("=") != -1) {
                    String[] split3 = str2.split("[=]");
                    if (split3.length == 2) {
                        hashMap.put(split3[0], split3[1]);
                    }
                }
            }
        }
        return hashMap;
    }

    private boolean getNextRtmpProxyIP() {
        a aVar = this.mRtmpProxyParam;
        aVar.f = 234;
        aVar.g = 80;
        Vector<String> vector = this.mRtmpProxyIPList;
        if (vector == null || vector.size() <= 0) {
            return false;
        }
        if (this.mRtmpProxyIPIndex >= this.mRtmpProxyIPList.size()) {
            this.mRtmpProxyIPIndex = 0;
            return false;
        }
        String[] split = this.mRtmpUrl.split("://");
        if (split.length < 2) {
            return false;
        }
        String substring = split[1].substring(split[1].indexOf("/"));
        String str = this.mRtmpProxyIPList.get(this.mRtmpProxyIPIndex);
        this.mRtmpProxyParam.h = str;
        this.mRtmpUrl = "room://" + str + substring;
        this.mQuicChannel = true;
        this.mRtmpProxyIPIndex = this.mRtmpProxyIPIndex + 1;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void rtmpProxySendHeartBeat() {
        Throwable th;
        int[] a2 = h.a();
        long j = (long) (a2[0] / 10);
        long j2 = (long) (a2[1] / 10);
        long c = (long) TXCStatus.c(getID(), 7004);
        long c2 = (long) TXCStatus.c(getID(), 7003);
        long c3 = (long) TXCStatus.c(getID(), 1001);
        long c4 = (long) TXCStatus.c(getID(), PlaybackException.ERROR_CODE_DECODER_INIT_FAILED);
        long c5 = (long) TXCStatus.c(getID(), 7006);
        long c6 = (long) TXCStatus.c(getID(), 7005);
        long c7 = (long) TXCStatus.c(getID(), 7008);
        long c8 = (long) TXCStatus.c(getID(), 7007);
        synchronized (this.mRtmpProxyLock) {
            try {
            } catch (Throwable th2) {
                th = th2;
            }
            try {
                nativeRtmpProxySendHeartBeat(this.mRtmpProxyInstance, j, j2, c, c2, c3, c4, c5, c6, c7, c8);
            } catch (Throwable th3) {
                th = th3;
                throw th;
            }
        }
    }

    private void onSendRtmpProxyMsg(byte[] bArr) {
        synchronized (this.mThreadLock) {
            if (this.mUploaderInstance != 0) {
                nativeSendRtmpProxyMsg(this.mUploaderInstance, bArr);
            }
        }
    }

    private void onRtmpProxyUserListPushed(RtmpProxyUserInfo[] rtmpProxyUserInfoArr) {
        if (rtmpProxyUserInfoArr != null && this.mIsPushing && this.mRtmpProxyEnable && this.mRtmpProxyParam != null) {
            try {
                JSONArray jSONArray = new JSONArray();
                JSONArray jSONArray2 = new JSONArray();
                for (int i = 0; i < rtmpProxyUserInfoArr.length; i++) {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("userid", rtmpProxyUserInfoArr[i].account);
                    jSONObject.put("playurl", rtmpProxyUserInfoArr[i].playUrl);
                    if (rtmpProxyUserInfoArr[i].stmType == 0) {
                        jSONArray.put(jSONObject);
                    } else {
                        jSONArray2.put(jSONObject);
                    }
                }
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("userlist", jSONArray);
                jSONObject2.put("userlist_aux", jSONArray2);
                sendNotifyEvent(1020, jSONObject2.toString());
            } catch (Exception e) {
                TXCLog.e("TXCStreamUploader", "build json object failed.", e);
            }
        }
    }

    private void onRtmpProxyRoomEvent(int i, int i2) {
        if (i == 1) {
            sendNotifyEvent(1018, String.format("Already in room，[%d]", Integer.valueOf(i2)));
        } else if (i == 2) {
            sendNotifyEvent(1019, String.format("Not in the room，[%d]", Integer.valueOf(i2)));
        }
    }
}
