package com.tencent.live2.a;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.SurfaceTexture;
import android.os.Bundle;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import com.tencent.liteav.basic.log.TXCLog;
import com.tencent.liteav.basic.util.TXCBuild;
import com.tencent.liteav.basic.util.h;
import com.tencent.live2.V2TXLiveDef;
import com.tencent.live2.V2TXLivePlayer;
import com.tencent.live2.V2TXLivePlayerObserver;
import com.tencent.live2.impl.V2TXLiveUtils;
import com.tencent.live2.impl.a;
import com.tencent.rtmp.ITXLivePlayListener;
import com.tencent.rtmp.TXLivePlayConfig;
import com.tencent.rtmp.TXLivePlayer;
import com.tencent.rtmp.ui.TXCloudVideoView;
import java.util.Locale;
import javax.microedition.khronos.egl.EGLContext;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* compiled from: TXRTMPPlayerImpl.java */
/* loaded from: classes5.dex */
public class a extends V2TXLivePlayer implements SurfaceHolder.Callback, TextureView.SurfaceTextureListener, ITXLivePlayListener, TXLivePlayer.ITXAudioRawDataListener, TXLivePlayer.ITXAudioVolumeEvaluationListener, TXLivePlayer.ITXLivePlayVideoRenderListener, TXLivePlayer.ITXVideoRawDataListener {
    private Context a;
    private V2TXLivePlayer b;
    private TXLivePlayer c;
    private boolean e;
    private boolean f;
    private boolean g;
    private boolean h;
    private boolean j;
    private V2TXLivePlayerObserver k;
    private boolean l;
    private TXCloudVideoView m;
    private TextureView n;
    private SurfaceView o;
    private int q;
    private int p = -1;
    private boolean r = false;
    private V2TXLiveDef.V2TXLivePlayerStatistics i = new V2TXLiveDef.V2TXLivePlayerStatistics();
    private TXLivePlayConfig d = new TXLivePlayConfig();

