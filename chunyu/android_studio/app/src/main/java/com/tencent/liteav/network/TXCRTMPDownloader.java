package com.tencent.liteav.network;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import com.tencent.liteav.basic.log.TXCLog;
import com.tencent.liteav.basic.util.TXCTimeUtil;
import com.tencent.liteav.basic.util.h;
import com.tencent.liteav.network.TXCStreamDownloader;
import com.tencent.rtmp.TXLiveConstants;
import java.util.Vector;

/* loaded from: classes2.dex */
public class TXCRTMPDownloader extends TXIStreamDownloader {
    private boolean mHasTcpPlayUrl;
    private Object mRTMPThreadLock;
    private Vector<h> mVecPlayUrls;
    private final String TAG = "network.TXCRTMPDownloader";
    private final int MSG_RECONNECT = 101;
    private final int MSG_EVENT = 102;
    private String mPlayUrl = "";
    private boolean mQuicChannel = false;
    private String mServerIp = "";
    private a mCurrentThread = null;
    private HandlerThread mThread = null;
    private Handler mHandler = null;
    private boolean mIsPlayRtmpAccStream = false;
    private boolean mEnableNearestIP = false;
    private int mConnectCountQuic = 0;
    private int mConnectCountTcp = 0;
    private int mLastNetworkType = 0;

    /* JADX INFO: Access modifiers changed from: private */
    public native TXCStreamDownloader.DownloadStats nativeGetStats(long j);

    /* JADX INFO: Access modifiers changed from: private */
    public native long nativeInitRtmpHandler(String str, String str2, String str3, boolean z, boolean z2, boolean z3);

    /* JADX INFO: Access modifiers changed from: private */
    public native void nativeRequestKeyFrame(long j, String str);

    /* JADX INFO: Access modifiers changed from: private */
    public native void nativeSetPayloadType(long j, int i);

    /* JADX INFO: Access modifiers changed from: private */
    public native void nativeStart(long j);

    /* JADX INFO: Access modifiers changed from: private */
    public native void nativeStop(long j);

    /* JADX INFO: Access modifiers changed from: private */
    public native void nativeUninitRtmpHandler(long j);

