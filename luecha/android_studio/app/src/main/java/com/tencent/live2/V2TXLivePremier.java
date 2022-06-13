package com.tencent.live2;

import android.content.Context;
import com.tencent.liteav.basic.log.TXCLog;
import com.tencent.liteav.basic.util.TXCCommonUtil;
import com.tencent.live2.V2TXLiveDef;
import com.tencent.rtmp.TXLiveBase;
import com.tencent.rtmp.TXLiveBaseListener;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class V2TXLivePremier {
    private static b sObserver;

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    public static abstract class b {
        public void a(int i, String str) {
        }

        public void b(int i, String str) {
        }
    }

    public static String getSDKVersionStr() {
        return TXLiveBase.getSDKVersionStr();
    }

    public static void setObserver(b bVar) {
        sObserver = bVar;
    }

    public static void setLogConfig(V2TXLiveDef.V2TXLiveLogConfig v2TXLiveLogConfig) {
        if (v2TXLiveLogConfig != null) {
            TXLiveBase.getInstance();
            TXLiveBase.setConsoleEnabled(v2TXLiveLogConfig.enableConsole);
            TXLiveBase.getInstance();
            TXLiveBase.setLogLevel(v2TXLiveLogConfig.logLevel);
            TXCLog.setLogToFileEnabled(v2TXLiveLogConfig.enableLogFile);
            TXCLog.setLogDirPath(v2TXLiveLogConfig.logPath);
            if (v2TXLiveLogConfig.enableObserver) {
                TXLiveBase.setListener(new a());
            } else {
                TXLiveBase.setListener(null);
            }
        }
    }

    public static void setEnvironment(String str) {
        TXLiveBase.getInstance();
        TXLiveBase.setGlobalEnv(str);
    }

    public static void setLicence(Context context, String str, String str2) {
        TXLiveBase.getInstance().setLicence(context, str, str2);
    }

    public static void setSocks5Proxy(String str, int i, String str2, String str3) {
        TXCCommonUtil.setSocks5Proxy(str, i, str2, str3);
    }

    /* JADX WARN: Classes with same name are omitted:
      classes3.dex
     */
    /* loaded from: classes5.dex */
    private static class a extends TXLiveBaseListener {
        private a() {
        }

        @Override // com.tencent.rtmp.TXLiveBaseListener
        public void onLog(int i, String str, String str2) {
            b bVar = V2TXLivePremier.sObserver;
            if (bVar != null) {
                bVar.a(i, str2);
            }
        }

        @Override // com.tencent.rtmp.TXLiveBaseListener
        public void onLicenceLoaded(int i, String str) {
            b bVar = V2TXLivePremier.sObserver;
            if (bVar != null) {
                bVar.b(i, str);
            }
        }
    }
}
