package com.google.android.gms.common.api.internal;

import android.util.Log;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.AvailabilityException;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zaaa implements OnCompleteListener<Map<zai<?>, String>> {
    private final /* synthetic */ zax zafh;
    private SignInConnectionListener zafi;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zaaa(zax zax, SignInConnectionListener signInConnectionListener) {
        this.zafh = zax;
        this.zafi = signInConnectionListener;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void cancel() {
        this.zafi.onComplete();
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public final void onComplete(Task<Map<zai<?>, String>> task) {
        this.zafh.zaen.lock();
        try {
            if (!(this.zafh.zafc)) {
                this.zafi.onComplete();
                return;
            }
            if (task.isSuccessful()) {
                this.zafh.zafe = new ArrayMap(this.zafh.zaeu.size());
                for (zaw zaw : this.zafh.zaeu.values()) {
                    this.zafh.zafe.put(zaw.zak(), ConnectionResult.RESULT_SUCCESS);
                }
            } else if (task.getException() instanceof AvailabilityException) {
                AvailabilityException availabilityException = (AvailabilityException) task.getException();
                if (this.zafh.zafa) {
                    this.zafh.zafe = new ArrayMap(this.zafh.zaeu.size());
                    for (zaw zaw2 : this.zafh.zaeu.values()) {
                        Object zak = zaw2.zak();
                        ConnectionResult connectionResult = availabilityException.getConnectionResult(zaw2);
                        if (this.zafh.zaa(zaw2, connectionResult)) {
                            this.zafh.zafe.put(zak, new ConnectionResult(16));
                        } else {
                            this.zafh.zafe.put(zak, connectionResult);
                        }
                    }
                } else {
                    this.zafh.zafe = availabilityException.zaj();
                }
            } else {
                Log.e("ConnectionlessGAC", "Unexpected availability exception", task.getException());
                this.zafh.zafe = Collections.emptyMap();
            }
            if (this.zafh.isConnected()) {
                this.zafh.zafd.putAll(this.zafh.zafe);
                if (this.zafh.zaaf() == null) {
                    this.zafh.zaad();
                    this.zafh.zaae();
                    this.zafh.zaey.signalAll();
                }
            }
            this.zafi.onComplete();
        } finally {
            this.zafh.zaen.unlock();
        }
    }
}