    public TXCRTMPDownloader(Context context) {
        super(context);
        this.mRTMPThreadLock = null;
        this.mRTMPThreadLock = new Object();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a extends Thread {
        private long b = 0;
        private String c;
        private boolean d;

        a(String str, boolean z) {
            super("RTMPDownLoad");
            this.c = str;
            this.d = z;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            synchronized (this) {
                this.b = TXCRTMPDownloader.this.nativeInitRtmpHandler(TXCRTMPDownloader.this.mUserID, TXCRTMPDownloader.this.mOriginUrl, this.c, this.d, TXCRTMPDownloader.this.mEnableMessage, TXCRTMPDownloader.this.mEnableMetaData);
            }
            a(TXCRTMPDownloader.this.mPayloadType);
            TXCRTMPDownloader.this.nativeStart(this.b);
            synchronized (this) {
                TXCRTMPDownloader.this.nativeUninitRtmpHandler(this.b);
                this.b = 0;
            }
        }

        public void a() {
            synchronized (this) {
                if (this.b != 0) {
                    TXCRTMPDownloader.this.nativeStop(this.b);
                }
            }
        }

        public TXCStreamDownloader.DownloadStats b() {
            TXCStreamDownloader.DownloadStats downloadStats;
            synchronized (this) {
                if (this.b != 0) {
                    downloadStats = TXCRTMPDownloader.this.nativeGetStats(this.b);
                } else {
                    downloadStats = null;
                }
            }
            return downloadStats;
        }

        public void a(String str) {
            synchronized (this) {
                if (this.b != 0) {
                    TXCRTMPDownloader.this.nativeRequestKeyFrame(this.b, str);
                }
            }
        }

        public void a(int i) {
            synchronized (this) {
                if (this.b != 0) {
                    TXCRTMPDownloader.this.nativeSetPayloadType(this.b, i);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startInternal() {
        if (this.mQuicChannel) {
            this.mConnectCountQuic++;
        } else {
            this.mConnectCountTcp++;
        }
        synchronized (this.mRTMPThreadLock) {
            this.mCurrentThread = new a(this.mPlayUrl, this.mQuicChannel);
            this.mCurrentThread.start();
        }
    }

    private void postReconnectMsg() {
        Message message = new Message();
        message.what = 101;
        Handler handler = this.mHandler;
        if (handler != null) {
            handler.sendMessageDelayed(message, (long) (this.connectRetryInterval * 1000));
        }
    }

    private void reconnect(final boolean z) {
        synchronized (this.mRTMPThreadLock) {
            if (this.mCurrentThread != null) {
                this.mCurrentThread.a();
                this.mCurrentThread = null;
            }
        }
        Handler handler = this.mHandler;
        if (handler != null) {
            handler.postDelayed(new Runnable() { // from class: com.tencent.liteav.network.TXCRTMPDownloader.1
                @Override // java.lang.Runnable
                public void run() {
                    TXCRTMPDownloader.this.internalReconnect(z);
                }
            }, (long) (this.connectRetryInterval * 1000));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void internalReconnect(boolean z) {
        Vector<h> vector;
        if (this.mIsRunning) {
            if (!this.mIsPlayRtmpAccStream || this.mLastNetworkType == h.d(this.mApplicationContext)) {
                boolean z2 = this.mQuicChannel;
                if (this.mIsPlayRtmpAccStream) {
                    if (!this.mEnableNearestIP) {
                        z = false;
                    }
                    if (z2) {
                        z = true;
                    }
                    if (z && (vector = this.mVecPlayUrls) != null && !vector.isEmpty()) {
                        h hVar = this.mVecPlayUrls.get(0);
                        this.mVecPlayUrls.remove(0);
                        this.mPlayUrl = hVar.a;
                        this.mQuicChannel = hVar.b;
                    }
                }
                if (z2 && this.mHasTcpPlayUrl) {
                    sendNotifyEvent(2103);
                    startInternal();
                } else if (this.connectRetryTimes < this.connectRetryLimit) {
                    this.connectRetryTimes++;
                    TXCLog.i("network.TXCRTMPDownloader", "reconnect retry count:" + this.connectRetryTimes + " limit:" + this.connectRetryLimit);
                    sendNotifyEvent(2103);
                    startInternal();
                } else {
                    TXCLog.e("network.TXCRTMPDownloader", "reconnect all times retried, send failed event ");
                    sendNotifyEvent(-2301);
                }
            } else {
                this.mLastNetworkType = h.d(this.mApplicationContext);
                if (this.mRestartListener != null) {
                    this.mRestartListener.onRestartDownloader();
                }
            }
        }
    }

    @Override // com.tencent.liteav.network.TXIStreamDownloader
    public void sendNotifyEvent(int i, String str) {
        if (str.isEmpty()) {
            sendNotifyEvent(i);
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString(TXLiveConstants.EVT_DESCRIPTION, str);
        bundle.putLong("EVT_TIME", TXCTimeUtil.getTimeTick());
        bundle.putLong(TXLiveConstants.EVT_UTC_TIME, TXCTimeUtil.getUtcTimeTick());
        if (this.mNotifyListener != null) {
            this.mNotifyListener.onNotifyEvent(i, bundle);
        }
    }

    @Override // com.tencent.liteav.network.TXIStreamDownloader
    public void setPayloadType(int i) {
        this.mPayloadType = i;
        synchronized (this.mRTMPThreadLock) {
            if (this.mCurrentThread != null) {
                this.mCurrentThread.a(this.mPayloadType);
            }
        }
    }

    @Override // com.tencent.liteav.network.TXIStreamDownloader
    public void sendNotifyEvent(int i) {
        boolean z = true;
        if (i == 0 || i == 1) {
            if (i != 1) {
                z = false;
            }
            reconnect(z);
            return;
        }
        super.sendNotifyEvent(i);
    }

    @Override // com.tencent.liteav.network.TXIStreamDownloader
    public void startDownload(Vector<h> vector, boolean z, boolean z2, boolean z3, boolean z4) {
        startDownload(vector, z, z2, z3, z4, null);
    }

    @Override // com.tencent.liteav.network.TXIStreamDownloader
    public void startDownload(Vector<h> vector, boolean z, boolean z2, boolean z3, boolean z4, com.tencent.liteav.basic.b.a aVar) {
        if (!this.mIsRunning && vector != null && !vector.isEmpty()) {
            this.mEnableMessage = z3;
            this.mEnableMetaData = z4;
            this.mIsPlayRtmpAccStream = z;
            this.mEnableNearestIP = z2;
            this.mVecPlayUrls = vector;
            this.mHasTcpPlayUrl = false;
            int i = 0;
            while (true) {
                if (i >= this.mVecPlayUrls.size()) {
                    break;
                } else if (!this.mVecPlayUrls.elementAt(i).b) {
                    this.mHasTcpPlayUrl = true;
                    break;
                } else {
                    i++;
                }
            }
            h hVar = this.mVecPlayUrls.get(0);
            this.mVecPlayUrls.remove(0);
            this.mPlayUrl = hVar.a;
            this.mQuicChannel = hVar.b;
            this.mIsRunning = true;
            StringBuilder sb = new StringBuilder();
            sb.append("start pull with url:");
            sb.append(this.mPlayUrl);
            sb.append(" quic:");
            sb.append(this.mQuicChannel ? "yes" : "no");
            TXCLog.i("network.TXCRTMPDownloader", sb.toString());
            this.mConnectCountQuic = 0;
            this.mConnectCountTcp = 0;
            this.connectRetryTimes = 0;
            if (this.mThread == null) {
                this.mThread = new HandlerThread("RTMP_PULL");
                this.mThread.start();
            }
            this.mHandler = new Handler(this.mThread.getLooper()) { // from class: com.tencent.liteav.network.TXCRTMPDownloader.2
                @Override // android.os.Handler
                public void handleMessage(Message message) {
                    if (message.what == 101) {
                        TXCRTMPDownloader.this.startInternal();
                    }
                }
            };
            startInternal();
        }
    }

    @Override // com.tencent.liteav.network.TXIStreamDownloader
    public void stopDownload() {
        if (this.mIsRunning) {
            this.mIsRunning = false;
            this.mVecPlayUrls.removeAllElements();
            this.mVecPlayUrls = null;
            this.mIsPlayRtmpAccStream = false;
            this.mEnableNearestIP = false;
            TXCLog.i("network.TXCRTMPDownloader", "stop pull");
            synchronized (this.mRTMPThreadLock) {
                if (this.mCurrentThread != null) {
                    this.mCurrentThread.a();
                    this.mCurrentThread = null;
                }
            }
            HandlerThread handlerThread = this.mThread;
            if (handlerThread != null) {
                handlerThread.quit();
                this.mThread = null;
            }
            if (this.mHandler != null) {
                this.mHandler = null;
            }
        }
    }

    @Override // com.tencent.liteav.network.TXIStreamDownloader
    public TXCStreamDownloader.DownloadStats getDownloadStats() {
        synchronized (this.mRTMPThreadLock) {
            if (this.mCurrentThread == null) {
                return null;
            }
            return this.mCurrentThread.b();
        }
    }

    @Override // com.tencent.liteav.network.TXIStreamDownloader
    public String getCurrentStreamUrl() {
        return this.mPlayUrl;
    }

    @Override // com.tencent.liteav.network.TXIStreamDownloader
    public boolean isQuicChannel() {
        return this.mQuicChannel;
    }

    @Override // com.tencent.liteav.network.TXIStreamDownloader
    public int getConnectCountQuic() {
        return this.mConnectCountQuic;
    }

    @Override // com.tencent.liteav.network.TXIStreamDownloader
    public int getConnectCountTcp() {
        return this.mConnectCountTcp;
    }

    @Override // com.tencent.liteav.network.TXIStreamDownloader
    public void requestKeyFrame(String str) {
        synchronized (this.mRTMPThreadLock) {
            if (this.mCurrentThread != null) {
                this.mCurrentThread.a(str);
            }
        }
    }
}
