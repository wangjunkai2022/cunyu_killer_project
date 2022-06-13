package com.tencent.liteav.audio.impl.route;

import android.content.Context;
import android.media.AudioManager;
import com.tencent.liteav.audio.impl.TXCAudioEngineJNI;
import com.tencent.liteav.audio.impl.route.a;
import com.tencent.liteav.audio.impl.route.f;
import com.tencent.liteav.basic.log.TXCLog;
import com.tencent.liteav.basic.util.TXCBuild;

/* loaded from: classes2.dex */
public class TXCAudioNativeInterface {
    private static final int OUTPUT_MODE_HEADSET = 0;
    private static final int OUTPUT_MODE_SPEAKER = 1;
    private static final String TAG = "AudioNativeInterface";
    private final e mAudioRouteManager;
    private final Context mContext;
    private String[] mDeviceList = null;
    private AudioManager mAudioManager = null;
    private f mAudioSession = null;

    public TXCAudioNativeInterface(Context context) {
        this.mContext = context;
        this.mAudioRouteManager = new e(context);
        TXCLog.i(TAG, "AudioDeviceInterface SDK_INT: %d, MANUFACTURE: %s, MODEL: %s", Integer.valueOf(TXCBuild.VersionInt()), TXCBuild.Manufacturer(), TXCBuild.Model());
    }

    public void initAudioRouteManager() {
        if (this.mContext != null) {
            TXCLog.i(TAG, "initAudioManager, TXCAudioSession create");
            if (this.mAudioSession == null) {
                this.mAudioSession = new f(this.mContext, this.mAudioRouteManager, new f.a() { // from class: com.tencent.liteav.audio.impl.route.TXCAudioNativeInterface.1
                    @Override // com.tencent.liteav.audio.impl.route.f.a
                    public void a(String[] strArr, String str, String str2, String str3) {
                        TXCAudioNativeInterface.this.mDeviceList = strArr;
                        TXCAudioNativeInterface.this.notifyPlayoutDeviceChanged(str);
                    }

                    @Override // com.tencent.liteav.audio.impl.route.f.a
                    public void a(int i, String[] strArr, String str, String str2, String str3) {
                        TXCAudioNativeInterface.this.mDeviceList = strArr;
                    }

                    @Override // com.tencent.liteav.audio.impl.route.f.a
                    public void a(int i, String str) {
                        if (i == 0) {
                            TXCAudioNativeInterface.this.notifyPlayoutDeviceChanged(str);
                        }
                    }
                });
            }
            this.mAudioSession.a("DEVICE_EARPHONE;DEVICE_SPEAKERPHONE;DEVICE_BLUETOOTHHEADSET;DEVICE_WIREDHEADSET;");
        }
    }

    public int startService(String str) {
        TXCLog.i(TAG, "startService: " + this.mAudioSession + " deviceConfig:" + str);
        f fVar = this.mAudioSession;
        if (fVar != null) {
            return fVar.a(str);
        }
        return -1;
    }

    public void notifyAudioIOSceneChanged(int i, int i2) {
        a.EnumC0021a nativeValueToAudioIOScene = nativeValueToAudioIOScene(i);
        a.EnumC0021a nativeValueToAudioIOScene2 = nativeValueToAudioIOScene(i2);
        TXCLog.i(TAG, "notify audio io scene changed, %s -> %s", nativeValueToAudioIOScene, nativeValueToAudioIOScene2);
        if (!nativeValueToAudioIOScene.a()) {
            this.mAudioSession.e();
        }
        this.mAudioRouteManager.a(nativeValueToAudioIOScene2);
        if (nativeValueToAudioIOScene2 != a.EnumC0021a.STOPPED) {
            AudioManager audioManager = getAudioManager();
            if (audioManager != null) {
                waitAMomentIfInPhoneCall();
                if (audioManager.isMicrophoneMute()) {
                    audioManager.setMicrophoneMute(false);
                    TXCLog.i(TAG, "setMicrophoneMute false when ioscene changed");
                }
            }
            if (nativeValueToAudioIOScene2.a()) {
                updateVolumeTypeForMedia();
            } else {
                updateVolumeTypeForVoIP(nativeValueToAudioIOScene2);
            }
        }
    }

