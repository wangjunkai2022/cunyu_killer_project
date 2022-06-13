package com.tencent.liteav.audio.impl.route;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothProfile;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Log;
import com.tencent.liteav.audio.impl.route.a;
import com.tencent.liteav.basic.log.TXCLog;
import com.tencent.liteav.basic.util.TXCBuild;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* compiled from: TXCAudioRouteManager.java */
/* loaded from: classes5.dex */
public class e extends BroadcastReceiver {
    private Context b;
    private i n;
    private AudioManager a = null;
    private int c = 0;
    private int d = 0;
    private int e = -1;
    private d f = d.HEADSET_AVAILABLE;
    private final boolean[] g = {false};
    private a.EnumC0021a h = a.EnumC0021a.STOPPED;
    private boolean i = false;
    private final g j = new g();
    private final h k = new h();
    private b l = null;
    private String m = "DEVICE_NONE";
    private h o = null;
    private final Object p = new Object();

    /* compiled from: TXCAudioRouteManager.java */
    /* loaded from: classes5.dex */
    public enum a {
        MESSAGE_ENABLE,
        MESSAGE_DISABLE,
        MESSAGE_GETDEVICELIST,
        MESSAGE_CONNECTDEVICE,
        MESSAGE_ISDEVICECHANGABLED,
        MESSAGE_GETCONNECTEDDEVICE,
        MESSAGE_GETCONNECTINGDEVICE,
        MESSAGE_VOICECALLPREPROCESS,
        MESSAGE_VOICECALLPOSTPROCESS,
        MESSAGE_AUTO_DEVICELIST_UPDATE,
        MESSAGE_AUTO_DEVICELIST_PLUGIN_UPDATE,
        MESSAGE_AUTO_DEVICELIST_PLUGOUT_UPDATE,
        MESSAGE_CONNECT_HIGHEST_PRIORITY_DEVICE,
        MESSAGE_NOTIFY_DEVICELIST_UPDATE
    }

    public synchronized void a(f fVar, boolean z, long j) {
        if (z) {
            this.j.a(fVar, j);
            TXCLog.d("TXCAudioRouteManager", "[register] add AudioSession: " + j);
        } else {
            this.j.b(j);
            TXCLog.d("TXCAudioRouteManager", "[register] remove AudioSession: " + j);
        }
    }

    public void a(a.EnumC0021a aVar) {
        this.h = aVar;
        TXCLog.i("TXCAudioRouteManager", "set audio io scene to %s", aVar);
    }

    public boolean c() {
        return this.h.a();
    }

    public int b(int i2) {
        if (c()) {
            return 0;
        }
        if (i2 >= 0) {
            TXCLog.i("TXCAudioRouteManager", "[Config] getCallAudioMode modePolicy:" + i2 + " mode:" + i2);
            return i2;
        }
        TXCLog.w("TXCAudioRouteManager", "[Config] getCallAudioMode _modePolicy:" + i2 + " mode:3facturer:" + TXCBuild.Manufacturer() + " model:" + TXCBuild.Model());
        return 3;
    }

    public void d() {
        boolean z;
        String[] strArr = {"DEVICE_BLUETOOTHHEADSET", "DEVICE_WIREDHEADSET", "DEVICE_SPEAKERPHONE"};
        for (String str : strArr) {
            if (str.equals("DEVICE_BLUETOOTHHEADSET")) {
                b bVar = this.l;
                if (bVar == null) {
                    z = this.k.a(str, false);
                } else {
                    z = this.k.a(str, bVar.c());
                }
            } else if (str.equals("DEVICE_WIREDHEADSET")) {
                z = this.k.a(str, this.a.isWiredHeadsetOn());
            } else {
                if (str.equals("DEVICE_SPEAKERPHONE")) {
                    this.k.a(str, true);
                }
                z = false;
            }
            if (z) {
                TXCLog.i("TXCAudioRouteManager", "update visibility success, dev: %s, visible: %b", str, Boolean.valueOf(this.k.c(str)));
            }
        }
        a(false);
    }

    private void e() {
        if (this.k.c("DEVICE_WIREDHEADSET") || this.k.c("DEVICE_BLUETOOTHHEADSET")) {
            TXCLog.i("TXCAudioRouteManager", "detected headset plugin,so disable earphone");
            this.k.a("DEVICE_EARPHONE", false);
            return;
        }
        TXCLog.i("TXCAudioRouteManager", "detected headset plugout,so enable earphone");
        this.k.a("DEVICE_EARPHONE", true);
    }

    public void a(boolean z) {
        if (z || this.k.b()) {
            TXCLog.i("TXCAudioRouteManager", "checkAutoDeviceListUpdate got update!");
            e();
            this.k.c();
            a(a.MESSAGE_AUTO_DEVICELIST_UPDATE, new HashMap<>());
        }
    }

    public void a(String str, boolean z) {
        if (this.k.b()) {
            StringBuilder sb = new StringBuilder();
            sb.append("checkDevicePlug got update dev:");
            sb.append(str);
            sb.append(z ? " piugin" : " plugout");
            sb.append(", connectedDev:");
            sb.append(this.k.h());
            TXCLog.i("TXCAudioRouteManager", sb.toString());
            e();
            this.k.c();
            if (z) {
                HashMap<String, Object> hashMap = new HashMap<>();
                hashMap.put("PARAM_DEVICE", str);
                a(a.MESSAGE_AUTO_DEVICELIST_PLUGIN_UPDATE, hashMap);
                return;
            }
            String h2 = this.k.h();
            if (h2.equals(str) || h2.equals("DEVICE_NONE")) {
                HashMap<String, Object> hashMap2 = new HashMap<>();
                hashMap2.put("PARAM_DEVICE", str);
                a(a.MESSAGE_AUTO_DEVICELIST_PLUGOUT_UPDATE, hashMap2);
                return;
            }
            TXCLog.i("TXCAudioRouteManager", "No switch,plugout:" + str + " connectedDev:" + h2);
            a(a.MESSAGE_NOTIFY_DEVICELIST_UPDATE, new HashMap<>());
        }
    }

    /* compiled from: TXCAudioRouteManager.java */
    /* loaded from: classes5.dex */
    static class f extends Handler {
        private final WeakReference<i> a;

        private f(i iVar) {
            this.a = new WeakReference<>(iVar);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            i iVar = this.a.get();
            if (iVar != null) {
                iVar.a(message);
            }
        }
    }

    /* compiled from: TXCAudioRouteManager.java */
    /* loaded from: classes5.dex */
    public class i extends Thread {
        private final e e;
        private Handler b = null;
        private final boolean[] c = {false};
        private boolean d = false;
        private boolean f = true;
        private String g = "";
        private long h = -1;
        private String i = "";

        public i(e eVar) {
            e.this = r5;
            this.e = eVar;
            long elapsedRealtime = SystemClock.elapsedRealtime();
            TXCLog.i("TXCAudioRouteManager", "TraeAudioManagerLooper start...");
            start();
            synchronized (this.c) {
                if (!this.c[0]) {
                    try {
                        this.c.wait(3000);
                    } catch (InterruptedException unused) {
                    }
                }
            }
            TXCLog.i("TXCAudioRouteManager", "start used:" + (SystemClock.elapsedRealtime() - elapsedRealtime) + "ms");
        }

        public int a(a aVar, HashMap<String, Object> hashMap) {
            Handler handler = this.b;
            if (handler == null) {
                StringBuilder sb = new StringBuilder();
                sb.append(" fail mMsgHandler==null _enabled:");
                sb.append(this.d ? "Y" : "N");
                sb.append(" activeMode:");
                sb.append(e.this.c);
                sb.append(" msg:");
                sb.append(aVar);
                TXCAudioNativeInterface.LogTraceEntry(sb.toString());
                return -1;
            }
            Message obtain = Message.obtain(handler, aVar.ordinal(), hashMap);
            if (aVar == a.MESSAGE_AUTO_DEVICELIST_PLUGIN_UPDATE && !e.this.a()) {
                TXCLog.w("TXCAudioRouteManager", "sendMessageDelayed, device is connecting, plugin need delay 1 second");
                if (this.b.sendMessageDelayed(obtain, 1000)) {
                    return 0;
                }
                return -1;
            } else if (this.b.sendMessage(obtain)) {
                return 0;
            } else {
                return -1;
            }
        }

