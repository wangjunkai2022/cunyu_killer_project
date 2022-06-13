package com.tencent.rtmp;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.Surface;
import android.view.TextureView;
import com.tencent.liteav.basic.c.b;
import com.tencent.liteav.basic.datareport.TXCDRApi;
import com.tencent.liteav.basic.log.TXCLog;
import com.tencent.liteav.basic.util.TXCBuild;
import com.tencent.liteav.basic.util.TXCCommonUtil;
import com.tencent.liteav.basic.util.TXCTimeUtil;
import com.tencent.liteav.d;
import com.tencent.liteav.h;
import com.tencent.liteav.network.g;
import com.tencent.liteav.network.i;
import com.tencent.liteav.network.j;
import com.tencent.liteav.network.m;
import com.tencent.liteav.txcvodplayer.TextureRenderView;
import com.tencent.rtmp.TXLivePlayer;
import com.tencent.rtmp.ui.TXCloudVideoView;
import java.util.ArrayList;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class TXVodPlayer implements b, j {
    public static final int INDEX_AUTO = -1;
    public static final int PLAYER_TYPE_IJK = 1;
    public static final int PLAYER_TYPE_THUMB = 2;
    public static final String TAG = "TXVodPlayer";
    private TXVodPlayConfig mConfig;
    private Context mContext;
    private boolean mIsGetPlayInfo;
    private boolean mLoop;
    private boolean mMirror;
    private i mNetApi;
    private final h mPlayer;
    private int mRenderMode;
    private int mRenderRotation;
    protected float mStartTime;
    private Surface mSurface;
    private TXCloudVideoView mTXCloudVideoView;
    private TextureRenderView mTextureView;
    private String mToken;
    private boolean mEnableHWDec = false;
    private String mPlayUrl = "";
    private boolean mMute = false;
    private int mAudioPlayoutVolume = -1;
    private boolean mIsGainAudioFocus = true;
    private boolean mAutoPlay = true;
    private float mRate = 1.0f;
    private boolean mSnapshotRunning = false;
    private int mBitrateIndex = -1000;
    private boolean mIsStoped = false;
    private ITXLivePlayListener mListener = null;
    private ITXVodPlayListener mNewListener = null;

    public TXVodPlayer(Context context) {
        this.mContext = context.getApplicationContext();
        TXCCommonUtil.setAppContext(this.mContext);
        TXCLog.init();
        this.mPlayer = new h(this.mContext);
    }

    public void setConfig(TXVodPlayConfig tXVodPlayConfig) {
        this.mConfig = tXVodPlayConfig;
        if (this.mConfig == null) {
            this.mConfig = new TXVodPlayConfig();
        }
        h hVar = this.mPlayer;
        if (hVar != null) {
            d w = hVar.w();
            if (w == null) {
                w = new d();
            }
            w.e = this.mConfig.mConnectRetryCount;
            w.f = this.mConfig.mConnectRetryInterval;
            w.r = this.mConfig.mTimeout;
            w.h = this.mEnableHWDec;
            w.n = this.mConfig.mCacheFolderPath;
            w.o = this.mConfig.mMaxCacheItems;
            w.p = this.mConfig.mPlayerType;
            w.q = this.mConfig.mHeaders;
            w.s = this.mConfig.enableAccurateSeek;
            w.t = this.mConfig.autoRotate;
            w.u = this.mConfig.smoothSwitchBitrate;
            w.v = this.mConfig.cacheMp4ExtName;
            w.w = this.mConfig.progressInterval;
            w.x = this.mConfig.maxBufferSize;
            w.y = this.mConfig.maxPreloadSize;
            w.z = this.mConfig.mFirstStartPlayBufferTime;
            w.A = this.mConfig.mNextStartPlayBufferTime;
            w.C = this.mConfig.mOverlayKey;
            w.D = this.mConfig.mOverlayIv;
            w.E = this.mConfig.mExtInfoMap;
            w.F = this.mConfig.mEnableRenderProcess;
            w.G = this.mConfig.mPreferredResolution;
            TXCLog.i("TXVodPlayer", "setConfig [connectRetryCount:" + this.mConfig.mConnectRetryCount + "(default 3 times)][connectRetryInterval:" + this.mConfig.mConnectRetryInterval + "(default 3s,min:3s max:30s)][vodTimeout:" + this.mConfig.mTimeout + "(default 10s)][enableHardwareDecoder:" + this.mEnableHWDec + "(default false)][cacheFolderPath for mp4/HLS:" + this.mConfig.mCacheFolderPath + "][maxCacheItems:" + this.mConfig.mMaxCacheItems + "][enableAccurateSeek:" + this.mConfig.enableAccurateSeek + "(default true)][autoRotate:" + this.mConfig.autoRotate + "(default true)][HLS smoothSwitchBitrate:" + this.mConfig.smoothSwitchBitrate + "(default false)][progressInterval:" + this.mConfig.progressInterval + "(default 0.5s)][preload maxBufferSize:" + this.mConfig.maxBufferSize + "][firstStartPlayBufferTime:" + this.mConfig.mFirstStartPlayBufferTime + "][nextStartPlayBufferTime:" + this.mConfig.mNextStartPlayBufferTime + "]" + this.mConfig.smoothSwitchBitrate + "(default false)][progressInterval:" + this.mConfig.progressInterval + "(default 0.5s)][preload maxBufferSize:" + this.mConfig.maxBufferSize + "][mOverlayKey for HLS Encrypt:" + this.mConfig.mOverlayKey + "][mOverlayIv for HLS Encrypt:" + this.mConfig.mOverlayIv + "][mEnableRenderProcess:" + this.mConfig.mEnableRenderProcess + "][mPreferredResolution:" + this.mConfig.mPreferredResolution + "]");
            this.mPlayer.a(w);
        }
    }

    public void setPlayerView(TXCloudVideoView tXCloudVideoView) {
        TXCLog.i("TXVodPlayer", "setPlayerView TXCloudVideoView:" + tXCloudVideoView);
        this.mTXCloudVideoView = tXCloudVideoView;
        h hVar = this.mPlayer;
        if (hVar != null) {
            hVar.a(tXCloudVideoView);
        }
    }

    public void setPlayerView(TextureRenderView textureRenderView) {
        TXCLog.i("TXVodPlayer", "setPlayerView TextureRenderView:" + textureRenderView);
        this.mTextureView = textureRenderView;
        h hVar = this.mPlayer;
        if (hVar != null) {
            hVar.a(textureRenderView);
        }
    }

    public void setSurface(Surface surface) {
        TXCLog.i("TXVodPlayer", "setSurface Surface:" + surface);
        this.mSurface = surface;
        h hVar = this.mPlayer;
        if (hVar != null) {
            hVar.a(this.mSurface);
        }
    }

    public int startPlay(String str) {
        String path;
        if (str == null || TextUtils.isEmpty(str)) {
            TXCLog.i("TXVodPlayer", "startPlay playUrl is empty");
            return -1;
        }
        TXCDRApi.initCrashReport(this.mContext);
        int i = this.mBitrateIndex;
        stopPlay(false);
        this.mBitrateIndex = i;
        if (!(this.mToken == null || (path = Uri.parse(str).getPath()) == null)) {
            String[] split = path.split("/");
            if (split.length > 0) {
                int lastIndexOf = str.lastIndexOf(split[split.length - 1]);
                str = str.substring(0, lastIndexOf) + "voddrm.token." + this.mToken + "." + str.substring(lastIndexOf);
            }
        }
        this.mPlayUrl = checkPlayUrl(str);
        TXCLog.i("TXVodPlayer", "===========================================================================================================================================================");
        TXCLog.i("TXVodPlayer", "===========================================================================================================================================================");
        TXCLog.i("TXVodPlayer", "=====  StartPlay url = " + this.mPlayUrl + " SDKVersion = " + TXCCommonUtil.getSDKID() + " , " + TXCCommonUtil.getSDKVersionStr() + "    ====== player=" + hashCode());
        TXCLog.i("TXVodPlayer", "===========================================================================================================================================================");
        TXCLog.i("TXVodPlayer", "===========================================================================================================================================================");
        updateConfig();
        TXCloudVideoView tXCloudVideoView = this.mTXCloudVideoView;
        if (tXCloudVideoView != null) {
            tXCloudVideoView.clearLog();
            this.mTXCloudVideoView.setVisibility(0);
            this.mPlayer.a(this.mTXCloudVideoView);
        } else {
            Surface surface = this.mSurface;
            if (surface != null) {
                this.mPlayer.a(surface);
            } else {
                TextureRenderView textureRenderView = this.mTextureView;
                if (textureRenderView != null) {
                    this.mPlayer.a(textureRenderView);
                }
            }
        }
        int i2 = this.mBitrateIndex;
        if (i2 != -1000) {
            this.mPlayer.h(i2);
        }
        this.mPlayer.a((b) this);
        this.mPlayer.d(this.mIsGainAudioFocus);
        this.mPlayer.e(this.mAutoPlay);
        this.mPlayer.c(this.mStartTime);
        this.mPlayer.a(this.mPlayUrl, 0);
        this.mPlayer.b(this.mMute);
        int i3 = this.mAudioPlayoutVolume;
        if (i3 >= 0) {
            this.mPlayer.g(i3);
        }
        this.mPlayer.b(this.mRate);
        this.mPlayer.b(this.mRenderRotation);
        this.mPlayer.a(this.mRenderMode);
        this.mPlayer.f(this.mLoop);
        setMirror(this.mMirror);
        return 0;
    }

    @Deprecated
    public int startPlay(TXPlayerAuthBuilder tXPlayerAuthBuilder) {
        this.mNetApi = new i();
        this.mNetApi.a(tXPlayerAuthBuilder.isHttps);
        this.mNetApi.a(this);
        TXCLog.i("TXVodPlayer", "startPlay [FileId:" + tXPlayerAuthBuilder.fileId + "][Timeout:" + tXPlayerAuthBuilder.timeout + "][Unique identification request:" + tXPlayerAuthBuilder.us + "][Trial duration:" + tXPlayerAuthBuilder.exper + "][Sign:" + tXPlayerAuthBuilder.sign + "]");
        return this.mNetApi.a(tXPlayerAuthBuilder.appId, tXPlayerAuthBuilder.fileId, tXPlayerAuthBuilder.timeout, tXPlayerAuthBuilder.us, tXPlayerAuthBuilder.exper, tXPlayerAuthBuilder.sign);
    }

    public void startPlay(b bVar) {
        if (bVar != null) {
            this.mIsStoped = false;
            new g(bVar).a(new g.a() { // from class: com.tencent.rtmp.TXVodPlayer.1
                @Override // com.tencent.liteav.network.g.a
                public void a(g gVar, b bVar2) {
                    String str;
                    TXLog.i("TXVodPlayer", "onSuccess: protocol params = " + bVar2.toString());
                    if (!TXVodPlayer.this.mIsStoped) {
                        if (!TextUtils.isEmpty(bVar2.c) && !TextUtils.isEmpty(gVar.h()) && !TextUtils.isEmpty(gVar.i())) {
                            if (TXVodPlayer.this.mConfig == null) {
                                TXVodPlayer.this.mConfig = new TXVodPlayConfig();
                            }
                            TXVodPlayer.this.mConfig.setOverlayKey(gVar.h());
                            TXVodPlayer.this.mConfig.setOverlayIv(gVar.i());
                        }
                        String a = gVar.a();
                        if (!TextUtils.isEmpty(a)) {
                            if (gVar.c() != null) {
                                TXVodPlayer.this.setToken(gVar.c());
                            } else {
                                TXVodPlayer.this.setToken(null);
                            }
                            Uri parse = Uri.parse(a);
                            String query = parse.getQuery();
                            if (TextUtils.isEmpty(query)) {
                                str = "";
                            } else {
                                str = query + "&";
                            }
                            String k = gVar.k();
                            if (TextUtils.isEmpty(k)) {
                                k = "plain";
                            }
                            Uri build = parse.buildUpon().query(str + "spfileid=" + bVar2.b() + "&spdrmtype=" + k + "&spappid=" + bVar2.a()).build();
                            StringBuilder sb = new StringBuilder();
                            sb.append("playVodURL: newurl = ");
                            sb.append(build.toString());
                            sb.append(" ;url= ");
                            sb.append(a);
                            TXCLog.i("TXVodPlayer", sb.toString());
                            TXVodPlayer.this.startPlay(build.toString());
                        }
                        Bundle bundle = new Bundle();
                        bundle.putInt("EVT_ID", 2010);
                        bundle.putLong("EVT_TIME", TXCTimeUtil.getTimeTick());
                        bundle.putLong("EVT_UTC_TIME", TXCTimeUtil.getUtcTimeTick());
                        bundle.putString("EVT_MSG", "Requested file information successfully");
                        bundle.putString("EVT_PLAY_URL", a);
                        bundle.putString("EVT_PLAY_COVER_URL", gVar.b());
                        bundle.putString("EVT_PLAY_NAME", gVar.d());
                        bundle.putString("EVT_PLAY_DESCRIPTION", gVar.e());
                        bundle.putInt("EVT_PLAY_DURATION", gVar.f());
                        TXVodPlayer.this.onNotifyEvent(2010, bundle);
                        TXCLog.i("TXVodPlayer", "onSuccess: Requested file information successfully");
                    }
                }

                @Override // com.tencent.liteav.network.g.a
                public void a(int i, String str) {
                    TXLog.w("TXVodPlayer", "onFail: errorCode = " + i + " message = " + str);
                    Bundle bundle = new Bundle();
                    bundle.putInt("EVT_ID", -2306);
                    bundle.putLong("EVT_TIME", TXCTimeUtil.getTimeTick());
                    bundle.putLong("EVT_UTC_TIME", TXCTimeUtil.getUtcTimeTick());
                    bundle.putString("EVT_MSG", str);
                    bundle.putInt("EVT_PARAM1", i);
                    TXVodPlayer.this.onNotifyEvent(-2306, bundle);
                    TXCLog.i("TXVodPlayer", "onError: eventId: -2306 description:" + str);
                }
            });
        }
    }

    private String checkPlayUrl(String str) {
        if (str.startsWith("http")) {
            str = TXCCommonUtil.tryEncodeUrl(str);
        }
        return str.trim();
    }

    public int stopPlay(boolean z) {
        TXCloudVideoView tXCloudVideoView;
        TXCLog.i("TXVodPlayer", "stopPlay needClearLastImg:" + z + " player=" + hashCode());
        if (z && (tXCloudVideoView = this.mTXCloudVideoView) != null) {
            tXCloudVideoView.setVisibility(8);
        }
        h hVar = this.mPlayer;
        if (hVar != null) {
            hVar.a(z);
        }
        this.mPlayUrl = "";
        i iVar = this.mNetApi;
        if (iVar != null) {
            iVar.a((j) null);
            this.mNetApi = null;
        }
        this.mBitrateIndex = -1000;
        this.mIsGetPlayInfo = false;
        this.mIsStoped = true;
        return 0;
    }

    public boolean isPlaying() {
        h hVar = this.mPlayer;
        if (hVar != null) {
            return hVar.c();
        }
        return false;
    }

    public void pause() {
        TXCLog.i("TXVodPlayer", "pause player=" + hashCode());
        h hVar = this.mPlayer;
        if (hVar != null) {
            hVar.a();
        }
    }

    public void resume() {
        TXCLog.i("TXVodPlayer", "resume player=" + hashCode());
        h hVar = this.mPlayer;
        if (hVar != null) {
            hVar.b();
        }
    }

    public void seek(int i) {
        h hVar = this.mPlayer;
        if (hVar != null) {
            hVar.f(i);
        }
    }

    public void seek(float f) {
        h hVar = this.mPlayer;
        if (hVar != null) {
            hVar.a(f);
        }
    }

    public float getCurrentPlaybackTime() {
        h hVar = this.mPlayer;
        if (hVar != null) {
            return hVar.i();
        }
        return 0.0f;
    }

    public float getBufferDuration() {
        h hVar = this.mPlayer;
        if (hVar != null) {
            return hVar.k();
        }
        return 0.0f;
    }

    public float getDuration() {
        h hVar = this.mPlayer;
        if (hVar != null) {
            return hVar.l();
        }
        return 0.0f;
    }

    public float getPlayableDuration() {
        h hVar = this.mPlayer;
        if (hVar != null) {
            return hVar.m();
        }
        return 0.0f;
    }

    public int getWidth() {
        h hVar = this.mPlayer;
        if (hVar != null) {
            return hVar.n();
        }
        return 0;
    }

    public int getHeight() {
        h hVar = this.mPlayer;
        if (hVar != null) {
            return hVar.o();
        }
        return 0;
    }

    @Deprecated
    public void setPlayListener(ITXLivePlayListener iTXLivePlayListener) {
        this.mListener = iTXLivePlayListener;
    }

    public void setVodListener(ITXVodPlayListener iTXVodPlayListener) {
        this.mNewListener = iTXVodPlayListener;
    }

    public void setRenderMode(int i) {
        this.mRenderMode = i;
        h hVar = this.mPlayer;
        if (hVar != null) {
            hVar.a(i);
        }
    }

    public void setRenderRotation(int i) {
        this.mRenderRotation = i;
        h hVar = this.mPlayer;
        if (hVar != null) {
            hVar.b(i);
        }
    }

    public boolean enableHardwareDecode(boolean z) {
        if (z) {
            if (TXCBuild.VersionInt() < 18) {
                TXCLog.e("HardwareDecode", "enableHardwareDecode failed, android system build.version = " + TXCBuild.VersionInt() + ", the minimum build.version should be 18(android 4.3 or later)");
                return false;
            } else if (isAVCDecBlacklistDevices()) {
                TXCLog.e("HardwareDecode", "enableHardwareDecode failed, MANUFACTURER = " + TXCBuild.Manufacturer() + ", MODEL" + TXCBuild.Model());
                return false;
            }
        }
        this.mEnableHWDec = z;
        updateConfig();
        return true;
    }

    public void setMute(boolean z) {
        TXCLog.i("TXVodPlayer", "setMute:" + z);
        this.mMute = z;
        h hVar = this.mPlayer;
        if (hVar != null) {
            hVar.b(z);
        }
    }

    public void setAudioPlayoutVolume(int i) {
        TXCLog.i("TXVodPlayer", "setAudioPlayoutVolume:" + i);
        this.mAudioPlayoutVolume = i;
        h hVar = this.mPlayer;
        if (hVar != null) {
            hVar.g(i);
        }
    }

    public boolean setRequestAudioFocus(boolean z) {
        this.mIsGainAudioFocus = z;
        h hVar = this.mPlayer;
        if (hVar != null) {
            return hVar.d(z);
        }
        return true;
    }

    public void setAutoPlay(boolean z) {
        TXCLog.i("TXVodPlayer", "setAutoPlay:" + z);
        this.mAutoPlay = z;
        h hVar = this.mPlayer;
        if (hVar != null) {
            hVar.e(z);
        }
    }

    public void setRate(float f) {
        this.mRate = f;
        h hVar = this.mPlayer;
        if (hVar != null) {
            hVar.b(f);
        }
    }

    public int getBitrateIndex() {
        h hVar = this.mPlayer;
        if (hVar != null) {
            return hVar.p();
        }
        return 0;
    }

    public void setBitrateIndex(int i) {
        h hVar = this.mPlayer;
        if (hVar != null) {
            hVar.h(i);
        }
        this.mBitrateIndex = i;
    }

    public ArrayList<TXBitrateItem> getSupportedBitrates() {
        h hVar = this.mPlayer;
        if (hVar != null) {
            return hVar.q();
        }
        return new ArrayList<>();
    }

    public void snapshot(TXLivePlayer.ITXSnapshotListener iTXSnapshotListener) {
        Bitmap bitmap;
        if (!this.mSnapshotRunning && iTXSnapshotListener != null) {
            this.mSnapshotRunning = true;
            h hVar = this.mPlayer;
            TextureView d = hVar != null ? hVar.d() : null;
            if (d != null) {
                Bitmap bitmap2 = d.getBitmap();
                if (bitmap2 != null) {
                    Matrix transform = d.getTransform(null);
                    if (this.mMirror) {
                        transform.postScale(-1.0f, 1.0f);
                    }
                    bitmap = Bitmap.createBitmap(bitmap2, 0, 0, bitmap2.getWidth(), bitmap2.getHeight(), transform, true);
                    bitmap2.recycle();
                } else {
                    bitmap = bitmap2;
                }
                postBitmapToMainThread(iTXSnapshotListener, bitmap);
                return;
            }
            this.mSnapshotRunning = false;
        }
    }

    public void setMirror(boolean z) {
        TXCLog.i("TXVodPlayer", "setMirror:" + z);
        h hVar = this.mPlayer;
        if (hVar != null) {
            hVar.g(z);
        }
        this.mMirror = z;
    }

    public void setStartTime(float f) {
        this.mStartTime = f;
    }

    @Override // com.tencent.liteav.basic.c.b
    public void onNotifyEvent(int i, Bundle bundle) {
        if (i == 15001) {
            TXCloudVideoView tXCloudVideoView = this.mTXCloudVideoView;
            if (tXCloudVideoView != null) {
                tXCloudVideoView.setLogText(bundle, null, 0);
            }
            ITXLivePlayListener iTXLivePlayListener = this.mListener;
            if (iTXLivePlayListener != null) {
                iTXLivePlayListener.onNetStatus(bundle);
            }
            ITXVodPlayListener iTXVodPlayListener = this.mNewListener;
            if (iTXVodPlayListener != null) {
                iTXVodPlayListener.onNetStatus(this, bundle);
                return;
            }
            return;
        }
        TXCloudVideoView tXCloudVideoView2 = this.mTXCloudVideoView;
        if (tXCloudVideoView2 != null) {
            tXCloudVideoView2.setLogText(null, bundle, i);
        }
        ITXLivePlayListener iTXLivePlayListener2 = this.mListener;
        if (iTXLivePlayListener2 != null) {
            iTXLivePlayListener2.onPlayEvent(i, bundle);
        }
        ITXVodPlayListener iTXVodPlayListener2 = this.mNewListener;
        if (iTXVodPlayListener2 != null) {
            iTXVodPlayListener2.onPlayEvent(this, i, bundle);
        }
    }

    private boolean isAVCDecBlacklistDevices() {
        return TXCBuild.Manufacturer().equalsIgnoreCase("HUAWEI") && TXCBuild.Model().equalsIgnoreCase("Che2-TL00");
    }

    private void postBitmapToMainThread(final TXLivePlayer.ITXSnapshotListener iTXSnapshotListener, final Bitmap bitmap) {
        if (iTXSnapshotListener != null) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.tencent.rtmp.TXVodPlayer.2
                @Override // java.lang.Runnable
                public void run() {
                    TXLivePlayer.ITXSnapshotListener iTXSnapshotListener2 = iTXSnapshotListener;
                    if (iTXSnapshotListener2 != null) {
                        iTXSnapshotListener2.onSnapshot(bitmap);
                    }
                    TXVodPlayer.this.mSnapshotRunning = false;
                }
            });
        }
    }

    void updateConfig() {
        setConfig(this.mConfig);
    }

    @Override // com.tencent.liteav.network.j
    public void onNetSuccess(i iVar) {
        if (iVar == this.mNetApi) {
            m a = iVar.a();
            if (!this.mIsGetPlayInfo) {
                startPlay(a.a());
            }
            this.mIsGetPlayInfo = false;
            Bundle bundle = new Bundle();
            bundle.putInt("EVT_ID", 2010);
            bundle.putLong("EVT_TIME", TXCTimeUtil.getTimeTick());
            bundle.putLong("EVT_UTC_TIME", TXCTimeUtil.getUtcTimeTick());
            bundle.putString("EVT_MSG", "Requested file information successfully");
            bundle.putString("EVT_PLAY_URL", a.a());
            bundle.putString("EVT_PLAY_COVER_URL", a.d());
            bundle.putString("EVT_PLAY_NAME", a.h());
            bundle.putString("EVT_PLAY_DESCRIPTION", a.i());
            if (a.f() != null) {
                bundle.putInt("EVT_PLAY_DURATION", a.f().c());
            }
            onNotifyEvent(2010, bundle);
            TXCLog.i("TXVodPlayer", "onNetSuccess: Requested file information successfully");
        }
    }

    @Override // com.tencent.liteav.network.j
    public void onNetFailed(i iVar, String str, int i) {
        if (iVar == this.mNetApi) {
            this.mIsGetPlayInfo = false;
            Bundle bundle = new Bundle();
            bundle.putInt("EVT_ID", -2306);
            bundle.putLong("EVT_TIME", TXCTimeUtil.getTimeTick());
            bundle.putLong("EVT_UTC_TIME", TXCTimeUtil.getUtcTimeTick());
            bundle.putString("EVT_MSG", str);
            bundle.putInt("EVT_PARAM1", i);
            onNotifyEvent(-2306, bundle);
            TXCLog.i("TXVodPlayer", "onNetFailed: eventId: -2306 description:" + str);
        }
    }

    public void setToken(String str) {
        this.mToken = str;
    }

    public void setLoop(boolean z) {
        TXCLog.i("TXVodPlayer", "setLoop:" + z);
        this.mLoop = z;
        h hVar = this.mPlayer;
        if (hVar != null) {
            hVar.f(this.mLoop);
        }
    }

    public boolean isLoop() {
        return this.mLoop;
    }

    public void attachTRTC(Object obj) {
        h hVar = this.mPlayer;
        if (hVar != null) {
            hVar.a(obj);
        }
    }

    public void detachTRTC() {
        h hVar = this.mPlayer;
        if (hVar != null) {
            hVar.r();
        }
    }

    public void publishVideo() {
        h hVar = this.mPlayer;
        if (hVar != null) {
            hVar.s();
        }
    }

    public void unpublishVideo() {
        h hVar = this.mPlayer;
        if (hVar != null) {
            hVar.t();
        }
    }

    public void publishAudio() {
        h hVar = this.mPlayer;
        if (hVar != null) {
            hVar.u();
        }
    }

    public void unpublishAudio() {
        h hVar = this.mPlayer;
        if (hVar != null) {
            hVar.v();
        }
    }

    public static String getEncryptedPlayKey(String str) {
        return h.b(str);
    }

    public void setStringOption(String str, Object obj) {
        h hVar = this.mPlayer;
        if (hVar != null) {
            hVar.a(str, obj);
        }
    }
}
