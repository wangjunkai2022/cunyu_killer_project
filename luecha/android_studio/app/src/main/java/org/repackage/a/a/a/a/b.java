package org.repackage.a.a.a.a;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import org.repackage.a.a.a.a;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: OpenIDHelper.java */
/* loaded from: classes4.dex */
public class b implements ServiceConnection {
    public final /* synthetic */ c a;

    public b(c cVar) {
        this.a = cVar;
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.a.a = a.AbstractBinderC0068a.a(iBinder);
        synchronized (this.a.d) {
            this.a.d.notify();
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        this.a.a = null;
    }
}
