package com.tencent.rtmp;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class TXVodPlayConfig {
    String mCacheFolderPath;
    Map<String, String> mHeaders;
    int mMaxCacheItems;
    String mOverlayIv;
    String mOverlayKey;
    int mPlayerType;
    int progressInterval;
    int mConnectRetryCount = 3;
    int mConnectRetryInterval = 3;
    int mTimeout = 10;
    boolean enableAccurateSeek = true;
    boolean autoRotate = true;
    boolean smoothSwitchBitrate = false;
    String cacheMp4ExtName = "mp4";
    int maxBufferSize = 0;
    int maxPreloadSize = 0;
    int mFirstStartPlayBufferTime = 0;
    int mNextStartPlayBufferTime = 0;
    Map<String, Object> mExtInfoMap = new ConcurrentHashMap();
    public boolean mEnableRenderProcess = true;
    public long mPreferredResolution = -1;

    public void setConnectRetryCount(int i) {
        this.mConnectRetryCount = i;
    }

    public void setConnectRetryInterval(int i) {
        this.mConnectRetryInterval = i;
    }

    public void setTimeout(int i) {
        this.mTimeout = i;
    }

    public void setCacheFolderPath(String str) {
        this.mCacheFolderPath = str;
    }

    public void setMaxCacheItems(int i) {
        this.mMaxCacheItems = i;
    }

    public void setPlayerType(int i) {
        this.mPlayerType = i;
    }

    public void setHeaders(Map<String, String> map) {
        this.mHeaders = map;
    }

    public void setEnableAccurateSeek(boolean z) {
        this.enableAccurateSeek = z;
    }

    public void setAutoRotate(boolean z) {
        this.autoRotate = z;
    }

    public void setSmoothSwitchBitrate(boolean z) {
        this.smoothSwitchBitrate = z;
    }

    public void setCacheMp4ExtName(String str) {
        this.cacheMp4ExtName = str;
    }

    public void setProgressInterval(int i) {
        this.progressInterval = i;
    }

    public void setMaxBufferSize(int i) {
        this.maxBufferSize = i;
    }

    public void setMaxPreloadSize(int i) {
        this.maxPreloadSize = i;
    }

    public void setFirstStartPlayBufferTime(int i) {
        this.mFirstStartPlayBufferTime = i;
    }

    public void setNextStartPlayBufferTime(int i) {
        this.mNextStartPlayBufferTime = i;
    }

    public void setOverlayKey(String str) {
        this.mOverlayKey = str;
    }

    public void setOverlayIv(String str) {
        this.mOverlayIv = str;
    }

    public void setExtInfo(Map<String, Object> map) {
        this.mExtInfoMap.clear();
        this.mExtInfoMap.putAll(map);
    }

    public long getPreferredResolution() {
        return this.mPreferredResolution;
    }

    public void setPreferredResolution(long j) {
        this.mPreferredResolution = j;
    }
}
