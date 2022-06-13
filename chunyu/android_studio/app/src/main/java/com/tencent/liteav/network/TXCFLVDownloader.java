package com.tencent.liteav.network;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.google.common.net.HttpHeaders;
import com.tencent.liteav.basic.b.a;
import com.tencent.liteav.basic.log.TXCLog;
import com.tencent.liteav.basic.util.TXCCommonUtil;
import com.tencent.liteav.basic.util.TXCTimeUtil;
import com.tencent.liteav.network.TXCStreamDownloader;
import com.tencent.liteav.txcplayer.ITXVCubePlayer;
import java.io.EOFException;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.net.InetAddress;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import java.util.Vector;
import javax.net.ssl.SSLException;

/* loaded from: classes2.dex */
public class TXCFLVDownloader extends TXIStreamDownloader {
    private static int DISCONNECT_REASON_CODE_FORBIDDEN = 1;
    private static int DISCONNECT_REASON_CODE_UNKNOW;
    private final int CONNECT_TIMEOUT;
    private final int ERROR_CONNECT_COMMON;
    private final int ERROR_CONNECT_FILE_NOT_FOUND;
    private final int ERROR_CONNECT_SOCKET_TIME_OUT;
    private final int ERROR_CONNECT_THROWABLE;
    private final int ERROR_READ_STREAM_COMMON;
    private final int ERROR_READ_STREAM_EOF;
    private final int ERROR_READ_STREAM_SOCKET;
    private final int ERROR_READ_STREAM_SOCKET_TIME_OUT;
    private final int ERROR_READ_STREAM_SSL;
    private final int ERROR_READ_STREAM_THROWABLE;
    private final int FLV_HEAD_SIZE;
    private final int MAX_FRAME_SIZE;
    private final int MSG_CONNECT;
    private final int MSG_DISCONNECT;
    private final int MSG_QUIT;
    private final int MSG_RECONNECT;
    private final int MSG_RECV_DATA;
    private final int MSG_RESUME;
    private final int MSG_SEEK;
    private final int READ_STREAM_SIZE;
    public final String TAG;
    private HttpURLConnection mConnection;
    private long mContentLength;
    private long mCurrentNalTs;
    private long mDownloadedSize;
    private long mFLVParser;
    private Handler mFlvHandler;
    private HandlerThread mFlvThread;
    private boolean mHandleDataInJava;
    private boolean mHasReceivedFirstAudio;
    private boolean mHasReceivedFirstVideo;
    private InputStream mInputStream;
    private long mLastIFramelTs;
    private byte[] mPacketBytes;
    private String mPlayUrl;
    private boolean mRecvData;
    private WeakReference<TXCFLVDownloader> mRefFLVDownloader;
    private TXCStreamDownloader.DownloadStats mStats;
    private boolean mStopJitter;

    private native void nativeCleanData(long j);

    private native int nativeGetAudioBytes(long j);

    private native int nativeGetVideoBytes(long j);

    private native int nativeGetVideoGop(long j);

    private native long nativeInitFlvHander(String str, int i, boolean z, boolean z2, int i2, String str2, String str3);

    private native long nativeInitFlvHanderByRef(long j, int i, String str, String str2);

    private native int nativeParseData(long j, byte[] bArr, int i);

    private native void nativeUninitFlvhander(long j, boolean z);

    public native void nativePushAudioFrame(long j, byte[] bArr, int i, long j2, int i2);

    public native void nativePushVideoFrame(long j, byte[] bArr, int i, long j2, long j3, int i2);

    public native void nativeSetPayloadType(long j, int i);