    @Override // com.tencent.rtmp.TXLivePlayer.ITXAudioRawDataListener
    public void onPcmDataAvailable(byte[] bArr, long j) {
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    public a(V2TXLivePlayer v2TXLivePlayer, Context context) {
        this.a = context.getApplicationContext();
        this.b = v2TXLivePlayer;
        this.c = new TXLivePlayer(this.a);
        this.c.setPlayListener(this);
        this.d.setConnectRetryInterval(3);
        this.d.setConnectRetryCount(3);
        this.c.setConfig(this.d);
        this.c.enableHardwareDecode(true);
        this.c.setAudioVolumeEvaluationListener(this);
    }

    @Override // com.tencent.live2.V2TXLivePlayer
    public void setObserver(V2TXLivePlayerObserver v2TXLivePlayerObserver) {
        this.k = v2TXLivePlayerObserver;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.tencent.live2.V2TXLivePlayer
    public int setProperty(String str, Object obj) {
        char c;
        switch (str.hashCode()) {
            case -1551400628:
                if (str.equals("setLEBEnvironment")) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case -780243797:
                if (str.equals("enableHardwareAcceleration")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 190314931:
                if (str.equals("setPlayURLType")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 480042124:
                if (str.equals("setSurfaceSize")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 787234457:
                if (str.equals("enableRecvSEIMessage")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 1120433643:
                if (str.equals("setSurface")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 1637676021:
                if (str.equals("maxNumberOfReconnection")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case 1899639930:
                if (str.equals("secondsBetweenReconnection")) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
                if (obj != null) {
                    if (obj instanceof Surface) {
                        this.c.setSurface((Surface) obj);
                        break;
                    }
                } else {
                    this.c.setSurface(null);
                    break;
                }
                break;
            case 1:
                if (obj != null && (obj instanceof a.C0030a)) {
                    a.C0030a aVar = (a.C0030a) obj;
                    this.c.setSurfaceSize(aVar.a, aVar.b);
                    break;
                }
                break;
            case 2:
                if (obj != null && (obj instanceof Boolean)) {
                    this.d.setEnableMessage(((Boolean) obj).booleanValue());
                    this.c.setConfig(this.d);
                    break;
                }
                break;
            case 3:
                if (obj != null && (obj instanceof Integer)) {
                    this.p = ((Integer) obj).intValue();
                    break;
                }
                break;
            case 4:
                if (obj != null && (obj instanceof Boolean)) {
                    this.c.enableHardwareDecode(((Boolean) obj).booleanValue());
                    break;
                }
                break;
            case 5:
                if (obj != null && (obj instanceof Integer)) {
                    this.d.setConnectRetryCount(((Integer) obj).intValue());
                    this.c.setConfig(this.d);
                    break;
                }
                break;
            case 6:
                if (obj != null && (obj instanceof Integer)) {
                    this.d.setConnectRetryInterval(((Integer) obj).intValue());
                    this.c.setConfig(this.d);
                    break;
                }
                break;
        }
        return 0;
    }

    @Override // com.tencent.live2.V2TXLivePlayer
    public int enableReceiveSeiMessage(boolean z, int i) {
        this.q = i;
        this.d.setEnableMessage(z);
        this.c.setConfig(this.d);
        this.c.callExperimentalAPI(String.format(Locale.ENGLISH, "{\"api\":\"setSEIPayloadType\", \"params\": {\"payloadType\":%d}}", Integer.valueOf(i)));
        return 0;
    }

    @Override // com.tencent.live2.V2TXLivePlayer
    public int setRenderView(TXCloudVideoView tXCloudVideoView) {
        c();
        if (tXCloudVideoView != null) {
            tXCloudVideoView.showLog(this.l);
        }
        this.m = tXCloudVideoView;
        b();
        return 0;
    }

    @Override // com.tencent.live2.V2TXLivePlayer
    public int setRenderView(TextureView textureView) {
        c();
        this.n = textureView;
        b();
        return 0;
    }

    @Override // com.tencent.live2.V2TXLivePlayer
    public int setRenderView(SurfaceView surfaceView) {
        c();
        this.o = surfaceView;
        b();
        return 0;
    }

    @Override // com.tencent.live2.V2TXLivePlayer
    public int setRenderRotation(V2TXLiveDef.V2TXLiveRotation v2TXLiveRotation) {
        if (v2TXLiveRotation == null) {
            e("setRenderRotation: param is null, fix it.");
            v2TXLiveRotation = V2TXLiveDef.V2TXLiveRotation.V2TXLiveRotation0;
        }
        this.c.setRenderRotation(V2TXLiveUtils.getRTMPRotation(v2TXLiveRotation));
        return 0;
    }

    @Override // com.tencent.live2.V2TXLivePlayer
    public int setRenderFillMode(V2TXLiveDef.V2TXLiveFillMode v2TXLiveFillMode) {
        if (v2TXLiveFillMode == null) {
            e("setRenderFillMode: param is null, fix it.");
            v2TXLiveFillMode = V2TXLiveDef.V2TXLiveFillMode.V2TXLiveFillModeFill;
        }
        this.c.setRenderMode(V2TXLiveUtils.getRTMPFillMode(v2TXLiveFillMode));
        return 0;
    }

    @Override // com.tencent.live2.V2TXLivePlayer
    public int startPlay(String str) {
        int b = b(str);
        c("startPlay: url-" + str + " type-" + b);
        c();
        b();
        this.e = false;
        this.f = false;
        this.h = false;
        this.g = true;
        this.c.setConfig(this.d);
        this.c.callExperimentalAPI(String.format(Locale.ENGLISH, "{\"api\":\"setInterfaceType\", \"params\": {\"type\":%d}}", 1));
        int startPlay = this.c.startPlay(str, b);
        this.c.setMute(this.j);
        if (startPlay != 0) {
            d("startPlay: play fail, force stop.");
            a();
        }
        return 0;
    }

    @Override // com.tencent.live2.V2TXLivePlayer
    public int stopPlay() {
        c("stopPlay:");
        if (!this.g) {
            e("stopPlay: player have been stop.");
            return 0;
        }
        a();
        return 0;
    }

    @Override // com.tencent.live2.V2TXLivePlayer
    public int isPlaying() {
        return this.g ? 1 : 0;
    }

    @Override // com.tencent.live2.V2TXLivePlayer
    public int pauseAudio() {
        this.j = true;
        this.c.setMute(true);
        return 0;
    }

    @Override // com.tencent.live2.V2TXLivePlayer
    public int resumeAudio() {
        this.j = false;
        this.c.setMute(false);
        return 0;
    }

    @Override // com.tencent.live2.V2TXLivePlayer
    public int pauseVideo() {
        if (this.m != null) {
            this.c.setPlayerView(null);
            return 0;
        } else if (this.o == null && this.n == null) {
            return 0;
        } else {
            this.c.setSurface(null);
            return 0;
        }
    }

    @Override // com.tencent.live2.V2TXLivePlayer
    public int resumeVideo() {
        TXCloudVideoView tXCloudVideoView = this.m;
        if (tXCloudVideoView != null) {
            this.c.setPlayerView(tXCloudVideoView);
            return 0;
        }
        TextureView textureView = this.n;
        if (textureView != null) {
            SurfaceTexture surfaceTexture = textureView.getSurfaceTexture();
            if (surfaceTexture == null) {
                return 0;
            }
            this.c.setSurface(new Surface(surfaceTexture));
            return 0;
        }
        SurfaceView surfaceView = this.o;
        if (surfaceView == null) {
            return 0;
        }
        Surface surface = surfaceView.getHolder().getSurface();
        if (!surface.isValid()) {
            return 0;
        }
        this.c.setSurface(surface);
        return 0;
    }

    @Override // com.tencent.live2.V2TXLivePlayer
    public int setPlayoutVolume(int i) {
        this.c.setVolume(i);
        return 0;
    }

    @Override // com.tencent.live2.V2TXLivePlayer
    public int setCacheParams(float f, float f2) {
        if (f > f2) {
            e("force fix error params. min:" + f2 + " max:" + f);
        } else {
            f2 = f;
            f = f2;
        }
        this.d.setCacheTime(f);
        this.d.setMaxAutoAdjustCacheTime(f);
        this.d.setMinAutoAdjustCacheTime(f2);
        this.d.setAutoAdjustCacheTime(f2 != f);
        return 0;
    }

    @Override // com.tencent.live2.V2TXLivePlayer
    public int enableVolumeEvaluation(int i) {
        if (i < 0) {
            e("enableVolumeEvaluation: invalid params.");
            i = 0;
        }
        this.c.enableAudioVolumeEvaluation(i);
        return 0;
    }

    @Override // com.tencent.live2.V2TXLivePlayer
    public int enableObserveVideoFrame(boolean z, V2TXLiveDef.V2TXLivePixelFormat v2TXLivePixelFormat, V2TXLiveDef.V2TXLiveBufferType v2TXLiveBufferType) {
        c("setVideoFrameObserver: enable-" + z + " format-" + v2TXLivePixelFormat + " type-" + v2TXLiveBufferType);
        a aVar = null;
        if (v2TXLivePixelFormat == V2TXLiveDef.V2TXLivePixelFormat.V2TXLivePixelFormatI420 && v2TXLiveBufferType == V2TXLiveDef.V2TXLiveBufferType.V2TXLiveBufferTypeByteArray) {
            c("setVideoFrameObserver: use I420 array render.");
            this.c.setVideoRenderListener(null, null);
            TXLivePlayer tXLivePlayer = this.c;
            if (z) {
                aVar = this;
            }
            tXLivePlayer.setVideoRawDataListener(aVar);
            return 0;
        } else if (v2TXLivePixelFormat == V2TXLiveDef.V2TXLivePixelFormat.V2TXLivePixelFormatTexture2D && v2TXLiveBufferType == V2TXLiveDef.V2TXLiveBufferType.V2TXLiveBufferTypeTexture) {
            c("setVideoFrameObserver: use texture render.");
            this.c.setVideoRawDataListener(null);
            this.c.setVideoRenderListener(z ? this : null, null);
            return 0;
        } else {
            this.c.setVideoRawDataListener(null);
            this.c.setVideoRenderListener(null, null);
            d("setVideoFrameObserver: format or type isn't support. force clean observer. format-" + v2TXLivePixelFormat + " type-" + v2TXLiveBufferType);
            return -4;
        }
    }

    @Override // com.tencent.live2.V2TXLivePlayer
    public int snapshot() {
        this.c.snapshot(new TXLivePlayer.ITXSnapshotListener() { // from class: com.tencent.live2.a.a.1
            @Override // com.tencent.rtmp.TXLivePlayer.ITXSnapshotListener
            public void onSnapshot(Bitmap bitmap) {
                V2TXLivePlayerObserver v2TXLivePlayerObserver = a.this.k;
                if (v2TXLivePlayerObserver != null) {
                    v2TXLivePlayerObserver.onSnapshotComplete(a.this.b, bitmap);
                }
            }
        });
        return 0;
    }

    @Override // com.tencent.live2.V2TXLivePlayer
    public void showDebugView(boolean z) {
        this.l = z;
        TXCloudVideoView tXCloudVideoView = this.m;
        if (tXCloudVideoView != null) {
            tXCloudVideoView.showLog(z);
        }
    }

    @Override // com.tencent.rtmp.TXLivePlayer.ITXLivePlayVideoRenderListener
    public void onRenderVideoFrame(TXLivePlayer.TXLiteAVTexture tXLiteAVTexture) {
        V2TXLivePlayerObserver v2TXLivePlayerObserver = this.k;
        if (v2TXLivePlayerObserver != null && tXLiteAVTexture != null) {
            V2TXLiveDef.V2TXLiveVideoFrame v2TXLiveVideoFrame = new V2TXLiveDef.V2TXLiveVideoFrame();
            v2TXLiveVideoFrame.pixelFormat = V2TXLiveDef.V2TXLivePixelFormat.V2TXLivePixelFormatTexture2D;
            v2TXLiveVideoFrame.bufferType = V2TXLiveDef.V2TXLiveBufferType.V2TXLiveBufferTypeTexture;
            v2TXLiveVideoFrame.width = tXLiteAVTexture.width;
            v2TXLiveVideoFrame.height = tXLiteAVTexture.height;
            v2TXLiveVideoFrame.rotation = 0;
            v2TXLiveVideoFrame.texture = new V2TXLiveDef.V2TXLiveTexture();
            v2TXLiveVideoFrame.texture.textureId = tXLiteAVTexture.textureId;
            if (tXLiteAVTexture.eglContext instanceof EGLContext) {
                v2TXLiveVideoFrame.texture.eglContext10 = (EGLContext) tXLiteAVTexture.eglContext;
            } else if (TXCBuild.VersionInt() >= 17 && (tXLiteAVTexture.eglContext instanceof android.opengl.EGLContext)) {
                v2TXLiveVideoFrame.texture.eglContext14 = (android.opengl.EGLContext) tXLiteAVTexture.eglContext;
            }
            v2TXLivePlayerObserver.onRenderVideoFrame(this.b, v2TXLiveVideoFrame);
        }
    }

    @Override // com.tencent.rtmp.TXLivePlayer.ITXVideoRawDataListener
    public void onVideoRawDataAvailable(byte[] bArr, int i, int i2, int i3) {
        V2TXLivePlayerObserver v2TXLivePlayerObserver = this.k;
        if (v2TXLivePlayerObserver != null) {
            V2TXLiveDef.V2TXLiveVideoFrame v2TXLiveVideoFrame = new V2TXLiveDef.V2TXLiveVideoFrame();
            v2TXLiveVideoFrame.pixelFormat = V2TXLiveDef.V2TXLivePixelFormat.V2TXLivePixelFormatI420;
            v2TXLiveVideoFrame.bufferType = V2TXLiveDef.V2TXLiveBufferType.V2TXLiveBufferTypeByteArray;
            v2TXLiveVideoFrame.data = bArr;
            v2TXLiveVideoFrame.width = i;
            v2TXLiveVideoFrame.height = i2;
            v2TXLiveVideoFrame.rotation = 0;
            v2TXLivePlayerObserver.onRenderVideoFrame(this.b, v2TXLiveVideoFrame);
        }
    }

    @Override // com.tencent.rtmp.TXLivePlayer.ITXAudioRawDataListener
    public void onAudioInfoChanged(int i, int i2, int i3) {
        c("onAudioInfoChanged: sampleRate-" + i + " channels-" + i2 + " bits-" + i3);
    }

    @Override // com.tencent.rtmp.TXLivePlayer.ITXAudioVolumeEvaluationListener
    public void onAudioVolumeEvaluationNotify(int i) {
        V2TXLivePlayerObserver v2TXLivePlayerObserver = this.k;
        if (v2TXLivePlayerObserver != null) {
            v2TXLivePlayerObserver.onPlayoutVolumeUpdate(this.b, i);
        }
    }

    @Override // com.tencent.rtmp.ITXLivePlayListener
    public void onPlayEvent(int i, Bundle bundle) {
        c("onPlayEvent event:" + i + " param:" + bundle);
        V2TXLivePlayerObserver v2TXLivePlayerObserver = this.k;
        if (i == -2301) {
            d("onPlayEvent: stop play because of disconnect.");
            a();
            if (v2TXLivePlayerObserver != null) {
                Bundle bundle2 = new Bundle();
                if (bundle != null && bundle.containsKey("reason")) {
                    bundle2.putInt("reason", bundle.getInt("reason"));
                }
                v2TXLivePlayerObserver.onError(this.b, -8, "The network is disconnected, and the rescue is invalid after multiple reconnections", bundle2);
            }
        } else if (i != 2001) {
            if (i != 2007) {
                if (i != 2009) {
                    if (i != 2012) {
                        if (i != 2026) {
                            if (i != 2105) {
                                if (i != 2003) {
                                    if (i == 2004 && this.h) {
                                        c("onPlayEvent: loading finish.");
                                        this.h = false;
                                        if (v2TXLivePlayerObserver != null) {
                                            if (this.f) {
                                                v2TXLivePlayerObserver.onAudioPlaying(this.b, false, new Bundle());
                                            }
                                            if (this.e) {
                                                v2TXLivePlayerObserver.onVideoPlaying(this.b, false, new Bundle());
                                            }
                                        }
                                    }
                                } else if (!this.e) {
                                    c("onPlayEvent: onRecvFirstVideoFrame.");
                                    this.e = true;
                                    if (v2TXLivePlayerObserver != null) {
                                        v2TXLivePlayerObserver.onVideoPlaying(this.b, true, new Bundle());
                                    }
                                }
                            } else if (v2TXLivePlayerObserver != null) {
                                Bundle bundle3 = new Bundle();
                                bundle3.putLong("EVT_UTC_TIME", bundle.getLong("EVT_UTC_TIME"));
                                bundle3.putLong("EVT_BLOCK_DURATION", bundle.getLong("EVT_BLOCK_DURATION"));
                                bundle3.putCharSequence("EVT_MSG", bundle.getCharSequence("EVT_MSG"));
                                v2TXLivePlayerObserver.onWarning(this.b, 2105, "player video block happen.", bundle3);
                            }
                        } else if (!this.f) {
                            c("onPlayEvent: onRecvFirstAudioFrame.");
                            this.f = true;
                            if (v2TXLivePlayerObserver != null) {
                                v2TXLivePlayerObserver.onAudioPlaying(this.b, true, new Bundle());
                            }
                        }
                    } else if (v2TXLivePlayerObserver != null) {
                        v2TXLivePlayerObserver.onReceiveSeiMessage(this.b, this.q, bundle.getByteArray("EVT_GET_MSG"));
                    }
                } else if (v2TXLivePlayerObserver != null) {
                    v2TXLivePlayerObserver.onVideoResolutionChanged(this.b, bundle.getInt("EVT_PARAM1"), bundle.getInt("EVT_PARAM2"));
                }
            } else if (!this.h) {
                c("onPlayEvent: loading start.");
                this.h = true;
                if (v2TXLivePlayerObserver != null) {
                    if (this.e) {
                        v2TXLivePlayerObserver.onVideoLoading(this.b, new Bundle());
                    }
                    if (this.f) {
                        v2TXLivePlayerObserver.onAudioLoading(this.b, new Bundle());
                    }
                }
            }
        } else if (!this.r) {
            this.r = true;
            if (v2TXLivePlayerObserver != null) {
                Bundle bundle4 = new Bundle();
                if (bundle != null && bundle.size() > 0 && bundle.containsKey("serverip")) {
                    bundle4.putString("serverip", bundle.getString("serverip", ""));
                }
                this.k.onConnected(this.b, bundle4);
            }
        }
        if (v2TXLivePlayerObserver != null && (v2TXLivePlayerObserver instanceof com.tencent.live2.impl.a.a)) {
            ((com.tencent.live2.impl.a.a) v2TXLivePlayerObserver).a(i, bundle);
        }
    }

    @Override // com.tencent.rtmp.ITXLivePlayListener
    public void onNetStatus(Bundle bundle) {
        try {
            int[] a = h.a();
            if (a != null && a.length == 2) {
                this.i.appCpu = a[0] / 10;
                this.i.systemCpu = a[1] / 10;
            }
            this.i.width = bundle.getInt("VIDEO_WIDTH");
            this.i.height = bundle.getInt("VIDEO_HEIGHT");
            this.i.fps = bundle.getInt("VIDEO_FPS");
            this.i.videoBitrate = bundle.getInt("VIDEO_BITRATE");
            this.i.audioBitrate = bundle.getInt("AUDIO_BITRATE");
        } catch (Exception unused) {
        }
        V2TXLivePlayerObserver v2TXLivePlayerObserver = this.k;
        if (v2TXLivePlayerObserver != null) {
            v2TXLivePlayerObserver.onStatisticsUpdate(this.b, this.i);
        }
        if (v2TXLivePlayerObserver != null && (v2TXLivePlayerObserver instanceof com.tencent.live2.impl.a.a)) {
            ((com.tencent.live2.impl.a.a) v2TXLivePlayerObserver).a(bundle);
        }
    }

    private void a() {
        c("stopPlayInner: ");
        this.e = false;
        this.f = false;
        this.h = false;
        this.g = false;
        this.i = new V2TXLiveDef.V2TXLivePlayerStatistics();
        c();
        this.c.stopPlay(true);
    }

    private int b(String str) {
        if (this.p != -1) {
            c("force set url type:" + this.p);
            return this.p;
        } else if (str != null && str.startsWith("rtmp")) {
            return 0;
        } else {
            return 1;
        }
    }

    private void b() {
        TXCloudVideoView tXCloudVideoView = this.m;
        TextureView textureView = this.n;
        SurfaceView surfaceView = this.o;
        if (tXCloudVideoView != null) {
            c("bindRenderView: cloud view.");
            this.c.setSurface(null);
            this.c.setSurfaceSize(0, 0);
            this.c.setPlayerView(tXCloudVideoView);
        } else if (textureView != null) {
            c("bindRenderView: texture view.");
            this.c.setPlayerView(null);
            SurfaceTexture surfaceTexture = textureView.getSurfaceTexture();
            textureView.setSurfaceTextureListener(this);
            if (surfaceTexture != null) {
                c("bindRenderView: surface texture is valid, set into player.");
                this.c.setSurface(new Surface(surfaceTexture));
                this.c.setSurfaceSize(textureView.getWidth(), textureView.getHeight());
            }
        } else if (surfaceView != null) {
            c("bindRenderView: surface view.");
            this.c.setPlayerView(null);
            surfaceView.getHolder().addCallback(this);
            Surface surface = surfaceView.getHolder().getSurface();
            if (surface.isValid()) {
                c("bindRenderView: surface is valid, set into player.");
                this.c.setSurface(surface);
                this.c.setSurfaceSize(surfaceView.getWidth(), surfaceView.getHeight());
            }
        } else {
            d("bindRender: all view is null, bind fail.");
        }
    }

    private void c() {
        TextureView textureView = this.n;
        if (textureView != null) {
            c("unbindRenderView: unbind texture view.");
            textureView.setSurfaceTextureListener(null);
            this.c.setSurface(null);
            this.c.setSurfaceSize(0, 0);
        }
        SurfaceView surfaceView = this.o;
        if (surfaceView != null) {
            c("unbindRenderView: unbind surface view.");
            surfaceView.getHolder().removeCallback(this);
            this.c.setSurface(null);
            this.c.setSurfaceSize(0, 0);
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        c("SurfaceView: onCreate.");
        this.c.setSurface(surfaceHolder.getSurface());
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        c("SurfaceView: onSizeChanged.");
        this.c.setSurfaceSize(i2, i3);
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        c("SurfaceView: onDestroyed.");
        this.c.setSurface(null);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        c("TextureView: available width-" + i + " height-" + i2);
        if (surfaceTexture != null) {
            this.c.setSurface(new Surface(surfaceTexture));
        }
        this.c.setSurfaceSize(i, i2);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        c("TextureView: size changed width-" + i + " height-" + i2);
        this.c.setSurfaceSize(i, i2);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        c("TextureView: destroyed.");
        this.c.setSurface(null);
        return false;
    }

    private void c(String str) {
        TXCLog.i("V2-TXRTMPPlayerImpl", "v2_api_rtmp_player(" + this + ") " + str);
    }

    private void d(String str) {
        TXCLog.e("V2-TXRTMPPlayerImpl", "v2_api_rtmp_player(" + this + ") " + str);
    }

    private void e(String str) {
        TXCLog.w("V2-TXRTMPPlayerImpl", "v2_api_rtmp_player(" + this + ") " + str);
    }

    @Override // java.lang.Object
    public String toString() {
        return "@" + Integer.toHexString(hashCode());
    }

    public static int a(String str) {
        return (str.startsWith("rtmp://") || str.startsWith("room://") || str.startsWith("http://") || str.startsWith("https://")) ? 0 : -2;
    }
}
