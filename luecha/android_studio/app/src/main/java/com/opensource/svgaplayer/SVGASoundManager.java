package com.opensource.svgaplayer;

import android.media.AudioAttributes;
import android.media.SoundPool;
import android.os.Build;
import com.github.florent37.assets_audio_player.notification.NotificationAction;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.opensource.svgaplayer.entities.SVGAAudioEntity;
import com.opensource.svgaplayer.utils.log.LogUtils;
import java.io.FileDescriptor;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SVGASoundManager.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001.B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u000e\u001a\u00020\u000fH\u0002J\u0018\u0010\u0010\u001a\n \u0005*\u0004\u0018\u00010\u000b0\u000b2\u0006\u0010\u0011\u001a\u00020\bH\u0002J\u0006\u0010\u0012\u001a\u00020\u0013J\u000e\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0011\u001a\u00020\bJ\r\u0010\u0014\u001a\u00020\u000fH\u0000¢\u0006\u0002\b\u0015J9\u0010\u0016\u001a\u00020\b2\b\u0010\u0017\u001a\u0004\u0018\u00010\t2\b\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\bH\u0000¢\u0006\u0002\b\u001eJ\u0015\u0010\u001f\u001a\u00020\u00132\u0006\u0010 \u001a\u00020\bH\u0000¢\u0006\u0002\b!J\u0015\u0010\"\u001a\u00020\b2\u0006\u0010 \u001a\u00020\bH\u0000¢\u0006\u0002\b#J\u0006\u0010$\u001a\u00020\u0013J\u0015\u0010%\u001a\u00020\u00132\u0006\u0010 \u001a\u00020\bH\u0000¢\u0006\u0002\b&J\u001a\u0010'\u001a\u00020\u00132\u0006\u0010\f\u001a\u00020\r2\n\b\u0002\u0010(\u001a\u0004\u0018\u00010)J\u0015\u0010*\u001a\u00020\u00132\u0006\u0010 \u001a\u00020\bH\u0000¢\u0006\u0002\b+J\u0015\u0010,\u001a\u00020\u00132\u0006\u0010 \u001a\u00020\bH\u0000¢\u0006\u0002\b-R\u0016\u0010\u0003\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006/"}, d2 = {"Lcom/opensource/svgaplayer/SVGASoundManager;", "", "()V", "TAG", "", "kotlin.jvm.PlatformType", "soundCallBackMap", "", "", "Lcom/opensource/svgaplayer/SVGASoundManager$SVGASoundCallBack;", "soundPool", "Landroid/media/SoundPool;", "volume", "", "checkInit", "", "getSoundPool", "maxStreams", "init", "", "isInit", "isInit$com_opensource_svgaplayer", "load", "callBack", "fd", "Ljava/io/FileDescriptor;", "offset", "", SessionDescription.ATTR_LENGTH, "priority", "load$com_opensource_svgaplayer", "pause", "soundId", "pause$com_opensource_svgaplayer", "play", "play$com_opensource_svgaplayer", "release", "resume", "resume$com_opensource_svgaplayer", "setVolume", "entity", "Lcom/opensource/svgaplayer/SVGAVideoEntity;", NotificationAction.ACTION_STOP, "stop$com_opensource_svgaplayer", "unload", "unload$com_opensource_svgaplayer", "SVGASoundCallBack", "com.opensource.svgaplayer"}, k = 1, mv = {1, 1, 15})
/* loaded from: classes5.dex */
public final class SVGASoundManager {
    private static SoundPool soundPool;
    public static final SVGASoundManager INSTANCE = new SVGASoundManager();
    private static final String TAG = SVGASoundManager.class.getSimpleName();
    private static final Map<Integer, SVGASoundCallBack> soundCallBackMap = new LinkedHashMap();
    private static float volume = 1.0f;

    /* compiled from: SVGASoundManager.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\b`\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&¨\u0006\u0007"}, d2 = {"Lcom/opensource/svgaplayer/SVGASoundManager$SVGASoundCallBack;", "", "onComplete", "", "onVolumeChange", "value", "", "com.opensource.svgaplayer"}, k = 1, mv = {1, 1, 15})
    /* loaded from: classes5.dex */
    public interface SVGASoundCallBack {
        void onComplete();

        void onVolumeChange(float f);
    }

    private SVGASoundManager() {
    }

    public final void init() {
        init(20);
    }

    public final void init(int i) {
        LogUtils logUtils = LogUtils.INSTANCE;
        String str = TAG;
        Intrinsics.checkExpressionValueIsNotNull(str, "TAG");
        logUtils.debug(str, "**************** init **************** " + i);
        if (soundPool == null) {
            soundPool = getSoundPool(i);
            SoundPool soundPool2 = soundPool;
            if (soundPool2 != null) {
                soundPool2.setOnLoadCompleteListener(SVGASoundManager$init$1.INSTANCE);
            }
        }
    }

    public final void release() {
        LogUtils logUtils = LogUtils.INSTANCE;
        String str = TAG;
        Intrinsics.checkExpressionValueIsNotNull(str, "TAG");
        logUtils.debug(str, "**************** release ****************");
        if (!soundCallBackMap.isEmpty()) {
            soundCallBackMap.clear();
        }
    }

    public static /* synthetic */ void setVolume$default(SVGASoundManager sVGASoundManager, float f, SVGAVideoEntity sVGAVideoEntity, int i, Object obj) {
        if ((i & 2) != 0) {
            sVGAVideoEntity = null;
        }
        sVGASoundManager.setVolume(f, sVGAVideoEntity);
    }