        public void a(HashMap<String, Object> hashMap) {
            TXCAudioNativeInterface.LogTraceEntry("");
            if (e.this.b != null) {
                String str = (String) hashMap.get("EXTRA_DATA_DEVICECONFIG");
                TXCLog.i("TXCAudioRouteManager", "startService cfg:%s, enabled: %s, activeMode: %d", str, Boolean.valueOf(this.d), Integer.valueOf(e.this.c));
                if ((!this.d || !this.g.equals(str)) && e.this.c == 0) {
                    if (this.d) {
                        a();
                    }
                    c();
                    e.this.k.a();
                    e.this.k.a(str);
                    this.g = str;
                    this.d = true;
                    e.this.i = false;
                    e.this.d();
                    a(this.d);
                    TXCAudioNativeInterface.LogTraceExit();
                    return;
                }
                e.this.a(true);
                TXCLog.i("TXCAudioRouteManager", "service is started.");
            }
        }

        private void a() {
            StringBuilder sb = new StringBuilder();
            sb.append(" _enabled:");
            sb.append(this.d ? "Y" : "N");
            sb.append(" activeMode:");
            sb.append(e.this.c);
            TXCAudioNativeInterface.LogTraceEntry(sb.toString());
            if (this.d) {
                e.this.i = true;
                if (e.this.c == 1) {
                    f();
                }
                synchronized (e.this.p) {
                    if (e.this.o != null) {
                        TXCLog.w("TXCAudioRouteManager", "switchThread:" + e.this.o.b());
                        e.this.o.e();
                        e.this.o = null;
                    }
                }
                this.d = false;
                a(this.d);
                if (!(e.this.a == null || e.this.b == null)) {
                    try {
                        e.this.a(0);
                    } catch (Exception e) {
                        TXCLog.e("TXCAudioRouteManager", "set mode failed." + e.getMessage());
                    }
                }
                d();
                TXCAudioNativeInterface.LogTraceExit();
            }
        }

        private void a(boolean z) {
            if (e.this.b != null) {
                Intent intent = new Intent();
                intent.setAction("com.tencent.sharp.ACTION_TXCAUDIOMANAGER_NOTIFY");
                intent.putExtra("PARAM_OPERATION", "NOTIFY_SERVICE_STATE");
                intent.putExtra("NOTIFY_SERVICE_STATE_DATE", z);
                com.tencent.liteav.basic.a.a.a(e.this.b).a(intent);
            }
        }

        public void a(Message message) {
            HashMap<String, Object> hashMap;
            if (message.what < 0 || message.what >= a.values().length) {
                TXCLog.e("TXCAudioRouteManager", "invalid message: %d", Integer.valueOf(message.what));
                return;
            }
            a aVar = a.values()[message.what];
            try {
                hashMap = (HashMap) message.obj;
            } catch (Exception unused) {
                TXCLog.e("TXCAudioRouteManager", "");
                hashMap = null;
            }
            TXCLog.i("TXCAudioRouteManager", "handle message: " + message.what + " _enabled:" + this.d);
            if (aVar == a.MESSAGE_ENABLE) {
                a(hashMap);
            } else if (!this.d) {
                TXCLog.w("TXCAudioRouteManager", "service has been disabled, skip.");
                e.this.a(new Intent(), hashMap, 1);
            } else {
                switch (aVar) {
                    case MESSAGE_DISABLE:
                        a();
                        return;
                    case MESSAGE_GETDEVICELIST:
                        b(hashMap);
                        return;
                    case MESSAGE_ISDEVICECHANGABLED:
                        e.this.b(hashMap);
                        return;
                    case MESSAGE_GETCONNECTEDDEVICE:
                        e.this.c(hashMap);
                        return;
                    case MESSAGE_GETCONNECTINGDEVICE:
                        e.this.d(hashMap);
                        return;
                    case MESSAGE_VOICECALLPREPROCESS:
                        c(hashMap);
                        return;
                    case MESSAGE_VOICECALLPOSTPROCESS:
                        d(hashMap);
                        return;
                    case MESSAGE_CONNECTDEVICE:
                        e.this.a(hashMap);
                        return;
                    case MESSAGE_CONNECT_HIGHEST_PRIORITY_DEVICE:
                    case MESSAGE_AUTO_DEVICELIST_UPDATE:
                        String f = e.this.k.f();
                        String h = e.this.k.h();
                        TXCLog.i("TXCAudioRouteManager", "MESSAGE_AUTO_DEVICELIST_UPDATE connectedDev:" + h + " highestDev" + f);
                        if (e.this.h != a.EnumC0021a.STOPPED && this.f) {
                            this.f = false;
                            e.this.a(f, (HashMap<String, Object>) null, true);
                            return;
                        } else if ("DEVICE_BLUETOOTHHEADSET".equals(h) || !f.equals(h)) {
                            e.this.a(f, (HashMap<String, Object>) null, false);
                            return;
                        } else {
                            e.this.b();
                            return;
                        }
                    case MESSAGE_AUTO_DEVICELIST_PLUGIN_UPDATE:
                        String str = (String) hashMap.get("PARAM_DEVICE");
                        if (e.this.a(str, (HashMap<String, Object>) null, false) != 0) {
                            TXCLog.i("TXCAudioRouteManager", "device plug in: " + str + ", sessionConnectedDev:" + e.this.m + " connected fail,auto switch!");
                            e eVar = e.this;
                            eVar.a(eVar.k.f(), (HashMap<String, Object>) null, false);
                            return;
                        }
                        return;
                    case MESSAGE_AUTO_DEVICELIST_PLUGOUT_UPDATE:
                        e eVar2 = e.this;
                        if (eVar2.a(eVar2.m, (HashMap<String, Object>) null, false) != 0) {
                            TXCLog.i("TXCAudioRouteManager", "device plug out:" + ((String) hashMap.get("PARAM_DEVICE")) + " sessionConnectedDev:" + e.this.m + ", connected fail, auto switch!");
                            e eVar3 = e.this;
                            eVar3.a(eVar3.k.f(), (HashMap<String, Object>) null, false);
                            return;
                        }
                        return;
                    case MESSAGE_NOTIFY_DEVICELIST_UPDATE:
                        e.this.b();
                        return;
                    default:
                        return;
                }
            }
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            TXCAudioNativeInterface.LogTraceEntry("");
            Looper.prepare();
            this.b = new f(this);
            b();
            synchronized (this.c) {
                this.c[0] = true;
                this.c.notifyAll();
            }
            Looper.loop();
            e();
            synchronized (this.c) {
                this.c[0] = false;
                this.c.notifyAll();
            }
            TXCAudioNativeInterface.LogTraceExit();
        }

        private void b() {
            TXCAudioNativeInterface.LogTraceEntry("");
            try {
                e.this.a = (AudioManager) e.this.b.getSystemService("audio");
                e.this.l = e.this.a(e.this.b, e.this.k);
                IntentFilter intentFilter = new IntentFilter();
                IntentFilter intentFilter2 = new IntentFilter();
                intentFilter.addAction("android.intent.action.HEADSET_PLUG");
                intentFilter.addAction("android.media.AUDIO_BECOMING_NOISY");
                e.this.l.a(intentFilter, intentFilter2);
                e.this.b.registerReceiver(this.e, intentFilter);
                intentFilter2.addAction("com.tencent.sharp.ACTION_TXCAUDIOMANAGER_REQUEST");
                com.tencent.liteav.basic.a.a.a(e.this.b).a(this.e, intentFilter2);
                TXCLog.i("TXCAudioRouteManager", "register receiver in _init");
            } catch (Exception e) {
                TXCLog.e("TXCAudioRouteManager", "init failed, " + e.getMessage());
            }
            TXCAudioNativeInterface.LogTraceExit();
        }