    public TXCFLVDownloader(Context context) {
        super(context);
        this.TAG = "network.TXCFLVDownloader";
        this.FLV_HEAD_SIZE = 9;
        this.MAX_FRAME_SIZE = 1048576;
        this.MSG_CONNECT = 100;
        this.MSG_RECV_DATA = 101;
        this.MSG_DISCONNECT = 102;
        this.MSG_RECONNECT = 103;
        this.MSG_SEEK = 104;
        this.MSG_RESUME = 105;
        this.MSG_QUIT = 106;
        this.CONNECT_TIMEOUT = 8000;
        this.READ_STREAM_SIZE = 1388;
        this.ERROR_CONNECT_SOCKET_TIME_OUT = -1001;
        this.ERROR_CONNECT_FILE_NOT_FOUND = -1008;
        this.ERROR_CONNECT_COMMON = ITXVCubePlayer.MEDIA_ERROR_UNSUPPORTED;
        this.ERROR_CONNECT_THROWABLE = -1011;
        this.ERROR_READ_STREAM_SOCKET_TIME_OUT = -1012;
        this.ERROR_READ_STREAM_SOCKET = -1013;
        this.ERROR_READ_STREAM_SSL = -1014;
        this.ERROR_READ_STREAM_EOF = -1015;
        this.ERROR_READ_STREAM_COMMON = -1016;
        this.ERROR_READ_STREAM_THROWABLE = -1017;
        this.mFlvThread = null;
        this.mFlvHandler = null;
        this.mInputStream = null;
        this.mConnection = null;
        this.mPacketBytes = null;
        this.mRecvData = false;
        this.mContentLength = 0;
        this.mDownloadedSize = 0;
        this.mHandleDataInJava = false;
        this.mFLVParser = 0;
        this.mCurrentNalTs = 0;
        this.mLastIFramelTs = 0;
        this.mStopJitter = true;
        this.mPlayUrl = "";
        this.mHasReceivedFirstVideo = false;
        this.mHasReceivedFirstAudio = false;
        this.mStats = null;
        this.mRefFLVDownloader = null;
        this.mStats = new TXCStreamDownloader.DownloadStats();
        TXCStreamDownloader.DownloadStats downloadStats = this.mStats;
        downloadStats.afterParseAudioBytes = 0;
        downloadStats.dnsTS = 0;
        downloadStats.startTS = TXCTimeUtil.getTimeTick();
        TXCLog.i("network.TXCFLVDownloader", "new flv download " + this);
    }

    public TXCFLVDownloader(Context context, TXCFLVDownloader tXCFLVDownloader) {
        super(context);
        this.TAG = "network.TXCFLVDownloader";
        this.FLV_HEAD_SIZE = 9;
        this.MAX_FRAME_SIZE = 1048576;
        this.MSG_CONNECT = 100;
        this.MSG_RECV_DATA = 101;
        this.MSG_DISCONNECT = 102;
        this.MSG_RECONNECT = 103;
        this.MSG_SEEK = 104;
        this.MSG_RESUME = 105;
        this.MSG_QUIT = 106;
        this.CONNECT_TIMEOUT = 8000;
        this.READ_STREAM_SIZE = 1388;
        this.ERROR_CONNECT_SOCKET_TIME_OUT = -1001;
        this.ERROR_CONNECT_FILE_NOT_FOUND = -1008;
        this.ERROR_CONNECT_COMMON = ITXVCubePlayer.MEDIA_ERROR_UNSUPPORTED;
        this.ERROR_CONNECT_THROWABLE = -1011;
        this.ERROR_READ_STREAM_SOCKET_TIME_OUT = -1012;
        this.ERROR_READ_STREAM_SOCKET = -1013;
        this.ERROR_READ_STREAM_SSL = -1014;
        this.ERROR_READ_STREAM_EOF = -1015;
        this.ERROR_READ_STREAM_COMMON = -1016;
        this.ERROR_READ_STREAM_THROWABLE = -1017;
        this.mFlvThread = null;
        this.mFlvHandler = null;
        this.mInputStream = null;
        this.mConnection = null;
        this.mPacketBytes = null;
        this.mRecvData = false;
        this.mContentLength = 0;
        this.mDownloadedSize = 0;
        this.mHandleDataInJava = false;
        this.mFLVParser = 0;
        this.mCurrentNalTs = 0;
        this.mLastIFramelTs = 0;
        this.mStopJitter = true;
        this.mPlayUrl = "";
        this.mHasReceivedFirstVideo = false;
        this.mHasReceivedFirstAudio = false;
        this.mStats = null;
        this.mRefFLVDownloader = null;
        this.mStats = new TXCStreamDownloader.DownloadStats();
        TXCStreamDownloader.DownloadStats downloadStats = this.mStats;
        downloadStats.afterParseAudioBytes = 0;
        downloadStats.dnsTS = 0;
        downloadStats.startTS = TXCTimeUtil.getTimeTick();
        this.mRefFLVDownloader = new WeakReference<>(tXCFLVDownloader);
        TXCLog.i("network.TXCFLVDownloader", "new multi flv download " + this);
    }

