package com.tencent.liteav.audio.impl.route;

import com.tencent.liteav.basic.log.TXCLog;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* compiled from: TXCDeviceConfigManager.java */
/* loaded from: classes5.dex */
public class h {
    private final HashMap<String, a> a = new HashMap<>();
    private String b = "DEVICE_NONE";
    private String c = "DEVICE_NONE";
    private String d = "DEVICE_NONE";
    private String e = "unknown";
    private boolean f = false;

    /* compiled from: TXCDeviceConfigManager.java */
    /* loaded from: classes5.dex */
    public static class a {
        private String a = "DEVICE_NONE";
        private boolean b = false;
        private int c = 0;

        public boolean a(String str, int i) {
            if (str == null || str.length() <= 0 || !h.f(str)) {
                return false;
            }
            this.a = str;
            this.c = i;
            return true;
        }

        public String a() {
            return this.a;
        }

        public boolean b() {
            return this.b;
        }

        public int c() {
            return this.c;
        }

        public void a(boolean z) {
            this.b = z;
        }
    }

    public synchronized boolean a(String str) {
        TXCAudioNativeInterface.LogTraceEntry(" strConfigs:" + str);
        if (str != null && str.length() > 0) {
            String replace = str.replace("\n", "").replace("\r", "");
            if (replace.length() <= 0) {
                return false;
            }
            if (!replace.contains(";")) {
                replace = replace + ";";
            }
            String[] split = replace.split(";");
            if (1 > split.length) {
                return false;
            }
            for (int i = 0; i < split.length; i++) {
                a(split[i], i);
            }
            l();
            return true;
        }
        return false;
    }

    private void a(String str, int i) {
        TXCAudioNativeInterface.LogTraceEntry(" devName:" + str + " priority:" + i);
        a aVar = new a();
        if (!aVar.a(str, i)) {
            TXCLog.e("TXCDeviceConfigManager", " err dev init!");
        } else if (this.a.containsKey(str)) {
            TXCLog.e("TXCDeviceConfigManager", "err dev exist!");
        } else {
            this.a.put(str, aVar);
            this.f = true;
            TXCLog.i("TXCDeviceConfigManager", "add device, name: %s", str);
            TXCAudioNativeInterface.LogTraceExit();
        }
    }

    public synchronized void a() {
        this.a.clear();
        this.b = "DEVICE_NONE";
        this.c = "DEVICE_NONE";
        this.d = "DEVICE_NONE";
    }

    public synchronized boolean b() {
        return this.f;
    }

    public synchronized void c() {
        this.f = false;
    }

    public synchronized boolean a(String str, boolean z) {
        boolean z2;
        a aVar = this.a.get(str);
        z2 = false;
        if (!(aVar == null || aVar.b() == z)) {
            aVar.a(z);
            this.f = true;
            TXCLog.i("TXCDeviceConfigManager", "update device visibility, device: %s, visible: %s", str, Boolean.valueOf(z));
            z2 = true;
        }
        return z2;
    }

    public void b(String str) {
        if (str == null) {
            this.e = "unknown";
        } else if (str.isEmpty()) {
            this.e = "unknown";
        } else {
            this.e = str;
        }
    }

    public String d() {
        return this.e;
    }

    public synchronized boolean c(String str) {
        a aVar = this.a.get(str);
        if (aVar == null) {
            return false;
        }
        return aVar.b();
    }

    public synchronized int e() {
        return this.a.size();
    }

    public synchronized String f() {
        a aVar;
        aVar = null;
        for (Map.Entry<String, a> entry : this.a.entrySet()) {
            a value = entry.getValue();
            if (value != null) {
                if (value.b()) {
                    if (aVar != null && value.c() < aVar.c()) {
                    }
                    aVar = value;
                }
            }
        }
        return aVar != null ? aVar.a() : "DEVICE_SPEAKERPHONE";
    }

    public synchronized String g() {
        String str;
        str = null;
        a aVar = this.a.get(this.d);
        if (aVar != null && aVar.b()) {
            str = this.d;
        }
        return str;
    }

    public synchronized String h() {
        a aVar = this.a.get(this.c);
        if (aVar == null || !aVar.b()) {
            return "DEVICE_NONE";
        }
        return this.c;
    }

    public synchronized String i() {
        String str;
        str = "DEVICE_NONE";
        a aVar = this.a.get(this.b);
        if (aVar != null && aVar.b()) {
            str = this.b;
        }
        return str;
    }

    public synchronized void d(String str) {
        a aVar = this.a.get(str);
        if (aVar != null && aVar.b()) {
            this.d = str;
        }
    }

    public synchronized void j() {
        this.d = "";
    }

    public synchronized void e(String str) {
        a aVar = this.a.get(str);
        if (aVar != null && aVar.b()) {
            if (this.c != null && !this.c.equals(str)) {
                this.b = this.c;
            }
            this.c = str;
            this.d = "";
        }
    }

    public synchronized ArrayList<String> k() {
        ArrayList<String> arrayList;
        arrayList = new ArrayList<>();
        for (Map.Entry<String, a> entry : this.a.entrySet()) {
            a value = entry.getValue();
            if (value != null && value.b()) {
                arrayList.add(value.a());
            }
        }
        return arrayList;
    }

    public static boolean f(String str) {
        return "DEVICE_SPEAKERPHONE".equals(str) || "DEVICE_EARPHONE".equals(str) || "DEVICE_WIREDHEADSET".equals(str) || "DEVICE_BLUETOOTHHEADSET".equals(str);
    }

    private void l() {
        TXCLog.i("TXCDeviceConfigManager", "ConnectedDevice:" + h() + ", ConnectingDevice:" + g() + ", prevConnectedDevice:" + i() + ", available hightest priority device:" + f() + "device count:" + e());
        for (Map.Entry<String, a> entry : this.a.entrySet()) {
            a value = entry.getValue();
            TXCLog.i("TXCDeviceConfigManager", "name: %s, visible: %b, priority: %d", value.a, Boolean.valueOf(value.b), Integer.valueOf(value.c));
        }
    }
}
