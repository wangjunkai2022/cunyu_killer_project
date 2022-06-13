package com.tencent.live2.impl;

import android.content.Context;
import android.os.Looper;
import android.text.TextUtils;
import android.view.Surface;
import android.view.SurfaceView;
import android.view.TextureView;
import com.tencent.liteav.basic.log.TXCLog;
import com.tencent.liteav.basic.util.f;
import com.tencent.liteav.basic.util.h;
import com.tencent.liteav.l;
import com.tencent.live2.V2TXLiveDef;
import com.tencent.live2.V2TXLivePlayer;
import com.tencent.live2.V2TXLivePlayerObserver;
import com.tencent.live2.impl.a;
import com.tencent.rtmp.ui.TXCloudVideoView;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class V2TXLivePlayerImpl extends V2TXLivePlayer {
    private static final String TAG = "V2-TXLivePlayerImpl";
    private V2TXLiveDef.V2TXLiveBufferType mBufferType;
    private float mCacheMaxTime;
    private float mCacheMinTime;
    private Context mContext;
    private boolean mEnableCustomRendering;
    private boolean mEnableDebugView;
    private boolean mEnableReceiveSEI;
    private V2TXLivePlayer mInnerPlayer;
    private boolean mIsPauseAudio;
    private boolean mIsPauseVideo;
    private V2TXLiveDef.V2TXLivePixelFormat mPixelFormat;
    private V2TXLivePlayerObserver mPlayerObserver;
    private V2TXLiveDef.V2TXLiveFillMode mRenderFillMode;
    private V2TXLiveDef.V2TXLiveRotation mRenderRotation;
    private int mSEIPayLoadType;
    private Surface mSurface;
    private a.C0030a mSurfaceSize;
    private Object mView;
    private a.b mAsyncState = a.b.TXLiveAsyncState_None;
    private f mMainHandler = new f(Looper.getMainLooper());
    private int mVolumeIntervals = -1;
    private int mPlayoutVolume = -1;
    private HashMap<String, Object> mPropertyMap = new HashMap<>();

    static {
        h.f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setupParams() {
        V2TXLivePlayer v2TXLivePlayer = this.mInnerPlayer;
        if (v2TXLivePlayer != null) {
            v2TXLivePlayer.setObserver(this.mPlayerObserver);
            v2TXLivePlayer.enableObserveVideoFrame(this.mEnableCustomRendering, this.mPixelFormat, this.mBufferType);
            v2TXLivePlayer.enableReceiveSeiMessage(this.mEnableReceiveSEI, this.mSEIPayLoadType);
            Object obj = this.mView;
            if (obj != null) {
                if (obj instanceof TXCloudVideoView) {
                    v2TXLivePlayer.setRenderView((TXCloudVideoView) obj);
                } else if (obj instanceof TextureView) {
                    v2TXLivePlayer.setRenderView((TextureView) obj);
                } else if (obj instanceof SurfaceView) {
                    v2TXLivePlayer.setRenderView((SurfaceView) obj);
                }
            }
            V2TXLiveDef.V2TXLiveFillMode v2TXLiveFillMode = this.mRenderFillMode;
            if (v2TXLiveFillMode != null) {
                v2TXLivePlayer.setRenderFillMode(v2TXLiveFillMode);
            }
            V2TXLiveDef.V2TXLiveRotation v2TXLiveRotation = this.mRenderRotation;
            if (v2TXLiveRotation != null) {
                v2TXLivePlayer.setRenderRotation(v2TXLiveRotation);
            }
            if (this.mIsPauseAudio) {
                v2TXLivePlayer.pauseAudio();
            } else {
                v2TXLivePlayer.resumeAudio();
            }
            if (this.mIsPauseVideo) {
                v2TXLivePlayer.pauseVideo();
            } else {
                v2TXLivePlayer.resumeVideo();
            }
            float f = this.mCacheMinTime;
            if (f > 0.0f) {
                float f2 = this.mCacheMaxTime;
                if (f2 > 0.0f) {
                    v2TXLivePlayer.setCacheParams(f, f2);
                }
            }
            int i = this.mPlayoutVolume;
            if (i > 0) {
                v2TXLivePlayer.setPlayoutVolume(i);
            }
            int i2 = this.mVolumeIntervals;
            if (i2 > 0) {
                v2TXLivePlayer.enableVolumeEvaluation(i2);
            }
            v2TXLivePlayer.showDebugView(this.mEnableDebugView);
            Surface surface = this.mSurface;
            if (surface != null) {
                v2TXLivePlayer.setProperty("setSurface", surface);
            }
            a.C0030a aVar = this.mSurfaceSize;
            if (aVar != null) {
                v2TXLivePlayer.setProperty("setSurfaceSize", aVar);
            }
            for (Map.Entry<String, Object> entry : this.mPropertyMap.entrySet()) {
                this.mInnerPlayer.setProperty(entry.getKey(), entry.getValue());
            }
        }
    }

    private void runOnMainThreadAsync(Runnable runnable) {
        this.mMainHandler.post(runnable);
    }

    public V2TXLivePlayerImpl(Context context) {
        apiLog("create: context-" + context);
        this.mContext = context.getApplicationContext();
    }

    @Override // com.tencent.live2.V2TXLivePlayer
    public void setObserver(final V2TXLivePlayerObserver v2TXLivePlayerObserver) {
        apiLog("setObserver: observer-" + v2TXLivePlayerObserver);
        runOnMainThreadAsync(new Runnable() { // from class: com.tencent.live2.impl.V2TXLivePlayerImpl.1
            @Override // java.lang.Runnable
            public void run() {
                V2TXLivePlayerImpl.this.mPlayerObserver = v2TXLivePlayerObserver;
                if (V2TXLivePlayerImpl.this.mInnerPlayer != null) {
                    V2TXLivePlayerImpl.this.mInnerPlayer.setObserver(v2TXLivePlayerObserver);
                }
            }
        });
    }

    @Override // com.tencent.live2.V2TXLivePlayer
    public int setProperty(final String str, final Object obj) {
        apiLog("setProperty: key-" + str + " value-" + obj);
        runOnMainThreadAsync(new Runnable() { // from class: com.tencent.live2.impl.V2TXLivePlayerImpl.2
            /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
            @Override // java.lang.Runnable
            public void run() {
                char c;
                String str2 = str;
                switch (str2.hashCode()) {
                    case -1551400628:
                        if (str2.equals("setLEBEnvironment")) {
                            c = 4;
                            break;
                        }
                        c = 65535;
                        break;
                    case 190314931:
                        if (str2.equals("setPlayURLType")) {
                            c = 2;
                            break;
                        }
                        c = 65535;
                        break;
                    case 480042124:
                        if (str2.equals("setSurfaceSize")) {
                            c = 1;
                            break;
                        }
                        c = 65535;
                        break;
                    case 787234457:
                        if (str2.equals("enableRecvSEIMessage")) {
                            c = 3;
                            break;
                        }
                        c = 65535;
                        break;
                    case 1120433643:
                        if (str2.equals("setSurface")) {
                            c = 0;
                            break;
                        }
                        c = 65535;
                        break;
                    case 2085561276:
                        if (str2.equals("setFramework")) {
                            c = 5;
                            break;
                        }
                        c = 65535;
                        break;
                    default:
                        c = 65535;
                        break;
                }
                if (c == 0) {
                    Object obj2 = obj;
                    if (obj2 == null) {
                        V2TXLivePlayerImpl.this.mSurface = null;
                    } else if (obj2 instanceof Surface) {
                        V2TXLivePlayerImpl.this.mSurface = (Surface) obj2;
                    }
                } else if (c == 1) {
                    Object obj3 = obj;
                    if (obj3 == null) {
                        V2TXLivePlayerImpl.this.mSurfaceSize = null;
                    } else if (obj3 instanceof a.C0030a) {
                        V2TXLivePlayerImpl.this.mSurfaceSize = (a.C0030a) obj3;
                    }
                } else if (c == 2 || c == 3 || c == 4 || c == 5) {
                    V2TXLivePlayerImpl.this.mPropertyMap.put(str, obj);
                }
                if (V2TXLivePlayerImpl.this.mInnerPlayer != null) {
                    V2TXLivePlayerImpl.this.mInnerPlayer.setProperty(str, obj);
                }
            }
        });
        return 0;
    }

    @Override // com.tencent.live2.V2TXLivePlayer
    public int enableReceiveSeiMessage(final boolean z, final int i) {
        apiLog("enableReceiveSeiMessage: enable-" + z + ", payloadType-" + i);
        if (i == 5 || i == 242) {
            runOnMainThreadAsync(new Runnable() { // from class: com.tencent.live2.impl.V2TXLivePlayerImpl.3
                @Override // java.lang.Runnable
                public void run() {
                    V2TXLivePlayerImpl.this.mEnableReceiveSEI = z;
                    V2TXLivePlayerImpl.this.mSEIPayLoadType = i;
                    if (V2TXLivePlayerImpl.this.mInnerPlayer != null) {
                        V2TXLivePlayerImpl.this.mInnerPlayer.enableReceiveSeiMessage(z, i);
                    }
                }
            });
            return 0;
        }
        apiError("enableReceiveSeiMessage payloadType invalid " + i);
        return -2;
    }

    @Override // com.tencent.live2.V2TXLivePlayer
    public int setRenderView(final TXCloudVideoView tXCloudVideoView) {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append("setTXCloudVideoView: view-");
        if (tXCloudVideoView != null) {
            str = tXCloudVideoView.hashCode() + "";
        } else {
            str = "null";
        }
        sb.append(str);
        apiLog(sb.toString());
        runOnMainThreadAsync(new Runnable() { // from class: com.tencent.live2.impl.V2TXLivePlayerImpl.4
            @Override // java.lang.Runnable
            public void run() {
                V2TXLivePlayerImpl.this.mView = tXCloudVideoView;
                if (V2TXLivePlayerImpl.this.mInnerPlayer != null) {
                    V2TXLivePlayerImpl.this.mInnerPlayer.setRenderView(tXCloudVideoView);
                }
            }
        });
        return 0;
    }

    @Override // com.tencent.live2.V2TXLivePlayer
    public int setRenderView(final TextureView textureView) {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append("setTextureView: view-");
        if (textureView != null) {
            str = textureView.hashCode() + "";
        } else {
            str = "null";
        }
        sb.append(str);
        apiLog(sb.toString());
        runOnMainThreadAsync(new Runnable() { // from class: com.tencent.live2.impl.V2TXLivePlayerImpl.5
            @Override // java.lang.Runnable
            public void run() {
                V2TXLivePlayerImpl.this.mView = textureView;
                if (V2TXLivePlayerImpl.this.mInnerPlayer != null) {
                    V2TXLivePlayerImpl.this.mInnerPlayer.setRenderView(textureView);
                }
            }
        });
        return 0;
    }

    @Override // com.tencent.live2.V2TXLivePlayer
    public int setRenderView(final SurfaceView surfaceView) {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append("setSurfaceView: view-");
        if (surfaceView != null) {
            str = surfaceView.hashCode() + "";
        } else {
            str = "null";
        }
        sb.append(str);
        apiLog(sb.toString());
        runOnMainThreadAsync(new Runnable() { // from class: com.tencent.live2.impl.V2TXLivePlayerImpl.6
            @Override // java.lang.Runnable
            public void run() {
                V2TXLivePlayerImpl.this.mView = surfaceView;
                if (V2TXLivePlayerImpl.this.mInnerPlayer != null) {
                    V2TXLivePlayerImpl.this.mInnerPlayer.setRenderView(surfaceView);
                }
            }
        });
        return 0;
    }

    @Override // com.tencent.live2.V2TXLivePlayer
    public int setRenderRotation(final V2TXLiveDef.V2TXLiveRotation v2TXLiveRotation) {
        apiLog("setRenderRotation: rotation-" + v2TXLiveRotation);
        runOnMainThreadAsync(new Runnable() { // from class: com.tencent.live2.impl.V2TXLivePlayerImpl.7
            @Override // java.lang.Runnable
            public void run() {
                V2TXLivePlayerImpl.this.mRenderRotation = v2TXLiveRotation;
                if (V2TXLivePlayerImpl.this.mInnerPlayer != null) {
                    V2TXLivePlayerImpl.this.mInnerPlayer.setRenderRotation(v2TXLiveRotation);
                }
            }
        });
        return 0;
    }

    @Override // com.tencent.live2.V2TXLivePlayer
    public int setRenderFillMode(final V2TXLiveDef.V2TXLiveFillMode v2TXLiveFillMode) {
        apiLog("setRenderFillMode: mode-" + v2TXLiveFillMode);
        runOnMainThreadAsync(new Runnable() { // from class: com.tencent.live2.impl.V2TXLivePlayerImpl.8
            @Override // java.lang.Runnable
            public void run() {
                V2TXLivePlayerImpl.this.mRenderFillMode = v2TXLiveFillMode;
                if (V2TXLivePlayerImpl.this.mInnerPlayer != null) {
                    V2TXLivePlayerImpl.this.mInnerPlayer.setRenderFillMode(v2TXLiveFillMode);
                }
            }
        });
        return 0;
    }

    @Override // com.tencent.live2.V2TXLivePlayer
    public int startPlay(final String str) {
        int a;
        apiLog("startPlay url:" + str);
        if (TextUtils.isEmpty(str)) {
            TXCLog.e(TAG, "start play fail, url invalid:" + str);
            return -2;
        }
        final a.c parsePlayerType = V2TXLiveUtils.parsePlayerType(str);
        if (parsePlayerType == a.c.V2TXLiveProtocolTypeTRTC || parsePlayerType == a.c.V2TXLiveProtocolTypeROOM) {
            if (!l.a(str)) {
                apiError("start play fail. invalid param. [url:" + str + "]");
                return -2;
            }
        } else if (!(parsePlayerType == a.c.V2TXLiveProtocolTypeWEBRTC || (a = com.tencent.live2.a.a.a(str)) == 0)) {
            return a;
        }
        this.mAsyncState = a.b.TXLiveAsyncState_Starting;
        runOnMainThreadAsync(new Runnable() { // from class: com.tencent.live2.impl.V2TXLivePlayerImpl.9
            @Override // java.lang.Runnable
            public void run() {
                if (V2TXLivePlayerImpl.this.mInnerPlayer != null && V2TXLivePlayerImpl.this.mInnerPlayer.isPlaying() == 1) {
                    V2TXLivePlayerImpl.this.mInnerPlayer.stopPlay();
                }
                V2TXLivePlayerImpl v2TXLivePlayerImpl = V2TXLivePlayerImpl.this;
                v2TXLivePlayerImpl.mInnerPlayer = l.a(v2TXLivePlayerImpl.mContext, V2TXLivePlayerImpl.this, parsePlayerType);
                V2TXLivePlayerImpl.this.setupParams();
                V2TXLivePlayerImpl.this.mInnerPlayer.startPlay(str);
                V2TXLivePlayerImpl.this.mAsyncState = a.b.TXLiveAsyncState_None;
            }
        });
        return 0;
    }

    @Override // com.tencent.live2.V2TXLivePlayer
    public int stopPlay() {
        apiLog("stopPlay");
        this.mAsyncState = a.b.TXLiveAsyncState_Stopping;
        runOnMainThreadAsync(new Runnable() { // from class: com.tencent.live2.impl.V2TXLivePlayerImpl.10
            @Override // java.lang.Runnable
            public void run() {
                if (V2TXLivePlayerImpl.this.mInnerPlayer != null) {
                    V2TXLivePlayerImpl.this.mAsyncState = a.b.TXLiveAsyncState_None;
                    V2TXLivePlayerImpl.this.mInnerPlayer.stopPlay();
                    V2TXLivePlayerImpl.this.mInnerPlayer = null;
                }
            }
        });
        return 0;
    }

    @Override // com.tencent.live2.V2TXLivePlayer
    public int isPlaying() {
        if (this.mAsyncState == a.b.TXLiveAsyncState_None) {
            V2TXLivePlayer v2TXLivePlayer = this.mInnerPlayer;
            if (v2TXLivePlayer != null) {
                return v2TXLivePlayer.isPlaying();
            }
            return 0;
        } else if (this.mAsyncState == a.b.TXLiveAsyncState_Starting) {
            return 1;
        } else {
            if (this.mAsyncState == a.b.TXLiveAsyncState_Stopping) {
            }
            return 0;
        }
    }

    @Override // com.tencent.live2.V2TXLivePlayer
    public int pauseAudio() {
        apiLog("pauseAudio: ");
        runOnMainThreadAsync(new Runnable() { // from class: com.tencent.live2.impl.V2TXLivePlayerImpl.11
            @Override // java.lang.Runnable
            public void run() {
                V2TXLivePlayerImpl.this.mIsPauseAudio = true;
                if (V2TXLivePlayerImpl.this.mInnerPlayer != null) {
                    V2TXLivePlayerImpl.this.mInnerPlayer.pauseAudio();
                }
            }
        });
        return 0;
    }

    @Override // com.tencent.live2.V2TXLivePlayer
    public int resumeAudio() {
        apiLog("resumeAudio: ");
        runOnMainThreadAsync(new Runnable() { // from class: com.tencent.live2.impl.V2TXLivePlayerImpl.12
            @Override // java.lang.Runnable
            public void run() {
                V2TXLivePlayerImpl.this.mIsPauseAudio = false;
                if (V2TXLivePlayerImpl.this.mInnerPlayer != null) {
                    V2TXLivePlayerImpl.this.mInnerPlayer.resumeAudio();
                }
            }
        });
        return 0;
    }

    @Override // com.tencent.live2.V2TXLivePlayer
    public int pauseVideo() {
        apiLog("pauseVideo: ");
        runOnMainThreadAsync(new Runnable() { // from class: com.tencent.live2.impl.V2TXLivePlayerImpl.13
            @Override // java.lang.Runnable
            public void run() {
                V2TXLivePlayerImpl.this.mIsPauseVideo = true;
                if (V2TXLivePlayerImpl.this.mInnerPlayer != null) {
                    V2TXLivePlayerImpl.this.mInnerPlayer.pauseVideo();
                }
            }
        });
        return 0;
    }

    @Override // com.tencent.live2.V2TXLivePlayer
    public int resumeVideo() {
        apiLog("resumeVideo: ");
        runOnMainThreadAsync(new Runnable() { // from class: com.tencent.live2.impl.V2TXLivePlayerImpl.14
            @Override // java.lang.Runnable
            public void run() {
                V2TXLivePlayerImpl.this.mIsPauseVideo = false;
                if (V2TXLivePlayerImpl.this.mInnerPlayer != null) {
                    V2TXLivePlayerImpl.this.mInnerPlayer.resumeVideo();
                }
            }
        });
        return 0;
    }

    @Override // com.tencent.live2.V2TXLivePlayer
    public int setPlayoutVolume(final int i) {
        apiLog("setPlayoutVolume: volume-" + i);
        runOnMainThreadAsync(new Runnable() { // from class: com.tencent.live2.impl.V2TXLivePlayerImpl.15
            @Override // java.lang.Runnable
            public void run() {
                V2TXLivePlayerImpl.this.mPlayoutVolume = i;
                if (V2TXLivePlayerImpl.this.mInnerPlayer != null) {
                    V2TXLivePlayerImpl.this.mInnerPlayer.setPlayoutVolume(i);
                }
            }
        });
        return 0;
    }

    @Override // com.tencent.live2.V2TXLivePlayer
    public int setCacheParams(final float f, final float f2) {
        apiLog("setCacheParams: minTime-" + f + " maxTime-" + f2);
        if (f <= 0.0f || f2 <= 0.0f) {
            apiError("set cache param failed, invalid cache params.");
            return -2;
        } else if (isPlaying() == 1) {
            apiError("set cache param failed, cant's set param when playing.");
            return -3;
        } else {
            runOnMainThreadAsync(new Runnable() { // from class: com.tencent.live2.impl.V2TXLivePlayerImpl.16
                @Override // java.lang.Runnable
                public void run() {
                    V2TXLivePlayerImpl.this.mCacheMaxTime = f2;
                    V2TXLivePlayerImpl.this.mCacheMinTime = f;
                    if (V2TXLivePlayerImpl.this.mInnerPlayer != null) {
                        V2TXLivePlayerImpl.this.mInnerPlayer.setCacheParams(f, f2);
                    }
                }
            });
            return 0;
        }
    }

    @Override // com.tencent.live2.V2TXLivePlayer
    public int enableVolumeEvaluation(final int i) {
        apiLog("enableVolumeEvaluation: intervalMs-" + i);
        runOnMainThreadAsync(new Runnable() { // from class: com.tencent.live2.impl.V2TXLivePlayerImpl.17
            @Override // java.lang.Runnable
            public void run() {
                V2TXLivePlayerImpl.this.mVolumeIntervals = i;
                if (V2TXLivePlayerImpl.this.mInnerPlayer != null) {
                    V2TXLivePlayerImpl.this.mInnerPlayer.enableVolumeEvaluation(i);
                }
            }
        });
        return 0;
    }

    @Override // com.tencent.live2.V2TXLivePlayer
    public int snapshot() {
        if (isPlaying() == 0) {
            apiError("snapshot: snapshot is not allowed before the player starts playing.");
            return -3;
        }
        runOnMainThreadAsync(new Runnable() { // from class: com.tencent.live2.impl.V2TXLivePlayerImpl.18
            @Override // java.lang.Runnable
            public void run() {
                if (V2TXLivePlayerImpl.this.mInnerPlayer != null) {
                    V2TXLivePlayerImpl.this.mInnerPlayer.snapshot();
                }
            }
        });
        return 0;
    }

    @Override // com.tencent.live2.V2TXLivePlayer
    public int enableObserveVideoFrame(final boolean z, final V2TXLiveDef.V2TXLivePixelFormat v2TXLivePixelFormat, final V2TXLiveDef.V2TXLiveBufferType v2TXLiveBufferType) {
        apiLog("enableCustomRendering: enable-" + z + " pixelFormat-" + v2TXLivePixelFormat + " bufferType-" + v2TXLiveBufferType);
        runOnMainThreadAsync(new Runnable() { // from class: com.tencent.live2.impl.V2TXLivePlayerImpl.19
            @Override // java.lang.Runnable
            public void run() {
                V2TXLivePlayerImpl.this.mEnableCustomRendering = z;
                V2TXLivePlayerImpl.this.mPixelFormat = v2TXLivePixelFormat;
                V2TXLivePlayerImpl.this.mBufferType = v2TXLiveBufferType;
                if (V2TXLivePlayerImpl.this.mInnerPlayer != null) {
                    V2TXLivePlayerImpl.this.mInnerPlayer.enableObserveVideoFrame(z, v2TXLivePixelFormat, v2TXLiveBufferType);
                }
            }
        });
        return 0;
    }

    @Override // com.tencent.live2.V2TXLivePlayer
    public void showDebugView(final boolean z) {
        apiLog("showDebugView: enable-" + z);
        runOnMainThreadAsync(new Runnable() { // from class: com.tencent.live2.impl.V2TXLivePlayerImpl.20
            @Override // java.lang.Runnable
            public void run() {
                V2TXLivePlayerImpl.this.mEnableDebugView = z;
                if (V2TXLivePlayerImpl.this.mInnerPlayer != null) {
                    V2TXLivePlayerImpl.this.mInnerPlayer.showDebugView(z);
                }
            }
        });
    }

    private void apiLog(String str) {
        TXCLog.i(TAG, "v2_api_player(" + hashCode() + ") " + str);
    }

    private void apiError(String str) {
        TXCLog.e(TAG, "v2_api_player(" + hashCode() + ") " + str);
    }
}
