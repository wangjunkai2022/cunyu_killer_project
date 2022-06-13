package com.tencent.thumbplayer.core.common;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.os.Build;
import android.text.TextUtils;
import com.tencent.thumbplayer.core.thirdparties.LocalCache;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public final class TPMediaDecoderList {
    private static final String MEDIA_DECODER_INFO_KEY = "DecoderInfos_Key";
    private static String MEDIA_DECODER_VERSION = "2.27.0.1016.min";
    private static final String MEDIA_DECODER_VERSION_KEY = "Version_Key";
    private static final String TAG = "TPMediaDecoderList";
    private static TPMediaDecoderInfo[] sDecoderInfos;

    private static String buildCacheDecoderVersion() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(MEDIA_DECODER_VERSION);
        stringBuffer.append("_");
        stringBuffer.append(TPSystemInfo.getDeviceName());
        stringBuffer.append("_");
        stringBuffer.append(TPSystemInfo.getProductBoard());
        stringBuffer.append("_");
        stringBuffer.append(TPSystemInfo.getProductDevice());
        stringBuffer.append("_");
        stringBuffer.append(TPSystemInfo.getApiLevel());
        return stringBuffer.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static void cacheDecoderInfos(LocalCache localCache, TPMediaDecoderInfo[] tPMediaDecoderInfoArr) {
        try {
            localCache.put("DecoderInfos_Key", (Serializable) tPMediaDecoderInfoArr);
        } catch (Throwable unused) {
            TPNativeLog.printLog(4, "TPMediaDecoderList", "cache decode infos failed");
        }
    }

    private static void cacheVersion(LocalCache localCache, String str) {
        try {
            localCache.put("Version_Key", str);
        } catch (Throwable unused) {
            TPNativeLog.printLog(4, "TPMediaDecoderList", "cache version failed");
        }
    }

    private static TPMediaDecoderInfo[] getCachedDecoderInfos(LocalCache localCache) {
        try {
            return (TPMediaDecoderInfo[]) localCache.getAsObject("DecoderInfos_Key");
        } catch (Throwable unused) {
            TPNativeLog.printLog(4, "TPMediaDecoderList", "get decoder info failed");
            return null;
        }
    }

    private static String getCachedVersion(LocalCache localCache) {
        try {
            String asString = localCache.getAsString("Version_Key");
            TPNativeLog.printLog(2, "TPMediaDecoderList", "version:" + asString);
            return asString;
        } catch (Throwable unused) {
            TPNativeLog.printLog(4, "TPMediaDecoderList", "get version failed");
            return null;
        }
    }

    private static final MediaCodecInfo[] getCodecInfos() {
        if (Build.VERSION.SDK_INT < 16) {
            return new MediaCodecInfo[0];
        }
        if (Build.VERSION.SDK_INT < 21) {
            int codecCount = MediaCodecList.getCodecCount();
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < codecCount; i++) {
                arrayList.add(MediaCodecList.getCodecInfoAt(i));
            }
            return (MediaCodecInfo[]) arrayList.toArray(new MediaCodecInfo[arrayList.size()]);
        }
        try {
            return new MediaCodecList(1).getCodecInfos();
        } catch (Exception e) {
            TPNativeLog.printLog(4, "getCodecInfos MediaCodecList " + e.getMessage());
            return new MediaCodecInfo[0];
        }
    }

    private static final TPMediaDecoderInfo[] getLocalCacheMediaCodecList(LocalCache localCache) {
        TPMediaDecoderInfo[] cachedDecoderInfos;
        TPNativeLog.printLog(2, "getLocalCacheMediaCodecList");
        if (!TextUtils.equals(getCachedVersion(localCache), buildCacheDecoderVersion()) || (cachedDecoderInfos = getCachedDecoderInfos(localCache)) == null) {
            return null;
        }
        TPNativeLog.printLog(2, "getCachedDecoderInfos length " + cachedDecoderInfos.length);
        return cachedDecoderInfos;
    }

    private static final TPMediaDecoderInfo[] getSystemMediaCodecList() {
        TPNativeLog.printLog(2, "getSystemMediaCodecList");
        MediaCodecInfo[] codecInfos = getCodecInfos();
        if (codecInfos == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (MediaCodecInfo mediaCodecInfo : codecInfos) {
            if (!mediaCodecInfo.isEncoder()) {
                String[] supportedTypes = mediaCodecInfo.getSupportedTypes();
                for (String str : supportedTypes) {
                    TPMediaDecoderInfo tPMediaDecoderInfo = new TPMediaDecoderInfo(str, mediaCodecInfo.getName(), mediaCodecInfo.getCapabilitiesForType(str));
                    if (!tPMediaDecoderInfo.isVideoSofwareDecoder()) {
                        TPNativeLog.printLog(2, "MediaCodecList codecName " + mediaCodecInfo.getName() + "supportedType " + str);
                        arrayList.add(tPMediaDecoderInfo);
                    }
                }
            }
        }
        return (TPMediaDecoderInfo[]) arrayList.toArray(new TPMediaDecoderInfo[arrayList.size()]);
    }

    public static final synchronized TPMediaDecoderInfo[] getTPMediaDecoderInfos(LocalCache localCache) {
        TPMediaDecoderInfo[] tPMediaDecoderInfoArr;
        synchronized (TPMediaDecoderList.class) {
            if (sDecoderInfos == null) {
                sDecoderInfos = initCodecList(localCache);
            }
            tPMediaDecoderInfoArr = sDecoderInfos == null ? new TPMediaDecoderInfo[0] : (TPMediaDecoderInfo[]) Arrays.copyOf(sDecoderInfos, sDecoderInfos.length);
        }
        return tPMediaDecoderInfoArr;
    }

    private static final TPMediaDecoderInfo[] initCodecList(LocalCache localCache) {
        TPMediaDecoderInfo[] localCacheMediaCodecList = getLocalCacheMediaCodecList(localCache);
        if (localCacheMediaCodecList != null) {
            return localCacheMediaCodecList;
        }
        TPMediaDecoderInfo[] systemMediaCodecList = getSystemMediaCodecList();
        storeLocalCacheMediaCodecList(localCache, systemMediaCodecList);
        return systemMediaCodecList;
    }

    private static final void storeLocalCacheMediaCodecList(LocalCache localCache, TPMediaDecoderInfo[] tPMediaDecoderInfoArr) {
        TPNativeLog.printLog(2, "storeLocalCacheMediaCodecList");
        cacheDecoderInfos(localCache, tPMediaDecoderInfoArr);
        cacheVersion(localCache, buildCacheDecoderVersion());
    }
}
