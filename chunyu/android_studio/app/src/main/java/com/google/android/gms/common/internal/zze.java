package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.internal.GmsClientSupervisor;
import com.google.android.gms.common.stats.ConnectionTracker;
import java.util.HashMap;

/* loaded from: classes4.dex */
public final class zze extends GmsClientSupervisor implements Handler.Callback {
    private final Handler mHandler;
    private final Context zzdv;
    private final HashMap<GmsClientSupervisor.zza, zzf> zzdu = new HashMap<>();
    private final ConnectionTracker zzdw = ConnectionTracker.getInstance();
    private final long zzdx = 5000;
    private final long zzdy = 300000;

    public zze(Context context) {
        this.zzdv = context.getApplicationContext();
        this.mHandler = new com.google.android.gms.internal.common.zze(context.getMainLooper(), this);
    }

    @Override // com.google.android.gms.common.internal.GmsClientSupervisor
    public final boolean zza(GmsClientSupervisor.zza zza, ServiceConnection serviceConnection, String str) {
        boolean isBound;
        Preconditions.checkNotNull(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.zzdu) {
            zzf zzf = this.zzdu.get(zza);
            if (zzf == null) {
                zzf = new zzf(this, zza);
                zzf.zza(serviceConnection, str);
                zzf.zze(str);
                this.zzdu.put(zza, zzf);
            } else {
                this.mHandler.removeMessages(0, zza);
                if (!zzf.zza(serviceConnection)) {
                    zzf.zza(serviceConnection, str);
                    int state = zzf.getState();
                    if (state == 1) {
                        serviceConnection.onServiceConnected(zzf.getComponentName(), zzf.getBinder());
                    } else if (state == 2) {
                        zzf.zze(str);
                    }
                } else {
                    String valueOf = String.valueOf(zza);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 81);
                    sb.append("Trying to bind a GmsServiceConnection that was already connected before.  config=");
                    sb.append(valueOf);
                    throw new IllegalStateException(sb.toString());
                }
            }
            isBound = zzf.isBound();
        }
        return isBound;
    }

    @Override // com.google.android.gms.common.internal.GmsClientSupervisor
    protected final void zzb(GmsClientSupervisor.zza zza, ServiceConnection serviceConnection, String str) {
        Preconditions.checkNotNull(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.zzdu) {
            zzf zzf = this.zzdu.get(zza);
            if (zzf == null) {
                String valueOf = String.valueOf(zza);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 50);
                sb.append("Nonexistent connection status for service config: ");
                sb.append(valueOf);
                throw new IllegalStateException(sb.toString());
            } else if (zzf.zza(serviceConnection)) {
                zzf.zzb(serviceConnection, str);
                if (zzf.zzr()) {
                    this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(0, zza), this.zzdx);
                }
            } else {
                String valueOf2 = String.valueOf(zza);
                StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 76);
                sb2.append("Trying to unbind a GmsServiceConnection  that was not bound before.  config=");
                sb2.append(valueOf2);
                throw new IllegalStateException(sb2.toString());
            }
        }
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i = message.what;
        if (i == 0) {
            synchronized (this.zzdu) {
                GmsClientSupervisor.zza zza = (GmsClientSupervisor.zza) message.obj;
                zzf zzf = this.zzdu.get(zza);
                if (zzf != null && zzf.zzr()) {
                    if (zzf.isBound()) {
                        zzf.zzf("GmsClientSupervisor");
                    }
                    this.zzdu.remove(zza);
                }
            }
            return true;
        } else if (i != 1) {
            return false;
        } else {
            synchronized (this.zzdu) {
                GmsClientSupervisor.zza zza2 = (GmsClientSupervisor.zza) message.obj;
                zzf zzf2 = this.zzdu.get(zza2);
                if (zzf2 != null && zzf2.getState() == 3) {
                    String valueOf = String.valueOf(zza2);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 47);
                    sb.append("Timeout waiting for ServiceConnection callback ");
                    sb.append(valueOf);
                    Log.wtf("GmsClientSupervisor", sb.toString(), new Exception());
                    ComponentName componentName = zzf2.getComponentName();
                    if (componentName == null) {
                        componentName = zza2.getComponentName();
                    }
                    if (componentName == null) {
                        componentName = new ComponentName(zza2.getPackage(), "unknown");
                    }
                    zzf2.onServiceDisconnected(componentName);
                }
            }
            return true;
        }
    }
}