    public final void setVolume(float f, SVGAVideoEntity sVGAVideoEntity) {
        Integer playID;
        if (checkInit()) {
            if (f < 0.0f || f > 1.0f) {
                LogUtils logUtils = LogUtils.INSTANCE;
                String str = TAG;
                Intrinsics.checkExpressionValueIsNotNull(str, "TAG");
                logUtils.error(str, "The volume level is in the range of 0 to 1 ");
            } else if (sVGAVideoEntity == null) {
                volume = f;
                for (Map.Entry<Integer, SVGASoundCallBack> entry : soundCallBackMap.entrySet()) {
                    entry.getValue().onVolumeChange(f);
                }
            } else {
                SoundPool soundPool2 = soundPool;
                if (soundPool2 != null) {
                    Iterator<T> it = sVGAVideoEntity.getAudioList$com_opensource_svgaplayer().iterator();
                    while (it.hasNext() && (playID = ((SVGAAudioEntity) it.next()).getPlayID()) != null) {
                        soundPool2.setVolume(playID.intValue(), f, f);
                    }
                }
            }
        }
    }

    public final boolean isInit$com_opensource_svgaplayer() {
        return soundPool != null;
    }

    private final boolean checkInit() {
        boolean isInit$com_opensource_svgaplayer = isInit$com_opensource_svgaplayer();
        if (!isInit$com_opensource_svgaplayer) {
            LogUtils logUtils = LogUtils.INSTANCE;
            String str = TAG;
            Intrinsics.checkExpressionValueIsNotNull(str, "TAG");
            logUtils.error(str, "soundPool is null, you need call init() !!!");
        }
        return isInit$com_opensource_svgaplayer;
    }

    private final SoundPool getSoundPool(int i) {
        if (Build.VERSION.SDK_INT < 21) {
            return new SoundPool(i, 3, 0);
        }
        return new SoundPool.Builder().setAudioAttributes(new AudioAttributes.Builder().setUsage(1).build()).setMaxStreams(i).build();
    }

    public final int load$com_opensource_svgaplayer(SVGASoundCallBack sVGASoundCallBack, FileDescriptor fileDescriptor, long j, long j2, int i) {
        if (!checkInit()) {
            return -1;
        }
        SoundPool soundPool2 = soundPool;
        if (soundPool2 == null) {
            Intrinsics.throwNpe();
        }
        int load = soundPool2.load(fileDescriptor, j, j2, i);
        LogUtils logUtils = LogUtils.INSTANCE;
        String str = TAG;
        Intrinsics.checkExpressionValueIsNotNull(str, "TAG");
        logUtils.debug(str, "load soundId=" + load + " callBack=" + sVGASoundCallBack);
        if (sVGASoundCallBack != null && !soundCallBackMap.containsKey(Integer.valueOf(load))) {
            soundCallBackMap.put(Integer.valueOf(load), sVGASoundCallBack);
        }
        return load;
    }

    public final void unload$com_opensource_svgaplayer(int i) {
        if (checkInit()) {
            LogUtils logUtils = LogUtils.INSTANCE;
            String str = TAG;
            Intrinsics.checkExpressionValueIsNotNull(str, "TAG");
            logUtils.debug(str, "unload soundId=" + i);
            SoundPool soundPool2 = soundPool;
            if (soundPool2 == null) {
                Intrinsics.throwNpe();
            }
            soundPool2.unload(i);
            soundCallBackMap.remove(Integer.valueOf(i));
        }
    }

    public final int play$com_opensource_svgaplayer(int i) {
        if (!checkInit()) {
            return -1;
        }
        LogUtils logUtils = LogUtils.INSTANCE;
        String str = TAG;
        Intrinsics.checkExpressionValueIsNotNull(str, "TAG");
        logUtils.debug(str, "play soundId=" + i);
        SoundPool soundPool2 = soundPool;
        if (soundPool2 == null) {
            Intrinsics.throwNpe();
        }
        float f = volume;
        return soundPool2.play(i, f, f, 1, 0, 1.0f);
    }

    public final void stop$com_opensource_svgaplayer(int i) {
        if (checkInit()) {
            LogUtils logUtils = LogUtils.INSTANCE;
            String str = TAG;
            Intrinsics.checkExpressionValueIsNotNull(str, "TAG");
            logUtils.debug(str, "stop soundId=" + i);
            SoundPool soundPool2 = soundPool;
            if (soundPool2 == null) {
                Intrinsics.throwNpe();
            }
            soundPool2.stop(i);
        }
    }

    public final void resume$com_opensource_svgaplayer(int i) {
        if (checkInit()) {
            LogUtils logUtils = LogUtils.INSTANCE;
            String str = TAG;
            Intrinsics.checkExpressionValueIsNotNull(str, "TAG");
            logUtils.debug(str, "stop soundId=" + i);
            SoundPool soundPool2 = soundPool;
            if (soundPool2 == null) {
                Intrinsics.throwNpe();
            }
            soundPool2.resume(i);
        }
    }

    public final void pause$com_opensource_svgaplayer(int i) {
        if (checkInit()) {
            LogUtils logUtils = LogUtils.INSTANCE;
            String str = TAG;
            Intrinsics.checkExpressionValueIsNotNull(str, "TAG");
            logUtils.debug(str, "pause soundId=" + i);
            SoundPool soundPool2 = soundPool;
            if (soundPool2 == null) {
                Intrinsics.throwNpe();
            }
            soundPool2.pause(i);
        }
    }
}
