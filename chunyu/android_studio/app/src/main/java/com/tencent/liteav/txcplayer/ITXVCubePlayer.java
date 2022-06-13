package com.tencent.liteav.txcplayer;

import android.content.Context;
import android.net.Uri;
import android.view.Surface;
import android.view.SurfaceHolder;
import java.io.FileDescriptor;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Map;

/* loaded from: classes2.dex */
public interface ITXVCubePlayer {
    public static final int INDEX_AUTO = -1;
    public static final int INITIAL_BITRATE_INDEX_VALUE = -1000;
    public static final int MEDIA_ERROR_IO = -1004;
    public static final int MEDIA_ERROR_MALFORMED = -1007;
    public static final int MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK = 200;
    public static final int MEDIA_ERROR_SERVER_DIED = 100;
    public static final int MEDIA_ERROR_TIMED_OUT = -110;
    public static final int MEDIA_ERROR_UNKNOWN = 1;
    public static final int MEDIA_ERROR_UNSUPPORTED = -1010;

    /* loaded from: classes2.dex */
    public interface a {
        int a();
    }

    /* loaded from: classes2.dex */
    public interface b {
        void a(ITXVCubePlayer iTXVCubePlayer, int i);
    }

    /* loaded from: classes2.dex */
    public interface c {
        void a(ITXVCubePlayer iTXVCubePlayer);
    }

    /* loaded from: classes2.dex */
    public interface d {
        boolean a(ITXVCubePlayer iTXVCubePlayer, int i, int i2);
    }

    /* loaded from: classes2.dex */
    public interface e {
        void a(ITXVCubePlayer iTXVCubePlayer);
    }

    /* loaded from: classes2.dex */
    public interface f {
        void a(ITXVCubePlayer iTXVCubePlayer);
    }

    /* loaded from: classes2.dex */
    public interface g {
        boolean a(ITXVCubePlayer iTXVCubePlayer, int i, int i2, int i3, Object obj);
    }

    /* loaded from: classes2.dex */
    public interface h {
        void a(ITXVCubePlayer iTXVCubePlayer);
    }

    /* loaded from: classes2.dex */
    public interface i {
        void a(ITXVCubePlayer iTXVCubePlayer);
    }

    /* loaded from: classes2.dex */
    public interface j {
        void a(ITXVCubePlayer iTXVCubePlayer, j jVar);
    }

    /* loaded from: classes2.dex */
    public interface k {
        void a(ITXVCubePlayer iTXVCubePlayer);
    }

    /* loaded from: classes2.dex */
    public interface l {
        void a(ITXVCubePlayer iTXVCubePlayer, int i, int i2, int i3, int i4, String str);
    }

    void enableAdaptiveBitrate();

    int getBitrateIndex();

    long getCurrentPosition();

    long getDuration();

    f getMediaInfo();

    long getPropertyLong(int i2) throws IllegalStateException;

    float getRate();

    ArrayList<b> getSupportedBitrates();

    Surface getSurface();

    com.tencent.liteav.txcplayer.c.b[] getTrackInfo();

    int getVideoHeight();

    int getVideoSarDen();

    int getVideoSarNum();

    int getVideoWidth();

    boolean isLooping();

    @Deprecated
    boolean isPlayable();

    boolean isPlaying();

    void pause() throws IllegalStateException;

    void prepareAsync() throws IllegalStateException;

    void publishAudioToNetwork();

    void release();

    void reset();

    void seekTo(long j2) throws IllegalStateException;

    void setAudioStreamType(int i2);

    void setAudioVolume(int i2);

    void setBitrateIndex(int i2);

    void setConfig(h hVar);

    void setDataSource(Context context, Uri uri) throws IOException, IllegalArgumentException, SecurityException, IllegalStateException;

    void setDataSource(Context context, Uri uri, Map<String, String> map) throws IOException, IllegalArgumentException, SecurityException, IllegalStateException;

    void setDataSource(FileDescriptor fileDescriptor) throws IOException, IllegalArgumentException, IllegalStateException;

    void setDataSource(String str) throws IOException, IllegalArgumentException, SecurityException, IllegalStateException;

    void setDisplay(SurfaceHolder surfaceHolder);

    @Deprecated
    void setKeepInBackground(boolean z);

    @Deprecated
    void setLogEnabled(boolean z);

    void setLooping(boolean z);

    void setOnBufferingUpdateListener(b bVar);

    void setOnCompletionListener(c cVar);

    void setOnErrorListener(d dVar);

    void setOnGetTXCVodVideoViewTargetState(a aVar);

    void setOnHLSKeyErrorListener(e eVar);

    void setOnHevcVideoDecoderErrorListener(f fVar);

    void setOnInfoListener(g gVar);

    void setOnPreparedListener(h hVar);

    void setOnSeekCompleteListener(i iVar);

    void setOnTimedTextListener(j jVar);

    void setOnVideoDecoderErrorListener(k kVar);

    void setOnVideoSizeChangedListener(l lVar);

    void setRate(float f2);

    void setScreenOnWhilePlaying(boolean z);

    void setSurface(Surface surface);

    @Deprecated
    void setWakeMode(Context context, int i2);

    void start() throws IllegalStateException;

    void stop() throws IllegalStateException;

    void unpublishAudioToNetwork();
}
