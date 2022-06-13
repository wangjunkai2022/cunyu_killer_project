package com.tencent.liteav.thumbplayer;

import android.content.Context;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.os.PowerManager;
import android.text.TextUtils;
import android.util.Log;
import android.view.Surface;
import android.view.SurfaceHolder;
import com.google.android.exoplayer2.C;
import com.tencent.liteav.basic.log.TXCLog;
import com.tencent.liteav.basic.util.TXCCommonUtil;
import com.tencent.liteav.txcplayer.a;
import com.tencent.liteav.txcplayer.c.b;
import com.tencent.liteav.txcplayer.f;
import com.tencent.liteav.txcplayer.g;
import com.tencent.liteav.txcplayer.h;
import com.tencent.thumbplayer.api.ITPModuleLoader;
import com.tencent.thumbplayer.api.ITPPlayer;
import com.tencent.thumbplayer.api.ITPPlayerListener;
import com.tencent.thumbplayer.api.TPAudioFrameBuffer;
import com.tencent.thumbplayer.api.TPOptionalParam;
import com.tencent.thumbplayer.api.TPPlayerFactory;
import com.tencent.thumbplayer.api.TPPlayerMgr;
import com.tencent.thumbplayer.api.TPProgramInfo;
import com.tencent.thumbplayer.api.TPSubtitleRenderModel;
import com.tencent.thumbplayer.api.TPTrackInfo;
import com.tencent.thumbplayer.api.TPVideoInfo;
import com.tencent.thumbplayer.api.proxy.TPDownloadParamData;
import com.tencent.thumbplayer.api.report.ITPBusinessReportManager;
import com.tencent.thumbplayer.api.report.TPDefaultReportInfo;
import com.tencent.thumbplayer.config.TPPlayerConfig;
import com.tencent.thumbplayer.core.downloadproxy.api.TPDownloadProxyFactory;
import com.tencent.thumbplayer.utils.TPLogUtil;
import java.io.FileDescriptor;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public class ThumbMediaPlayer extends a {
    private static final int AUDIO_TUNNEL_CLOSE = -1;
    private static final String THUMB_PLAYER_GUID = "liteav_tbplayer_android_";
    private static final int THUMB_PLAYER_PLATFORM_ID = 2330303;
    private static volatile boolean mSDKInited;
    private h mConfig;
    private String mDataSource;
    private boolean mIsLooping;
    private float mRate;
    private boolean mScreenOnWhilePlaying;
    private Surface mSurface;
    private SurfaceHolder mSurfaceHolder;
    private volatile ITPPlayer mTPPPlayer;
    private final String TAG = ThumbMediaPlayer.class.getName();
    private boolean mEnableAccurateSeek = false;
    private PowerManager.WakeLock mWakeLock = null;
    private int mBitrateIndex = -1000;
    private long mCachedBytes = 0;
    private long mBitrate = 0;
    private long mTcpSpeed = 0;
    private long mTotalFileSize = 0;
    private boolean mHasReceiveFirstVideoRenderEvent = false;
    private int mPublishAudioTunnelId = -1;
    private int mPlayoutAudioTunnelId = -1;
    private Class mTXCAudioEngineJNI = null;

    public ThumbMediaPlayer(Context context) {
        synchronized (ThumbMediaPlayer.class) {
            if (!mSDKInited) {
                setTPPLibCustomLoader();
                TPPlayerMgr.initSdk(context, "liteav_tbplayer_android_" + context.getPackageName(), 2330303);
                TPPlayerMgr.setDebugEnable(true);
                mSDKInited = true;
            }
        }
        if (this.mTPPPlayer == null) {
            TPPlayerMgr.setDebugEnable(true);
            this.mTPPPlayer = TPPlayerFactory.createTPPlayer(context);
            new ThumbMediaPlayerListener(this).attachToPlayer();
            initOpenAudioTunnel();
        }
        setCustomReportData();
    }

    private void setTPPLibCustomLoader() {
        try {
            if (!TextUtils.isEmpty(com.tencent.liteav.basic.util.h.g())) {
                TPPlayerMgr.setLibLoader(new ITPModuleLoader() { // from class: com.tencent.liteav.thumbplayer.ThumbMediaPlayer.1
                    @Override // com.tencent.thumbplayer.api.ITPModuleLoader
                    public void loadLibrary(String str, String str2) {
                        com.tencent.liteav.basic.util.h.a(str);
                    }
                });
            }
        } catch (Throwable th) {
            String str = this.TAG;
            Log.e(str, "setTPPLibCustomLoader, ex = " + Log.getStackTraceString(th));
        }
    }

    private void setCustomReportData() {
        ITPBusinessReportManager reportManager = this.mTPPPlayer.getReportManager();
        AnonymousClass2 r1 = new TPDefaultReportInfo() { // from class: com.tencent.liteav.thumbplayer.ThumbMediaPlayer.2
            @Override // com.tencent.thumbplayer.api.report.TPDefaultReportInfo
            public int getPlayType() {
                return 0;
            }
        };
        String appID = TXCCommonUtil.getAppID();
        if (!TextUtils.isEmpty(appID)) {
            try {
                r1.scenesId = Integer.parseInt(appID);
            } catch (Exception e) {
                String str = this.TAG;
                Log.w(str, "set scenesId fail for parse appid:" + appID + " ,error=" + Log.getStackTraceString(e));
            }
            reportManager.setReportInfoGetter(r1);
        }
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void setDisplay(SurfaceHolder surfaceHolder) {
        if (surfaceHolder != null) {
            this.mSurface = surfaceHolder.getSurface();
        }
        this.mSurfaceHolder = surfaceHolder;
        this.mTPPPlayer.setSurfaceHolder(surfaceHolder);
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void setDataSource(Context context, Uri uri) throws IOException, IllegalArgumentException, SecurityException, IllegalStateException {
        setDataSource(context, uri, null);
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void setDataSource(Context context, Uri uri, Map<String, String> map) throws IOException, IllegalArgumentException, SecurityException, IllegalStateException {
        String uri2 = uri.toString();
        this.mDataSource = uri2;
        if (uri2.contains(".hls?")) {
            this.mTPPPlayer.setDataSource(uri2.substring(uri2.indexOf(".hls?") + 5), map);
        } else {
            this.mTPPPlayer.setDataSource(uri2, map);
        }
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void setDataSource(FileDescriptor fileDescriptor) throws IOException, IllegalArgumentException, IllegalStateException {
        this.mTPPPlayer.setDataSource(ParcelFileDescriptor.dup(fileDescriptor));
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void setDataSource(String str) throws IOException, IllegalArgumentException, SecurityException, IllegalStateException {
        setDataSource(null, Uri.parse(str));
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void setConfig(h hVar) {
        if (hVar != null) {
            this.mConfig = hVar;
            TPPlayerConfig.setProxyDataDir(hVar.e());
            JSONObject jSONObject = new JSONObject();
            try {
                if (this.mConfig.f() > 0) {
                    jSONObject.put("VodCacheReserveSizeMB", this.mConfig.f() * 50);
                }
                TPPlayerConfig.parseHostConfig(new JSONObject().put("httpproxy_config", jSONObject).toString());
            } catch (JSONException e) {
                e.printStackTrace();
            }
            setEnableAccurateSeek(hVar.i());
            this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildLong(100, hVar.m()));
            this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildBoolean(101, hVar.i()));
            this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildLong(102, 1000));
            this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildLong(117, 40000));
            this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildLong(103, 200));
            this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildLong(105, 1000));
            this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildLong(106, 8000));
            this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildLong(107, 30000));
            this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildLong(108, (long) (hVar.c() * 1000.0f)));
            this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildLong(109, (long) hVar.a()));
            this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildLong(504, hVar.r() ? 1 : 0));
            this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildString(180, hVar.p()));
            this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildString(181, hVar.q()));
            this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildLong(200, 80));
            this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildBoolean(201, true));
            this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildBoolean(401, true));
            this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildLong(202, 2));
            this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildLong(203, hVar.d() ? 2 : 4));
            if (this.mBitrateIndex != -1000) {
                this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildLong(132, (long) this.mBitrateIndex));
            }
            this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildLong(133, hVar.t()));
            this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildLong(450, 0));
            TPSubtitleRenderModel tPSubtitleRenderModel = new TPSubtitleRenderModel();
            tPSubtitleRenderModel.canvasWidth = 864;
            tPSubtitleRenderModel.canvasHeight = 486;
            tPSubtitleRenderModel.paramFlags |= 1;
            tPSubtitleRenderModel.paramFlags |= 2;
            tPSubtitleRenderModel.fontColor = -1;
            tPSubtitleRenderModel.paramFlags |= 8;
            tPSubtitleRenderModel.fontStyleFlags |= 1;
            tPSubtitleRenderModel.paramFlags |= 1024;
            tPSubtitleRenderModel.verticalMargin = 0.15f;
            tPSubtitleRenderModel.paramFlags |= 512;
            this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildObject(507, tPSubtitleRenderModel));
            TPPlayerConfig.setP2PEnable(true);
            setVideoInfo(hVar.o());
            if (hVar.f() != 0) {
                setMaxCacheSize(hVar.f() * 50);
            }
        }
    }

    private void setVideoInfo(String str) {
        String str2;
        if (this.mTPPPlayer != null) {
            TPVideoInfo.Builder builder = new TPVideoInfo.Builder();
            TPDownloadParamData tPDownloadParamData = new TPDownloadParamData(0);
            if (!str.contains(".hls")) {
                str2 = TXCCommonUtil.getMD5(str);
                String fileExtension = TXCCommonUtil.getFileExtension(Uri.parse(str).getPath());
                if (!TextUtils.isEmpty(fileExtension)) {
                    if (fileExtension.toLowerCase().endsWith("m3u8")) {
                        str2 = str2 + ".hls";
                    } else {
                        if (fileExtension.toLowerCase().endsWith("mp4")) {
                            str2 = TXCCommonUtil.getMD5(processUrl(str));
                        }
                        str2 = str2 + "." + fileExtension;
                    }
                }
            } else {
                String substring = str.substring(0, str.indexOf(".hls") + 4);
                String substring2 = substring.substring(substring.lastIndexOf(47) + 1);
                TPDownloadProxyFactory.getTPDownloadProxy(2330303).updateStoragePath(substring.substring(0, substring.lastIndexOf(47)));
                tPDownloadParamData.setDlType(3);
                tPDownloadParamData.setOffline(true);
                str2 = substring2;
            }
            builder.fileId(str2);
            h hVar = this.mConfig;
            if (hVar != null && hVar.r() && str2.endsWith(".hls")) {
                tPDownloadParamData.setDlType(3);
                tPDownloadParamData.setSelfAdaption(true);
            }
            HashMap hashMap = new HashMap();
            if (this.mConfig.u() > 0 && !this.mConfig.n()) {
                hashMap.put("dl_param_buffer_size", Integer.valueOf(this.mConfig.u() * 1024 * 1024));
            } else if (this.mConfig.l() > 0) {
                hashMap.put("dl_param_buffer_size", Integer.valueOf(this.mConfig.l() * 1024 * 1024));
            }
            if (hashMap.size() > 0) {
                tPDownloadParamData.setExtInfoMap(hashMap);
            }
            builder.downloadParam(tPDownloadParamData);
            this.mTPPPlayer.setVideoInfo(builder.build());
        }
    }

    public h getConfig() {
        return this.mConfig;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public long getPropertyLong(int i) throws IllegalStateException {
        if (i == 208) {
            i = 208;
        } else if (i != 209) {
            switch (i) {
                case 100:
                    i = 100;
                    break;
                case 101:
                    i = 101;
                    break;
                case 102:
                    i = 102;
                    break;
                case 103:
                    i = 103;
                    break;
                default:
                    switch (i) {
                        case 201:
                            i = 201;
                            break;
                        case 202:
                            i = 202;
                            break;
                        case 203:
                            i = 203;
                            break;
                        case 204:
                            i = 204;
                            break;
                        case 205:
                            i = 205;
                            break;
                        case 206:
                            i = 206;
                            break;
                        default:
                            switch (i) {
                                case 301:
                                    return this.mBitrate;
                                case 302:
                                    TXCLog.i(this.TAG, "getPlayableDurationMs:" + this.mTPPPlayer.getPlayableDurationMs());
                                    long playableDurationMs = ((this.mBitrate * (this.mTPPPlayer.getPlayableDurationMs() - this.mTPPPlayer.getCurrentPositionMs())) / 1000) / 8;
                                    if (playableDurationMs < 0) {
                                        return 0;
                                    }
                                    return playableDurationMs;
                                case 303:
                                    return this.mTcpSpeed;
                            }
                    }
            }
        } else {
            i = 209;
        }
        return this.mTPPPlayer.getPropertyLong(i);
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void prepareAsync() throws IllegalStateException {
        try {
            TXCLog.i(this.TAG, "prepareAsync");
            this.mTPPPlayer.updateTaskInfo("taskInfo_player_start", false);
            this.mTPPPlayer.prepareAsync();
        } catch (Throwable th) {
            th.printStackTrace();
            throw new IllegalStateException(th);
        }
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void start() throws IllegalStateException {
        TXCLog.i(this.TAG, "TPPlayer start");
        if (this.mHasReceiveFirstVideoRenderEvent) {
            notifyOnInfo(2017, 0, 0, null);
            notifyOnInfo(2026, 0, 0, null);
            notifyOnInfo(2003, 0, 0, null);
            this.mHasReceiveFirstVideoRenderEvent = false;
        }
        if (this.mConfig.l() > 0) {
            this.mTPPPlayer.updateTaskInfo("taskinfo_buffer_size_byte", Integer.valueOf(this.mConfig.l() * 1024 * 1024));
        }
        this.mTPPPlayer.updateTaskInfo("taskInfo_player_start", true);
        this.mTPPPlayer.start();
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void stop() throws IllegalStateException {
        if (this.mTPPPlayer.getCurrentState() != 10 && this.mTPPPlayer.getCurrentState() != 1) {
            com.tencent.liteav.txcplayer.a.a.a().execute(new Runnable() { // from class: com.tencent.liteav.thumbplayer.ThumbMediaPlayer.3
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        ThumbMediaPlayer.this.mTPPPlayer.stop();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            });
        }
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void pause() throws IllegalStateException {
        this.mTPPPlayer.pause();
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void setScreenOnWhilePlaying(boolean z) {
        String str = this.TAG;
        TXCLog.w(str, "setScreenOnWhilePlaying(true) screenOn:" + z);
        if (this.mScreenOnWhilePlaying != z) {
            if (z && this.mSurfaceHolder == null) {
                TXCLog.w(this.TAG, "setScreenOnWhilePlaying(true) is ineffective without a SurfaceHolder");
            }
            this.mScreenOnWhilePlaying = z;
            SurfaceHolder surfaceHolder = this.mSurfaceHolder;
            if (surfaceHolder != null) {
                surfaceHolder.setKeepScreenOn(this.mScreenOnWhilePlaying);
            }
        }
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public int getVideoWidth() {
        String str = this.TAG;
        TXCLog.i(str, "getVideoWidth " + this.mTPPPlayer.getVideoWidth());
        return this.mTPPPlayer.getVideoWidth();
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public int getVideoHeight() {
        String str = this.TAG;
        TXCLog.i(str, "getVideoHeight " + this.mTPPPlayer.getVideoHeight());
        return this.mTPPPlayer.getVideoHeight();
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public boolean isPlaying() {
        int currentState = this.mTPPPlayer.getCurrentState();
        String str = this.TAG;
        TXCLog.i(str, "isPlaying " + currentState);
        return currentState == 4 || currentState == 5;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void seekTo(long j) throws IllegalStateException {
        String str = this.TAG;
        TXCLog.i(str, "seekTo msec: " + j + "：mEnableAccurateSeek：" + this.mEnableAccurateSeek);
        if (this.mEnableAccurateSeek) {
            ITPPlayer iTPPlayer = this.mTPPPlayer;
            this.mTPPPlayer.seekTo((int) j, 3);
            return;
        }
        this.mTPPPlayer.seekTo((int) j);
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public long getCurrentPosition() {
        return this.mTPPPlayer.getCurrentPositionMs();
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public long getDuration() {
        String str = this.TAG;
        TXCLog.i(str, "getDuration " + this.mTPPPlayer.getDurationMs());
        return this.mTPPPlayer.getDurationMs();
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void release() {
        com.tencent.liteav.txcplayer.a.a.a().execute(new Runnable() { // from class: com.tencent.liteav.thumbplayer.ThumbMediaPlayer.4
            @Override // java.lang.Runnable
            public void run() {
                ThumbMediaPlayer.this.mTPPPlayer.release();
                ThumbMediaPlayer.this.closeAudioTunnel();
            }
        });
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void reset() {
        this.mTPPPlayer.updateTaskInfo("taskInfo_player_start", false);
        if (this.mTPPPlayer != null) {
            this.mTPPPlayer.reset();
        }
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void setRate(float f) {
        String str = this.TAG;
        TXCLog.i(str, "setRate " + this.mRate);
        this.mRate = f;
        this.mTPPPlayer.setPlaySpeedRatio(f);
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public float getRate() {
        String str = this.TAG;
        TXCLog.i(str, "getRate " + this.mRate);
        return this.mRate;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void setVolume(float f, float f2) {
        String str = this.TAG;
        TXCLog.i(str, "setVolume leftVolume： " + f + " ：rightVolume" + f2);
        if (f == 0.0f && f2 == 0.0f) {
            this.mTPPPlayer.setOutputMute(true);
            return;
        }
        this.mTPPPlayer.setOutputMute(false);
        this.mTPPPlayer.setAudioGainRatio((f + f2) / 2.0f);
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void setAudioVolume(int i) {
        String str = this.TAG;
        TXCLog.i(str, "setAudioVolume： " + i);
        if (this.mPlayoutAudioTunnelId != -1) {
            callTXCAudioEngineJNIMethod(getTXCAudioEngineJNIMethod("nativeSetVolumeToTunnel", Integer.TYPE, Integer.TYPE), Integer.valueOf(this.mPlayoutAudioTunnelId), Integer.valueOf(i));
        }
        this.mTPPPlayer.setAudioGainRatio((float) i);
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public f getMediaInfo() {
        String[] split;
        TXCLog.i(this.TAG, "getMediaInfo");
        f fVar = new f();
        fVar.a = "thumbplayer";
        fVar.f = new g();
        String propertyString = this.mTPPPlayer.getPropertyString(0);
        if (propertyString != null && propertyString.length() > 0 && (split = propertyString.split("\\n")) != null && split.length > 0) {
            fVar.f.b = getSupportedBitrates();
            int i = this.mBitrateIndex;
            if (i == -1000) {
                i = 0;
            }
            fVar.f.e = new g.a(i);
            fVar.f.d = new g.a(i);
            fVar.f.c.add(fVar.f.e);
            fVar.f.c.add(fVar.f.d);
            for (String str : split) {
                if (str != null) {
                    String trim = str.substring(str.indexOf("=") + 1, str.length()).trim();
                    if (str.contains("ContainerFormat=")) {
                        fVar.f.a = trim;
                    } else if (str.contains("VideoCodec=")) {
                        fVar.b = "avcodec";
                        fVar.c = trim;
                        fVar.f.d.b = trim;
                    } else if (str.contains("VideoProfile=")) {
                        fVar.f.d.c = trim;
                    } else if (str.contains("Width=")) {
                        fVar.f.d.e = Integer.valueOf(trim).intValue();
                    } else if (str.contains("Height=")) {
                        fVar.f.d.f = Integer.valueOf(trim).intValue();
                    } else if (str.contains("VideoBitRate=")) {
                        fVar.f.d.d = (long) Integer.valueOf(trim).intValue();
                    } else if (str.contains("AudioCodec=")) {
                        fVar.d = "avcodec";
                        fVar.e = trim;
                        fVar.f.e.b = trim;
                    } else if (str.contains("AudioProfile=")) {
                        fVar.f.e.c = trim;
                    } else if (str.contains("AudioBitRate=")) {
                        fVar.f.e.d = (long) Integer.valueOf(trim).intValue();
                    } else if (str.contains("SampleRate=")) {
                        fVar.f.e.g = Integer.valueOf(trim).intValue();
                    }
                }
            }
        }
        return fVar;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void setLogEnabled(boolean z) {
        TPLogUtil.setDebugEnable(z);
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public boolean isPlayable() {
        TXCLog.i(this.TAG, "isPlayable： true");
        return true;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void setAudioStreamType(int i) {
        String str = this.TAG;
        TXCLog.i(str, "setAudioStreamType：" + i);
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void setKeepInBackground(boolean z) {
        String str = this.TAG;
        TXCLog.i(str, "setKeepInBackground none：" + z);
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public int getVideoSarNum() {
        TXCLog.i(this.TAG, "getVideoSarNum ：0");
        return 0;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public int getVideoSarDen() {
        TXCLog.i(this.TAG, "getVideoSarDen ：0");
        return 0;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void setWakeMode(Context context, int i) {
        boolean z;
        TXCLog.i(this.TAG, "setWakeMode ：" + i);
        PowerManager.WakeLock wakeLock = this.mWakeLock;
        if (wakeLock != null) {
            if (wakeLock.isHeld()) {
                z = true;
                this.mWakeLock.release();
            } else {
                z = false;
            }
            this.mWakeLock = null;
        } else {
            z = false;
        }
        this.mWakeLock = ((PowerManager) context.getSystemService("power")).newWakeLock(i | 536870912, ThumbMediaPlayer.class.getName());
        this.mWakeLock.setReferenceCounted(false);
        if (z) {
            this.mWakeLock.acquire();
        }
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void setLooping(boolean z) {
        String str = this.TAG;
        TXCLog.i(str, "setLooping ：" + z);
        this.mIsLooping = z;
        this.mTPPPlayer.setLoopback(z);
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public boolean isLooping() {
        String str = this.TAG;
        TXCLog.i(str, "isLooping ：" + this.mIsLooping);
        return this.mIsLooping;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public b[] getTrackInfo() {
        TPTrackInfo[] trackInfo = this.mTPPPlayer.getTrackInfo();
        if (trackInfo == null || trackInfo.length <= 0) {
            return null;
        }
        b[] bVarArr = new b[trackInfo.length];
        for (int i = 0; i < trackInfo.length; i++) {
            bVarArr[i] = transferToITrackInfo(trackInfo[i]);
            String str = this.TAG;
            TXCLog.i(str, "getTrackInfo ：" + bVarArr[i].toString());
        }
        return bVarArr;
    }

    private b transferToITrackInfo(final TPTrackInfo tPTrackInfo) {
        if (tPTrackInfo == null) {
            return null;
        }
        return new b() { // from class: com.tencent.liteav.thumbplayer.ThumbMediaPlayer.5
            public com.tencent.liteav.txcplayer.c.a getFormat() {
                return null;
            }

            public String getLanguage() {
                return C.LANGUAGE_UNDETERMINED;
            }

            public int getTrackType() {
                return tPTrackInfo.getTrackType();
            }

            public String getInfoInline() {
                StringBuilder sb = new StringBuilder(128);
                sb.append(tPTrackInfo.getName());
                sb.append('{');
                TPTrackInfo tPTrackInfo2 = tPTrackInfo;
                if (tPTrackInfo2 != null) {
                    sb.append(tPTrackInfo2.toString());
                } else {
                    sb.append("null");
                }
                sb.append('}');
                return sb.toString();
            }
        };
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void setSurface(Surface surface) {
        this.mSurfaceHolder = null;
        this.mSurface = surface;
        this.mTPPPlayer.setSurface(surface);
        String str = this.TAG;
        TXCLog.i(str, "setSurface mSurface:" + this.mSurface);
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public Surface getSurface() {
        String str = this.TAG;
        TXCLog.i(str, "getSurface ：" + this.mSurface);
        return this.mSurface;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public int getBitrateIndex() {
        String str = this.TAG;
        TXCLog.i(str, "getBitrateIndex ：" + this.mBitrateIndex);
        return this.mBitrateIndex;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void setBitrateIndex(int i) {
        TPProgramInfo[] programInfo;
        String str = this.TAG;
        TXCLog.i(str, "setBitrateIndex ：" + i);
        if (this.mBitrateIndex == -1) {
            this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildLong(504, 0));
        }
        if (i != -1 && (programInfo = this.mTPPPlayer.getProgramInfo()) != null && i >= 0 && i < programInfo.length) {
            this.mTPPPlayer.selectProgram(i, 0);
        }
        this.mBitrateIndex = i;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void enableAdaptiveBitrate() {
        this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildLong(504, 1));
        this.mBitrateIndex = -1;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public ArrayList<com.tencent.liteav.txcplayer.b> getSupportedBitrates() {
        ArrayList<com.tencent.liteav.txcplayer.b> arrayList;
        TPProgramInfo[] programInfo = this.mTPPPlayer.getProgramInfo();
        if (programInfo != null) {
            arrayList = new ArrayList<>(programInfo.length);
            for (TPProgramInfo tPProgramInfo : programInfo) {
                if (tPProgramInfo != null) {
                    com.tencent.liteav.txcplayer.b bVar = new com.tencent.liteav.txcplayer.b();
                    String[] split = tPProgramInfo.resolution.split("x");
                    if (split != null && split.length == 2) {
                        bVar.b = Integer.valueOf(split[0]).intValue();
                        bVar.c = Integer.valueOf(split[1]).intValue();
                    }
                    bVar.d = (int) tPProgramInfo.bandwidth;
                    bVar.a = tPProgramInfo.programId;
                    if (bVar.a == this.mBitrateIndex) {
                        this.mBitrate = (long) bVar.d;
                    }
                    arrayList.add(bVar);
                    TXCLog.i(this.TAG, "getSupportedBitrates item index：" + bVar.a + ":width:" + bVar.b + ":height:" + bVar.c + ":bitrate:" + bVar.d);
                }
            }
        } else {
            arrayList = null;
        }
        TXCLog.i(this.TAG, "mBitrateIndex:" + this.mBitrateIndex + ":mBitrate:" + this.mBitrate);
        return arrayList;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void publishAudioToNetwork() {
        Object callTXCAudioEngineJNIMethod;
        TXCLog.i(this.TAG, "publishAudioToNetwork ：none");
        if (this.mPublishAudioTunnelId == -1 && (callTXCAudioEngineJNIMethod = callTXCAudioEngineJNIMethod(getTXCAudioEngineJNIMethod("nativeOpenAudioTunnel", Boolean.TYPE), true)) != null) {
            this.mPublishAudioTunnelId = ((Integer) callTXCAudioEngineJNIMethod).intValue();
        }
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void unpublishAudioToNetwork() {
        TXCLog.i(this.TAG, "unpublishAudioToNetwork ：none");
        if (this.mPublishAudioTunnelId != -1) {
            callTXCAudioEngineJNIMethod(getTXCAudioEngineJNIMethod("nativeCloseAudioTunnel", Integer.TYPE), Integer.valueOf(this.mPublishAudioTunnelId));
            this.mPublishAudioTunnelId = -1;
        }
    }

    private void initOpenAudioTunnel() {
        Object callTXCAudioEngineJNIMethod = callTXCAudioEngineJNIMethod(getTXCAudioEngineJNIMethod("nativeOpenAudioTunnel", Boolean.TYPE), false);
        if (callTXCAudioEngineJNIMethod != null) {
            this.mPlayoutAudioTunnelId = ((Integer) callTXCAudioEngineJNIMethod).intValue();
        }
        String str = this.TAG;
        TXCLog.i(str, "mPlayoutAudioTunnelId = " + this.mPlayoutAudioTunnelId);
        if (this.mPlayoutAudioTunnelId != -1) {
            setConfigOpenAudioTunnel();
        }
    }

    public Method getTXCAudioEngineJNIMethod(String str, Class<?>... clsArr) {
        try {
            if (this.mTXCAudioEngineJNI == null) {
                this.mTXCAudioEngineJNI = Class.forName("com.tencent.liteav.audio.impl.TXCAudioEngineJNI");
            }
            return this.mTXCAudioEngineJNI.getMethod(str, clsArr);
        } catch (Exception e) {
            TXCLog.e(this.TAG, e.getMessage());
            return null;
        }
    }

    public Object callTXCAudioEngineJNIMethod(Method method, Object... objArr) {
        if (method == null) {
            return null;
        }
        try {
            return method.invoke(null, objArr);
        } catch (Exception e) {
            TXCLog.e(this.TAG, e.getMessage());
            return null;
        }
    }

    private void setConfigOpenAudioTunnel() {
        TXCLog.i(this.TAG, "setConfigOpenAudioTunnel");
        this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildLong(404, -1));
        this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildBoolean(120, true));
        this.mTPPPlayer.setOnAudioFrameOutputListener(new ITPPlayerListener.IOnAudioFrameOutputListener() { // from class: com.tencent.liteav.thumbplayer.ThumbMediaPlayer.6
            @Override // com.tencent.thumbplayer.api.ITPPlayerListener.IOnAudioFrameOutputListener
            public void onAudioFrameOut(ITPPlayer iTPPlayer, TPAudioFrameBuffer tPAudioFrameBuffer) {
                Method tXCAudioEngineJNIMethod = ThumbMediaPlayer.this.getTXCAudioEngineJNIMethod("nativeWriteDataToTunnel", Integer.TYPE, Integer.TYPE, Integer.TYPE, Integer.TYPE, byte[].class);
                if (ThumbMediaPlayer.this.mPlayoutAudioTunnelId != -1) {
                    ThumbMediaPlayer thumbMediaPlayer = ThumbMediaPlayer.this;
                    thumbMediaPlayer.callTXCAudioEngineJNIMethod(tXCAudioEngineJNIMethod, Integer.valueOf(thumbMediaPlayer.mPlayoutAudioTunnelId), Integer.valueOf(tPAudioFrameBuffer.sampleRate), Integer.valueOf(tPAudioFrameBuffer.channels), 16, tPAudioFrameBuffer.getData()[0]);
                }
                if (ThumbMediaPlayer.this.mPublishAudioTunnelId != -1) {
                    ThumbMediaPlayer thumbMediaPlayer2 = ThumbMediaPlayer.this;
                    thumbMediaPlayer2.callTXCAudioEngineJNIMethod(tXCAudioEngineJNIMethod, Integer.valueOf(thumbMediaPlayer2.mPublishAudioTunnelId), Integer.valueOf(tPAudioFrameBuffer.sampleRate), Integer.valueOf(tPAudioFrameBuffer.channels), 16, tPAudioFrameBuffer.getData()[0]);
                }
            }
        });
    }

    public void closeAudioTunnel() {
        TXCLog.i(this.TAG, "closeAudioTunnel");
        if (this.mPlayoutAudioTunnelId != -1) {
            callTXCAudioEngineJNIMethod(getTXCAudioEngineJNIMethod("nativeCloseAudioTunnel", Integer.TYPE), Integer.valueOf(this.mPlayoutAudioTunnelId));
            this.mPlayoutAudioTunnelId = -1;
        }
        if (this.mPublishAudioTunnelId != -1) {
            callTXCAudioEngineJNIMethod(getTXCAudioEngineJNIMethod("nativeCloseAudioTunnel", Integer.TYPE), Integer.valueOf(this.mPublishAudioTunnelId));
            this.mPublishAudioTunnelId = -1;
        }
    }

    public void setMaxCacheSize(int i) {
        TPPlayerMgr.setProxyMaxStorageSizeMB((long) i);
    }

    public ITPPlayer getTPPPlayer() {
        return this.mTPPPlayer;
    }

    void setEnableAccurateSeek(boolean z) {
        this.mEnableAccurateSeek = z;
    }

    public void updateTcpSpeed(long j) {
        this.mTcpSpeed = j;
    }

    public void updateBitrate(long j) {
        int i = (j > 0 ? 1 : (j == 0 ? 0 : -1));
        if (i > 0 && this.mTotalFileSize != j) {
            this.mTotalFileSize = j;
            long duration = getDuration();
            if (duration > 0 && i > 0) {
                this.mBitrate = ((j * 1000) * 8) / duration;
                String str = this.TAG;
                TXCLog.i(str, "updateBitrate:mTotalFileSize:" + this.mTotalFileSize + ":bitRate:" + this.mBitrate);
            }
        }
    }

    public void onReceiveFirstVideoRenderEvent() {
        if (getConfig().n() || this.mTPPPlayer.getCurrentState() == 5) {
            notifyOnInfo(2017, 0, 0, null);
            notifyOnInfo(2026, 0, 0, null);
            notifyOnInfo(2003, 0, 0, null);
            this.mHasReceiveFirstVideoRenderEvent = false;
            return;
        }
        this.mHasReceiveFirstVideoRenderEvent = true;
    }

    private String processUrl(String str) {
        int indexOf;
        int indexOf2 = str.indexOf("voddrm.token.");
        if (indexOf2 > -1 && (indexOf = str.indexOf(".", indexOf2 + 13)) > -1 && indexOf < str.length() - 1) {
            str = str.substring(0, indexOf2) + str.substring(indexOf + 1);
        }
        int indexOf3 = str.indexOf("?");
        return indexOf3 > -1 ? str.substring(0, indexOf3) : str;
    }
}