    @Override // com.tencent.liteav.network.TXIStreamDownloader
    public void setPayloadType(int i) {
        this.mPayloadType = i;
        long j = this.mFLVParser;
        if (j != 0) {
            nativeSetPayloadType(j, i);
        }
    }

    public void recvData(boolean z) {
        this.mHandleDataInJava = z;
    }

    @Override // com.tencent.liteav.network.TXIStreamDownloader
    public void PushVideoFrame(byte[] bArr, int i, long j, long j2, int i2) {
        nativePushVideoFrame(this.mFLVParser, bArr, i, j, j2, i2);
    }

    @Override // com.tencent.liteav.network.TXIStreamDownloader
    public void PushAudioFrame(byte[] bArr, int i, long j, int i2) {
        nativePushAudioFrame(this.mFLVParser, bArr, i, j, i2);
    }

    @Override // com.tencent.liteav.network.TXIStreamDownloader
    public long getCurrentTS() {
        return this.mCurrentNalTs;
    }

    @Override // com.tencent.liteav.network.TXIStreamDownloader
    public long getLastIFrameTS() {
        return this.mLastIFramelTs;
    }

    public void processMsgConnect(a aVar) {
        long j;
        long j2;
        try {
            connect();
            if (this.mFLVParser == 0) {
                WeakReference<TXCFLVDownloader> weakReference = this.mRefFLVDownloader;
                if (weakReference != null) {
                    TXCFLVDownloader tXCFLVDownloader = weakReference.get();
                    if (tXCFLVDownloader != null) {
                        if (tXCFLVDownloader.mIsRunning) {
                            TXCLog.i("network.TXCFLVDownloader", "[Network]init flv parser with old downloader:" + tXCFLVDownloader.hashCode());
                            tXCFLVDownloader.mStopJitter = false;
                            j2 = tXCFLVDownloader.mFLVParser;
                            this.mRefFLVDownloader = null;
                            j = j2;
                        } else {
                            TXCLog.e("network.TXCFLVDownloader", "[Network]old downloader:" + tXCFLVDownloader.hashCode() + " isn't running now. just create new parser.");
                        }
                    }
                    j2 = 0;
                    this.mRefFLVDownloader = null;
                    j = j2;
                } else {
                    j = 0;
                }
                if (j != 0) {
                    TXCLog.i("network.TXCFLVDownloader", "[Network]init flv parser with reference parse:" + j);
                    if (aVar == null || !TXCCommonUtil.equalURL(aVar.a(), this.mPlayUrl)) {
                        this.mFLVParser = nativeInitFlvHanderByRef(j, 0, "", "");
                    } else {
                        this.mFLVParser = nativeInitFlvHanderByRef(j, aVar.b(), aVar.c(), aVar.d());
                    }
                } else {
                    TXCLog.i("network.TXCFLVDownloader", "[Network]init flv parser.");
                    if (aVar == null || !TXCCommonUtil.equalURL(aVar.a(), this.mPlayUrl)) {
                        this.mFLVParser = nativeInitFlvHander(this.mUserID, 0, this.mEnableMessage, this.mEnableMetaData, 0, "", "");
                    } else {
                        this.mFLVParser = nativeInitFlvHander(this.mUserID, 0, this.mEnableMessage, this.mEnableMetaData, aVar.b(), aVar.c(), aVar.d());
                    }
                }
                if (this.mPayloadType != 0) {
                    nativeSetPayloadType(this.mFLVParser, this.mPayloadType);
                }
            }
            Handler handler = this.mFlvHandler;
            if (handler != null) {
                handler.sendEmptyMessage(101);
            }
        } catch (FileNotFoundException e) {
            TXCLog.e("network.TXCFLVDownloader", "[Network]file not found, reconnect");
            int i = this.mStats.errorCode;
            TXCStreamDownloader.DownloadStats downloadStats = this.mStats;
            downloadStats.errorCode = -1008;
            downloadStats.errorInfo = e.toString();
            e.printStackTrace();
            if (403 != i) {
                postReconnectMsg();
                return;
            }
            processMsgDisConnect();
            sendNotifyDisconnectEvent(makeStatsDescriptString(this.mStats), DISCONNECT_REASON_CODE_FORBIDDEN);
        } catch (Error e2) {
            TXCLog.e("network.TXCFLVDownloader", "[Network]error, reconnect");
            TXCStreamDownloader.DownloadStats downloadStats2 = this.mStats;
            downloadStats2.errorCode = -1011;
            downloadStats2.errorInfo = e2.toString();
            e2.printStackTrace();
            postReconnectMsg();
        } catch (SocketTimeoutException e3) {
            TXCLog.e("network.TXCFLVDownloader", "[Network]socket timeout, reconnect");
            TXCStreamDownloader.DownloadStats downloadStats3 = this.mStats;
            downloadStats3.errorCode = -1001;
            downloadStats3.errorInfo = e3.toString();
            postReconnectMsg();
        } catch (Exception e4) {
            TXCLog.e("network.TXCFLVDownloader", "[Network]exception, reconnect");
            TXCStreamDownloader.DownloadStats downloadStats4 = this.mStats;
            downloadStats4.errorCode = ITXVCubePlayer.MEDIA_ERROR_UNSUPPORTED;
            downloadStats4.errorInfo = e4.toString();
            e4.printStackTrace();
            postReconnectMsg();
        }
    }

