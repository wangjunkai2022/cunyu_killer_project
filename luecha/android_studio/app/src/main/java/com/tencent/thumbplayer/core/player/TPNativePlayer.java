package com.tencent.thumbplayer.core.player;

import android.content.Context;
import android.os.Build;
import android.view.Surface;
import com.tencent.thumbplayer.core.common.TPAudioPassThroughPluginDetector;
import com.tencent.thumbplayer.core.common.TPHeadsetPluginDetector;
import com.tencent.thumbplayer.core.common.TPMediaTrackInfo;
import com.tencent.thumbplayer.core.common.TPNativeLibraryLoader;
import com.tencent.thumbplayer.core.common.TPNativeLog;
import com.tencent.thumbplayer.core.common.TPScreenRefreshRateDetector;
import com.tencent.thumbplayer.core.common.TPSystemInfo;
import com.tencent.thumbplayer.core.demuxer.ITPNativeDemuxerCallback;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Vector;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class TPNativePlayer {
    private Context mContext;
    private long mNativeContext;
    private int m_playerID;

    public TPNativePlayer(Context context) {
        this.m_playerID = -1;
        this.mContext = null;
        this.mContext = context.getApplicationContext();
        TPNativeLibraryLoader.loadLibIfNeeded(context);
        try {
            this.m_playerID = _createPlayer();
            TPHeadsetPluginDetector.init(this.mContext);
            TPAudioPassThroughPluginDetector.init(this.mContext);
            if (Build.VERSION.SDK_INT >= 17) {
                TPScreenRefreshRateDetector.init(this.mContext);
            }
            TPSystemInfo.initAudioBestSettings(this.mContext);
        } catch (Throwable th) {
            TPNativeLog.printLog(4, "Failed to create native player:" + th.getMessage());
            throw new UnsupportedOperationException("Failed to create native player");
        }
    }

    private native int _addAudioTrackSource(String str, String str2);

    private native int _addInitConfigQueueInt(int i, int i2);

    private native int _addInitConfigQueueString(int i, String str);

    private native int _addSubtitleTrackSource(String str, String str2);

    private native int _applyInitConfig();

    private native int _createPlayer();

    private native int _deselectTrackAsync(int i, long j);

    private native long _getBufferedDurationMs();

    private native long _getBufferedSize();

    private native long _getCurrentPositionMs();

    private native long _getDemuxerOffsetInFile();

    private native long _getDurationMs();

    private native TPDynamicStatisticParams _getDynamicStatisticParams(boolean z);

    private native TPGeneralPlayFlowParams _getGeneralPlayFlowParams();

    private static native Object _getPlayerCoreParams(int i);

    private native int _getPlayerID();

    private native int _getProgramCount();

    private native TPNativePlayerProgramInfo _getProgramInfo(int i);

    private native long _getPropertyLong(int i);

    private native String _getPropertyString(int i);

    private native int _getTrackCount();

    private native TPNativePlayerHlsTag _getTrackHlsTag(int i);

    private native boolean _getTrackIsExclusive(int i);

    private native boolean _getTrackIsInternal(int i);

    private native boolean _getTrackIsSelected(int i);

    private native String _getTrackName(int i);

    private native int _getTrackType(int i);

    private native int _getVideoHeight();

    private native int _getVideoWidth();

    private native int _pause();

    private static native void _playerCoreNativeSetup();

    private native int _prepare();

    private native int _prepareAsync();

    private native int _release();

    private native int _reset();

    private native int _resetInitConfig();

    private native int _resume();

    private native int _seekToAsync(int i, int i2, long j);

    private native int _selectProgramAsync(int i, long j);

    private native int _selectTrackAsync(int i, long j);

    private native int _setAudioFrameCallback(Object obj);

    private native int _setAudioMute(boolean z);

    private native int _setAudioNormalizeVolumeParams(String str);

    private native int _setAudioVolume(float f);

    private native int _setDataSource(String str);

    private native int _setDataSourceFd(int i, long j, long j2);

    private native int _setDataSourceWithHttpHeader(String str, Object[] objArr);

    private native int _setDemuxerCallback(Object obj);

    private native int _setEventRecordCallback(Object obj);

    private native int _setInitConfigBool(int i, boolean z);

    private native int _setInitConfigFloat(int i, float f);

    private native int _setInitConfigInt(int i, int i2);

    private native int _setInitConfigLong(int i, long j);

    private native int _setInitConfigObject(int i, Object obj);

    private native int _setInitConfigString(int i, String str);

    private native int _setLoopback(boolean z, long j, long j2);

    private native int _setMessageCallback(Object obj);

    private native int _setOptionLong(int i, long j, long j2);

    private native int _setOptionObject(int i, Object obj);

    private native int _setPlaybackRate(float f);

    private native int _setPostProcessFrameCallback(Object obj);

    private native int _setSubtitleFrameCallback(Object obj);

    private native int _setVideoFrameCallback(Object obj);

    private native int _setVideoSurface(Surface surface);

    private native int _setVideoSurfaceWithType(Surface surface, int i);

    private native int _start();

    private native int _stop();

    private native int _switchDefinitionAsync(String str, int i, long j);

    private native int _switchDefinitionAsyncWithHttpHeader(String str, Object[] objArr, int i, long j);

    public static void playerCoreNativeSetup(Context context) {
        TPNativeLibraryLoader.loadLibIfNeeded(context);
        try {
            _playerCoreNativeSetup();
        } catch (Throwable th) {
            TPNativeLog.printLog(4, th.getMessage());
        }
    }

    public int addAudioTrackSource(String str, String str2) {
        try {
            return _addAudioTrackSource(str, str2);
        } catch (Throwable th) {
            TPNativeLog.printLog(4, th.getMessage());
            return 1000001;
        }
    }

    public int addSubtitleTrackSource(String str, String str2) {
        try {
            return _addSubtitleTrackSource(str, str2);
        } catch (Throwable th) {
            TPNativeLog.printLog(4, th.getMessage());
            return 1000001;
        }
    }

    public int deselectTrackAsync(int i, long j) {
        try {
            return _deselectTrackAsync(i, j);
        } catch (Throwable th) {
            TPNativeLog.printLog(4, th.getMessage());
            return 1000001;
        }
    }

    public long getBufferedDurationMs() {
        try {
            return _getBufferedDurationMs();
        } catch (Throwable th) {
            TPNativeLog.printLog(4, th.getMessage());
            return 0;
        }
    }

    public long getBufferedSize() {
        try {
            return _getBufferedSize();
        } catch (Throwable th) {
            TPNativeLog.printLog(4, th.getMessage());
            return 0;
        }
    }

    public long getCurrentPositionMs() {
        try {
            return _getCurrentPositionMs();
        } catch (Throwable th) {
            TPNativeLog.printLog(4, th.getMessage());
            return 0;
        }
    }

    public long getDemuxerOffsetInFile() {
        try {
            return _getDemuxerOffsetInFile();
        } catch (Throwable th) {
            TPNativeLog.printLog(4, th.getMessage());
            return -1;
        }
    }

    public long getDurationMs() {
        try {
            return _getDurationMs();
        } catch (Throwable th) {
            TPNativeLog.printLog(4, th.getMessage());
            return 0;
        }
    }

    public TPDynamicStatisticParams getDynamicStatisticParams(boolean z) {
        try {
            return _getDynamicStatisticParams(z);
        } catch (Throwable th) {
            TPNativeLog.printLog(4, th.getMessage());
            return null;
        }
    }

    public TPGeneralPlayFlowParams getGeneralPlayFlowParams() {
        try {
            return _getGeneralPlayFlowParams();
        } catch (Throwable th) {
            TPNativeLog.printLog(4, th.getMessage());
            return null;
        }
    }

    public Object getPlayerCoreParams(int i) {
        return null;
    }

    public int getPlayerID() {
        try {
            return _getPlayerID();
        } catch (Throwable th) {
            TPNativeLog.printLog(4, th.getMessage());
            return 0;
        }
    }

    public int getProgramCount() {
        try {
            return _getProgramCount();
        } catch (Throwable th) {
            TPNativeLog.printLog(4, th.getMessage());
            return 1000001;
        }
    }

    public TPNativePlayerProgramInfo[] getProgramInfo() {
        try {
            int _getProgramCount = _getProgramCount();
            TPNativePlayerProgramInfo[] tPNativePlayerProgramInfoArr = new TPNativePlayerProgramInfo[_getProgramCount];
            for (int i = 0; i < _getProgramCount; i++) {
                tPNativePlayerProgramInfoArr[i] = _getProgramInfo(i);
            }
            return tPNativePlayerProgramInfoArr;
        } catch (Throwable th) {
            TPNativeLog.printLog(4, th.getMessage());
            return null;
        }
    }

    public long getPropertyLong(int i) {
        try {
            return _getPropertyLong(i);
        } catch (Throwable th) {
            TPNativeLog.printLog(4, th.getMessage());
            return 0;
        }
    }

    public String getPropertyString(int i) {
        try {
            return _getPropertyString(i);
        } catch (Throwable th) {
            TPNativeLog.printLog(4, th.getMessage());
            return "";
        }
    }

    public TPMediaTrackInfo[] getTrackInfo() {
        try {
            int _getTrackCount = _getTrackCount();
            if (_getTrackCount <= 0) {
                return null;
            }
            TPMediaTrackInfo[] tPMediaTrackInfoArr = new TPMediaTrackInfo[_getTrackCount];
            for (int i = 0; i < _getTrackCount; i++) {
                tPMediaTrackInfoArr[i] = new TPMediaTrackInfo();
                tPMediaTrackInfoArr[i].trackType = _getTrackType(i);
                tPMediaTrackInfoArr[i].trackName = _getTrackName(i);
                tPMediaTrackInfoArr[i].isSelected = _getTrackIsSelected(i);
                tPMediaTrackInfoArr[i].isExclusive = _getTrackIsExclusive(i);
                tPMediaTrackInfoArr[i].isInternal = _getTrackIsInternal(i);
                TPNativePlayerHlsTag _getTrackHlsTag = _getTrackHlsTag(i);
                tPMediaTrackInfoArr[i].hlsTag.name = _getTrackHlsTag.name;
                tPMediaTrackInfoArr[i].hlsTag.language = _getTrackHlsTag.language;
                tPMediaTrackInfoArr[i].hlsTag.groupId = _getTrackHlsTag.groupId;
                tPMediaTrackInfoArr[i].hlsTag.resolution = _getTrackHlsTag.resolution;
                tPMediaTrackInfoArr[i].hlsTag.codecs = _getTrackHlsTag.codecs;
                tPMediaTrackInfoArr[i].hlsTag.framerate = _getTrackHlsTag.framerate;
                tPMediaTrackInfoArr[i].hlsTag.bandwidth = _getTrackHlsTag.bandwidth;
            }
            return tPMediaTrackInfoArr;
        } catch (Throwable th) {
            TPNativeLog.printLog(4, th.getMessage());
            return null;
        }
    }

    public int getVideoHeight() {
        try {
            return _getVideoHeight();
        } catch (Throwable th) {
            TPNativeLog.printLog(4, th.getMessage());
            return 0;
        }
    }

    public int getVideoWidth() {
        try {
            return _getVideoWidth();
        } catch (Throwable th) {
            TPNativeLog.printLog(4, th.getMessage());
            return 0;
        }
    }

    public int pause() {
        try {
            return _pause();
        } catch (Throwable th) {
            TPNativeLog.printLog(4, th.getMessage());
            return 1000001;
        }
    }

    public int prepare() {
        try {
            return _prepare();
        } catch (Throwable th) {
            TPNativeLog.printLog(4, th.getMessage());
            return 1000001;
        }
    }

    public int prepareAsync() {
        try {
            return _prepareAsync();
        } catch (Throwable th) {
            TPNativeLog.printLog(4, th.getMessage());
            return 1000001;
        }
    }

    public void release() {
        try {
            _release();
        } catch (Throwable th) {
            TPNativeLog.printLog(4, th.getMessage());
        }
    }

    public void reset() {
        try {
            _reset();
        } catch (Throwable th) {
            TPNativeLog.printLog(4, th.getMessage());
        }
    }

    public int seekToAsync(int i, int i2, long j) {
        try {
            return _seekToAsync(i, i2, j);
        } catch (Throwable th) {
            TPNativeLog.printLog(4, th.getMessage());
            return 1000001;
        }
    }

    public int selectProgramAsync(int i, long j) {
        try {
            return _selectProgramAsync(i, j);
        } catch (Throwable th) {
            TPNativeLog.printLog(4, th.getMessage());
            return 1000001;
        }
    }

    public int selectTrackAsync(int i, long j) {
        try {
            return _selectTrackAsync(i, j);
        } catch (Throwable th) {
            TPNativeLog.printLog(4, th.getMessage());
            return 1000001;
        }
    }

    public int setAudioFrameCallback(ITPNativePlayerAudioFrameCallback iTPNativePlayerAudioFrameCallback) {
        try {
            return _setAudioFrameCallback(iTPNativePlayerAudioFrameCallback);
        } catch (Throwable th) {
            TPNativeLog.printLog(4, th.getMessage());
            return 1000001;
        }
    }

    public int setAudioMute(boolean z) {
        try {
            return _setAudioMute(z);
        } catch (Throwable th) {
            TPNativeLog.printLog(4, th.getMessage());
            return 1000001;
        }
    }

    public int setAudioNormalizeVolumeParams(String str) {
        try {
            return _setAudioNormalizeVolumeParams(str);
        } catch (Throwable th) {
            TPNativeLog.printLog(4, th.getMessage());
            return 1000001;
        }
    }

    public int setAudioVolume(float f) {
        try {
            return _setAudioVolume(f);
        } catch (Throwable th) {
            TPNativeLog.printLog(4, th.getMessage());
            return 1000001;
        }
    }

    public int setDataSource(int i, long j, long j2) {
        try {
            return _setDataSourceFd(i, j, j2);
        } catch (Throwable th) {
            TPNativeLog.printLog(4, th.getMessage());
            return 1000001;
        }
    }

    public int setDataSource(String str) {
        try {
            return _setDataSource(str);
        } catch (Throwable th) {
            TPNativeLog.printLog(4, th.getMessage());
            return 1000001;
        }
    }

    public int setDataSource(String str, Map<String, String> map) {
        String[] strArr;
        int i = 0;
        if (map != null) {
            try {
                if (map.size() != 0) {
                    strArr = new String[map.size() * 2];
                    for (String str2 : map.keySet()) {
                        int i2 = i * 2;
                        strArr[i2] = str2;
                        strArr[i2 + 1] = map.get(str2);
                        i++;
                    }
                    return _setDataSourceWithHttpHeader(str, strArr);
                }
            } catch (Throwable th) {
                TPNativeLog.printLog(4, th.getMessage());
                return 1000001;
            }
        }
        strArr = new String[0];
        return _setDataSourceWithHttpHeader(str, strArr);
    }

    public int setDemuxerCallback(ITPNativeDemuxerCallback iTPNativeDemuxerCallback) {
        try {
            return _setDemuxerCallback(iTPNativeDemuxerCallback);
        } catch (Throwable th) {
            TPNativeLog.printLog(4, th.getMessage());
            return 1000001;
        }
    }

    public int setEventRecordCallback(ITPNativePlayerEventRecordCallback iTPNativePlayerEventRecordCallback) {
        try {
            return _setEventRecordCallback(iTPNativePlayerEventRecordCallback);
        } catch (Throwable th) {
            TPNativeLog.printLog(4, th.getMessage());
            return 1000001;
        }
    }

    public void setInitConfig(TPNativePlayerInitConfig tPNativePlayerInitConfig) {
        try {
            _resetInitConfig();
            HashMap<Integer, Integer> intMap = tPNativePlayerInitConfig.getIntMap();
            HashMap<Integer, Long> longMap = tPNativePlayerInitConfig.getLongMap();
            HashMap<Integer, Float> floatMap = tPNativePlayerInitConfig.getFloatMap();
            HashMap<Integer, Boolean> boolMap = tPNativePlayerInitConfig.getBoolMap();
            HashMap<Integer, Vector<Integer>> queueIntMap = tPNativePlayerInitConfig.getQueueIntMap();
            HashMap<Integer, Object> objectMap = tPNativePlayerInitConfig.getObjectMap();
            HashMap<Integer, String> stringMap = tPNativePlayerInitConfig.getStringMap();
            for (Map.Entry<Integer, Integer> entry : intMap.entrySet()) {
                _setInitConfigInt(entry.getKey().intValue(), entry.getValue().intValue());
            }
            for (Map.Entry<Integer, Long> entry2 : longMap.entrySet()) {
                _setInitConfigLong(entry2.getKey().intValue(), entry2.getValue().longValue());
            }
            for (Map.Entry<Integer, Float> entry3 : floatMap.entrySet()) {
                _setInitConfigFloat(entry3.getKey().intValue(), entry3.getValue().floatValue());
            }
            for (Map.Entry<Integer, Boolean> entry4 : boolMap.entrySet()) {
                _setInitConfigBool(entry4.getKey().intValue(), entry4.getValue().booleanValue());
            }
            for (Map.Entry<Integer, Object> entry5 : objectMap.entrySet()) {
                _setInitConfigObject(entry5.getKey().intValue(), entry5.getValue());
            }
            for (Map.Entry<Integer, Vector<Integer>> entry6 : queueIntMap.entrySet()) {
                Vector<Integer> value = entry6.getValue();
                if (value != null) {
                    Iterator<Integer> it = value.iterator();
                    while (it.hasNext()) {
                        _addInitConfigQueueInt(entry6.getKey().intValue(), it.next().intValue());
                    }
                }
            }
            for (Map.Entry<Integer, String> entry7 : stringMap.entrySet()) {
                String value2 = entry7.getValue();
                _setInitConfigString(entry7.getKey().intValue(), value2 != null ? value2 : null);
            }
            for (Map.Entry<Integer, Vector<String>> entry8 : tPNativePlayerInitConfig.getQueueStringMap().entrySet()) {
                Vector<String> value3 = entry8.getValue();
                if (value3 != null) {
                    Iterator<String> it2 = value3.iterator();
                    while (it2.hasNext()) {
                        _addInitConfigQueueString(entry8.getKey().intValue(), it2.next());
                    }
                }
            }
            _applyInitConfig();
        } catch (Throwable th) {
            TPNativeLog.printLog(4, th.getMessage());
        }
    }

    public int setLoopback(boolean z, long j, long j2) {
        try {
            return _setLoopback(z, j, j2);
        } catch (Throwable th) {
            TPNativeLog.printLog(4, th.getMessage());
            return 1000001;
        }
    }

    public int setMessageCallback(ITPNativePlayerMessageCallback iTPNativePlayerMessageCallback) {
        try {
            return _setMessageCallback(iTPNativePlayerMessageCallback);
        } catch (Throwable th) {
            TPNativeLog.printLog(4, th.getMessage());
            return 1000001;
        }
    }

    public int setOptionLong(int i, long j, long j2) {
        try {
            return _setOptionLong(i, j, j2);
        } catch (Throwable th) {
            TPNativeLog.printLog(4, th.getMessage());
            return 1000001;
        }
    }

    public int setOptionObject(int i, Object obj) {
        try {
            return _setOptionObject(i, obj);
        } catch (Throwable th) {
            TPNativeLog.printLog(4, th.getMessage());
            return 1000001;
        }
    }

    public int setPlaybackRate(float f) {
        try {
            return _setPlaybackRate(f);
        } catch (Throwable th) {
            TPNativeLog.printLog(4, th.getMessage());
            return 1000001;
        }
    }

    public int setPostProcessFrameCallback(ITPNativePlayerPostProcessFrameCallback iTPNativePlayerPostProcessFrameCallback) {
        try {
            return _setPostProcessFrameCallback(iTPNativePlayerPostProcessFrameCallback);
        } catch (Throwable th) {
            TPNativeLog.printLog(4, th.getMessage());
            return 1000001;
        }
    }

    public int setSubtitleFrameCallback(ITPNativePlayerSubtitleFrameCallback iTPNativePlayerSubtitleFrameCallback) {
        try {
            return _setSubtitleFrameCallback(iTPNativePlayerSubtitleFrameCallback);
        } catch (Throwable th) {
            TPNativeLog.printLog(4, th.getMessage());
            return 1000001;
        }
    }

    public int setVideoFrameCallback(ITPNativePlayerVideoFrameCallback iTPNativePlayerVideoFrameCallback) {
        try {
            return _setVideoFrameCallback(iTPNativePlayerVideoFrameCallback);
        } catch (Throwable th) {
            TPNativeLog.printLog(4, th.getMessage());
            return 1000001;
        }
    }

    public int setVideoSurface(Surface surface) {
        try {
            return _setVideoSurface(surface);
        } catch (Throwable th) {
            TPNativeLog.printLog(4, th.getMessage());
            return 1000001;
        }
    }

    public int setVideoSurfaceWithType(Surface surface, int i) {
        try {
            return _setVideoSurfaceWithType(surface, i);
        } catch (Throwable th) {
            TPNativeLog.printLog(4, th.getMessage());
            return 1000001;
        }
    }

    public int start() {
        try {
            return _start();
        } catch (Throwable th) {
            TPNativeLog.printLog(4, th.getMessage());
            return 1000001;
        }
    }

    public int stop() {
        try {
            return _stop();
        } catch (Throwable th) {
            TPNativeLog.printLog(4, th.getMessage());
            return 1000001;
        }
    }

    public int switchDefinitionAsync(String str, int i, long j) {
        try {
            return _switchDefinitionAsync(str, i, j);
        } catch (Throwable th) {
            TPNativeLog.printLog(4, th.getMessage());
            return 1000001;
        }
    }

    @Deprecated
    public int switchDefinitionAsync(String str, long j) {
        return switchDefinitionAsync(str, 0, j);
    }

    public int switchDefinitionAsync(String str, Map<String, String> map, int i, long j) {
        String[] strArr;
        int i2 = 0;
        if (map != null) {
            try {
                if (map.size() != 0) {
                    strArr = new String[map.size() * 2];
                    for (String str2 : map.keySet()) {
                        int i3 = i2 * 2;
                        strArr[i3] = str2;
                        strArr[i3 + 1] = map.get(str2);
                        i2++;
                    }
                    return _switchDefinitionAsyncWithHttpHeader(str, strArr, i, j);
                }
            } catch (Throwable th) {
                TPNativeLog.printLog(4, th.getMessage());
                return 1000001;
            }
        }
        strArr = new String[0];
        return _switchDefinitionAsyncWithHttpHeader(str, strArr, i, j);
    }
}