        private void c() {
            TXCAudioNativeInterface.LogTraceEntry("");
            try {
                e.this.a = (AudioManager) e.this.b.getSystemService("audio");
                if (e.this.l == null) {
                    e.this.l = e.this.a(e.this.b, e.this.k);
                }
                try {
                    e.this.b.unregisterReceiver(this.e);
                } catch (Exception unused) {
                }
                TXCLog.i("TXCAudioRouteManager", "unregister receiver in _prev_startService");
                com.tencent.liteav.basic.a.a.a(e.this.b).a(this.e);
                IntentFilter intentFilter = new IntentFilter();
                IntentFilter intentFilter2 = new IntentFilter();
                intentFilter.addAction("android.intent.action.HEADSET_PLUG");
                intentFilter.addAction("android.media.AUDIO_BECOMING_NOISY");
                e.this.l.a(intentFilter, intentFilter2);
                intentFilter2.addAction("com.tencent.sharp.ACTION_TXCAUDIOMANAGER_REQUEST");
                e.this.b.registerReceiver(this.e, intentFilter);
                TXCLog.i("TXCAudioRouteManager", "register receiver in _prev_startService");
                com.tencent.liteav.basic.a.a.a(e.this.b).a(this.e, intentFilter2);
            } catch (Exception e) {
                TXCLog.w("TXCAudioRouteManager", "prev start service failed." + e.getMessage());
            }
            TXCAudioNativeInterface.LogTraceExit();
        }

        private void d() {
            TXCAudioNativeInterface.LogTraceEntry("");
            try {
                if (e.this.l != null) {
                    e.this.l.b();
                }
                e.this.l = null;
                if (e.this.b != null) {
                    try {
                        e.this.b.unregisterReceiver(this.e);
                    } catch (Exception unused) {
                    }
                    TXCLog.i("TXCAudioRouteManager", "unregister receiver in _post_stopService");
                    com.tencent.liteav.basic.a.a.a(e.this.b).a(this.e);
                    IntentFilter intentFilter = new IntentFilter();
                    intentFilter.addAction("com.tencent.sharp.ACTION_TXCAUDIOMANAGER_REQUEST");
                    com.tencent.liteav.basic.a.a.a(e.this.b).a(this.e, intentFilter);
                }
            } catch (Exception e) {
                TXCLog.e("TXCAudioRouteManager", "stop service failed." + e.getMessage());
            }
            TXCAudioNativeInterface.LogTraceExit();
        }

        private void e() {
            TXCAudioNativeInterface.LogTraceEntry("");
            try {
                a();
                if (e.this.l != null) {
                    e.this.l.b();
                    e.this.l = null;
                }
                if (e.this.b != null) {
                    try {
                        e.this.b.unregisterReceiver(this.e);
                    } catch (Exception unused) {
                    }
                    TXCLog.i("TXCAudioRouteManager", "unregister receiver in _uninit");
                    com.tencent.liteav.basic.a.a.a(e.this.b).a(this.e);
                    e.this.b = null;
                }
                if (e.this.k != null) {
                    e.this.k.a();
                }
            } catch (Exception e) {
                TXCLog.e("TXCAudioRouteManager", "uninit failed." + e.getMessage());
            }
            TXCAudioNativeInterface.LogTraceExit();
        }

        private void b(HashMap<String, Object> hashMap) {
            Intent intent = new Intent();
            synchronized (e.this.k) {
                ArrayList<String> k = e.this.k.k();
                String h = e.this.k.h();
                String i = e.this.k.i();
                intent.putExtra("EXTRA_DATA_AVAILABLEDEVICE_LIST", (String[]) k.toArray(new String[0]));
                intent.putExtra("EXTRA_DATA_CONNECTEDDEVICE", h);
                intent.putExtra("EXTRA_DATA_PREV_CONNECTEDDEVICE", i);
                intent.putExtra("EXTRA_DATA_IF_HAS_BLUETOOTH_THIS_IS_NAME", e.this.k.d());
            }
            e.this.a(intent, hashMap, 0);
        }

        private void c(HashMap<String, Object> hashMap) {
            TXCAudioNativeInterface.LogTraceEntry(" activeMode:" + e.this.c);
            if (hashMap != null && e.this.k != null) {
                if (e.this.a == null) {
                    TXCLog.e("TXCAudioRouteManager", " InternalVoicecallPreprocess am==null!!");
                } else if (e.this.c == 1) {
                    e.this.a(new Intent(), hashMap, 2);
                } else {
                    this.h = ((Long) hashMap.get("PARAM_SESSIONID")).longValue();
                    this.i = (String) hashMap.get("PARAM_OPERATION");
                    e.this.c = 1;
                    e eVar = e.this;
                    eVar.d = eVar.a.getMode();
                    Integer num = (Integer) hashMap.get("PARAM_MODEPOLICY");
                    if (num == null) {
                        TXCLog.e("TXCAudioRouteManager", "params.get(PARAM_MODEPOLICY)==null!!");
                        e.this.e = -1;
                    } else {
                        e.this.e = num.intValue();
                    }
                    TXCLog.i("TXCAudioRouteManager", "audio mode policy:" + e.this.e);
                    e eVar2 = e.this;
                    eVar2.a(eVar2.b(eVar2.e));
                    e.this.a(new Intent(), hashMap, 0);
                    TXCAudioNativeInterface.LogTraceExit();
                }
            }
        }

        private void d(HashMap<String, Object> hashMap) {
            TXCAudioNativeInterface.LogTraceEntry(" activeMode:" + e.this.c);
            if (e.this.a == null) {
                TXCLog.e("TXCAudioRouteManager", "InternalVoicecallPostprocess AudioManager is null!");
            } else if (e.this.c != 1) {
                TXCLog.e("TXCAudioRouteManager", "active mode is not ACTIVE_VOICECALL!");
                e.this.a(new Intent(), hashMap, 3);
            } else {
                e.this.c = 0;
                TXCAudioNativeInterface.LogTraceExit();
            }
        }

        private void f() {
            TXCAudioNativeInterface.LogTraceEntry(" activeMode:" + e.this.c);
            if (e.this.a == null) {
                TXCLog.e("TXCAudioRouteManager", "AudioManager is null!");
            } else if (e.this.c != 1) {
                TXCLog.e("TXCAudioRouteManager", "active mode is not AUDIO_MANAGER_ACTIVE_VOICECALL!");
            } else {
                e.this.c = 0;
                if (e.this.d != -1) {
                    e eVar = e.this;
                    eVar.a(eVar.d);
                }
                HashMap hashMap = new HashMap();
                hashMap.put("PARAM_SESSIONID", Long.valueOf(this.h));
                hashMap.put("PARAM_OPERATION", this.i);
                e.this.a(new Intent(), hashMap, 6);
                TXCAudioNativeInterface.LogTraceExit();
            }
        }
    }

    public void a(Context context, boolean z) {
        if (context == null) {
            TXCLog.e("TXCAudioRouteManager", "Could not InternalSetSpeaker, context is null.");
            return;
        }
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        if (audioManager == null) {
            TXCLog.e("TXCAudioRouteManager", "Could not InternalSetSpeaker AudioManager is null.");
            return;
        }
        TXCLog.i("TXCAudioRouteManager", "InternalSetSpeaker entry, speaker on: " + audioManager.isSpeakerphoneOn() + "-->:" + z);
        try {
            if (audioManager.isSpeakerphoneOn() != z) {
                audioManager.setSpeakerphoneOn(z);
            }
        } catch (Exception e) {
            TXCLog.e("TXCAudioRouteManager", "setSpeakerphoneOn failed with " + e.getMessage());
        }
        int i2 = audioManager.isSpeakerphoneOn() == z ? 0 : -1;
        TXCLog.i("TXCAudioRouteManager", "InternalSetSpeaker exit:" + z + " res:" + i2 + " mode:" + audioManager.getMode());
    }