    public void processMsgRecvData() {
        InputStream inputStream = this.mInputStream;
        if (inputStream != null) {
            try {
                int i = 0;
                int read = inputStream.read(this.mPacketBytes, 0, 1388);
                if (read > 0) {
                    long j = (long) read;
                    this.mDownloadedSize += j;
                    if (!this.mRecvData) {
                        this.mRecvData = true;
                        TXCLog.i("network.TXCFLVDownloader", "[FirstFramePath][Network] TXCFLVDownloader: recv first data packet. instance:" + hashCode());
                    }
                    if (this.mFLVParser != 0) {
                        this.mStats.beforeParseVideoBytes += j;
                        i = nativeParseData(this.mFLVParser, this.mPacketBytes, read);
                        this.mStats.afterParseVideoBytes = (long) nativeGetVideoBytes(this.mFLVParser);
                        this.mStats.afterParseAudioBytes = (long) nativeGetAudioBytes(this.mFLVParser);
                        this.mStats.videoGop = (long) nativeGetVideoGop(this.mFLVParser);
                    }
                    if (i > 1048576) {
                        TXCLog.e("network.TXCFLVDownloader", "[Network]flv play parse frame: " + i + " > 1048576,start reconnect");
                        postReconnectMsg();
                        return;
                    }
                } else if (read < 0) {
                    TXCLog.e("network.TXCFLVDownloader", "[Network]http read: " + read + " < 0, start reconnect");
                    postReconnectMsg();
                    return;
                }
                if (this.mFlvHandler != null) {
                    this.mFlvHandler.sendEmptyMessage(101);
                }
            } catch (EOFException e) {
                TXCLog.e("network.TXCFLVDownloader", "[Network]eof exception start reconnect");
                TXCStreamDownloader.DownloadStats downloadStats = this.mStats;
                downloadStats.errorCode = -1015;
                downloadStats.errorInfo = e.toString();
                postReconnectMsg();
            } catch (Error e2) {
                TXCLog.e("network.TXCFLVDownloader", "[Network]error");
                TXCStreamDownloader.DownloadStats downloadStats2 = this.mStats;
                downloadStats2.errorCode = -1017;
                downloadStats2.errorInfo = e2.toString();
                e2.printStackTrace();
                this.mInputStream = null;
                this.mConnection = null;
            } catch (SocketException e3) {
                TXCLog.e("network.TXCFLVDownloader", "[Network]socket exception start reconnect");
                TXCStreamDownloader.DownloadStats downloadStats3 = this.mStats;
                downloadStats3.errorCode = -1013;
                downloadStats3.errorInfo = e3.toString();
                postReconnectMsg();
            } catch (SocketTimeoutException e4) {
                TXCLog.e("network.TXCFLVDownloader", "[Network]socket timeout start reconnect");
                TXCStreamDownloader.DownloadStats downloadStats4 = this.mStats;
                downloadStats4.errorCode = -1012;
                downloadStats4.errorInfo = e4.toString();
                postReconnectMsg();
            } catch (SSLException e5) {
                TXCLog.e("network.TXCFLVDownloader", "[Network]ssl exception start reconnect");
                TXCStreamDownloader.DownloadStats downloadStats5 = this.mStats;
                downloadStats5.errorCode = -1014;
                downloadStats5.errorInfo = e5.toString();
                postReconnectMsg();
            } catch (Exception e6) {
                TXCLog.e("network.TXCFLVDownloader", "[Network]exception");
                TXCStreamDownloader.DownloadStats downloadStats6 = this.mStats;
                downloadStats6.errorCode = -1016;
                downloadStats6.errorInfo = e6.toString();
                e6.printStackTrace();
                this.mInputStream = null;
                this.mConnection = null;
            }
        }
    }

