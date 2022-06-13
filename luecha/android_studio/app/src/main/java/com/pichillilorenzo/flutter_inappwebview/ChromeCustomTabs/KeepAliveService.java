package com.pichillilorenzo.flutter_inappwebview.ChromeCustomTabs;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;

/* JADX WARN: Classes with same name are omitted:
  classes3.dex
 */
/* loaded from: classes5.dex */
public class KeepAliveService extends Service {
    private static final Binder sBinder = new Binder();

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return sBinder;
    }
}
