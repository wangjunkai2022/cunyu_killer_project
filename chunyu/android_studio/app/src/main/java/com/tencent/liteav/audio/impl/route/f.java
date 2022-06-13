package com.tencent.liteav.audio.impl.route;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Process;
import com.tencent.liteav.basic.log.TXCLog;

/* compiled from: TXCAudioSession.java */
/* loaded from: classes2.dex */
public class f extends BroadcastReceiver {
    private static int a;
    private final long b = a();
    private final Context c;
    private final e d;
    private a e;

    /* compiled from: TXCAudioSession.java */
    /* loaded from: classes2.dex */
    public static abstract class a {
        void a(int i) {
        }

        void a(int i, String str) {
        }

        void a(int i, String str, boolean z) {
        }

        void a(int i, boolean z) {
        }

        void a(int i, String[] strArr, String str, String str2, String str3) {
        }

        void a(String str, long j) {
        }

        void a(String str, String str2) {
        }

        void a(boolean z) {
        }

        void a(String[] strArr, String str, String str2, String str3) {
        }

        void b(int i, String str) {
        }

        void b(boolean z) {
        }
    }

    public static long a() {
        int i = a + 1;
        a = i;
        return (((long) Process.myPid()) << 32) + ((long) i);
    }

    public f(Context context, e eVar, a aVar) {
        this.e = null;
        this.e = aVar;
        this.c = context;
        this.d = eVar;
        if (context == null) {
            StringBuilder sb = new StringBuilder();
            sb.append("AudioSession | Invalid parameters: ctx = ");
            String str = "null";
            sb.append(context == null ? str : "{object}");
            sb.append("; cb = ");
            sb.append(aVar != null ? "{object}" : str);
            TXCLog.w("TXCAudioSession", sb.toString());
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.tencent.sharp.ACTION_TXCAUDIOMANAGER_RES");
        intentFilter.addAction("com.tencent.sharp.ACTION_TXCAUDIOMANAGER_NOTIFY");
        if (context != null) {
            try {
                com.tencent.liteav.basic.a.a.a(context).a(this, intentFilter);
            } catch (Exception e) {
                TXCLog.e("TXCAudioSession", "registerReceiver Exception: " + e.getMessage());
            }
        }
        a(this, true);
        TXCLog.i("TXCAudioSession", "TraeAudioSession create, mSessionId: " + this.b);
    }

    public void b() {
        TXCLog.i("TXCAudioSession", "TraeAudioSession release, mSessionId: " + this.b);
        Context context = this.c;
        if (context != null) {
            try {
                context.unregisterReceiver(this);
            } catch (Exception unused) {
            }
            com.tencent.liteav.basic.a.a.a(this.c).a(this);
        }
        a(this, false);
        this.e = null;
    }

    private void a(f fVar, boolean z) {
        if (this.c != null) {
            this.d.a(fVar, z, this.b);
        }
    }

    public int a(String str) {
        if (str == null || str.length() <= 0) {
            str = "internal_disable_dev_switch";
        }
        return this.d.a("OPERATION_STARTSERVICE", this.b, str);
    }

    public int c() {
        return this.d.a("OPERATION_STOPSERVICE", this.b);
    }

    public void b(String str) {
        this.d.b("OPERATION_CONNECTDEVICE", this.b, str);
    }

    public void d() {
        this.d.c("OPERATION_GETCONNECTEDDEVICE", this.b);
    }

    public void a(int i) {
        this.d.a("OPERATION_VOICECALL_PREPROCESS", this.b, i);
    }

    public void e() {
        this.d.d("OPERATION_VOICECALL_POSTROCESS", this.b);
    }

    public void a(Intent intent) {
        try {
            if (intent == null) {
                TXCLog.w("TXCAudioSession", "[ERROR] intent = null!!");
                return;
            }
            long longExtra = intent.getLongExtra("PARAM_SESSIONID", Long.MIN_VALUE);
            String stringExtra = intent.getStringExtra("PARAM_OPERATION");
            int intExtra = intent.getIntExtra("PARAM_RES_ERRCODE", 0);
            if ("com.tencent.sharp.ACTION_TXCAUDIOMANAGER_RES".equals(intent.getAction()) && this.b == longExtra && "OPERATION_VOICECALL_PREPROCESS".equals(stringExtra)) {
                TXCLog.w("TXCAudioSession", "[onReceiveCallback onVoicecallPreprocess] err:" + intExtra);
                if (this.e != null) {
                    this.e.a(intExtra);
                }
            }
        } catch (Exception e) {
            TXCLog.e("TXCAudioSession", " nSessinId = " + this.b + " onReceive::intent:" + intent.toString() + " intent.getAction():" + intent.getAction() + " Exception:" + e.getMessage());
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String str;
        Exception e;
        try {
            if (intent == null) {
                TXCLog.w("TXCAudioSession", "[ERROR] intent = null!!");
                return;
            }
            long longExtra = intent.getLongExtra("PARAM_SESSIONID", Long.MIN_VALUE);
            String stringExtra = intent.getStringExtra("PARAM_OPERATION");
            int intExtra = intent.getIntExtra("PARAM_RES_ERRCODE", 0);
            if ("com.tencent.sharp.ACTION_TXCAUDIOMANAGER_NOTIFY".equals(intent.getAction())) {
                if ("NOTIFY_SERVICE_STATE".equals(stringExtra)) {
                    boolean booleanExtra = intent.getBooleanExtra("NOTIFY_SERVICE_STATE_DATE", false);
                    StringBuilder sb = new StringBuilder();
                    sb.append("[onServiceStateUpdate]");
                    sb.append(booleanExtra ? "on" : "off");
                    TXCLog.i("TXCAudioSession", sb.toString());
                    if (this.e != null) {
                        this.e.a(booleanExtra);
                    }
                } else if ("NOTIFY_DEVICELISTUPDATE".equals(stringExtra)) {
                    String[] stringArrayExtra = intent.getStringArrayExtra("EXTRA_DATA_AVAILABLEDEVICE_LIST");
                    String stringExtra2 = intent.getStringExtra("EXTRA_DATA_CONNECTEDDEVICE");
                    String stringExtra3 = intent.getStringExtra("EXTRA_DATA_PREV_CONNECTEDDEVICE");
                    String stringExtra4 = intent.getStringExtra("EXTRA_DATA_IF_HAS_BLUETOOTH_THIS_IS_NAME");
                    StringBuilder sb2 = new StringBuilder("\n");
                    for (int i = 0; i < stringArrayExtra.length; i++) {
                        sb2.append("    ");
                        sb2.append(i);
                        sb2.append(" ");
                        sb2.append(stringArrayExtra[i]);
                        sb2.append("\n");
                    }
                    sb2.append("\n");
                    TXCLog.i("TXCAudioSession", "[onDeviceListUpdate]  connected:" + stringExtra2 + " prevConnected:" + stringExtra3 + " bt:" + stringExtra4 + " Num:" + stringArrayExtra.length + ((Object) sb2));
                    if (this.e != null) {
                        this.e.a(stringArrayExtra, stringExtra2, stringExtra3, stringExtra4);
                    }
                } else if ("NOTIFY_DEVICECHANGABLE_UPDATE".equals(stringExtra)) {
                    boolean booleanExtra2 = intent.getBooleanExtra("NOTIFY_DEVICECHANGABLE_UPDATE_DATE", true);
                    TXCLog.i("TXCAudioSession", "[onDeviceChangabledUpdate]" + booleanExtra2);
                    if (this.e != null) {
                        this.e.b(booleanExtra2);
                    }
                } else if ("NOTIFY_ROUTESWITCHSTART".equals(stringExtra)) {
                    String stringExtra5 = intent.getStringExtra("EXTRA_DATA_ROUTESWITCHSTART_FROM");
                    String stringExtra6 = intent.getStringExtra("EXTRA_DATA_ROUTESWITCHSTART_TO");
                    if (!(this.e == null || stringExtra5 == null || stringExtra6 == null)) {
                        this.e.a(stringExtra5, stringExtra6);
                    }
                } else if ("NOTIFY_ROUTESWITCHEND".equals(stringExtra)) {
                    String stringExtra7 = intent.getStringExtra("EXTRA_DATA_ROUTESWITCHEND_DEV");
                    long longExtra2 = intent.getLongExtra("EXTRA_DATA_ROUTESWITCHEND_TIME", -1);
                    if (!(this.e == null || stringExtra7 == null || longExtra2 == -1)) {
                        this.e.a(stringExtra7, longExtra2);
                    }
                }
            } else if ("com.tencent.sharp.ACTION_TXCAUDIOMANAGER_RES".equals(intent.getAction())) {
                str = "TXCAudioSession";
                try {
                    if (this.b == longExtra) {
                        if ("OPERATION_GETDEVICELIST".equals(stringExtra)) {
                            String[] stringArrayExtra2 = intent.getStringArrayExtra("EXTRA_DATA_AVAILABLEDEVICE_LIST");
                            String stringExtra8 = intent.getStringExtra("EXTRA_DATA_CONNECTEDDEVICE");
                            String stringExtra9 = intent.getStringExtra("EXTRA_DATA_PREV_CONNECTEDDEVICE");
                            String stringExtra10 = intent.getStringExtra("EXTRA_DATA_IF_HAS_BLUETOOTH_THIS_IS_NAME");
                            StringBuilder sb3 = new StringBuilder("\n");
                            for (int i2 = 0; i2 < stringArrayExtra2.length; i2++) {
                                sb3.append("    ");
                                sb3.append(i2);
                                sb3.append(" ");
                                sb3.append(stringArrayExtra2[i2]);
                                sb3.append("\n");
                            }
                            sb3.append("\n");
                            TXCLog.i(str, "[onGetDeviceListRes] err:" + intExtra + " connected:" + stringExtra8 + " prevConnected:" + stringExtra9 + " bt:" + stringExtra10 + " Num:" + stringArrayExtra2.length + ((Object) sb3));
                            if (this.e != null) {
                                this.e.a(intExtra, stringArrayExtra2, stringExtra8, stringExtra9, stringExtra10);
                            }
                        } else if ("OPERATION_CONNECTDEVICE".equals(stringExtra)) {
                            String stringExtra11 = intent.getStringExtra("CONNECTDEVICE_RESULT_DEVICENAME");
                            TXCLog.i(str, "[onConnectDeviceRes] err:" + intExtra + " dev:" + stringExtra11);
                            if (this.e != null) {
                                this.e.a(intExtra, stringExtra11, intExtra == 0);
                            }
                        } else if ("OPERATION_ISDEVICECHANGABLED".equals(stringExtra)) {
                            boolean booleanExtra3 = intent.getBooleanExtra("ISDEVICECHANGABLED_REULT_ISCHANGABLED", false);
                            TXCLog.i(str, "[onIsDeviceChangabledRes] err:" + intExtra + " Changabled:" + booleanExtra3);
                            if (this.e != null) {
                                this.e.a(intExtra, booleanExtra3);
                            }
                        } else if ("OPERATION_GETCONNECTEDDEVICE".equals(stringExtra)) {
                            String stringExtra12 = intent.getStringExtra("GETCONNECTEDDEVICE_REULT_LIST");
                            TXCLog.i(str, "[onGetConnectedDeviceRes] err:" + intExtra + " dev:" + stringExtra12);
                            if (this.e != null) {
                                this.e.a(intExtra, stringExtra12);
                            }
                        } else if ("OPERATION_GETCONNECTINGDEVICE".equals(stringExtra)) {
                            String stringExtra13 = intent.getStringExtra("GETCONNECTINGDEVICE_REULT_LIST");
                            TXCLog.i(str, "[onGetConnectingDeviceRes] err:" + intExtra + " dev:" + stringExtra13);
                            if (this.e != null) {
                                this.e.b(intExtra, stringExtra13);
                            }
                        } else if ("OPERATION_VOICECALL_PREPROCESS".equals(stringExtra)) {
                            TXCLog.i(str, "[onVoicecallPreprocess] err:" + intExtra);
                            if (this.e != null) {
                                this.e.a(intExtra);
                            }
                        }
                    }
                } catch (Exception e2) {
                    e = e2;
                    TXCLog.e(str, " nSessinId = " + this.b + " onReceive::intent:" + intent.toString() + " intent.getAction():" + intent.getAction() + " Exception:" + e.getMessage());
                }
            }
        } catch (Exception e3) {
            e = e3;
            str = "TXCAudioSession";
        }
    }
}