    public void processMsgDisConnect() {
        try {
            disconnect();
        } catch (Exception e) {
            TXCLog.e("network.TXCFLVDownloader", "disconnect failed.", e);
        }
        long j = this.mFLVParser;
        if (j != 0) {
            nativeUninitFlvhander(j, this.mStopJitter);
            this.mFLVParser = 0;
        }
    }

    public void processMsgReconnect(a aVar) {
        if (this.mStopJitter) {
            reconnect(aVar);
            return;
        }
        TXCLog.i("network.TXCFLVDownloader", "ignore processMsgReconnect when start multi stream switch" + this);
        if (this.mRestartListener != null) {
            this.mRestartListener.onOldStreamStop();
        }
    }

    private void startInternal(final a aVar) {
        if (this.mFlvThread == null) {
            this.mFlvThread = new HandlerThread("FlvThread");
            this.mFlvThread.start();
            TXCLog.i("network.TXCFLVDownloader", "[Network] flv downloader thread id:" + this.mFlvThread.getId() + " instance:" + hashCode());
        }
        if (this.mFlvHandler == null) {
            this.mFlvHandler = new Handler(this.mFlvThread.getLooper()) { // from class: com.tencent.liteav.network.TXCFLVDownloader.1
                @Override // android.os.Handler
                public void handleMessage(Message message) {
                    int i = message.what;
                    if (i != 106) {
                        switch (i) {
                            case 100:
                                TXCFLVDownloader.this.processMsgConnect(aVar);
                                return;
                            case 101:
                                TXCFLVDownloader.this.processMsgRecvData();
                                return;
                            case 102:
                                TXCFLVDownloader.this.processMsgDisConnect();
                                return;
                            case 103:
                                TXCFLVDownloader.this.processMsgReconnect(aVar);
                                return;
                            default:
                                return;
                        }
                    } else {
                        try {
                            Looper.myLooper().quit();
                        } catch (Exception unused) {
                        }
                    }
                }
            };
        }
        postConnectMsg();
    }

    private void reconnect(a aVar) {
        processMsgDisConnect();
        String makeStatsDescriptString = makeStatsDescriptString(this.mStats);
        TXCLog.i("network.TXCFLVDownloader", "reconnect:" + makeStatsDescriptString);
        if (this.connectRetryTimes < this.connectRetryLimit) {
            this.connectRetryTimes++;
            TXCLog.i("network.TXCFLVDownloader", "[Network] start reconnect, times:" + this.connectRetryTimes + " limit:" + this.connectRetryLimit);
            processMsgConnect(aVar);
            sendNotifyEvent(2103, makeStatsDescriptString);
            return;
        }
        TXCLog.i("network.TXCFLVDownloader", "[Network] reconnect fail. all times retried. limit:" + this.connectRetryLimit);
        sendNotifyDisconnectEvent(makeStatsDescriptString, DISCONNECT_REASON_CODE_UNKNOW);
    }

    private void postReconnectMsg() {
        Handler handler = this.mFlvHandler;
        if (handler != null) {
            handler.sendEmptyMessageDelayed(103, (long) (this.connectRetryInterval * 1000));
        }
    }

    private void postDisconnectMsg() {
        Handler handler = this.mFlvHandler;
        if (handler != null) {
            handler.sendEmptyMessage(102);
        }
    }

