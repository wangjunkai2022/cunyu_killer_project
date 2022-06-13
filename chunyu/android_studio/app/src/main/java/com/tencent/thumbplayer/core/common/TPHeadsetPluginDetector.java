package com.tencent.thumbplayer.core.common;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.media.AudioDeviceCallback;
import android.media.AudioDeviceInfo;
import android.media.AudioManager;
import android.os.Build;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

/* loaded from: classes2.dex */
public class TPHeadsetPluginDetector {
    private static final int AUDIO_TYPE_BLUETOOTH_A2DP = 2;
    private static final int AUDIO_TYPE_BUILTIN_OTHERS = 99;
    private static final int AUDIO_TYPE_BUILTIN_SPEAKER = 0;
    private static final int AUDIO_TYPE_HEADPHONES = 1;
    private static final String TAG = "TPHeadsetPluginDetector";
    private static boolean hasRegisterReceiver;
    private static boolean isInitted;
    private static WeakReference<Context> mContextRef;
    private static BroadcastReceiver mReceiver;
    private static List<HeadsetPluginListener> listeners = new LinkedList();
    private static Set<Integer> mCurOutputs = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public interface HeadsetPluginListener {
        void onHeadsetPlugin(Set<Integer> set, Set<Integer> set2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class HeadsetPluginReceiver extends BroadcastReceiver {
        private HeadsetPluginReceiver() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x0058, code lost:
            if (r7 != null) goto L_0x005a;
         */
        @Override // android.content.BroadcastReceiver
        /* Code decompiled incorrectly, please refer to instructions dump */
        public void onReceive(android.content.Context r7, android.content.Intent r8) {
            /*
                r6 = this;
                java.lang.StringBuilder r7 = new java.lang.StringBuilder
                r7.<init>()
                java.lang.String r0 = "onReceive: "
                r7.append(r0)
                java.lang.String r0 = r8.getAction()
                r7.append(r0)
                java.lang.String r7 = r7.toString()
                r0 = 2
                java.lang.Integer r1 = java.lang.Integer.valueOf(r0)
                java.lang.String r2 = "TPHeadsetPluginDetector"
                com.tencent.thumbplayer.core.common.TPNativeLog.printLog(r0, r2, r7)
                java.util.Set r7 = com.tencent.thumbplayer.core.common.TPHeadsetPluginDetector.access$100()
                java.lang.String r2 = r8.getAction()
                java.lang.String r3 = "android.intent.action.HEADSET_PLUG"
                boolean r2 = r3.equals(r2)
                r3 = 0
                r4 = 1
                java.lang.Integer r5 = java.lang.Integer.valueOf(r4)
                if (r2 == 0) goto L_0x004c
                java.lang.String r0 = "state"
                boolean r1 = r8.hasExtra(r0)
                if (r1 == 0) goto L_0x0041
                int r3 = r8.getIntExtra(r0, r3)
            L_0x0041:
                if (r7 == 0) goto L_0x005d
                if (r3 != 0) goto L_0x0046
                goto L_0x005a
            L_0x0046:
                if (r3 != r4) goto L_0x005d
                r7.add(r5)
                goto L_0x005d
            L_0x004c:
                java.lang.String r2 = r8.getAction()
                java.lang.String r4 = "android.media.AUDIO_BECOMING_NOISY"
                boolean r2 = r4.equals(r2)
                if (r2 == 0) goto L_0x0065
                if (r7 == 0) goto L_0x005d
            L_0x005a:
                r7.remove(r5)
            L_0x005d:
                java.util.Set r8 = com.tencent.thumbplayer.core.common.TPHeadsetPluginDetector.access$000()
                com.tencent.thumbplayer.core.common.TPHeadsetPluginDetector.access$200(r8, r7)
                goto L_0x0085
            L_0x0065:
                java.lang.String r2 = r8.getAction()
                java.lang.String r4 = "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"
                boolean r2 = r4.equals(r2)
                if (r2 == 0) goto L_0x0085
                java.lang.String r2 = "android.bluetooth.profile.extra.STATE"
                int r8 = r8.getIntExtra(r2, r3)
                if (r7 == 0) goto L_0x005d
                if (r8 != r0) goto L_0x007f
                r7.add(r1)
                goto L_0x005d
            L_0x007f:
                if (r8 != 0) goto L_0x005d
                r7.remove(r1)
                goto L_0x005d
            L_0x0085:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.core.common.TPHeadsetPluginDetector.HeadsetPluginReceiver.onReceive(android.content.Context, android.content.Intent):void");
        }
    }

    public static void addHeadsetPluginListener(HeadsetPluginListener headsetPluginListener) {
        synchronized (TPHeadsetPluginDetector.class) {
            if (listeners.add(headsetPluginListener) && !hasRegisterReceiver) {
                registerReceiver();
                hasRegisterReceiver = true;
            }
        }
    }

    public static void deinit() {
        synchronized (TPHeadsetPluginDetector.class) {
            if (isInitted && mContextRef != null) {
                mContextRef.clear();
                isInitted = false;
                TPNativeLog.printLog(2, TAG, "HeadsetPluginDetector deinit succeed!");
            }
        }
    }

    private static AudioManager getAudioManager() {
        String str;
        WeakReference<Context> weakReference;
        if (!isInitted || (weakReference = mContextRef) == null) {
            str = "getAudioManager failed, HeadsetPluginDetector is not init yet!";
        } else {
            Context context = weakReference.get();
            if (context == null) {
                str = "getAudioManager failed, context is null, maybe is invalid!";
            } else {
                AudioManager audioManager = (AudioManager) context.getApplicationContext().getSystemService("audio");
                if (audioManager != null) {
                    return audioManager;
                }
                str = "getAudioManager failed, audioMgr is null!";
            }
        }
        TPNativeLog.printLog(4, TAG, str);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Set<Integer> getAudioOutputs() {
        int i;
        HashSet hashSet = new HashSet();
        AudioManager audioManager = getAudioManager();
        if (audioManager == null) {
            return hashSet;
        }
        if (Build.VERSION.SDK_INT >= 23) {
            AudioDeviceInfo[] devices = audioManager.getDevices(2);
            if (devices != null) {
                for (AudioDeviceInfo audioDeviceInfo : devices) {
                    if (audioDeviceInfo.getType() == 2) {
                        i = 0;
                    } else if (audioDeviceInfo.getType() == 8) {
                        i = 2;
                    } else if (audioDeviceInfo.getType() == 3) {
                        i = 1;
                    }
                    hashSet.add(i);
                }
            }
        } else {
            hashSet.add(0);
            if (isHeadsetPlugin()) {
                hashSet.add(1);
            }
            if (isBluetoothPlugin()) {
                hashSet.add(2);
            }
        }
        return hashSet;
    }

    public static Set<Integer> getCurrentRoutes() {
        return mCurOutputs;
    }

    public static void init(Context context) {
        synchronized (TPHeadsetPluginDetector.class) {
            if (!isInitted) {
                mContextRef = new WeakReference<>(context.getApplicationContext());
                isInitted = true;
                initCurrentOutputs();
                TPNativeLog.printLog(2, TAG, "HeadsetPluginDetector init succeed!");
            }
        }
    }

    private static void initCurrentOutputs() {
        mCurOutputs = getAudioOutputs();
    }

    public static boolean isAudioRouteTypeOn(int i) {
        Set<Integer> set = mCurOutputs;
        if (set == null) {
            return false;
        }
        return set.contains(Integer.valueOf(i));
    }

    public static boolean isBluetoothPlugin() {
        AudioManager audioManager = getAudioManager();
        if (audioManager == null) {
            return false;
        }
        return audioManager.isBluetoothA2dpOn();
    }

    public static boolean isHeadsetPlugin() {
        AudioManager audioManager = getAudioManager();
        if (audioManager == null) {
            return false;
        }
        return audioManager.isWiredHeadsetOn();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void notifyAudioOutputStateChange(Set<Integer> set, Set<Integer> set2) {
        if (set == null || set2 == null || set.size() != set2.size() || !set2.containsAll(set)) {
            mCurOutputs = set2;
            synchronized (TPHeadsetPluginDetector.class) {
                for (HeadsetPluginListener headsetPluginListener : listeners) {
                    headsetPluginListener.onHeadsetPlugin(set, set2);
                }
            }
        }
    }

    private static boolean registerDeviceCallback() {
        AudioManager audioManager = getAudioManager();
        if (audioManager == null) {
            return false;
        }
        audioManager.registerAudioDeviceCallback(new AudioDeviceCallback() { // from class: com.tencent.thumbplayer.core.common.TPHeadsetPluginDetector.1
            @Override // android.media.AudioDeviceCallback
            public void onAudioDevicesAdded(AudioDeviceInfo[] audioDeviceInfoArr) {
                TPNativeLog.printLog(2, TPHeadsetPluginDetector.TAG, "onAudioDevicesAdded!");
                TPHeadsetPluginDetector.notifyAudioOutputStateChange(TPHeadsetPluginDetector.mCurOutputs, TPHeadsetPluginDetector.getAudioOutputs());
            }

            @Override // android.media.AudioDeviceCallback
            public void onAudioDevicesRemoved(AudioDeviceInfo[] audioDeviceInfoArr) {
                TPNativeLog.printLog(2, TPHeadsetPluginDetector.TAG, "onAudioDevicesRemoved!");
                TPHeadsetPluginDetector.notifyAudioOutputStateChange(TPHeadsetPluginDetector.mCurOutputs, TPHeadsetPluginDetector.getAudioOutputs());
            }
        }, null);
        return true;
    }

    private static void registerReceiver() {
        WeakReference<Context> weakReference;
        if (Build.VERSION.SDK_INT < 23 || !registerDeviceCallback()) {
            if (mReceiver == null) {
                mReceiver = new HeadsetPluginReceiver();
            }
            if (!isInitted || (weakReference = mContextRef) == null) {
                TPNativeLog.printLog(4, TAG, "registerReceiver failed, TPHeadsetPluginDetector is not init yet!");
                return;
            }
            Context context = weakReference.get();
            if (context == null) {
                TPNativeLog.printLog(4, TAG, "registerReceiver failed, context is null, maybe is invalid!");
                return;
            }
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.HEADSET_PLUG");
            intentFilter.addAction("android.media.AUDIO_BECOMING_NOISY");
            intentFilter.addAction("android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED");
            context.registerReceiver(mReceiver, intentFilter);
        }
    }

    public static void removeHeadsetPluginListener(HeadsetPluginListener headsetPluginListener) {
        synchronized (TPHeadsetPluginDetector.class) {
            listeners.remove(headsetPluginListener);
            if (listeners.isEmpty() && hasRegisterReceiver) {
                unregisterReceiver();
                hasRegisterReceiver = false;
            }
        }
    }

    private static void unregisterReceiver() {
        WeakReference<Context> weakReference;
        if (!isInitted || (weakReference = mContextRef) == null) {
            TPNativeLog.printLog(4, TAG, "registerReceiver failed, HeadsetPluginDetector is not init yet!");
            return;
        }
        Context context = weakReference.get();
        if (context == null) {
            TPNativeLog.printLog(4, TAG, "registerReceiver failed, context is null, maybe is invalid!");
        } else {
            context.unregisterReceiver(mReceiver);
        }
    }
}
