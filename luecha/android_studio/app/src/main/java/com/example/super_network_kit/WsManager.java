package com.example.super_network_kit;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.example.super_network_kit.WsStatus;
import com.example.super_network_kit.listener.WsStatusListener;
import com.github.florent37.assets_audio_player.Player;
import java.io.PrintStream;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.WebSocket;
import okhttp3.WebSocketListener;
import okio.ByteString;

/* loaded from: classes2.dex */
public class WsManager implements IWsManager {
    private static final int RECONNECT_INTERVAL = 10000;
    private static final long RECONNECT_MAX_TIME = 120000;
    private boolean enableZip;
    private boolean isNeedReconnect;
    private Context mContext;
    private OkHttpClient mOkHttpClient;
    private Request mRequest;
    private WebSocket mWebSocket;
    private String nextAESKey;
    private String salt;
    private WsStatusListener wsStatusListener;
    private String wsUrl;
    private int mCurrentStatus = -1;
    private boolean isManualClose = false;
    private Handler wsMainHandler = new Handler(Looper.getMainLooper());
    private int reconnectCount = 0;
    private Runnable reconnectRunnable = new Runnable() { // from class: com.example.super_network_kit.WsManager.1
        @Override // java.lang.Runnable
        public void run() {
            if (WsManager.this.wsStatusListener != null) {
                WsManager.this.wsStatusListener.onReconnect();
            }
            WsManager.this.buildConnect();
        }
    };
    private WebSocketListener mWebSocketListener = new WebSocketListener() { // from class: com.example.super_network_kit.WsManager.2
        @Override // okhttp3.WebSocketListener
        public void onOpen(WebSocket webSocket, final Response response) {
            WsManager.this.mWebSocket = webSocket;
            WsManager.this.setCurrentStatus(1);
            WsManager.this.connected();
            if (WsManager.this.wsStatusListener == null) {
                return;
            }
            if (Looper.myLooper() != Looper.getMainLooper()) {
                WsManager.this.wsMainHandler.post(new Runnable() { // from class: com.example.super_network_kit.WsManager.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        WsManager.this.wsStatusListener.onOpen(response);
                    }
                });
            } else {
                WsManager.this.wsStatusListener.onOpen(response);
            }
        }

        @Override // okhttp3.WebSocketListener
        public void onMessage(WebSocket webSocket, final ByteString byteString) {
            if (WsManager.this.enableZip) {
                try {
                    byteString = new ByteString(Util.decompress(byteString.toByteArray()));
                } catch (Exception e) {
                    PrintStream printStream = System.err;
                    printStream.println("Tunnel.onMessage解压错误:\t" + e.getMessage());
                    byteString = null;
                }
            }
            if (WsManager.this.wsStatusListener == null) {
                return;
            }
            if (Looper.myLooper() != Looper.getMainLooper()) {
                WsManager.this.wsMainHandler.post(new Runnable() { // from class: com.example.super_network_kit.WsManager.2.2
                    @Override // java.lang.Runnable
                    public void run() {
                        WsManager.this.wsStatusListener.onMessage(byteString);
                    }
                });
            } else {
                WsManager.this.wsStatusListener.onMessage(byteString);
            }
        }

        @Override // okhttp3.WebSocketListener
        public void onMessage(WebSocket webSocket, final String str) {
            if (WsManager.this.wsStatusListener == null) {
                return;
            }
            if (Looper.myLooper() != Looper.getMainLooper()) {
                WsManager.this.wsMainHandler.post(new Runnable() { // from class: com.example.super_network_kit.WsManager.2.3
                    @Override // java.lang.Runnable
                    public void run() {
                        WsManager.this.wsStatusListener.onMessage(str);
                    }
                });
            } else {
                WsManager.this.wsStatusListener.onMessage(str);
            }
        }