    private void postConnectMsg() {
        this.mInputStream = null;
        HttpURLConnection httpURLConnection = this.mConnection;
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
            this.mConnection = null;
        }
        Message message = new Message();
        message.what = 100;
        message.arg1 = 0;
        Handler handler = this.mFlvHandler;
        if (handler != null) {
            handler.sendMessage(message);
        }
    }

    private static String makeStatsDescriptString(TXCStreamDownloader.DownloadStats downloadStats) {
        if (downloadStats == null) {
            return "unknow";
        }
        return "ServerIp:" + downloadStats.serverIP + ",errCode:" + downloadStats.errorCode + ",errInfo:" + downloadStats.errorInfo;
    }

    private void sendNotifyDisconnectEvent(String str, int i) {
        Bundle bundle = new Bundle();
        bundle.putInt("reason", i);
        sendNotifyEvent(-2301, str, bundle);
    }

    private void connect() throws Exception {
        String headerField;
        HttpURLConnection httpURLConnection = this.mConnection;
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
            this.mConnection = null;
        }
        TXCLog.i("network.TXCFLVDownloader", "[FirstFramePath][Network] TXCFLVDownloader: start network connect. instance:" + hashCode() + " url:" + this.mPlayUrl);
        long currentTimeMillis = System.currentTimeMillis();
        this.mConnection = (HttpURLConnection) new URL(this.mPlayUrl).openConnection();
        this.mStats.dnsTS = TXCTimeUtil.getTimeTick();
        this.mConnection.setConnectTimeout(8000);
        this.mConnection.setReadTimeout(8000);
        this.mConnection.setRequestProperty(HttpHeaders.ACCEPT_ENCODING, "identity");
        this.mConnection.setInstanceFollowRedirects(true);
        if (this.mHeaders != null) {
            for (Map.Entry entry : this.mHeaders.entrySet()) {
                this.mConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
            }
        }
        this.mConnection.connect();
        if (200 == this.mConnection.getResponseCode()) {
            this.mStats.connTS = TXCTimeUtil.getTimeTick();
        } else {
            this.mStats.errorCode = this.mConnection.getResponseCode();
        }
        this.mInputStream = this.mConnection.getInputStream();
        this.mPacketBytes = new byte[1388];
        this.mRecvData = false;
        this.mContentLength = (long) this.mConnection.getContentLength();
        this.mDownloadedSize = 0;
        this.mStats.serverIP = InetAddress.getByName(this.mConnection.getURL().getHost()).getHostAddress();
        String str = "connect server success,ServerIp:" + this.mStats.serverIP;
        TXCLog.i("network.TXCFLVDownloader", str);
        TXCLog.i("network.TXCFLVDownloader", "[FirstFramePath][Network] TXCFLVDownloader: connect server success. instance:" + hashCode() + " ip:" + this.mStats.serverIP + " cost:" + (System.currentTimeMillis() - currentTimeMillis) + " rspCode:" + this.mStats.errorCode);
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("serverip", this.mStats.serverIP);
        sendNotifyEvent(2001, str, hashMap);
        this.mStats.flvSessionKey = this.mConnection.getHeaderField("X-Tlive-SpanId");
        if (!(TextUtils.isEmpty(this.mFlvSessionKey) || (headerField = this.mConnection.getHeaderField(this.mFlvSessionKey)) == null)) {
            TXCLog.i("network.TXCFLVDownloader", "receive flvSessionKey " + headerField);
            sendNotifyEvent(2031, headerField);
        }
    }

    @Override // com.tencent.liteav.network.TXIStreamDownloader
    public String getRealStreamUrl() {
        HttpURLConnection httpURLConnection = this.mConnection;
        if (httpURLConnection != null) {
            return httpURLConnection.getURL().toString();
        }
        return null;
    }

    private void disconnect() throws Exception {
        TXCLog.i("network.TXCFLVDownloader", "[Network]FLVDownloader disconnect.");
        HttpURLConnection httpURLConnection = this.mConnection;
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
            this.mConnection = null;
        }
        InputStream inputStream = this.mInputStream;
        if (inputStream != null) {
            inputStream.close();
            this.mInputStream = null;
        }
    }

    @Override // com.tencent.liteav.network.TXIStreamDownloader
    public TXCStreamDownloader.DownloadStats getDownloadStats() {
        TXCStreamDownloader.DownloadStats downloadStats = new TXCStreamDownloader.DownloadStats();
        downloadStats.afterParseAudioBytes = this.mStats.afterParseAudioBytes;
        downloadStats.afterParseVideoBytes = this.mStats.afterParseVideoBytes;
        downloadStats.beforeParseVideoBytes = this.mStats.beforeParseVideoBytes;
        downloadStats.beforeParseAudioBytes = this.mStats.beforeParseAudioBytes;
        downloadStats.videoGop = this.mStats.videoGop;
        downloadStats.startTS = this.mStats.startTS;
        downloadStats.dnsTS = this.mStats.dnsTS;
        downloadStats.connTS = this.mStats.connTS;
        downloadStats.firstAudioTS = this.mStats.firstAudioTS;
        downloadStats.firstVideoTS = this.mStats.firstVideoTS;
        downloadStats.serverIP = this.mStats.serverIP;
        downloadStats.flvSessionKey = this.mStats.flvSessionKey;
        downloadStats.errorCode = this.mStats.errorCode;
        downloadStats.errorInfo = this.mStats.errorInfo;
        return downloadStats;
    }

    @Override // com.tencent.liteav.network.TXIStreamDownloader
    public void startDownload(Vector<h> vector, boolean z, boolean z2, boolean z3, boolean z4) {
        startDownload(vector, z, z2, z3, z4, null);
    }

    @Override // com.tencent.liteav.network.TXIStreamDownloader
    public void startDownload(Vector<h> vector, boolean z, boolean z2, boolean z3, boolean z4, a aVar) {
        if (!this.mIsRunning && vector != null && !vector.isEmpty()) {
            this.mEnableMessage = z3;
            this.mEnableMetaData = z4;
            this.mIsRunning = true;
            this.mPlayUrl = vector.get(0).a;
            TXCLog.i("network.TXCFLVDownloader", "start pull with url " + this.mPlayUrl);
            startInternal(aVar);
        }
    }

    @Override // com.tencent.liteav.network.TXIStreamDownloader
    public void stopDownload() {
        if (this.mIsRunning) {
            this.mIsRunning = false;
            TXCLog.i("network.TXCFLVDownloader", "stop pull");
            try {
                if (this.mFlvHandler != null) {
                    this.mFlvHandler.removeCallbacksAndMessages(null);
                    this.mFlvHandler.sendEmptyMessage(102);
                    this.mFlvHandler.sendEmptyMessage(106);
                    this.mFlvHandler = null;
                }
            } catch (Exception e) {
                TXCLog.e("network.TXCFLVDownloader", "stop download failed.", e);
            }
        }
    }

    @Override // com.tencent.liteav.network.TXIStreamDownloader
    public void onRecvVideoData(byte[] bArr, int i, long j, long j2, int i2) {
        if (!this.mHasReceivedFirstVideo) {
            this.mHasReceivedFirstVideo = true;
            this.mStats.firstVideoTS = TXCTimeUtil.getTimeTick();
            TXCLog.i("network.TXCFLVDownloader", "[FirstFramePath][Network][Video] TXCFlvDownloader: recv first video frame. instance:" + hashCode());
        }
        this.mStats.afterParseVideoBytes += (long) bArr.length;
        super.onRecvVideoData(bArr, i, j, j2, i2);
    }

    @Override // com.tencent.liteav.network.TXIStreamDownloader
    public void onRecvAudioData(byte[] bArr, int i, int i2, int i3) {
        if (!this.mHasReceivedFirstAudio) {
            this.mHasReceivedFirstAudio = true;
            this.mStats.firstAudioTS = TXCTimeUtil.getTimeTick();
            TXCLog.i("network.TXCFLVDownloader", "[FirstFramePath][Network][Audio] TXCFlvDownloader: recv first audio frame. instance:" + hashCode());
        }
        this.mStats.afterParseAudioBytes += (long) bArr.length;
        super.onRecvAudioData(bArr, i, i2, i3);
    }

    private void onRecvFirstVideoData() {
        if (!this.mHasReceivedFirstVideo) {
            this.mHasReceivedFirstVideo = true;
            this.mStats.firstVideoTS = TXCTimeUtil.getTimeTick();
            TXCLog.i("network.TXCFLVDownloader", "[FirstFramePath][Network][Video] TXCFlvDownloader: recv first video frame. instance:" + hashCode());
        }
    }

    private void onRecvFirstAudioData() {
        if (!this.mHasReceivedFirstAudio) {
            this.mHasReceivedFirstAudio = true;
            this.mStats.firstAudioTS = TXCTimeUtil.getTimeTick();
            TXCLog.i("network.TXCFLVDownloader", "[FirstFramePath][Network][Audio] TXCFlvDownloader: recv first audio frame. instance:" + hashCode());
        }
    }
}