    public int setAudioOutputMode(int i) {
        f fVar;
        TXCLog.w(TAG, "TXCAudioSession SetAudioOutputMode: " + i);
        if (i == 0) {
            if (this.mDeviceList == null || this.mAudioSession == null) {
                return -1;
            }
            boolean z = false;
            while (true) {
                boolean z2 = z;
                int i2 = 0;
                while (true) {
                    String[] strArr = this.mDeviceList;
                    if (i2 >= strArr.length || z2) {
                        break;
                    }
                    if ("DEVICE_WIREDHEADSET".equals(strArr[i2])) {
                        this.mAudioSession.b("DEVICE_WIREDHEADSET");
                        z2 = true;
                    }
                    i2++;
                }
                int i3 = 0;
                while (true) {
                    String[] strArr2 = this.mDeviceList;
                    if (i3 >= strArr2.length || z2) {
                        break;
                    }
                    if ("DEVICE_BLUETOOTHHEADSET".equals(strArr2[i3])) {
                        this.mAudioSession.b("DEVICE_BLUETOOTHHEADSET");
                        z2 = true;
                    }
                    i3++;
                }
                int i4 = 0;
                while (true) {
                    String[] strArr3 = this.mDeviceList;
                    if (i4 >= strArr3.length || z2) {
                        break;
                    }
                    if ("DEVICE_EARPHONE".equals(strArr3[i4])) {
                        this.mAudioSession.b("DEVICE_EARPHONE");
                        z2 = true;
                    }
                    i4++;
                }
                if (z2) {
                    return 0;
                }
                z = z2;
            }
        } else if (1 != i || (fVar = this.mAudioSession) == null) {
            return -1;
        } else {
            fVar.b("DEVICE_SPEAKERPHONE");
            return 0;
        }
    }

    public int stopService() {
        TXCLog.i(TAG, "stopService: " + this.mAudioSession);
        f fVar = this.mAudioSession;
        if (fVar != null) {
            return fVar.c();
        }
        return -1;
    }

    public void uninitAudioRouteManager() {
        if (this.mContext != null) {
            TXCLog.w(TAG, "uninitTXCAudioManager , stopService");
            f fVar = this.mAudioSession;
            if (fVar != null) {
                fVar.c();
                this.mAudioSession.b();
                this.mAudioSession = null;
                return;
            }
            return;
        }
        TXCLog.w(TAG, "uninitTXCAudioManager , context null");
    }

    private void updateVolumeTypeForVoIP(a.EnumC0021a aVar) {
        LogTraceEntry("");
        this.mAudioSession.a(a.a(aVar));
        this.mAudioSession.d();
        LogTraceExit();
    }

    private void updateVolumeTypeForMedia() {
        LogTraceEntry("");
        AudioManager audioManager = getAudioManager();
        if (!(audioManager == null || audioManager.getMode() == 0)) {
            try {
                audioManager.setMode(0);
            } catch (Exception e) {
                TXCLog.e(TAG, "updateVolumeTypeForMedia failed. " + e);
            }
        }
        this.mAudioSession.d();
        LogTraceExit();
    }

    private void waitAMomentIfInPhoneCall() {
        if (getAudioManager() != null) {
            int i = 5;
            while (true) {
                int i2 = i - 1;
                if (i > 0 && this.mAudioManager.getMode() == 2) {
                    TXCLog.e(TAG, "waiting.  mode:" + this.mAudioManager.getMode());
                    try {
                        Thread.sleep(500);
                    } catch (InterruptedException unused) {
                    }
                    i = i2;
                } else {
                    return;
                }
            }
        }
    }

    private static String getTraceInfo() {
        StringBuilder sb = new StringBuilder();
        StackTraceElement[] stackTrace = new Throwable().getStackTrace();
        sb.append(stackTrace[2].getClassName());
        sb.append(".");
        sb.append(stackTrace[2].getMethodName());
        sb.append(": ");
        sb.append(stackTrace[2].getLineNumber());
        return sb.toString();
    }

    public static void LogTraceEntry(String str) {
        TXCLog.i(TAG, getTraceInfo() + " entry:" + str);
    }

    public static void LogTraceExit() {
        TXCLog.i(TAG, getTraceInfo() + " exit");
    }

    private AudioManager getAudioManager() {
        Context context;
        if (this.mAudioManager == null && (context = this.mContext) != null) {
            this.mAudioManager = (AudioManager) context.getSystemService("audio");
        }
        return this.mAudioManager;
    }

    private a.EnumC0021a nativeValueToAudioIOScene(int i) {
        a.EnumC0021a[] aVarArr = {a.EnumC0021a.STOPPED, a.EnumC0021a.STOPPED, a.EnumC0021a.VOICE_CHAT, a.EnumC0021a.MEDIA_PLAY_AND_RECORD, a.EnumC0021a.MEDIA_PLAYBACK, a.EnumC0021a.VOICE_PLAYBACK, a.EnumC0021a.IDLE};
        if (i < 0 || i >= aVarArr.length) {
            return a.EnumC0021a.STOPPED;
        }
        return aVarArr[i];
    }

    public void notifyPlayoutDeviceChanged(String str) {
        int i;
        TXCLog.i(TAG, "device: " + str);
        if (str.equals("DEVICE_EARPHONE")) {
            i = 1;
        } else if (str.equals("DEVICE_SPEAKERPHONE")) {
            i = 2;
        } else if (str.equals("DEVICE_WIREDHEADSET")) {
            i = 3;
        } else {
            i = str.equals("DEVICE_BLUETOOTHHEADSET") ? 4 : 0;
        }
        TXCAudioEngineJNI.nativeSetPlayoutDevice(i);
    }
}