        @Override // okhttp3.WebSocketListener
        public void onClosing(WebSocket webSocket, final int i, final String str) {
            if (WsManager.this.wsStatusListener == null) {
                return;
            }
            if (Looper.myLooper() != Looper.getMainLooper()) {
                WsManager.this.wsMainHandler.post(new Runnable() { // from class: com.example.super_network_kit.WsManager.2.4
                    @Override // java.lang.Runnable
                    public void run() {
                        WsManager.this.wsStatusListener.onClosing(i, str);
                    }
                });
            } else {
                WsManager.this.wsStatusListener.onClosing(i, str);
            }
        }

        @Override // okhttp3.WebSocketListener
        public void onClosed(WebSocket webSocket, final int i, final String str) {
            if (WsManager.this.wsStatusListener == null) {
                return;
            }
            if (Looper.myLooper() != Looper.getMainLooper()) {
                WsManager.this.wsMainHandler.post(new Runnable() { // from class: com.example.super_network_kit.WsManager.2.5
                    @Override // java.lang.Runnable
                    public void run() {
                        WsManager.this.wsStatusListener.onClosed(i, str);
                    }
                });
            } else {
                WsManager.this.wsStatusListener.onClosed(i, str);
            }
        }

        @Override // okhttp3.WebSocketListener
        public void onFailure(WebSocket webSocket, final Throwable th, final Response response) {
            WsManager.this.tryReconnect();
            if (WsManager.this.wsStatusListener == null) {
                return;
            }
            if (Looper.myLooper() != Looper.getMainLooper()) {
                WsManager.this.wsMainHandler.post(new Runnable() { // from class: com.example.super_network_kit.WsManager.2.6
                    @Override // java.lang.Runnable
                    public void run() {
                        WsManager.this.wsStatusListener.onFailure(th, response);
                    }
                });
            } else {
                WsManager.this.wsStatusListener.onFailure(th, response);
            }
        }
    };
    private Lock mLock = new ReentrantLock();

    public WsManager(Builder builder) {
        this.mContext = builder.mContext;
        this.wsUrl = builder.wsUrl;
        this.isNeedReconnect = builder.needReconnect;
        this.mOkHttpClient = builder.mOkHttpClient;
        this.enableZip = builder.mEnableZip;
        this.salt = builder.mSalt;
    }

    private void initWebSocket() {
        if (this.mOkHttpClient == null) {
            this.mOkHttpClient = new OkHttpClient.Builder().retryOnConnectionFailure(true).build();
        }
        if (this.mRequest == null) {
            this.mRequest = new Request.Builder().url(this.wsUrl).build();
        }
        this.mOkHttpClient.dispatcher().cancelAll();
        try {
            this.mLock.lockInterruptibly();
            this.mOkHttpClient.newWebSocket(this.mRequest, this.mWebSocketListener);
            this.mLock.unlock();
        } catch (InterruptedException unused) {
        }
    }

    @Override // com.example.super_network_kit.IWsManager
    public WebSocket getWebSocket() {
        return this.mWebSocket;
    }

    public void setWsStatusListener(WsStatusListener wsStatusListener) {
        this.wsStatusListener = wsStatusListener;
    }

    @Override // com.example.super_network_kit.IWsManager
    public synchronized boolean isWsConnected() {
        boolean z;
        z = true;
        if (this.mCurrentStatus != 1) {
            z = false;
        }
        return z;
    }

    @Override // com.example.super_network_kit.IWsManager
    public synchronized int getCurrentStatus() {
        return this.mCurrentStatus;
    }

    @Override // com.example.super_network_kit.IWsManager
    public synchronized void setCurrentStatus(int i) {
        this.mCurrentStatus = i;
    }

    @Override // com.example.super_network_kit.IWsManager
    public void startConnect() {
        this.isManualClose = false;
        buildConnect();
    }

    @Override // com.example.super_network_kit.IWsManager
    public void stopConnect() {
        this.isManualClose = true;
        disconnect();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tryReconnect() {
        if (!(!this.isNeedReconnect) && !this.isManualClose) {
            if (!isNetworkConnected(this.mContext)) {
                setCurrentStatus(-1);
                return;
            }
            setCurrentStatus(2);
            long j = (long) (this.reconnectCount * 10000);
            Handler handler = this.wsMainHandler;
            Runnable runnable = this.reconnectRunnable;
            if (j > RECONNECT_MAX_TIME) {
                j = 120000;
            }
            handler.postDelayed(runnable, j);
            this.reconnectCount++;
        }
    }

    private void cancelReconnect() {
        this.wsMainHandler.removeCallbacks(this.reconnectRunnable);
        this.reconnectCount = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void connected() {
        if (this.salt != null) {
            this.nextAESKey = Util.MD5(this.salt + ((int) ((System.currentTimeMillis() / 1000) / 3600)));
        } else {
            this.nextAESKey = null;
        }
        cancelReconnect();
    }

    private void disconnect() {
        WsStatusListener wsStatusListener;
        if (this.mCurrentStatus != -1) {
            cancelReconnect();
            OkHttpClient okHttpClient = this.mOkHttpClient;
            if (okHttpClient != null) {
                okHttpClient.dispatcher().cancelAll();
            }
            WebSocket webSocket = this.mWebSocket;
            if (!(webSocket == null || webSocket.close(1000, WsStatus.TIP.NORMAL_CLOSE) || (wsStatusListener = this.wsStatusListener) == null)) {
                wsStatusListener.onClosed(1001, WsStatus.TIP.ABNORMAL_CLOSE);
            }
            setCurrentStatus(-1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void buildConnect() {
        if (!isNetworkConnected(this.mContext)) {
            setCurrentStatus(-1);
            return;
        }
        int currentStatus = getCurrentStatus();
        if (!(currentStatus == 0 || currentStatus == 1)) {
            setCurrentStatus(0);
            initWebSocket();
        }
    }

    @Override // com.example.super_network_kit.IWsManager
    public boolean sendMessage(String str) {
        try {
            if (this.nextAESKey != null) {
                str = Util.encrypt(str, this.nextAESKey);
            }
            return send(str);
        } catch (Exception e) {
            Log.d(Player.AUDIO_TYPE_NETWORK, "sendMessage: " + e.toString());
            return false;
        }
    }

    @Override // com.example.super_network_kit.IWsManager
    public boolean sendMessage(ByteString byteString) {
        return send(byteString);
    }

    private boolean send(Object obj) {
        WebSocket webSocket = this.mWebSocket;
        boolean z = false;
        if (webSocket != null && this.mCurrentStatus == 1) {
            if (obj instanceof String) {
                z = webSocket.send((String) obj);
            } else if (obj instanceof ByteString) {
                z = webSocket.send((ByteString) obj);
            }
            if (!z) {
                tryReconnect();
            }
        }
        return z;
    }

    private boolean isNetworkConnected(Context context) {
        NetworkInfo activeNetworkInfo;
        if (context == null || (activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo()) == null) {
            return false;
        }
        return activeNetworkInfo.isAvailable();
    }

    /* loaded from: classes2.dex */
    public static final class Builder {
        private Context mContext;
        private boolean mEnableZip;
        private OkHttpClient mOkHttpClient;
        private String mSalt;
        private boolean needReconnect = true;
        private String wsUrl;

        public Builder(Context context) {
            this.mContext = context;
        }

        public Builder wsUrl(String str) {
            this.wsUrl = str;
            return this;
        }

        public Builder client(OkHttpClient okHttpClient) {
            this.mOkHttpClient = okHttpClient;
            return this;
        }

        public Builder needReconnect(boolean z) {
            this.needReconnect = z;
            return this;
        }

        public Builder enableZip(boolean z) {
            this.mEnableZip = z;
            return this;
        }

        public Builder salt(String str) {
            this.mSalt = str;
            return this;
        }

        public WsManager build() {
            return new WsManager(this);
        }
    }
}
