package com.tencent.thumbplayer.core.decoder;

import android.os.Build;
import android.util.SparseArray;
import android.view.Surface;
import com.tencent.thumbplayer.core.common.TPNativeLog;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes2.dex */
public class TPMediaCodecManager {
    private static final String TAG = "TPMediaCodecManager";
    private static SparseArray<ITPMediaCodecDecoder> mCodecList = new SparseArray<>();
    private static AtomicInteger codecNum = new AtomicInteger(0);

    private static native void _onMediaCodecException(int i, String str);

    private static native void _onMediaCodecReady(int i, String str);

    private static native void _onMediaDrmInfo(int i, Object obj);

    private static void addCodecToList(int i, ITPMediaCodecDecoder iTPMediaCodecDecoder) {
        synchronized (TPMediaCodecManager.class) {
            mCodecList.put(i, iTPMediaCodecDecoder);
        }
    }

    public static int createMediaCodec(boolean z) {
        if (codecNum.get() >= Integer.MAX_VALUE) {
            codecNum.set(0);
        }
        int andIncrement = codecNum.getAndIncrement();
        addCodecToList(andIncrement, z ? new TPMediaCodecAudioDecoder(andIncrement) : new TPMediaCodecVideoDecoder(andIncrement));
        return andIncrement;
    }

    public static int flushMediaCodec(int i) {
        ITPMediaCodecDecoder codecById = getCodecById(i);
        if (codecById != null) {
            return codecById.flush();
        }
        TPNativeLog.printLog(3, TAG, "flushMediaCodec failed!");
        return 3;
    }

    private static ITPMediaCodecDecoder getCodecById(int i) {
        ITPMediaCodecDecoder iTPMediaCodecDecoder;
        synchronized (TPMediaCodecManager.class) {
            iTPMediaCodecDecoder = mCodecList.get(i);
        }
        if (iTPMediaCodecDecoder != null) {
            return iTPMediaCodecDecoder;
        }
        TPNativeLog.printLog(3, TAG, "No such codec by id:" + i);
        return null;
    }

    public static int getSDKVersion() {
        return Build.VERSION.SDK_INT;
    }

    public static boolean initAudioMediaCodec(int i, String str, int i2, int i3, int i4, int i5) {
        ITPMediaCodecDecoder codecById = getCodecById(i);
        if (codecById == null) {
            TPNativeLog.printLog(3, TAG, "initAudioMediaCodec failed!");
            return false;
        } else if (!codecById.initDecoder(str, i2, i3, i4, i5)) {
            return false;
        } else {
            return codecById.startDecoder();
        }
    }

    public static boolean initVideoMediaCodec(int i, String str, int i2, int i3, int i4, Surface surface, int i5, int i6, int i7) {
        ITPMediaCodecDecoder codecById = getCodecById(i);
        if (codecById == null) {
            TPNativeLog.printLog(3, TAG, "initVideoMediaCodec failed!");
            return false;
        } else if (!codecById.initDecoder(str, i2, i3, i4, surface, i5, i6, i7)) {
            return false;
        } else {
            return codecById.startDecoder();
        }
    }

    public static void onMediaCodecException(int i, String str) {
        _onMediaCodecException(i, str);
    }

    public static void onMediaCodecReady(int i, String str) {
        _onMediaCodecReady(i, str);
    }

    public static void onMediaDrmInfo(int i, Object obj) {
        _onMediaDrmInfo(i, obj);
    }

    public static TPFrameInfo receiveOneFrame(int i) {
        ITPMediaCodecDecoder codecById = getCodecById(i);
        if (codecById != null) {
            return codecById.dequeueOutputBuffer();
        }
        TPNativeLog.printLog(3, TAG, "receiveOneFrame failed!");
        return null;
    }

    public static int releaseMediaCodec(int i) {
        ITPMediaCodecDecoder codecById = getCodecById(i);
        if (codecById == null) {
            TPNativeLog.printLog(3, TAG, "releaseMediaCodec failed!");
            return 3;
        }
        removeCodecFromList(i);
        return codecById.release();
    }