    void a(int i2) {
        TXCLog.i("TXCAudioRouteManager", "set audio mode to " + i2);
        AudioManager audioManager = this.a;
        if (audioManager == null) {
            TXCLog.w("TXCAudioRouteManager", "setMode:" + i2 + " fail because AudioManager is null.");
            return;
        }
        try {
            audioManager.setMode(i2);
        } catch (Exception e) {
            TXCLog.e("TXCAudioRouteManager", "setMode failed. " + e);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("setMode:");
        sb.append(i2);
        sb.append(this.a.getMode() != i2 ? "fail" : "success");
        TXCLog.i("TXCAudioRouteManager", sb.toString());
    }

    public e(Context context) {
        this.b = null;
        this.n = null;
        TXCAudioNativeInterface.LogTraceEntry(" context:" + context);
        if (context != null) {
            this.b = context;
            this.n = new i(this);
            TXCAudioNativeInterface.LogTraceExit();
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent == null || context == null) {
            TXCLog.d("TXCAudioRouteManager", "onReceive intent or context is null!");
            return;
        }
        try {
            String action = intent.getAction();
            String stringExtra = intent.getStringExtra("PARAM_OPERATION");
            TXCLog.i("TXCAudioRouteManager", "receive Action: " + intent.getAction());
            if (this.k == null) {
                TXCLog.d("TXCAudioRouteManager", "mDeviceConfigManager is null!");
                return;
            }
            boolean c2 = this.k.c("DEVICE_WIREDHEADSET");
            boolean c3 = this.k.c("DEVICE_BLUETOOTHHEADSET");
            if ("android.intent.action.HEADSET_PLUG".equals(intent.getAction())) {
                a(intent);
                if (!c2 && this.k.c("DEVICE_WIREDHEADSET")) {
                    a("DEVICE_WIREDHEADSET", true);
                }
                if (c2 && !this.k.c("DEVICE_WIREDHEADSET")) {
                    a("DEVICE_WIREDHEADSET", false);
                }
            } else if ("com.tencent.sharp.ACTION_TXCAUDIOMANAGER_REQUEST".equals(action)) {
                TXCLog.i("TXCAudioRouteManager", "operation: " + stringExtra);
                if ("OPERATION_STARTSERVICE".equals(stringExtra)) {
                    a(stringExtra, intent.getLongExtra("PARAM_SESSIONID", Long.MIN_VALUE), intent.getStringExtra("EXTRA_DATA_DEVICECONFIG"));
                } else if ("OPERATION_STOPSERVICE".equals(stringExtra)) {
                    a(stringExtra, intent.getLongExtra("PARAM_SESSIONID", Long.MIN_VALUE));
                } else if ("OPERATION_GETDEVICELIST".equals(stringExtra)) {
                    e(stringExtra, intent.getLongExtra("PARAM_SESSIONID", Long.MIN_VALUE));
                } else if ("OPERATION_CONNECTDEVICE".equals(stringExtra)) {
                    b(stringExtra, intent.getLongExtra("PARAM_SESSIONID", Long.MIN_VALUE), intent.getStringExtra("CONNECTDEVICE_DEVICENAME"));
                } else if ("OPERATION_CONNECT_HIGHEST_PRIORITY_DEVICE".equals(stringExtra)) {
                    b(stringExtra, intent.getLongExtra("PARAM_SESSIONID", Long.MIN_VALUE));
                } else if ("OPERATION_ISDEVICECHANGABLED".equals(stringExtra)) {
                    f(stringExtra, intent.getLongExtra("PARAM_SESSIONID", Long.MIN_VALUE));
                } else if ("OPERATION_GETCONNECTEDDEVICE".equals(stringExtra)) {
                    c(stringExtra, intent.getLongExtra("PARAM_SESSIONID", Long.MIN_VALUE));
                } else if ("OPERATION_GETCONNECTINGDEVICE".equals(stringExtra)) {
                    g(stringExtra, intent.getLongExtra("PARAM_SESSIONID", Long.MIN_VALUE));
                } else if ("OPERATION_VOICECALL_PREPROCESS".equals(stringExtra)) {
                    a(stringExtra, intent.getLongExtra("PARAM_SESSIONID", Long.MIN_VALUE), intent.getIntExtra("PARAM_MODEPOLICY", -1));
                } else if ("OPERATION_VOICECALL_POSTROCESS".equals(stringExtra)) {
                    d(stringExtra, intent.getLongExtra("PARAM_SESSIONID", Long.MIN_VALUE));
                }
            } else if (this.k != null) {
                if (this.l != null) {
                    this.l.a(context, intent, this.k);
                }
                if (!c3 && this.k.c("DEVICE_BLUETOOTHHEADSET")) {
                    a("DEVICE_BLUETOOTHHEADSET", true);
                }
                if (c3 && !this.k.c("DEVICE_BLUETOOTHHEADSET")) {
                    a("DEVICE_BLUETOOTHHEADSET", false);
                }
            }
        } catch (Exception e) {
            TXCLog.e("TXCAudioRouteManager", "deal with receiver failed." + e.getMessage());
        }
    }

    private void a(Intent intent) {
        String stringExtra = intent.getStringExtra("name");
        if (stringExtra == null) {
            stringExtra = "unkonw";
        }
        String str = " [" + stringExtra + "] ";
        int intExtra = intent.getIntExtra("state", -1);
        if (intExtra != -1) {
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append(intExtra == 0 ? "unplugged" : "plugged");
            str = sb.toString();
        }
        String str2 = str + " mic:";
        int intExtra2 = intent.getIntExtra("microphone", -1);
        boolean z = true;
        if (intExtra2 != -1) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str2);
            sb2.append(intExtra2 == 1 ? "Y" : "unkown");
            str2 = sb2.toString();
        }
        TXCLog.i("TXCAudioRouteManager", "onHeadsetPlug:: " + str2);
        h hVar = this.k;
        if (hVar != null) {
            if (1 != intExtra) {
                z = false;
            }
            hVar.a("DEVICE_WIREDHEADSET", z);
        }
    }

    private int a(a aVar, HashMap<String, Object> hashMap) {
        i iVar = this.n;
        if (iVar != null) {
            return iVar.a(aVar, hashMap);
        }
        return -1;
    }

    private void e(String str, long j) {
        HashMap<String, Object> hashMap = new HashMap<>();
        hashMap.put("PARAM_SESSIONID", Long.valueOf(j));
        hashMap.put("PARAM_OPERATION", str);
        a(a.MESSAGE_GETDEVICELIST, hashMap);
    }

    public int a(String str, long j, String str2) {
        if (str2.length() <= 0) {
            return -1;
        }
        HashMap<String, Object> hashMap = new HashMap<>();
        hashMap.put("PARAM_SESSIONID", Long.valueOf(j));
        hashMap.put("PARAM_OPERATION", str);
        hashMap.put("EXTRA_DATA_DEVICECONFIG", str2);
        return a(a.MESSAGE_ENABLE, hashMap);
    }

    public int a(String str, long j) {
        HashMap<String, Object> hashMap = new HashMap<>();
        hashMap.put("PARAM_SESSIONID", Long.valueOf(j));
        hashMap.put("PARAM_OPERATION", str);
        return a(a.MESSAGE_DISABLE, hashMap);
    }

    public void b(String str, long j, String str2) {
        if (str2 != null) {
            HashMap<String, Object> hashMap = new HashMap<>();
            hashMap.put("PARAM_SESSIONID", Long.valueOf(j));
            hashMap.put("PARAM_OPERATION", str);
            hashMap.put("CONNECTDEVICE_DEVICENAME", str2);
            hashMap.put("PARAM_DEVICE", str2);
            a(a.MESSAGE_CONNECTDEVICE, hashMap);
        }
    }

    public void b(String str, long j) {
        HashMap<String, Object> hashMap = new HashMap<>();
        hashMap.put("PARAM_SESSIONID", Long.valueOf(j));
        hashMap.put("PARAM_OPERATION", str);
        a(a.MESSAGE_CONNECT_HIGHEST_PRIORITY_DEVICE, hashMap);
    }

    private void f(String str, long j) {
        HashMap<String, Object> hashMap = new HashMap<>();
        hashMap.put("PARAM_SESSIONID", Long.valueOf(j));
        hashMap.put("PARAM_OPERATION", str);
        a(a.MESSAGE_ISDEVICECHANGABLED, hashMap);
    }

    public void c(String str, long j) {
        HashMap<String, Object> hashMap = new HashMap<>();
        hashMap.put("PARAM_SESSIONID", Long.valueOf(j));
        hashMap.put("PARAM_OPERATION", str);
        a(a.MESSAGE_GETCONNECTEDDEVICE, hashMap);
    }

    private void g(String str, long j) {
        HashMap<String, Object> hashMap = new HashMap<>();
        hashMap.put("PARAM_SESSIONID", Long.valueOf(j));
        hashMap.put("PARAM_OPERATION", str);
        a(a.MESSAGE_GETCONNECTINGDEVICE, hashMap);
    }

    public void a(String str, long j, int i2) {
        HashMap<String, Object> hashMap = new HashMap<>();
        hashMap.put("PARAM_SESSIONID", Long.valueOf(j));
        hashMap.put("PARAM_OPERATION", str);
        hashMap.put("PARAM_MODEPOLICY", Integer.valueOf(i2));
        a(a.MESSAGE_VOICECALLPREPROCESS, hashMap);
    }

    public void d(String str, long j) {
        HashMap<String, Object> hashMap = new HashMap<>();
        hashMap.put("PARAM_SESSIONID", Long.valueOf(j));
        hashMap.put("PARAM_OPERATION", str);
        a(a.MESSAGE_VOICECALLPOSTPROCESS, hashMap);
    }

    public void a(HashMap<String, Object> hashMap) {
        int i2;
        TXCAudioNativeInterface.LogTraceEntry("");
        if (hashMap != null && this.b != null) {
            if (c()) {
                TXCLog.w("TXCAudioRouteManager", "InternalSessionConnectDevice failed, because it's in music scene");
                return;
            }
            String str = (String) hashMap.get("PARAM_DEVICE");
            Log.i("TXCAudioRouteManager", "ConnectDevice: " + str);
            if (this.h.b() || !str.equals("DEVICE_EARPHONE")) {
                boolean a2 = a();
                if (!h.f(str)) {
                    i2 = 7;
                } else {
                    i2 = !this.k.c(str) ? 8 : !a2 ? 9 : 0;
                }
                StringBuilder sb = new StringBuilder();
                sb.append("sessonID:");
                sb.append((Long) hashMap.get("PARAM_SESSIONID"));
                sb.append(" devName:");
                sb.append(str);
                sb.append(" bChangabled:");
                sb.append(a2 ? "Y" : "N");
                sb.append(" err:");
                sb.append(i2);
                TXCLog.i("TXCAudioRouteManager", sb.toString());
                if (i2 != 0) {
                    Intent intent = new Intent();
                    intent.putExtra("CONNECTDEVICE_RESULT_DEVICENAME", (String) hashMap.get("PARAM_DEVICE"));
                    a(intent, hashMap, i2);
                } else if (str.equals(this.k.h())) {
                    TXCLog.e("TXCAudioRouteManager", str + " has connected!");
                    Intent intent2 = new Intent();
                    intent2.putExtra("CONNECTDEVICE_RESULT_DEVICENAME", (String) hashMap.get("PARAM_DEVICE"));
                    a(intent2, hashMap, i2);
                } else {
                    TXCLog.i("TXCAudioRouteManager", str + "is connecting.");
                    a(str, hashMap, false);
                    TXCAudioNativeInterface.LogTraceExit();
                }
            } else {
                TXCLog.e("TXCAudioRouteManager", "InternalSessionConnectDevice IsEarPhoneSupported = false, Connect device:" + str + " failed");
            }
        }
    }

    public int a(String str, HashMap<String, Object> hashMap, boolean z) {
        TXCAudioNativeInterface.LogTraceEntry(" devName:" + str);
        char c2 = 65535;
        if (str == null) {
            return -1;
        }
        if (!z && !"DEVICE_BLUETOOTHHEADSET".equals(str) && !this.k.h().equals("DEVICE_NONE") && str.equals(this.k.h())) {
            return 0;
        }
        if (!h.f(str) || !this.k.c(str)) {
            TXCLog.e("TXCAudioRouteManager", "checkDevName fail");
            return -1;
        } else if (!a()) {
            TXCLog.e("TXCAudioRouteManager", "InternalIsDeviceChangeable fail");
            return -1;
        } else if (this.i) {
            TXCLog.e("TXCAudioRouteManager", "InternalConnectDevice fail,ready to stopService");
            return -1;
        } else {
            synchronized (this.p) {
                if (!this.i) {
                    this.k.d(str);
                    if (this.o != null) {
                        TXCLog.i("TXCAudioRouteManager", "_switchThread:" + this.o.b());
                        this.o.e();
                        this.o = null;
                    }
                    switch (str.hashCode()) {
                        case -1261879272:
                            if (str.equals("DEVICE_SPEAKERPHONE")) {
                                c2 = 1;
                                break;
                            }
                            break;
                        case -463197279:
                            if (str.equals("DEVICE_EARPHONE")) {
                                c2 = 0;
                                break;
                            }
                            break;
                        case 715243628:
                            if (str.equals("DEVICE_WIREDHEADSET")) {
                                c2 = 2;
                                break;
                            }
                            break;
                        case 770344669:
                            if (str.equals("DEVICE_BLUETOOTHHEADSET")) {
                                c2 = 3;
                                break;
                            }
                            break;
                    }
                    if (c2 == 0) {
                        this.o = new d();
                    } else if (c2 == 1) {
                        this.o = new g();
                    } else if (c2 == 2) {
                        this.o = new C0022e();
                    } else if (c2 == 3) {
                        this.o = new c();
                    }
                    if (this.o != null) {
                        this.o.a(hashMap);
                        this.o.start();
                    }
                }
            }
            TXCAudioNativeInterface.LogTraceExit();
            return 0;
        }
    }

    /* compiled from: TXCAudioRouteManager.java */
    /* loaded from: classes5.dex */
    public abstract class h extends Thread {
        protected boolean b = true;
        protected final boolean[] c = {false};
        protected HashMap<String, Object> d = null;

        public abstract void a();

        public abstract String b();

        public void c() {
        }

        public h() {
            e.this = r2;
            TXCLog.i("TXCAudioRouteManager", "construct SwitchThread: " + b());
        }

        public void a(HashMap<String, Object> hashMap) {
            this.d = hashMap;
        }

        void d() {
            e.this.k.e(b());
            a(0);
        }

        void a(int i) {
            TXCAudioNativeInterface.LogTraceEntry(b() + " err:" + i);
            e.this.f();
            if (this.d == null) {
                e.this.b();
                return;
            }
            e eVar = e.this;
            eVar.m = eVar.k.h();
            Long l = (Long) this.d.get("PARAM_SESSIONID");
            TXCLog.i("TXCAudioRouteManager", "sessonID:" + l);
            if (l == null || l.longValue() == Long.MIN_VALUE) {
                e.this.b();
                TXCLog.w("TXCAudioRouteManager", "processDeviceConnectRes sid null,don't send res");
                return;
            }
            Intent intent = new Intent();
            intent.putExtra("CONNECTDEVICE_RESULT_DEVICENAME", (String) this.d.get("PARAM_DEVICE"));
            if (e.this.a(intent, this.d, i) == 0) {
                e.this.b();
            }
            TXCAudioNativeInterface.LogTraceExit();
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            TXCAudioNativeInterface.LogTraceEntry(b());
            e.this.k.d(b());
            e.this.f();
            a();
            synchronized (this.c) {
                this.c[0] = true;
                this.c.notifyAll();
            }
            TXCAudioNativeInterface.LogTraceExit();
        }

        public void e() {
            TXCAudioNativeInterface.LogTraceEntry(b());
            this.b = false;
            TXCLog.i("TXCAudioRouteManager", "quit:" + b() + " isRunning:" + this.b);
            interrupt();
            c();
            synchronized (this.c) {
                if (!this.c[0]) {
                    try {
                        this.c.wait(10000);
                    } catch (InterruptedException unused) {
                    }
                }
            }
            TXCAudioNativeInterface.LogTraceExit();
        }
    }

    /* compiled from: TXCAudioRouteManager.java */
    /* loaded from: classes5.dex */
    public class d extends h {
        @Override // com.tencent.liteav.audio.impl.route.e.h
        public String b() {
            return "DEVICE_EARPHONE";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d() {
            super();
            e.this = r1;
        }

        @Override // com.tencent.liteav.audio.impl.route.e.h
        public void a() {
            d();
            int i = 0;
            while (this.b) {
                if (e.this.c() || e.this.h == a.EnumC0021a.STOPPED) {
                    TXCLog.d("TXCAudioRouteManager", "connect earphone: do nothing");
                } else if (e.this.a.isSpeakerphoneOn()) {
                    e eVar = e.this;
                    eVar.a(eVar.b, false);
                }
                try {
                    Thread.sleep(i < 5 ? 1000 : 4000);
                } catch (Exception unused) {
                }
                i++;
            }
        }
    }

    /* compiled from: TXCAudioRouteManager.java */
    /* loaded from: classes5.dex */
    public class g extends h {
        @Override // com.tencent.liteav.audio.impl.route.e.h
        public String b() {
            return "DEVICE_SPEAKERPHONE";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g() {
            super();
            e.this = r1;
        }

        @Override // com.tencent.liteav.audio.impl.route.e.h
        public void a() {
            d();
            TXCLog.i("TXCAudioRouteManager", "run:" + b() + " _running:" + this.b);
            int i = 0;
            while (this.b) {
                if (e.this.c() || e.this.h == a.EnumC0021a.STOPPED) {
                    TXCLog.d("TXCAudioRouteManager", "connect speakerPhone: do nothing, mCurrentIOScene: %s", e.this.h);
                } else if (!e.this.a.isSpeakerphoneOn()) {
                    e eVar = e.this;
                    eVar.a(eVar.b, true);
                }
                try {
                    Thread.sleep(i < 5 ? 1000 : 4000);
                } catch (InterruptedException unused) {
                }
                i++;
            }
        }
    }

    /* compiled from: TXCAudioRouteManager.java */
    /* renamed from: com.tencent.liteav.audio.impl.route.e$e */
    /* loaded from: classes5.dex */
    public class C0022e extends h {
        @Override // com.tencent.liteav.audio.impl.route.e.h
        public String b() {
            return "DEVICE_WIREDHEADSET";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0022e() {
            super();
            e.this = r1;
        }

        @Override // com.tencent.liteav.audio.impl.route.e.h
        public void a() {
            d();
            int i = 0;
            while (this.b) {
                if (e.this.c() || e.this.h == a.EnumC0021a.STOPPED) {
                    TXCLog.d("TXCAudioRouteManager", "connect headset: do nothing");
                } else if (e.this.a.isSpeakerphoneOn()) {
                    e.this.a.setWiredHeadsetOn(true);
                    e eVar = e.this;
                    eVar.a(eVar.b, false);
                }
                try {
                    Thread.sleep(i < 5 ? 1000 : 4000);
                } catch (InterruptedException unused) {
                }
                i++;
            }
        }
    }

    /* compiled from: TXCAudioRouteManager.java */
    /* loaded from: classes5.dex */
    public class c extends h {
        @Override // com.tencent.liteav.audio.impl.route.e.h
        public String b() {
            return "DEVICE_BLUETOOTHHEADSET";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c() {
            super();
            e.this = r1;
        }

        @Override // com.tencent.liteav.audio.impl.route.e.h
        public void a() {
            int i = 0;
            while (true) {
                long j = 1000;
                if (this.b) {
                    if (!e.this.c() && e.this.h != a.EnumC0021a.STOPPED) {
                        TXCLog.i("TXCAudioRouteManager", "connect bluetoothHeadset: try sco mode, IsMusicScene: %b, scene: %s", Boolean.valueOf(e.this.c()), e.this.h);
                        break;
                    }
                    if (i == 0) {
                        TXCLog.i("TXCAudioRouteManager", "connect bluetoothHeadset: do nothing, IsMusicScene: %b, scene: %s", Boolean.valueOf(e.this.c()), e.this.h);
                        d();
                    }
                    if (i >= 5) {
                        j = 4000;
                    }
                    try {
                        Thread.sleep(j);
                    } catch (InterruptedException unused) {
                    }
                    i++;
                }
            }
            try {
                if (e.this.f == d.SCO_DISCONNECTED) {
                    TXCLog.i("TXCAudioRouteManager", "bluetoothHeadsetSwitchThread SCO_DISCONNECTED sleep 5000");
                    Thread.sleep(5000);
                } else {
                    TXCLog.i("TXCAudioRouteManager", "bluetoothHeadsetSwitchThread sleep 1000");
                    Thread.sleep(1000);
                }
            } catch (InterruptedException unused2) {
            }
            e.this.f = d.HEADSET_AVAILABLE;
            if (this.b) {
                e.this.f = d.SCO_CONNECTING;
                synchronized (e.this.g) {
                    e.this.g[0] = false;
                }
                f();
                TXCLog.i("TXCAudioRouteManager", "bluetoothHeadsetSwitchThread _startBluetoothSco");
            }
            int i2 = 1;
            while (true) {
                if (!this.b) {
                    break;
                }
                TXCLog.i("TXCAudioRouteManager", "bluetoothHeadsetSwitchThread i:" + i2 + " is bluetooth sco on:" + e.this.a.isBluetoothScoOn() + " bluetooth name:" + e.this.k.d());
                if (e.this.f == d.SCO_CONNECTED) {
                    TXCLog.i("TXCAudioRouteManager", "bluetoothHeadsetSwitchThread bluetoothState ==  BluetoothState.SCO_CONNECTED 1");
                    d();
                    break;
                }
                synchronized (e.this.g) {
                    if (!e.this.g[0]) {
                        try {
                            e.this.g.wait(4000);
                        } catch (InterruptedException unused3) {
                        }
                    }
                }
                if (e.this.f == d.SCO_CONNECTED) {
                    TXCLog.i("TXCAudioRouteManager", "bluetoothHeadsetSwitchThread bluetoothState == BluetoothState.SCO_CONNECTED 2");
                    d();
                    break;
                }
                int i3 = i2 + 1;
                if (i2 > 3) {
                    break;
                }
                g();
                try {
                    Thread.sleep(4000);
                } catch (InterruptedException unused4) {
                }
                e.this.f = d.SCO_CONNECTING;
                synchronized (e.this.g) {
                    e.this.g[0] = false;
                }
                f();
                TXCLog.i("TXCAudioRouteManager", "bluetoothHeadsetSwitchThread retry start sco");
                i2 = i3;
            }
            if (this.b && e.this.f != d.SCO_CONNECTED) {
                TXCLog.e("TXCAudioRouteManager", "bluetoothHeadsetSwitchThread sco fail,remove btheadset");
                e.this.k.a(b(), false);
                e.this.k.j();
                a(10);
                e.this.a(false);
            }
            if (e.this.c() || !this.b) {
                TXCLog.i("TXCAudioRouteManager", "IsMusicScene: %b, mIsRunning: %b, stopBluetoothSco()", Boolean.valueOf(e.this.c()), Boolean.valueOf(this.b));
                g();
            }
        }

        @Override // com.tencent.liteav.audio.impl.route.e.h
        public void c() {
            if (e.this.a != null) {
                TXCLog.i("TXCAudioRouteManager", "bluetoothHeadsetSwitchThread _quit _stopBluetoothSco");
                g();
            }
        }

        private synchronized void f() {
            e.this.a.setBluetoothScoOn(true);
            e.this.a.startBluetoothSco();
        }

        private synchronized void g() {
            try {
                e.this.a.stopBluetoothSco();
                e.this.a.setBluetoothScoOn(false);
            } catch (Exception unused) {
            }
        }
    }

    public void b(HashMap<String, Object> hashMap) {
        Intent intent = new Intent();
        intent.putExtra("ISDEVICECHANGABLED_REULT_ISCHANGABLED", a());
        a(intent, hashMap, 0);
    }

    boolean a() {
        String g2 = this.k.g();
        return g2 == null || g2.equals("DEVICE_NONE") || g2.equals("");
    }

    public void c(HashMap<String, Object> hashMap) {
        Intent intent = new Intent();
        intent.putExtra("GETCONNECTEDDEVICE_REULT_LIST", this.k.h());
        a(intent, hashMap, 0);
    }

    public void d(HashMap<String, Object> hashMap) {
        Intent intent = new Intent();
        intent.putExtra("GETCONNECTINGDEVICE_REULT_LIST", this.k.g());
        a(intent, hashMap, 0);
    }

    public int a(final Intent intent, HashMap<String, Object> hashMap, final int i2) {
        if (this.b == null) {
            return -1;
        }
        Long l = (Long) hashMap.get("PARAM_SESSIONID");
        TXCLog.i("TXCAudioRouteManager", " sessonID:" + l + " " + ((String) hashMap.get("PARAM_OPERATION")));
        if (l == null || l.longValue() == Long.MIN_VALUE) {
            b();
            TXCLog.e("TXCAudioRouteManager", "sendResBroadcast sid null,don't send res");
            return -1;
        }
        final Long l2 = (Long) hashMap.get("PARAM_SESSIONID");
        final String str = (String) hashMap.get("PARAM_OPERATION");
        if ("OPERATION_VOICECALL_PREPROCESS".equals(str)) {
            intent.setAction("com.tencent.sharp.ACTION_TXCAUDIOMANAGER_RES");
            intent.putExtra("PARAM_SESSIONID", l2);
            intent.putExtra("PARAM_OPERATION", str);
            intent.putExtra("PARAM_RES_ERRCODE", i2);
            g gVar = this.j;
            if (gVar == null) {
                return 0;
            }
            gVar.a(intent);
            return 0;
        }
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.tencent.liteav.audio.impl.route.e.1
            @Override // java.lang.Runnable
            public void run() {
                intent.setAction("com.tencent.sharp.ACTION_TXCAUDIOMANAGER_RES");
                intent.putExtra("PARAM_SESSIONID", l2);
                intent.putExtra("PARAM_OPERATION", str);
                intent.putExtra("PARAM_RES_ERRCODE", i2);
                if (e.this.b != null) {
                    com.tencent.liteav.basic.a.a.a(e.this.b).a(intent);
                }
            }
        });
        return 0;
    }

    void b() {
        TXCAudioNativeInterface.LogTraceEntry("");
        if (this.b != null) {
            final Intent intent = new Intent();
            synchronized (this) {
                ArrayList<String> k = this.k.k();
                String h2 = this.k.h();
                String i2 = this.k.i();
                String d2 = this.k.d();
                intent.setAction("com.tencent.sharp.ACTION_TXCAUDIOMANAGER_NOTIFY");
                intent.putExtra("PARAM_OPERATION", "NOTIFY_DEVICELISTUPDATE");
                intent.putExtra("EXTRA_DATA_AVAILABLEDEVICE_LIST", (String[]) k.toArray(new String[0]));
                intent.putExtra("EXTRA_DATA_CONNECTEDDEVICE", h2);
                intent.putExtra("EXTRA_DATA_PREV_CONNECTEDDEVICE", i2);
                intent.putExtra("EXTRA_DATA_IF_HAS_BLUETOOTH_THIS_IS_NAME", d2);
            }
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.tencent.liteav.audio.impl.route.e.2
                @Override // java.lang.Runnable
                public void run() {
                    if (e.this.b != null) {
                        com.tencent.liteav.basic.a.a.a(e.this.b).a(intent);
                    }
                }
            });
            TXCAudioNativeInterface.LogTraceExit();
        }
    }

    public void f() {
        if (this.b != null) {
            final boolean a2 = a();
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.tencent.liteav.audio.impl.route.e.3
                @Override // java.lang.Runnable
                public void run() {
                    Intent intent = new Intent();
                    intent.setAction("com.tencent.sharp.ACTION_TXCAUDIOMANAGER_NOTIFY");
                    intent.putExtra("PARAM_OPERATION", "NOTIFY_DEVICECHANGABLE_UPDATE");
                    intent.putExtra("NOTIFY_DEVICECHANGABLE_UPDATE_DATE", a2);
                    if (e.this.b != null) {
                        com.tencent.liteav.basic.a.a.a(e.this.b).a(intent);
                    }
                }
            });
        }
    }

    public b a(Context context, h hVar) {
        b bVar = new b();
        if (!bVar.a(context, hVar)) {
            bVar = new c();
        }
        StringBuilder sb = new StringBuilder();
        sb.append("CreateBluetoothCheck:");
        sb.append(bVar.a());
        sb.append(" skip android4.3: ");
        sb.append(TXCBuild.VersionInt() == 18);
        TXCLog.i("TXCAudioRouteManager", sb.toString());
        return bVar;
    }

    /* compiled from: TXCAudioRouteManager.java */
    /* loaded from: classes5.dex */
    public class b extends b implements BluetoothProfile.ServiceListener {
        private Context b = null;
        private h c = null;
        private BluetoothAdapter d = null;
        private BluetoothProfile e = null;
        private final Object f = new Object();

        @Override // com.tencent.liteav.audio.impl.route.b
        public String a() {
            return "BluetoohHeadsetCheck";
        }

        b() {
            e.this = r1;
        }

        @Override // com.tencent.liteav.audio.impl.route.b
        public boolean a(Context context, h hVar) {
            TXCAudioNativeInterface.LogTraceEntry("");
            if (context == null || hVar == null) {
                TXCLog.e("TXCAudioRouteManager", "err ctx is null or devCfg is null");
                return false;
            }
            this.b = context;
            this.c = hVar;
            this.d = BluetoothAdapter.getDefaultAdapter();
            if (this.d == null) {
                TXCLog.e("TXCAudioRouteManager", "getDefaultAdapter return null!");
                return false;
            }
            synchronized (this.f) {
                if (!this.d.isEnabled() || this.e != null || this.d.getProfileProxy(this.b, this, 1)) {
                    TXCAudioNativeInterface.LogTraceExit();
                    return true;
                }
                TXCLog.e("TXCAudioRouteManager", "BluetoohHeadsetCheck: getProfileProxy HEADSET fail!");
                return false;
            }
        }

        @Override // com.tencent.liteav.audio.impl.route.b
        public void b() {
            TXCAudioNativeInterface.LogTraceEntry(" profile:" + this.e);
            synchronized (this.f) {
                try {
                    if (this.d != null) {
                        if (this.e != null) {
                            this.d.closeProfileProxy(1, this.e);
                        }
                        this.e = null;
                    }
                } catch (Exception e) {
                    TXCLog.e("TXCAudioRouteManager", "closeProfileProxy failed.", e);
                }
            }
            TXCAudioNativeInterface.LogTraceExit();
        }

        /* JADX WARN: Code restructure failed: missing block: B:21:?, code lost:
            return r6.e.getConnectedDevices();
         */
        /* Code decompiled incorrectly, please refer to instructions dump */
        private java.util.List<android.bluetooth.BluetoothDevice> d() {
            /*
                r6 = this;
                android.bluetooth.BluetoothProfile r0 = r6.e
                r1 = 0
                if (r0 != 0) goto L_0x0006
                return r1
            L_0x0006:
                com.tencent.liteav.audio.impl.route.e r0 = com.tencent.liteav.audio.impl.route.e.this     // Catch: Exception -> 0x0039
                android.content.Context r0 = com.tencent.liteav.audio.impl.route.e.b(r0)     // Catch: Exception -> 0x0039
                r2 = 1
                if (r0 == 0) goto L_0x0030
                int r0 = com.tencent.liteav.basic.util.TXCBuild.VersionInt()     // Catch: Exception -> 0x0039
                r3 = 31
                if (r0 < r3) goto L_0x0030
                com.tencent.liteav.audio.impl.route.e r0 = com.tencent.liteav.audio.impl.route.e.this     // Catch: Exception -> 0x0039
                android.content.Context r0 = com.tencent.liteav.audio.impl.route.e.b(r0)     // Catch: Exception -> 0x0039
                java.lang.String r3 = "android.permission.BLUETOOTH_CONNECT"
                int r4 = android.os.Process.myPid()     // Catch: Exception -> 0x0039
                int r5 = android.os.Process.myUid()     // Catch: Exception -> 0x0039
                int r0 = r0.checkPermission(r3, r4, r5)     // Catch: Exception -> 0x0039
                if (r0 != 0) goto L_0x002e
                goto L_0x0030
            L_0x002e:
                r0 = 0
                r2 = r0
            L_0x0030:
                if (r2 == 0) goto L_0x0054
                android.bluetooth.BluetoothProfile r0 = r6.e     // Catch: Exception -> 0x0039
                java.util.List r1 = r0.getConnectedDevices()     // Catch: Exception -> 0x0039
                goto L_0x0054
            L_0x0039:
                r0 = move-exception
                java.lang.StringBuilder r2 = new java.lang.StringBuilder
                r2.<init>()
                java.lang.String r3 = "get connected devices failed."
                r2.append(r3)
                java.lang.String r0 = r0.getMessage()
                r2.append(r0)
                java.lang.String r0 = r2.toString()
                java.lang.String r2 = "TXCAudioRouteManager"
                com.tencent.liteav.basic.log.TXCLog.e(r2, r0)
            L_0x0054:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: com.tencent.liteav.audio.impl.route.e.b.d():java.util.List");
        }

        @Override // com.tencent.liteav.audio.impl.route.b
        public boolean c() {
            synchronized (this.f) {
                List<BluetoothDevice> d = d();
                boolean z = false;
                if (d == null) {
                    return false;
                }
                if (d.size() > 0) {
                    z = true;
                }
                return z;
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:28:0x00c7 A[Catch: all -> 0x0125, TryCatch #0 {, blocks: (B:7:0x002d, B:9:0x0031, B:11:0x0035, B:12:0x005f, B:14:0x0068, B:16:0x006c, B:17:0x0091, B:19:0x0097, B:20:0x009d, B:22:0x00a1, B:24:0x00a9, B:28:0x00c7, B:29:0x00d0, B:30:0x00e8), top: B:45:0x002d, inners: #1 }] */
        /* JADX WARN: Removed duplicated region for block: B:51:0x00d0 A[SYNTHETIC] */
        @Override // android.bluetooth.BluetoothProfile.ServiceListener
        /* Code decompiled incorrectly, please refer to instructions dump */
        public void onServiceConnected(int r9, android.bluetooth.BluetoothProfile r10) {
            /*
            // Method dump skipped, instructions count: 296
            */
            throw new UnsupportedOperationException("Method not decompiled: com.tencent.liteav.audio.impl.route.e.b.onServiceConnected(int, android.bluetooth.BluetoothProfile):void");
        }

        @Override // android.bluetooth.BluetoothProfile.ServiceListener
        public void onServiceDisconnected(int i) {
            TXCAudioNativeInterface.LogTraceEntry("_profile:" + this.e + " profile:" + i);
            if (i == 1) {
                TXCLog.i("TXCAudioRouteManager", "TRAEBluetoohProxy: HEADSET Disconnected");
                if (c()) {
                    e.this.a("DEVICE_BLUETOOTHHEADSET", false);
                }
                synchronized (this.f) {
                    if (this.e != null) {
                        this.d.closeProfileProxy(1, this.e);
                        this.e = null;
                    }
                }
            }
            TXCAudioNativeInterface.LogTraceExit();
        }

        @Override // com.tencent.liteav.audio.impl.route.b
        protected void b(IntentFilter intentFilter, IntentFilter intentFilter2) {
            TXCLog.i("TXCAudioRouteManager", "add extra action " + a());
            intentFilter.addAction("android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED");
            intentFilter.addAction("android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED");
            intentFilter.addAction("android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED");
        }

        @Override // com.tencent.liteav.audio.impl.route.b
        protected void a(Context context, Intent intent) {
            if ("android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED".equals(intent.getAction())) {
                int intExtra = intent.getIntExtra("android.bluetooth.profile.extra.STATE", 10);
                if (intExtra == 12) {
                    if (e.this.f == d.SCO_CONNECTING) {
                        TXCLog.i("TXCAudioRouteManager", "receive bluetooth audio state changed to SCO_CONNECTED");
                        e.this.f = d.SCO_CONNECTED;
                        synchronized (e.this.g) {
                            e.this.g[0] = true;
                            e.this.g.notifyAll();
                        }
                    }
                } else if (intExtra == 10) {
                    e.this.a(true);
                    TXCLog.i("TXCAudioRouteManager", "receive bluetooth audio state changed to STATE_AUDIO_DISCONNECTED");
                }
            } else if ("android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED".equals(intent.getAction())) {
                int intExtra2 = intent.getIntExtra("android.bluetooth.profile.extra.STATE", -1);
                TXCLog.i("TXCAudioRouteManager", "receive bluetooth headset connection state changed: %s", c(intExtra2));
                if (intExtra2 == 0) {
                    e.this.f = d.HEADSET_UNAVAILABLE;
                    this.c.a("DEVICE_BLUETOOTHHEADSET", false);
                } else if (intExtra2 == 2) {
                    e.this.f = d.HEADSET_AVAILABLE;
                    this.c.a("DEVICE_BLUETOOTHHEADSET", true);
                    TXCLog.i("TXCAudioRouteManager", "ACTION_CONNECTION_STATE_CHANGED BluetoothProfile.STATE_CONNECTED");
                    e.this.a(false);
                }
            } else if ("android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED".equals(intent.getAction())) {
                int intExtra3 = intent.getIntExtra("android.bluetooth.adapter.extra.CONNECTION_STATE", -1);
                int intExtra4 = intent.getIntExtra("android.bluetooth.adapter.extra.PREVIOUS_CONNECTION_STATE", -1);
                BluetoothDevice bluetoothDevice = (BluetoothDevice) intent.getParcelableExtra("android.bluetooth.device.extra.DEVICE");
                StringBuilder sb = new StringBuilder();
                sb.append("receive bluetooth connection state changed, EXTRA_CONNECTION_STATE ");
                sb.append(b(intExtra3));
                sb.append(", EXTRA_PREVIOUS_CONNECTION_STATE ");
                sb.append(b(intExtra4));
                sb.append(", EXTRA_DEVICE ");
                sb.append(bluetoothDevice != null ? bluetoothDevice.getName() : "unknown name");
                TXCLog.i("TXCAudioRouteManager", sb.toString());
                if (intExtra3 == 2) {
                    String name = bluetoothDevice != null ? bluetoothDevice.getName() : "unkown";
                    if (!name.contains("FreeBuds")) {
                        this.c.a("DEVICE_BLUETOOTHHEADSET", true);
                    }
                    this.c.b(name);
                } else if (intExtra3 == 0) {
                    this.c.a("DEVICE_BLUETOOTHHEADSET", false);
                }
            }
        }
    }
}
