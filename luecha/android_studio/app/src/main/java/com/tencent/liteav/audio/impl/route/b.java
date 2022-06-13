package com.tencent.liteav.audio.impl.route;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.tencent.liteav.basic.log.TXCLog;

/* compiled from: BluetoothHeadsetCheckBase.java */
/* loaded from: classes5.dex */
public abstract class b {
    public static String a(int i) {
        switch (i) {
            case 10:
                return "STATE_OFF";
            case 11:
                return "STATE_TURNING_ON";
            case 12:
                return "STATE_ON";
            case 13:
                return "STATE_TURNING_OFF";
            default:
                return "unknown";
        }
    }

    public static String b(int i) {
        return i != 0 ? i != 1 ? i != 2 ? i != 3 ? "unknown" : "STATE_DISCONNECTING" : "STATE_CONNECTED" : "STATE_CONNECTING" : "STATE_DISCONNECTED";
    }

    public static String c(int i) {
        return i != 0 ? i != 1 ? i != 2 ? i != 3 ? "unknown" : "STATE_DISCONNECTING" : "STATE_CONNECTED" : "STATE_CONNECTING" : "STATE_DISCONNECTED";
    }

    public abstract String a();

    protected abstract void a(Context context, Intent intent);

    public abstract boolean a(Context context, h hVar);

    public abstract void b();

    protected abstract void b(IntentFilter intentFilter, IntentFilter intentFilter2);

    public abstract boolean c();

    public void a(IntentFilter intentFilter, IntentFilter intentFilter2) {
        intentFilter.addAction("android.bluetooth.adapter.action.STATE_CHANGED");
        intentFilter.addAction("android.bluetooth.device.action.ACL_CONNECTED");
        intentFilter.addAction("android.bluetooth.device.action.ACL_DISCONNECTED");
        b(intentFilter, intentFilter2);
    }

    public void a(Context context, Intent intent, h hVar) {
        if ("android.bluetooth.adapter.action.STATE_CHANGED".equals(intent.getAction())) {
            int intExtra = intent.getIntExtra("android.bluetooth.adapter.extra.STATE", -1);
            TXCLog.i("BluetoohHeadsetCheckBase", "receive ACTION_STATE_CHANGED, EXTRA_STATE: %s, EXTRA_PREVIOUS_STATE: %s", a(intExtra), a(intent.getIntExtra("android.bluetooth.adapter.extra.PREVIOUS_STATE", -1)));
            if (intExtra == 10) {
                TXCLog.i("BluetoohHeadsetCheckBase", "BT off");
                hVar.a("DEVICE_BLUETOOTHHEADSET", false);
            } else if (intExtra == 12) {
                TXCLog.i("BluetoohHeadsetCheckBase", "BT OFF-->ON, need update its visibility.");
            }
        } else {
            a(context, intent);
        }
    }
}