    public static int releaseVideoFrame(int i, int i2, boolean z) {
        ITPMediaCodecDecoder codecById = getCodecById(i);
        if (codecById != null) {
            return codecById.releaseOutputBuffer(i2, z);
        }
        TPNativeLog.printLog(3, TAG, "releaseVideoFrame failed!");
        return 3;
    }

    private static void removeCodecFromList(int i) {
        synchronized (TPMediaCodecManager.class) {
            mCodecList.remove(i);
        }
    }

    public static int sendOnePacket(int i, byte[] bArr, boolean z, long j, boolean z2) {
        ITPMediaCodecDecoder codecById = getCodecById(i);
        if (codecById != null) {
            return codecById.decode(bArr, z, j, z2);
        }
        TPNativeLog.printLog(3, TAG, "sendOnePacket failed!");
        return 3;
    }

    public static void setCryptoInfo(int i, int i2, int[] iArr, int[] iArr2, byte[] bArr, byte[] bArr2, int i3) {
        ITPMediaCodecDecoder codecById = getCodecById(i);
        if (codecById == null) {
            TPNativeLog.printLog(3, TAG, "setMediaCodecParamObject failed!");
        } else {
            codecById.setCryptoInfo(i2, iArr, iArr2, bArr, bArr2, i3);
        }
    }

    public static int setMediaCodecOperateRate(int i, float f) {
        ITPMediaCodecDecoder codecById = getCodecById(i);
        if (codecById != null) {
            return codecById.setOperateRate(f);
        }
        TPNativeLog.printLog(3, TAG, "setMediaCodecOperateRate failed!");
        return 3;
    }

    public static boolean setMediaCodecParamBool(int i, int i2, boolean z) {
        ITPMediaCodecDecoder codecById = getCodecById(i);
        if (codecById != null) {
            return codecById.setParamBool(i2, z);
        }
        TPNativeLog.printLog(3, TAG, "setMediaCodecParamBool failed!");
        return false;
    }

    public static boolean setMediaCodecParamBytes(int i, int i2, byte[] bArr) {
        ITPMediaCodecDecoder codecById = getCodecById(i);
        if (codecById != null) {
            return codecById.setParamBytes(i2, bArr);
        }
        TPNativeLog.printLog(3, TAG, "setMediaCodecParamBytes failed!");
        return false;
    }

    public static boolean setMediaCodecParamInt(int i, int i2, int i3) {
        ITPMediaCodecDecoder codecById = getCodecById(i);
        if (codecById != null) {
            return codecById.setParamInt(i2, i3);
        }
        TPNativeLog.printLog(3, TAG, "setMediaCodecParamInt failed!");
        return false;
    }

    public static boolean setMediaCodecParamLong(int i, int i2, long j) {
        ITPMediaCodecDecoder codecById = getCodecById(i);
        if (codecById != null) {
            return codecById.setParamLong(i2, j);
        }
        TPNativeLog.printLog(3, TAG, "setMediaCodecParamLong failed!");
        return false;
    }

    public static boolean setMediaCodecParamObject(int i, int i2, Object obj) {
        ITPMediaCodecDecoder codecById = getCodecById(i);
        if (codecById != null) {
            return codecById.setParamObject(i2, obj);
        }
        TPNativeLog.printLog(3, TAG, "setMediaCodecParamObject failed!");
        return false;
    }

    public static boolean setMediaCodecParamString(int i, int i2, String str) {
        ITPMediaCodecDecoder codecById = getCodecById(i);
        if (codecById != null) {
            return codecById.setParamString(i2, str);
        }
        TPNativeLog.printLog(3, TAG, "setMediaCodecParamString failed!");
        return false;
    }

    public static int setMediaCodecSurface(int i, Surface surface) {
        ITPMediaCodecDecoder codecById = getCodecById(i);
        if (codecById != null) {
            return codecById.setOutputSurface(surface);
        }
        TPNativeLog.printLog(3, TAG, "setMediaCodecSurface failed!");
        return 3;
    }

    public static int signalEndOfStream(int i) {
        ITPMediaCodecDecoder codecById = getCodecById(i);
        if (codecById != null) {
            return codecById.signalEndOfStream();
        }
        TPNativeLog.printLog(3, TAG, "signalEndOfStream failed!");
        return 3;
    }
}
